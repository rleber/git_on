# frozen_string_literal: true

require_relative "lib/git_on/version"

Gem::Specification.new do |spec|
  spec.name = "git_on"
  spec.version = GitOn::VERSION
  spec.authors = ["Richard LeBer"]
  spec.email = ["richard.leber@gmail.com"]

  spec.summary = "Check git status."
  spec.description = <<-DESCRIPTION
  Provides a method to query status of the git repository in which the caller's
  source code resides. Handles cases where Git is not installed, not initiated for
  this code, or nothing has been checked in.
  DESCRIPTION
  spec.homepage = "https://github.com/rleber/git_on"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/master/CHANGELOG.md"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .envrc .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
