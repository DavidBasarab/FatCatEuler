$LOAD_PATH.unshift(File.dirname(__FILE__))

require "euler_problem"
require "problem1"

def problems
  problems = Hash.new
  problems[:problem_1] = Problem1.new
  problems
end



