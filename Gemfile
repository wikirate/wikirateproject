source 'http://rubygems.org'

path "./vendor/decko" do
  gem "card", require: false
  gem "cardname"
  gem "decko"
end

path "./vendor/decko/mod" do
  gem "card-mod-defaults"
  # gem "card-mod-delayed_job"
end

path "./vendor/card-mods" do
  gem "card-mod-social"
  gem "card-mod-thumbnail"
end

gem 'mysql2'
gem 'dalli'

gem "ed25519", "~>1.2"
gem "bcrypt_pbkdf", "~>1.0"

group :development do
  path "./vendor/decko/mod" do
    gem "card-mod-platypus"
    gem "card-mod-monkey"
  end

  gem "capistrano"
  gem "capistrano-bundler"
  gem 'capistrano-git-with-submodules', '~> 2.0'
  #gem "capistrano-maintenance", require: false
  gem "capistrano-passenger"
  gem "capistrano-rvm"

  gem "decko-cap", path: "./vendor/decko-cap"
end

Dir.glob("mod/**{,/*/**}/Gemfile").each do |gemfile|
  instance_eval File.read(gemfile)
end
