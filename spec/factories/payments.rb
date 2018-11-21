FactoryBot.define do
  factory :payment do
    user nil
    price 100
    status 1
    reference "Mystring"
    payment_method "Mystring"
    response_id "Mystring"
    full_response ""
  end
end
