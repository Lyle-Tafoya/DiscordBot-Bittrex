# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "discord_bot/bittrex/version"

Gem::Specification.new do |spec|
  spec.name          = "discord_bot-bittrex"
  spec.version       = DiscordBot::Bittrex::VERSION
  spec.authors       = ["Lyle tafoya"]
  spec.email         = ["lyle.tafoya@gmail.com"]

  spec.summary       = 'Discord bot to retrieve cryptocurency prices from Bittrex'
  spec.homepage      = 'https://github.com/Lyle-Tafoya/DiscordBot-Bittrex'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'discordrb', '~> 3.2'
  spec.add_runtime_dependency 'excon'
  spec.add_runtime_dependency 'json'
  spec.add_runtime_dependency 'trollop', '~> 2.1'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
