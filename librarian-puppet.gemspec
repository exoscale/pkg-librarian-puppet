#########################################################
# This file has been automatically generated by gem2tgz #
#########################################################
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "librarian-puppet"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Sharpe", "Carlos Sanchez"]
  s.date = "2018-01-15"
  s.description = "Simplify deployment of your Puppet infrastructure by\n  automatically pulling in modules from the forge and git repositories with\n  a single command."
  s.email = ["tim@sharpe.id.au", "carlos@apache.org"]
  s.executables = ["librarian-puppet"]
  s.files = [".gitignore", "LICENSE", "README.md", "bin/librarian-puppet", "lib/librarian/puppet.rb", "lib/librarian/puppet/action.rb", "lib/librarian/puppet/action/install.rb", "lib/librarian/puppet/action/resolve.rb", "lib/librarian/puppet/cli.rb", "lib/librarian/puppet/dependency.rb", "lib/librarian/puppet/dsl.rb", "lib/librarian/puppet/environment.rb", "lib/librarian/puppet/extension.rb", "lib/librarian/puppet/lockfile.rb", "lib/librarian/puppet/source.rb", "lib/librarian/puppet/source/forge.rb", "lib/librarian/puppet/source/forge/repo.rb", "lib/librarian/puppet/source/forge/repo_v1.rb", "lib/librarian/puppet/source/forge/repo_v3.rb", "lib/librarian/puppet/source/git.rb", "lib/librarian/puppet/source/githubtarball.rb", "lib/librarian/puppet/source/githubtarball/repo.rb", "lib/librarian/puppet/source/local.rb", "lib/librarian/puppet/source/path.rb", "lib/librarian/puppet/source/repo.rb", "lib/librarian/puppet/templates/Puppetfile", "lib/librarian/puppet/util.rb", "lib/librarian/puppet/version.rb"]
  s.homepage = "https://github.com/voxpupuli/librarian-puppet"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "1.8.23"
  s.summary = "Bundler for your Puppet modules"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<aruba>, ["< 0.8.0"])
      s.add_development_dependency(%q<cucumber>, ["< 3.0.0"])
      s.add_runtime_dependency(%q<librarianp>, [">= 0.6.3"])
      s.add_development_dependency(%q<minitest>, ["~> 5"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<puppet>, ["~> 5.2.0"])
      s.add_runtime_dependency(%q<puppet_forge>, ["~> 2.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<rsync>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0.9.0"])
    else
      s.add_dependency(%q<aruba>, ["< 0.8.0"])
      s.add_dependency(%q<cucumber>, ["< 3.0.0"])
      s.add_dependency(%q<librarianp>, [">= 0.6.3"])
      s.add_dependency(%q<minitest>, ["~> 5"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<puppet>, ["~> 5.2.0"])
      s.add_dependency(%q<puppet_forge>, ["~> 2.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rsync>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0.9.0"])
    end
  else
    s.add_dependency(%q<aruba>, ["< 0.8.0"])
    s.add_dependency(%q<cucumber>, ["< 3.0.0"])
    s.add_dependency(%q<librarianp>, [">= 0.6.3"])
    s.add_dependency(%q<minitest>, ["~> 5"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<puppet>, ["~> 5.2.0"])
    s.add_dependency(%q<puppet_forge>, ["~> 2.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rsync>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0.9.0"])
  end
end
