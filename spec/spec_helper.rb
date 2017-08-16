$LOAD_PATH.unshift File.expand_path('..', __dir__)

ENV['RACK_ENV'] = 'test'

Bundler.require

Dir[File.join(File.dirname(__FILE__), 'support', '**/*.rb')].each do |file|
  require file
end

require 'slack-ruby-bot-server/rspec'
