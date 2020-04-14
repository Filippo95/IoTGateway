class ReceiverController < ApplicationController

  skip_before_action :verify_authenticity_token
  def recevie
  	@misuration = Misuration.new(misuration_params)
    respond_to do |format|
      if @misuration.save
        format.json { render :json => "saved" ,status: :success}
      else
        format.json { render :json => "Error" ,status: :error}
      end
    end  
  end

  def state
	  respond_to do |format|
	    format.json  { render :json => "ok",status: :success } # don't do msg.to_json
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


