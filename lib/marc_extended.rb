require 'rubygems'
require 'marc'

Dir[File.dirname(__FILE__) + '/marc_extended/*.rb'].each {|file| require file }