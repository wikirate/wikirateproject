source 'http://rubygems.org'

gem "mysql2"
gem 'net-smtp', require: false
gem 'net-imap', "0.3.7", require: false
gem 'net-pop', require: false
gem "tzinfo-data", require: false

path "./vendor/decko" do
  gem "card", require: false
  gem "cardname"
  gem "decko"
end

path "./vendor/decko/mod" do
  gem "card-mod-defaults"
  gem "card-mod-delayed_job"
end

path "./vendor/card-mods" do
  gem "card-mod-social"
  gem "card-mod-filter"
  gem "card-mod-new_relic"
  gem "card-mod-thumbnail"
  gem "card-mod-google_analytics"
end

group :development do
  gem "puma"

  path "./vendor/decko/mod" do
    gem "card-mod-platypus"
    gem "card-mod-monkey"
  end
end

group :production do
  gem "fog-aws"
  gem "dalli"
end
