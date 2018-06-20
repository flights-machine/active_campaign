
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_campaign_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "active_campaign_ruby"
  spec.version       = ActiveCampaignRuby::VERSION
  spec.authors       = ["Ben Gelsey"]
  spec.email         = ["ben@bengelsey.com"]
  spec.summary       = %q{See http://www.activecampaign.com/api/overview.php for more information}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/flights-machine/active_campaign_ruby"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", '~> 0.16.2'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.11.3"
end
