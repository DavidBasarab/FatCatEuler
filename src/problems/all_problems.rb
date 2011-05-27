$LOAD_PATH.unshift(File.dirname(__FILE__))

require "euler_problem"
require "problem1"
require "problem2"

def problems
  problems = Hash.new
  problems["Problem 2"] = get_problem_2
  problems["Problem 1"] = Problem1.new
  problems
end

def get_problem_2
  prob2 = Problem2.new
  prob2.max_value = 4000000
  prob2
end



