require 'spec_helper'

describe Country do
  describe "factory is valid" do
  	let(:country){ FactoryGirl.create(:country) }

    it { expect(country.valid?).to be_true}
  end

  describe "model" do
    let(:country1){ FactoryGirl.create(:country) }
    let(:country2){ FactoryGirl.create(:country) }
    let(:user1){ FactoryGirl.build_stubbed(:user) }
    let(:user2){ FactoryGirl.build_stubbed(:user) }
    let(:message){ FactoryGirl.build_stubbed(:message) }


    it { should belong_to(:ruler).class_name('User') }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }

  	it { should validate_uniqueness_of(:name) }

    it "has a name" do
      expect(country1.name != "").to be_true
    end

    it { should belong_to(:ruler) }
    it { should have_many(:sent_messages).class_name("Message").with_foreign_key('sent_id') }
    it { should have_many(:received_messages).class_name("Message").with_foreign_key('received_id') }

    it "has a location"
  end
end