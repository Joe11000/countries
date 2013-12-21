require 'spec_helper'

describe Message do
  let(:message){ FactoryGirl.create(:message)}
  let(:country1) {FactoryGirl.build_stubbed(:country)}
  let(:country2) {FactoryGirl.build_stubbed(:country)}

  describe "factory" do

    it "should be valid" do
      FactoryGirl.create(:message).valid?
    end

  end

  describe "model" do

  	it {should allow_mass_assignment_of(:body)}
  	it {should allow_mass_assignment_of(:subject)}

  	it { should validate_presence_of(:body) }
  	it { should validate_presence_of(:subject) }

  	it { should belong_to(:sent).class_name(:Country)}
  	it { should belong_to(:received).class_name(:Country)}

    describe "has subject" do
      subject{ FactoryGirl.create(:message) }
      its(:body){ should eq "body" }
      its(:subject){ should eq "sub"}
    end

  end
end