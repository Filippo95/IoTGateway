class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sensors
  has_many :misuration_subscription 
  
  def get_subscribed_sensors
	Sensor.joins(:misuration_subscriptions).joins(:user).where("misuration_subscriptions.user_id=?",self.id)
  end


end
