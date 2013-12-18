# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	name_first              "joe"
	  name_last               "joe"
	  password                "joe"
	  password_confirmation   "joe"
  end
end
