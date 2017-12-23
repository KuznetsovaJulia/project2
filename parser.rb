def fetch_data_from_url(url)
    response=RestClient.get(url)
    JSON.parse(response)
end
url='https://api.cryptonator.com/api/ticker/btc-usd'
response=fetch_data_from_url(url)
from_value = response['ticker']['base']
to_value = result['ticker']['target']
WHAT_I_WANT = result['ticker']['price']
array_crypto= ['BTC','LTC','ETH','DASH']
array_currency= ['USD','EUR','GBR']
