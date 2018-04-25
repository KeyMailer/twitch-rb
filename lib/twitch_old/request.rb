module TwitchOld
  module Request
    def build_query_string(options)
      query = "?"
      options.each do |key, value|
        query += "#{key}=#{value.to_s.gsub(" ", "+")}&"
      end
      query = query[0...-1]
    end

    def get(url)
      @adapter.get(url, :headers => {
        'Client-ID' => @client_id,
        'Accept' => 'application/vnd.twitchtv.v5+json'
      })
    end

    def post(url, data)
      @adapter.post(url, :body => data, :headers => {
        'Client-ID' => @client_id,
        'Accept' => 'application/vnd.twitchtv.v5+json'
      })
    end

    def put(url, data={})
      @adapter.put(url, :body => data, :headers => {
        'Content-Type' => 'application/json',
        'Api-Version' => '2.2',
        'Client-ID' => @client_id,
        'Accept' => 'application/vnd.twitchtv.v5+json'
      })
    end

    def delete(url)
      @adapter.delete(url, :headers => {
        'Client-ID' => @client_id,
        'Accept' => 'application/vnd.twitchtv.v5+json'
      })
    end
  end
end
