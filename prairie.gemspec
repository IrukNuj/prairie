lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prairie/version"

Gem::Specification.new do |spec|
  spec.name          = "prairie-ghtpl"
  spec.version       = Prairie::VERSION
  spec.authors       = ["IrukNuj"]
  spec.email         = ["b1716568@planet.kanazawa-it.ac.jp"]

  spec.summary       = %q{Create commit template.}
  spec.description   = %q{Create `.githubmessage`, `.github/ISSUE_TEMPLATE.md`, `.github/PULL_REQUEST_TEMPLATE.md`.}
  spec.homepage      = "https://github.com/IrukNuj/prairie"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/IrukNuj/prairie"
  # spec.metadata["changelog_uri"] = "https://github.com/IrukNuj/prairie"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["prairie"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
