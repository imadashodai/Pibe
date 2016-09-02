require 'faker'

FactoryGirl.define do
    factory :user do
        name "hoge"
        email "hoge@email.com"
        password "hoge"
        age "hoge"
    end
end