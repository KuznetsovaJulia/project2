require 'rest-client'
require 'json'
CRYPTO_CURRENCIES = %w(btc ltc eth dash xrp).freeze
CURRENCIES = %w(usd eur gbp).freeze



def fetch_data_from_url(from_value, to_value)
    return 'Invalid data' unless currencies_are_supported([from_value, to_value])
    default_url = 'https://api.cryptonator.com/api/ticker/'
    url = default_url + "#{from_value}-#{to_value}"
    response = RestClient.get(url)
    result = JSON.parse(response)
    result['ticker']['price']
end

def currencies_are_supported(array_of_currencies)
  array_of_currencies.each do |currency|
      CRYPTO_CURRENCIES.include?(currency) && CURRENCIES.include?(currency)
  end
end


