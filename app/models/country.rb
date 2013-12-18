class Country < ActiveRecord::Base
	attr_accessible :name, :location

	belongs_to  :ruler, class_name: "User", foreign_key: :ruler_id
	has_many :messages, dependent: :destroy

	validates :name,     presence: true, uniqueness: true
	validates :location, presence: true
end
