FactoryGirl.define do
  factory :payment do
    payment_date "2015-10-16"
    month { Faker::Number.between(1, 12) }
    year { Faker::Number.between(2010, 2020) }
    student Student.first
  end
end
