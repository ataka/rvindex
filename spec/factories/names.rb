# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :no_name, class: Name do
  end

  factory :strauss, class: Name do
    last 'Strauss'
  end

  factory :j_strauss, class: Name do
    first 'Johann'
    last 'Strauss'
  end

  factory :j_strauss2, class: Name do
    first 'Johann'
    last  'Strauss'
    suffix 'II'
  end
end
