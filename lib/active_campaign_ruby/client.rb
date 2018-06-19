require 'httparty'
require 'active_campaign_ruby/core/list'
require 'active_campaign_ruby/core/contacts'
require 'active_campaign_ruby/core/campaigns'
require 'active_campaign_ruby/core/deals'
require 'active_campaign_ruby/core/forms'
require 'active_campaign_ruby/core/groups'
require 'active_campaign_ruby/core/messages'
require 'active_campaign_ruby/core/tracks'
require 'active_campaign_ruby/core/users'

module ActiveCampaignRuby
  class Client
    include HTTParty
    include ActiveCampaignRuby::Core::List
    include ActiveCampaignRuby::Core::Campaigns
    include ActiveCampaignRuby::Core::Contacts
    include ActiveCampaignRuby::Core::Deals
    include ActiveCampaignRuby::Core::Forms
    include ActiveCampaignRuby::Core::Groups
    include ActiveCampaignRuby::Core::Messages
    include ActiveCampaignRuby::Core::Tracks
    include ActiveCampaignRuby::Core::Users
    
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
