load 'num.rb'
load 'general.rb'

number_of_tests = ARGV[0]

if number_of_tests == nil
	number_of_tests = 1
end

 
number_of_tests.to_f do |f|
test = Test.new(f+1 )
test.generate_tests
end

