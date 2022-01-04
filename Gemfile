source 'http://rubygems.org'

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
  gem "card-mod-thumbnail"
  gem "card-mod-google_analytics"
end

gem 'mysql2'
gem "ed25519", "~>1.2"
gem "bcrypt_pbkdf", "~>1.0"

group :development do
  path "./vendor/decko/mod" do
    gem "card-mod-platypus"
    gem "card-mod-monkey"
  end

  gem "decko-cap", path: "./vendor/decko-cap"
end

group :production do
  gem 'dalli'
end
