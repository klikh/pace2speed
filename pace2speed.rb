#!/usr/bin/env ruby
require 'trollop'

# $program = File.basename(__FILE__)
#   opts = Trollop::options do
#     banner <<-EOT
#       Usage: #$program <time>
#       time should be specified in HH:MM:SS format.
#       Leading zeros may be omitted
#       Hours may be omitted
# EOT
#   end

def pace2speed(args)
  args = [args] unless args.is_a? Array
  
  if (args[0].index(":"))
    return printable(speedFromPace(args[0])) + " km/h"  
  elsif args[0].index(".")
    return paceFromSpeed(args[0])
  end
end

def speedFromPace(pace)
  parts = pace.split(':')
  secs = parts[0].to_i * 60 + parts[1].to_i
  speed = 3600.0/secs
end

def paceFromSpeed(speed)
  km1 = (3600.0 / speed.to_f).round
  min = km1 / 60
  secs = km1 % 60
  return "#{min}:#{secs}"
end

def printable(float_speed)
  return sprintf("%g", float_speed)
end