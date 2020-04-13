class MisurationSubscriptionsController < ApplicationController
  before_action :set_misuration_subscription, only: [:show, :edit, :update, :destroy]

  # GET /misuration_subscriptions
  # GET /misuration_subscriptions.json
  def index
    @misuration_subscriptions = MisurationSubscription.all
  end

  # GET /misuration_subscriptions/1
  # GET /misuration_subscriptions/1.json
  def show
  end

  # GET /misuration_subscriptions/new
  def new
    @misuration_subscription = MisurationSubscription.new
  end

  # GET /misuration_subscriptions/1/edit
  def edit
  end

  # POST /misuration_subscriptions
  # POST /misuration_subscriptions.json
  def create
    @misuration_subscription = MisurationSubscription.new(misuration_subscription_params)

    respond_to do |format|
      if @misuration_subscription.save
        format.html { redirect_to @misuration_subscription, notice: 'Misuration subscription was successfully created.' }
        format.json { render :show, status: :created, location: @misuration_subscription }
      else
        format.html { render :new }
        format.json { render json: @misuration_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misuration_subscriptions/1
  # PATCH/PUT /misuration_subscriptions/1.json
  def update
    respond_to do |format|
      if @misuration_subscription.update(misuration_subscription_params)
        format.html { redirect_to @misuration_subscription, notice: 'Misuration subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @misuration_subscription }
      else
        format.html { render :edit }
        format.json { render json: @misuration_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misuration_subscriptions/1
  # DELETE /misuration_subscriptions/1.json
  def destroy
    @misuration_subscription.destroy
    respond_to do |format|
      format.html { redirect_to misuration_subscriptions_url, notice: 'Misuration subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misuration_subscription
      @misuration_subscription = MisurationSubscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def misuration_subscription_params
      params.require(:misuration_subscription).permit(:mac, :user_id)
    end
end
