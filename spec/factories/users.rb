# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:ruler] do
  	name_first              "joe"
	name_last               "joe"
	password                "joe"
	password_confirmation   "joe"
	locationX               -34.397
	locationY               150.644
  end
end
