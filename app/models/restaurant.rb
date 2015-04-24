class Restaurant < ActiveRecord::Base
	validates :name, :category, :website, :capacity, presence: true
	validates :capacity, numericality: {only_integer: true}
end
