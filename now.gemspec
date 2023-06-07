
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "now/version"

Gem::Specification.new do |spec|
  spec.name = "now"
  spec.version = Now::VERSION
  spec.authors = ["Caleb Hearth"]
  spec.email = ["caleb@calebhearth.com"]

  spec.summary = "Automate your /now pages with data from 3rd party services."
  spec.homepage = "https://github.com/calebhearth/now"
  spec.license = "Hippocratic License HL3-BOD-LAW-MEDIA-MIL-SOC-SUP-SV-USTA"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  end
  spec.require_paths = "lib"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
