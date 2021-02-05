class Sensor < ApplicationRecord
	has_one_attached :image,:dependent => :destroy
	before_validation :set_defaults
	validates :url,  		presence: true
	validates :mac, 		presence: true,	format: { with: /\A([0-9A-F]{2}[:-]){5}([0-9A-F]{2})\z/ , message: "mac regex control not passed" }
	validates :latitudine, 	presence: true
	validates :longitudine, presence: true
	validates :unit_misura, presence: true
  validates :user_id, 	presence: true

  validates_uniqueness_of :mac, :message=>"mac must be unique"

	has_many :misuration_subscriptions
	has_many :misurations
	has_many :sensors_group_subscriptions
	has_many :sensors_groups, through: :sensors_group_subscriptions

	belongs_to :user






	def set_defaults
		#default sensor are not public
    	self.public = false if self.public.nil?
	end
	def name
		"#{url}  #{mac} - #{user.email}"
	end


end
