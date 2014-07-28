unless RUBY_PLATFORM == 'java'
  raise 'I must be run on JRuby'
end

# Hack our GEM_HOME to make sure that the `rubygems` support can find our
# unpacked gems in ./vendor/
vendored_gems = File.expand_path(File.dirname(__FILE__) + '/vendor')
if File.exists?(vendored_gems)
  ENV['GEM_HOME'] = vendored_gems
end

jar_cache = File.expand_path(File.dirname(__FILE__) + '/../../../../.jarcache/')
if File.exists?(jar_cache)
  Dir["#{jar_cache}/*.jar"].each { |j| require j }
end

require 'rubygems'
require 'sinatra'

require 'java'


puts ">> Loading Kafka code.."
# Pull in our Kafka dependency
java_import 'kafka.producer.ProducerConfig'
puts ">> Kafka code has been loaded"

get '/' do
  "Hello world! The time is: #{Time.now.utc}"
end
