# frozen_string_literal: true

FactoryGirl.define do
  factory :pack, class: Bakery::Pack do
    code 'CODE'
    price 9.99
    quantity 5

    initialize_with { new(code: code, price: price, quantity: quantity) }
  end

  factory :pack_with_different_code, parent: :pack do
    code 'CODE2'
  end
end
