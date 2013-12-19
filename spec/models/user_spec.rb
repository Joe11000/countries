require 'spec_helper'

describe User do
	describe "factory" do
  	it "has a valid factory" do
  		FactoryGirl.create(:user).valid?
  	end
	end

	describe "model" do
    let(:user){FactoryGirl.create(:user)}
    let(:country){FactoryGirl.build_stubbed(:country)}

    it { should allow_mass_assignment_of(:name_first) }
    it { should allow_mass_assignment_of(:name_last) }

  	it { should validate_presence_of(:name_first) }
  	it { should validate_presence_of(:name_last) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }

  	it { should have_secure_password }

  	it { should have_one(:country).dependent(:destroy)  }
	end
end