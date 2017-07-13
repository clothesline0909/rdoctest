# frozen_string_literal: true

RSpec.describe Bakery::OrderParser do
  subject { build :order_parser }

  describe '#parse' do
    context 'with a valid filepath' do
      context 'with a valid order' do
        it 'returns 3 lines' do
          lines = subject.parse('spec/support/order.txt')
          expect(lines.count).to eq 3
        end
      end

      context 'with an invalid order' do
        it 'returns 3 lines' do
          expect do
            subject.parse('spec/support/invalid_order.txt')
          end.to raise_error Bakery::InvalidOrderFormat
        end
      end
    end

    context 'with an invalid filepath' do
      it 'raises an exception' do
        expect do
          subject.parse('invalid')
        end.to raise_error Bakery::InvalidFilepath
      end
    end
  end
end
