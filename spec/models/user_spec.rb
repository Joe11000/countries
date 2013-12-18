require 'spec_helper'

describe User do
	describe "factory" do
  	it "has a valid factory" do
  		FactoryGirl.create(:user).valid?
  	end
	end

	describe do
		before(:all) do

    end


  	it { should validate_presence_of(:name_first) }
  	it { should validate_presence_of(:name_last) }
  	it { should have_secure_password }

  	# it { should have_one(:country).dependent(:destroy)  }
	end
end