class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	
	validates :name, :address, :description, presence: true
	validates :name, length: { minimum: 4 }
	validates :description, length: {maximum: 500}
end
#additional validation
class Person < ApplicationRecord
	validates :email, confirmation: true
	validates :email_confirmation, presence: true
	validates :password, length: {in: 6..20}
end

