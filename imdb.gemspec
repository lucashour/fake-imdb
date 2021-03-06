require_relative 'lib/imdb/version'

Gem::Specification.new do |spec|
  spec.name          = "imdb"
  spec.version       = Imdb::VERSION
  spec.authors       = ["Lucas Hourquebie"]
  spec.email         = ["lucashour1993@gmail.com"]

  spec.summary       = "Simple gem for academic purposes"
  spec.description   = "Simple gem for academic purposes"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  spec.metadata["source_code_uri"] = "https://github.com/lucashour/fake-imdb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.files = [
    'lib/imdb',
    'lib/imdb/connector'
  ]
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.require_paths = ['lib']

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
