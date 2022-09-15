# frozen_string_literal: true

source "https://rubygems.org"

# gem "rails"
# gem "pry"
gem "sinatra-activerecord"
gem "psych"
gem "activerecord"
gem "rake"
# gem "sqlite3"
gem "require_all"
gem "rspec"
gem "sinatra"
gem "sinatra-cross_origin"

# A fast and simple web server
# https://github.com/macournoyer/thin
gem "thin"
# Rack middleware. Used specifically for parsing the request body into params.
# https://github.com/rack/rack-contrib
gem "rack-contrib"
# More Rack middleware! Used to handle CORS requests
# https://github.com/cyu/rack-cors
gem "rack-cors"
# # Automatically reload when there are changes
#   # https://github.com/alexch/rerun
#   gem "rerun"

group :development do
    gem "pry"
    gem "sqlite3"
    gem "rerun"
end
group :production do
    gem "pg"
end