# Active::Campaign::Ruby
ActiveCampaignRuby is wrapper for the ActiveCampaign API using HttParty.
It provides all the active-campaign api actions i.e. contact, list.

Links:
- [API documentation](https://www.activecampaign.com/api/overview.php)
- [Source Code](https://github.com/flights-machine/active_campaign_ruby)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_campaign_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_campaign_ruby

## Usage
```ruby
# To setup the client
client = ActiveCampaign::Client.new(
        api_endpoint: 'YOUR-ENDPOINT', # e.g. 'https://yourendpoint.api-us1.com/admin/api.php'
        api_key: 'YOUR-API-KEY') # e.g. 'b8f60a1nm600595d5cc37ede55693451812855f'
```
```ruby
# To fetch all list 
client.list_list ids: 'all'
```
```ruby
# To Add/Update/Edit Contact 
response = client.contact_sync(email: 'test@example.com')
```

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b feature-branch`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Rebase against master we want 1 commit per feature
5. Push to the branch (`git push origin feature-branch`)
6. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
