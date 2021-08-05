FactoryBot.define do
    factory :user do |f|
        f.sequence(:name) { |n| "Test FUser #{n}" }
        f.sequence(:email)  {|n| "test#{n}@example.com"}
        f.password { "password" }
        f.password_confirmation { |d| d.password }
    end
    factory :guestbook do |f|
        f.sequence(:title) { |n| "Test #{n}" }
        f.sequence(:content)  { |n| "TestC #{n}" }
        f.date {Time.zone.now+1.day}
        f.association :user 
    end
end