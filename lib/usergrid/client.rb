require './lib/usergrid/user'

module Usergrid


  include HTTParty

  class Client
    def initialize(options = {})
      @app = options[:app]
      @key = options[:key]
      @secret = options[:secret]
    end

    def access_token
      @access_token ||= HTTParty.get("#{base_uri}/token?grant_type=client_credentials&client_id=#{@key}&client_secret=#{@secret}").parsed_response["access_token"]
    end

    def base_uri
      "http://api.usergrid.com/#{@app}"
    end

    def get url
      HTTParty.get("#{base_uri}#{url}", :headers => headers_hash)
    end

    def post url, params
      options = {:body => params.to_json, :headers => {"Content-Type" => "application/json"}}
      HTTParty.post("#{base_uri}#{url}", options)
    end

    def headers_hash
      {"Authorization" => "Bearer #{access_token}"}
    end
  end
end
