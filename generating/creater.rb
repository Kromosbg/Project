class Creater
	@Code
	@testnum
	
	def initialize (num)
		@testnum = num
		@create_code = ""
		
	end

	def set_code(code)
		@create_code = code
	end

def C_file
	File.open("testfile.c", "w") do |file|
		file.write("{@create_code}")
		
		
	system("gcc testfile.c");
		result = system("./a.out >> quiz#{@testnum}info.txt");
	end
	
	
	def write_in_txt
		info = "quiz#{@testnum}.txt"
		File.open(File.expand_path(info), "a") do |file|
			file << @create_code.split("printf")[0]
			file << "\n\n"
		end
	end
end
end
