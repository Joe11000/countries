class Country < ActiveRecord::Base
	attr_accessible :name, :location

	belongs_to  :ruler, class_name: "User", 
	                    inverse_of: :country

	has_many  :sent_messages, dependent:   :destroy,
                              class_name:  "Message",
	                          foreign_key: :sent,
	                          inverse_of:  :country

	has_many  :received_messages, dependent:   :destroy,
	                              class_name:  "Message",
	                              foreign_key: :received,
	                              inverse_of:  :country

	validates :name, presence:   true, 
	                 uniqueness: true

	validates :location, presence: true
end
