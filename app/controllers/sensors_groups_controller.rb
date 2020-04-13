class SensorsGroupsController < ApplicationController
  before_action :set_sensors_group, only: [:show, :edit, :update, :destroy]

  # GET /sensors_groups
  # GET /sensors_groups.json
  def index
    @sensors_groups = SensorsGroup.all
  end

  # GET /sensors_groups/1
  # GET /sensors_groups/1.json
  def show
  end

  # GET /sensors_groups/new
  def new
    @sensors_group = SensorsGroup.new
  end

  # GET /sensors_groups/1/edit
  def edit
  end

  # POST /sensors_groups
  # POST /sensors_groups.json
  def create
    @sensors_group = SensorsGroup.new(sensors_group_params)

    respond_to do |format|
      if @sensors_group.save
        format.html { redirect_to @sensors_group, notice: 'Sensors group was successfully created.' }
        format.json { render :show, status: :created, location: @sensors_group }
      else
        format.html { render :new }
        format.json { render json: @sensors_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensors_groups/1
  # PATCH/PUT /sensors_groups/1.json
  def update
    respond_to do |format|
      if @sensors_group.update(sensors_group_params)
        format.html { redirect_to @sensors_group, notice: 'Sensors group was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensors_group }
      else
        format.html { render :edit }
        format.json { render json: @sensors_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensors_groups/1
  # DELETE /sensors_groups/1.json
  def destroy
    @sensors_group.destroy
    respond_to do |format|
      format.html { redirect_to sensors_groups_url, notice: 'Sensors group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensors_group
      @sensors_group = SensorsGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensors_group_params
      params.require(:sensors_group).permit(:nome, :id_user_group)
    end
end
