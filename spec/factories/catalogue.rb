# frozen_string_literal: true

FactoryGirl.define do
  factory :catalogue, class: Bakery::Catalogue do
    association :pack, strategy: :build
    association :pack_with_different_code, strategy: :build

    initialize_with { new(items: [pack, pack, pack_with_different_code]) }
  end
end