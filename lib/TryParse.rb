require 'rubygems'
require 'treetop'
require 'string_hash.rb'
module Tryparse
  def self.try(string)
    parser = StringHashParser.new
    if parser.parse(string)
      return true
    else
      return false
    end
  end
end
