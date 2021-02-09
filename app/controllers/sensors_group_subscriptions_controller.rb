class SensorsGroupSubscriptionsController < ApplicationController
  before_action :set_sensors_group_subscription, only: [:show, :edit, :update, :destroy]

  # GET /sensors_group_subscriptions
  # GET /sensors_group_subscriptions.json
  def index
    @sensors_group_subscriptions=Array.new
    current_user.sensors.each do |sensor|
      sensor.sensors_group_subscriptions.each do |sub|
        @sensors_group_subscriptions.push(sub)
      end
    end
    
  end

  # GET /sensors_group_subscriptions/1
  # GET /sensors_group_subscriptions/1.json
  def show
  end

  # GET /sensors_group_subscriptions/new
  def new
    @sensors_group_subscription = SensorsGroupSubscription.new
    @sensor_groups=current_user.sensors_groups
    @misuration_subscription = MisurationSubscription.new
      @m=Array.new
    MisurationSubscription.where("user_id=?",current_user.id).each do |m|
      @m.push(m.sensor_id)
    end
    @availablesensors=Sensor.all.where("public=true").where(id: @m)
    @mysensors=current_user.sensors
    @sensors=@availablesensors | @mysensors

  end

  # GET /sensors_group_subscriptions/1/edit
  def edit
  end

  # POST /sensors_group_subscriptions
  # POST /sensors_group_subscriptions.json
  def create
    @sensors_group_subscription = SensorsGroupSubscription.new(sensors_group_subscription_params)

    respond_to do |format|
      if @sensors_group_subscription.save
        format.html { redirect_to @sensors_group_subscription, notice: 'Iscrizione al gruppo di sensori creata correttamente' }
        format.json { render :show, status: :created, location: @sensors_group_subscription }
      else
        format.html { render :new }
        format.json { render json: @sensors_group_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensors_group_subscriptions/1
  # PATCH/PUT /sensors_group_subscriptions/1.json
  def update
    respond_to do |format|
      if @sensors_group_subscription.update(sensors_group_subscription_params)
        format.html { redirect_to @sensors_group_subscription, notice: 'Iscrizione al gruppo di sensori aggiornata correttamente' }
        format.json { render :show, status: :ok, location: @sensors_group_subscription }
      else
        format.html { render :edit }
        format.json { render json: @sensors_group_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensors_group_subscriptions/1
  # DELETE /sensors_group_subscriptions/1.json
  def destroy
    @sensors_group_subscription.destroy
    respond_to do |format|
      format.html { redirect_to sensors_group_subscriptions_url, notice: 'Iscrizione al gruppo di sensori cancellata correttamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensors_group_subscription
      @sensors_group_subscription = SensorsGroupSubscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensors_group_subscription_params
      params.require(:sensors_group_subscription).permit(:sensors_group_id, :sensor_id)
    end
end
