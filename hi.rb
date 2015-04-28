require 'java'
require 'sinatra'

class Pumatra < Sinatra::Base

  get '/' do
    "Hello from JRuby!"
  end
  run! if app_file == $0
end
