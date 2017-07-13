# frozen_string_literal: true

RSpec.describe Bakery::Catalogue do
  subject { build :catalogue }

  describe '#search_by_code' do
    it 'returns 2 items' do
      items = subject.search_by_code('CODE')
      expect(items.count).to eq 2
    end
  end
end
