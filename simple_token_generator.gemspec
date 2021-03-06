
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_token_generator/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_token_generator'
  spec.version       = SimpleTokenGenerator::VERSION
  spec.authors       = ['Nicolai Sticht']
  spec.email         = ['nsticht@livinglogic.de']

  spec.summary       = 'Generates a simple Token out of uppercase letters and delimiters.'
  spec.description   = 'Generates a simple token consisting of uppercase letters with the posibillity to define a prefix, the delimiter, the number of slices and the size of a block.'
  spec.homepage      = 'https://github.com/nicosticht/simple_token_generator'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ''
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
