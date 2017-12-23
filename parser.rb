CRYPTO_CURRENCIES = %w(btc ltc eth dash xrp)
CURRENCIES = %w(usd eur gbp)
def fetch_data_from_url(from_value, to_value)
    return 'Invalid data' if currencies_are_supported([from_value, to_value])==false or from_value==to_value
    default_url = 'https://api.cryptonator.com/api/ticker/'
    url = default_url + "#{from_value}-#{to_value}"
    response = RestClient.get(url)
    result = JSON.parse(response)
    result['ticker']['price']
end
def currencies_are_supported(array_of_currencies)
    array_of_currencies.all? {|currency| CRYPTO_CURRENCIES.include?(currency) || CURRENCIES.include?(currency)}
    end