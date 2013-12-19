# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :country do
  	# ruler
  	sequence(:name) {|n| "country#{n}"}
  	sequence(:location) {|l| "spot#{l}"}
  end
end
