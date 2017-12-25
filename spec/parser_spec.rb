require_relative '../../project2/parser'
require 'rspec'

RSpec.describe 'Testing parsing method' do

  describe 'basics' do

    it 'should not be empty arrays of supported currencies' do
      expect(CRYPTO_CURRENCIES).to_not be_empty
      expect(CURRENCIES).to_not be_empty
    end

    it 'arrays of supported currencies must be frozen' do
      expect(CRYPTO_CURRENCIES.frozen?).to eq true
      expect(CURRENCIES.frozen?).to eq true
    end
  end
  describe 'testing with invalid data' do

    it 'should throw invalid data' do
      statement = fetch_data_from_url('ololo', 'ololo')
      expect(statement).to eq 'Invalid data'
    end
  end

  describe 'testing .currencies are supported' do
    it 'should return true if currencies are valid' do
      @array_of_currencies = ['btc', 'usd']
      result = currencies_are_supported(@array_of_currencies)
      expect(result).to eq true
    end
  end
end