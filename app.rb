require 'rack'

app = Proc.new do |env|
  ['200', {'Content-Type' => 'text/html'}, ['Hello from JRuby.']]
end

Rack::Handler::WEBrick.run app, :Port => ENV['PORT'] || 3000
