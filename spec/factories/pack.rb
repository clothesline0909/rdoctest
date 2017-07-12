# frozen_string_literal: true

FactoryGirl.define do
  factory :pack, class: Bakery::Pack do
    code 'CODE'
    quantity 5
    price 9.99
  end
end
