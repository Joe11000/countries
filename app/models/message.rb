class Message < ActiveRecord::Base
	attr_accessible :body, :subject

	belongs_to  :to,   class_name: "Country"

	belongs_to  :from, class_name: "Country"

	validates :body,    presence: true
	validates :subject, presence: true
end
