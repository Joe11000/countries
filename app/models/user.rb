class User < ActiveRecord::Base
	attr_accessible :name_first, :name_last

	has_one  :country, dependent:   :destroy,
	                   foreign_key: :ruler,
                       inverse_of:  :ruler

	validates :name_first,            presence: true
	validates :name_last,             presence: true
	validates :password,              presence: true
	validates :password_confirmation, presence: true

	has_secure_password
end
