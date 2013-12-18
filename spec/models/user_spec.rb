require 'spec_helper'

describe User do
  it "has a valid factory" do
  	FactoryGirl.create(:user).valid?
  end


end


	# attr_accessible :name_first, :name_last

	# has_one  :country, dependent: :destroy
	# has_many :messages, dependent: :destroy

	# validates :name_first,            presence: true
	# validates :name_last,             presence: true
	# validates :password,              presence: true
	# validates :password_confirmation, presence: true

	# has_secure_password