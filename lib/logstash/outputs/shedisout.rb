# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# An shedisout output that does nothing.
class LogStash::Outputs::Shedisout < LogStash::Outputs::Base
  config_name "shedisout"
  concurrency :single

  default :codec, "line"

  
  def register
  end # def register

  
  def multi_receive_encoded(encoded)
  	encoded.each do |event,data|
  		$stdout.write(data)
  	end
  end

  
end # class LogStash::Outputs::Shedisout
