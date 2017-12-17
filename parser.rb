def fetch_data_from_url(url)
    response=RestClient.get(url)
    result = JSON.parse(response)
end