require "cancan/matchers"
require 'spec_helper'

describe "User" do
  describe "abilities" do
    subject(:ability){ Ability.new(FactoryGirl.create(:user)) }
    let(:user){ nil }

    context "when is an account manager" do
      # let(:user){ Factory(:accounts_manager) }

      # it{ should be_able_to(:manage, Country.new) }
    end
  end
end

