# frozen_string_literal: true

RSpec.describe Bakery::Pack do
  let(:pack) { build :pack }

  describe '.code' do
    it 'returns the code' do
      expect(pack.code).to eq 'CODE'
    end
  end

  describe '.quantity' do
    it 'returns the quantity' do
      expect(pack.quantity).to eq 5
    end
  end

  describe '.price' do
    it 'returns the price' do
      expect(pack.price).to eq 9.99
    end
  end
end
