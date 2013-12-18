class Message < ActiveRecord::Base
	attr_accessible :body, :subject

	belongs_to  :to,   class_name: "Country", foreign_key: :to_id
	belongs_to  :from, class_name: "Country", foreign_key: :from_id

	validates :body,    presence: true
	validates :subject, presence: true
end
