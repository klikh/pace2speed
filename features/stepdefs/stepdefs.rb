require_relative '../../pace2speed'
require 'rspec/expectations'

When /^pace2speed ([\d\:]+) is called$/ do |pace|
  @result = pace2speed(pace)
end

Then /^it should print '(\w+ km\/h)'$/ do |speed|
  @result.should == speed
end
  
