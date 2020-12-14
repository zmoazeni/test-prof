# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "test-prof"
  spec.version = "0.12.2"
  spec.authors = ["Vladimir Dementyev"]
  spec.email = ["dementiev.vm@gmail.com"]

  spec.summary = "Ruby applications tests profiling tools"
  spec.description = %{
    Ruby applications tests profiling tools.

    Contains tools to analyze factories usage, integrate with Ruby profilers,
    profile your examples using ActiveSupport notifications (if any) and
    statically analyze your code with custom RuboCop cops.
  }
  spec.homepage = "http://github.com/test-prof/test-prof"
  spec.license = "MIT"
  spec.metadata = {
    "bug_tracker_uri" => "http://github.com/test-prof/test-prof/issues",
    "changelog_uri" => "https://github.com/test-prof/test-prof/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://test-prof.evilmartians.io/",
    "homepage_uri" => "https://test-prof.evilmartians.io/",
    "source_code_uri" => "http://github.com/test-prof/test-prof"
  }

  spec.files = Dir.glob("lib/**/*") + Dir.glob("config/**/*") + Dir.glob("assets/**/*") + %w[README.md LICENSE.txt CHANGELOG.md]

  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "isolator", ">= 0.6"
  spec.add_development_dependency "minitest", ">= 5.9"
  spec.add_development_dependency "rubocop", ">= 0.77.0"
end
