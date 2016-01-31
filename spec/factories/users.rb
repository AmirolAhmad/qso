FactoryGirl.define do
  factory :user do |n|
    email {|n| "person#{n}@example.com" }
    callsign {|n| "callsign#{n}"}
    password 'secret123'
    password_confirmation 'secret123'
    confirmed_at Date.today
    admin 0
    # slug {|n| "person#{n}" }
    factory :admin do
      admin 1
    end
  end
end
