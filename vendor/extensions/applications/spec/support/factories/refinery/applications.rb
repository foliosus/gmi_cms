
FactoryGirl.define do
  factory :application, :class => Refinery::Applications::Application do
    sequence(:first_name) { |n| "refinery#{n}" }
  end
end

