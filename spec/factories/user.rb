#require 'faker'

FactoryGirl.define do
    factory :user do
        name "hoge"
        email "hoge@email.com"
        password "hoge"
        password_confirmation "hoge"
        age "hoge"
    end
end
