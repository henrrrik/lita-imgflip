Gem::Specification.new do |spec|
  spec.name          = "lita-imgflip"
  spec.version       = "1.1.1"
  spec.authors       = ["Henrik Sjökvist"]
  spec.email         = ["henrik.sjokvist@gmail.com"]
  spec.description   = %q{A Lita handler for generating meme images using imgflip.com.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/henrrrik/lita-imgflip"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.1", ">= 11.1.2"
  spec.add_development_dependency "rspec", "~> 3.4", ">= 3.4.0"
  spec.add_development_dependency "simplecov", "~> 0.11", ">= 0.11.2"
  spec.add_development_dependency "coveralls", "~> 0.8", ">= 0.8.13"
end
