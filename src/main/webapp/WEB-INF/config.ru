# Pull in our current path to make sure we can safely require app.rb
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'app'

map '/' do
 run Sinatra::Application
end
