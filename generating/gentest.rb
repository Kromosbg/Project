load 'num.rb'
load 'general.rb'

if number_of_tests == nil
	number_of_tests = 1
end

#number_of_tests = ARGV[0]
 
number_of_tests.to_f.times do |f|
test = Test.new(f+1 )
test.generate_tests
end
