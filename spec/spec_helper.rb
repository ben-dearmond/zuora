require 'zuora'
require 'artifice'
require 'digest/md5'
require 'factory_girl'

Dir["#{File.dirname(__FILE__)}/../spec/support/**/*.rb"].sort.each { |ext| require ext }
Dir["#{File.dirname(__FILE__)}/../spec/factories/*.rb"].sort.each { |ext| require ext }

RSpec.configure do |c|
  #c.fail_fast = true
end

def generate_key
  Digest::MD5.hexdigest("#{Time.now}-#{rand}")
end

