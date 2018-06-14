require 'httparty'
require 'active_campaign_ruby/core/list'

module ActiveCampaignRuby
  class Client
    include HTTParty
    include ActiveCampaignRuby::Core::List

    API_ENDPOINT = 'https://subdomain.activehosted.com/admin/api.php'
    API_KEY      = 'API_KEY'
    API_OUTPUT   = 'json'

    def initialize(options = {})
      self.class.base_uri (options[:api_endpoint] || API_ENDPOINT)+'?api_action='
      @option = { api_key: options[:api_key] || API_KEY,
                  api_output: options[:api_output] || API_OUTPUT }
    end

    # Make get request
    def get(api_method, options = {})
      self.class.get(api_method.to_s, req_params(__method__, options))
    end

    # Make post request
    def post(api_method, options = {})
      self.class.post(api_method.to_s, req_params(__method__, options))
    end

    private

    def req_params(method, options={})
      if method == :get
        return { query: @option.merge(options) }
      elsif method == :post
        return { body: @option.merge(options) }
      end
    end
  end
end
