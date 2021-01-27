class ReceiverController < ApplicationController

  skip_before_action :verify_authenticity_token
  def recevie
  	@misuration = Misuration.new(misuration_params)

    respond_to do |format|
      if @misuration.save
        OrderMailer.new_misuration(@misuration).deliver_now
        msg = { :status => "ok", :message => "Success!"}
        format.json  { render :json => msg }
      else
        msg = { :status => "Error", :message => "Errore!" }
        format.json  { render :json => msg }
      end
    end
  end

  def state
	  respond_to do |format|
	    format.json  { render :json => "ok",status: :success } # don't do msg.to_json
	  end
	end

  def sensors
    @user=User.where("email = ?", params[:email]).first
    if @user
      respond_to do |format|
  	    format.json  { render json: @user.sensors } # don't do msg.to_json
  	  end
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_misuration
      @misuration = Misuration.find(params[:id])
    end
    def misuration_params

      params.require(:misuration).permit(:mac, :value, :unit)
    end
end
