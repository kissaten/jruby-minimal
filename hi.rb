require 'sinatra'
#require "rack-timeout"

#use Rack::Timeout          # Call as early as possible so rack-timeout runs before all other middleware.
#Rack::Timeout.timeout = 5
#Rack::Timeout.register_state_change_observer(:my_app_observer) do |env|
  #if env["PATH_INFO"] = "/hi"
    #puts "env: #{env["rack-timeout.info"].inspect}"
  #end
#end

class Pumatra < Sinatra::Base
  get '/hi' do
    sleep 10
    "Hello World!"
  end
  run! if app_file == $0
end
