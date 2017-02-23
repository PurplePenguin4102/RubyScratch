#!/usr/bin/ruby
require 'thread'

puts "This is the threading demo! Demo one : two threads"

count1 = count2 = 0
difference = 0
counter = Thread.new do
   loop do
      count1 += 1
      sleep 0.001
      count2 += 1
   end
end
spy = Thread.new do
   loop do
      difference += (count1 - count2).abs
   end
end
sleep 1
puts "count1 :  #{count1}"
puts "count2 :  #{count2}"
puts "difference : #{difference}"

puts "---"
puts "spy's status : #{spy.status}"
puts "counter's status : #{counter.status}"
puts "killing spy  with spy.kill : #{spy.kill} and counter #{counter.kill}"

loop do
	puts "spy.status : #{spy.status}"
	sleep 1
	unless spy.status
		puts "spy.status : #{spy.status}"
		break
	end
end

puts "---"
puts "Demo two : outputting from within a thread"

thread_arr = []
thread_arr << Thread.new do
	loop do
		puts "Thread 1"
		sleep 1
	end
end

thread_arr << Thread.new do
	loop do
		puts "Thread 2"
		sleep 2
	end
end

thread_arr << Thread.new do
	loop do
		puts "Thread 3"
		sleep 8
	end
end

sleep 10
thread_arr.each { |thr| thr.kill }
puts "Threads are killed!"