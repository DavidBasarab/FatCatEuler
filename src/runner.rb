$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'problems/all_problems'

problems.each { |id, problem|
  puts "----------------------------#{id}--------------------------------------------"
  puts ""
  puts ""
  problem.solve
  puts ""
  puts ""
}
