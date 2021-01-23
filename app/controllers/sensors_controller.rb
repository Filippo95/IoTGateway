class SensorsController < ApplicationController

  before_action :set_sensor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sensors
  # GET /sensors.json
  def index
    @mysensors = current_user.sensors
    @othersensors=Array.new
    current_user.misuration_subscription.each do |ss|
        @othersensors.push(ss.sensor)
    end
  end
  # GET /sensors/1
  # GET /sensors/1.json
  def show
  end

  # GET /sensors/new
  def new
    @sensor = Sensor.new
  end

  # GET /sensors/1/edit
  def edit
  end

  # POST /sensors
  # POST /sensors.json
  def create
    @sensor = Sensor.new(sensor_params)
    @sensor.user_id=current_user.id

    respond_to do |format|
      if @sensor.save
        format.html { redirect_to @sensor, notice: 'Sensor was successfully created.' }
        format.json { render :show, status: :created, location: @sensor }
      else
        format.html { render :new }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensors/1
  # PATCH/PUT /sensors/1.json
  def update
    respond_to do |format|
      if @sensor.update(sensor_params) && @sensor.user_id==current_user.id
        format.html { redirect_to @sensor, notice: 'Sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor }
      else
        format.html {
          flash[:notice] = 'Non puoi modificare un sensore non tuo!'
          render :edit }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensors/1
  # DELETE /sensors/1.json
  def destroy

    respond_to do |format|
      if  @sensor.user_id==current_user.id && @sensor.destroy
        format.html { redirect_to sensors_url, notice: 'Sensor was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensor_params
      params.require(:sensor).permit(:mac, :url, :tipo, :latitudine, :longitudine, :unit_misura, :public, :downtime_to_alarm, :last_firmware_update)
    end
end
