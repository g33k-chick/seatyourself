class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	validates :time_slot, :party_size, :restaurant_id, :user_id, presence: true
	validates :restaurant_seats_available, presence: true

	def restaurant_seats_available
		restaurant.available(party_size, time_slot)
	end
end
