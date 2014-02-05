# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :no_name, class: Name do
  end

  factory :strauss, class: Name do
    last 'Strauss'
  end

  factory :j_strauss, parent: :strauss do
    first 'Johann'
  end

  factory :j_strauss2, parent: :j_strauss do
    suffix 'II'
  end
end
