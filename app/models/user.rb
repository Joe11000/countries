class User < ActiveRecord::Base
	has_one  :country, dependent: :destroy
	has_many :messages, dependent: :destroy

	validates :name_first,            presence: true
	validates :name_last,             presence: true
	validates :password,              presence: true
	validates :password_confirmation, presence: true

	has_secure_password

end
