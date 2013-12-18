# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:ruler] do
  	name_first              "joe"
	  name_last               "joe"
	  password                "joe"
	  password_confirmation   "joe"
  end
end
