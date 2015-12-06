require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
 
get '/' do
    'Hello World! Currently running version ' + Twilio::VERSION + \
        ' of the twilio-ruby library.'
end

get '/frontdoor' do
  Twilio::TwiML::Response.new do |r|
    r.Say digits: 'ww9'
  end.text
end
