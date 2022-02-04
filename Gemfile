source 'http://rubygems.org'

gem "mysql2"

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

group :development do
  gem "puma"
  
  path "./vendor/decko/mod" do
    gem "card-mod-platypus"
    gem "card-mod-monkey"
  end

  gem "decko-cap", path: "./vendor/decko-cap"
end

group :production do
  gem "fog-aws"
  gem "dalli"
end
