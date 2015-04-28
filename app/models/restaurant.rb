class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations

	validates :name, :address, :website, :phone, :capacity, presence: true
	validates :capacity, numericality: {only_integer: true}

	def available(party_size, time_slot)
    reservations_for_time = reservations.where(time_slot: time_slot)
    reservations_for_time.sum(:party_size) + party_size <= capacity
  end

end
