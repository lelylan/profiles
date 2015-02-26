FactoryGirl.define do
  factory :user do
    email      'alice@example.com'
    username   'alice'
    full_name  'alice sbadata'
    location   'Wonderland'
    homepage   'http://reality.com'
    rate_limit '5000'
  end
end
