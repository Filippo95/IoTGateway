class MisurationSubscription < ApplicationRecord
	validates :mac,:user_id,presence:true

	belongs_to :user
	belongs_to :sensor
end
<<<<<<< HEAD
=======
class MisurationSubscription < ApplicationRecord
	belongs_to :user
	belongs_to :sensor
end
>>>>>>> f10cf5c95ea5eff44c55ef1a25d9a0e177d16500
=======

>>>>>>> 371596f7a1a5b446e05c6d5fe1afcbbca5641142
