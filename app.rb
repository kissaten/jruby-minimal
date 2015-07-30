require 'rack'
require "rack-timeout"

#use Rack::Timeout          # Call as early as possible so rack-timeout runs before all other middleware.
Rack::Timeout.timeout = 30


app = Proc.new do |env|
  sleep 10
  ['200', {'Content-Type' => 'text/html'}, ['Hello from JRuby.']]
end

Rack::Handler::WEBrick.run app, :Port => ENV['PORT'] || 3000
