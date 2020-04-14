<<<<<<< HEAD
class MisurationSubscription < ApplicationRecord
	validates :mac,:user_id,presence:true

	belongs_to :user
	belongs_to :sensor
end
=======
class MisurationSubscription < ApplicationRecord
	belongs_to :user
	belongs_to :sensor
end
>>>>>>> f10cf5c95ea5eff44c55ef1a25d9a0e177d16500
