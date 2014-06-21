def rand_generate(length)
  ((0..length).map{rand(256).chr}*"").unpack("H*")[0][0,length]
end



value = ""; 8.times{value  << (65 + rand(25)).chr}

no = rand_generate(4)
ni = rand_generate(4)

File.open("testfile.c", "w") do |file| 
	file.write("#include <stdio.h> \n 
	int main(){ \n \t
	int orig = 0x#{no}; \n \t 
	int num = 0x#{ni}; \n\t
	int result = orig & num; \n\t
	printf(\"%d\",result); \n\t
	return 0; \n}")
end

system("gcc testfile.c");
info = system("./a.out > info.txt");

f = File.open("info.txt", "r")
f.each_line do |line|
  puts line
end
f.close
