def fetch_data_from_url(url)
    response=RestClient.get(url)
    JSON.parse(response)
end
