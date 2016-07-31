# -*- encoding: utf-8 -*-
# stub: salesforce_id_converter 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "salesforce_id_converter"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jack Bearden"]
  s.date = "2015-02-25"
  s.description = "Tiny library that converts Salesforce 15 character ids to 18 character ids and visa versa"
  s.email = ["jack@jackbearden.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "lib/salesforce_id_converter.rb", "lib/salesforce_id_converter/conversion.rb", "lib/salesforce_id_converter/error.rb", "lib/salesforce_id_converter/version.rb", "salesforce_id_converter.gemspec", "test/conversion_test.rb", "test/helper.rb"]
  s.homepage = "http://jackbearden.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.0"
  s.summary = "No frills Salesforce ID converter"
  s.test_files = ["test/conversion_test.rb", "test/helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
