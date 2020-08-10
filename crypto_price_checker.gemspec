require_relative 'lib/crypto_price_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "crypto_price_checker"
  spec.version       = CryptoPriceChecker::VERSION
  spec.authors       = ["wulfenhausen"]
  spec.email         = ["william.findiesen@gmail.com"]

  spec.summary       = %q{A gem that allows the user to do price checks on cryptocurrencies}
    spec.description   = %q{This CLI accesses data from https://www.coingecko.com/ and allows users to learn more about cryptocurrencies, and check price}
    spec.homepage      = "https://github.com/wulfenhausen/crypto_price_checker"
    spec.license       = "MIT"
    spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
 
    #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
 
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/wulfenhausen/crypto_price_checker"
    #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
 
    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
 
    spec.add_development_dependency "bundler", "~> 2.1.4"
    spec.add_development_dependency "rake", ">= 12.3.3"
    spec.add_development_dependency "rspec"
    spec.add_development_dependency "pry"
 
    spec.add_dependency "colorize"
end
