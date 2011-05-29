$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'problems/all_problems'

problems.each { |id, problem|
  puts "----------------------------#{id}--------------------------------------------"
  puts ""
  puts ""
  start_time = Time.now
  problem.solve
  total_solve_time = Time.now - start_time
  puts ""
  puts ""
  puts "Time for #{id} is #{total_solve_time}"
  puts ""
  puts ""
}