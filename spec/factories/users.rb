FactoryBot.define do
  factory :user do
    nickname              { 'abc'}
    email                 { 'abc@abc' }
    password              { 'abcde1' }
    password_confirmation { password }
  end
end
