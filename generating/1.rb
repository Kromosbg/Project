def rand_hexstr(length)
  ((0..length).map{rand(256).chr}*"").unpack("H*")[0][0,length]
end
 
 
n1 = rand_hexstr(4)
n2 = rand_hexstr(4)

File.open("testfile.c", "w") do |file| 
	file.write("#include <stdio.h> \n 
	int main(){ \n \t
	int orig = 0x#{n1}; \n \t 
	int num = 0x#{n2}; \n\t
	int result = orig & num; \n\t
	printf(\"%d\",result); \n\t
	return 0; \n}")

end

system("gcc test.c");
info = system("./a.out > info.txt");

File.open('info.txt', 'r') do |f1|  
  while line = f1.gets  
    puts line  
  end  
end  
