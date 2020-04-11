class MisurationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_misuration, only: [:show, :edit, :update, :destroy]

  # GET /misurations
  # GET /misurations.json
  def index
   @misurations = Misuration.all
  end

  # GET /misurations/1
  # GET /misurations/1.json
  def show

  end

  # GET /misurations/new
  def new
    @misuration = Misuration.new
  end

  # GET /misurations/1/edit
  def edit
  end

  # POST /misurations
  # POST /misurations.json
  def create
    @misuration = Misuration.new(misuration_params)
    
    
      #controllo se il mac, corrisponde al mac di un sensore, altrimenti errore
      if Sensor.exists?(:mac => @misuration.mac)
        respond_to do |format|
            @misuration.sensor_id=Sensor.where(mac => @misuration.mac).first.id

          if @misuration.save
            format.html { redirect_to @misuration, notice: 'La misurazione è stata inserita con successo!' }
            format.json { render :show, status: :created, location: @misuration }
          else
            format.html { render :new }
            format.json { render json: @misuration.errors, status: :unprocessable_entity }
          end
        end
      else
        respond_to do |format|
          format.html { redirect_to @misuration, alert: 'La misurazione non può essere aggiunta in quanto il MAC specificato non esiste tra i sensori registrati' }
          format.json { render json: @misuration.errors, status: :unprocessable_entity }
        end
      end
  end
  


  # PATCH/PUT /misurations/1
  # PATCH/PUT /misurations/1.json
  def update
    respond_to do |format|
      if @misuration.update(misuration_params)
        format.html { redirect_to @misuration, notice: 'Misuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @misuration }
      else
        format.html { render :edit }
        format.json { render json: @misuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misurations/1
  # DELETE /misurations/1.json
  def destroy
    @misuration.destroy
    respond_to do |format|
      format.html { redirect_to misurations_url, notice: 'Misuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misuration
      @misuration = Misuration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def misuration_params

      params.require(:misuration).permit(:mac, :value, :unit,:sensor_id)

      

    end
end
