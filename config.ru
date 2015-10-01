require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:template_location] = './stylesheets'
use Sass::Plugin::Rack

# use Rack::Coffee, root: 'public', urls: '/javascripts'
use Rack::Coffee, urls: '/javascripts'

require './app'
run App
