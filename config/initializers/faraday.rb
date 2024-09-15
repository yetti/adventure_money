require "httpx/adapters/faraday"

Faraday.default_adapter = :httpx

Faraday.default_connection = Faraday.new do |conn|
  conn.request :url_encoded
  conn.response :logger
  conn.adapter Faraday.default_adapter
end
