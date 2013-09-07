require_relative '../../pace2speed'
require 'rspec/expectations'

When /^pace2speed (.+) is called$/ do |pace|
  @result = pace2speed(pace)
end

Then /^it should print '(.+)'$/ do |result|
  @result.should == result
end
  
