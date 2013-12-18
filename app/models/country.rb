class Country < ActiveRecord::Base
	attr_accessible :name, :location

	belongs_to  :ruler, class_name:  "User"

	has_many  :messages_sent, dependent:  :destroy,
	                          foreign_key: :to_id,
	                          inverse_of: :country

	has_many  :messages_received, dependent:  :destroy,
	                              foreign_key: :from_id,
	                              inverse_of: :country

	validates :name,     presence: true, uniqueness: true
	validates :location, presence: true
end
