source "http://rubygems.org"

# Specify your gem's dependencies in libvirt.gemspec
gemspec

group :development do
  # Not JRuby, which doesn't like bluecloth
  platforms :ruby, :mri do
    gem "yard", "~> 0.8.3"
    gem "bluecloth", "~> 2.2.0"
  end
end
