require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
 
get '/' do
    'Hello World! Currently running version ' + Twilio::VERSION + \
        ' of the twilio-ruby library.'
end

get '/frontdoor' do
  Twilio::TwiML::Response.new do |r|
    #r.Play digits: '9', loop: 10
    r.Dial "415-265-0358", callerId: "415-936-1561"
  end.text
end
