# encoding: UTF-8
require 'rack'
require  'rack/contrib'

use Rack::Deflater

use Rack::Static,
  :urls => ['/'],
  :root => "design",
  :index => 'about.html',
  :header_rules => [[:all, {'Cache-Control' => 'public, max-age=1'}]]


run lambda { |env| }