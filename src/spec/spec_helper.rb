$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', "problems"))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', "lib"))

require 'rspec'
require 'all_problems'
require 'prime_helper'