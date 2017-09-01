# def isbn_cleaner(isbn)
# 	isbn = isbn.gsub(/[-]/,'')
# 	isbn = isbn.gsub(/[ ]/,'')
# end	
# def isbn_alpha_check(isbn)
# 	isbn = isbn.chars
# 	last = isbn.pop
# 	if last == "x"||"X"
# 		isbn.push("10")
# 	else
# 		isbn.push(last)	
# 	end
# 		if isbn.include?('a'||'b'||'c'||'d'||'e'||'f'||'g'||'h'||'i'||'j'||'k'||'l'||'m'||'n'||'o'||'p'||'q'||'r' ||'s'||'t'||'u'||'v'||'w'||'x'||'y'||'z'||'A'||'B'||'C'||'D'||'E'||'F'||'G'||'H'||'I'||'J'||'K'||'L'||'M'||'N'||'O'||'P'||'Q'||'R'||'S'||'T'||'U'||'V'||'W'||'X'||'Y'||'Z')
# 	# if isbn.include?("A".."Z")||("a".."z")
# 		p "Not A Valid ISBN"
# 	end	
# end				


# #p isbn_alpha_check("8637a028b0")
# p isbn_alpha_check("401703793x")

# def isbn_length_check(isbn)
# 	isbn = isbn_cleaner(isbn)
# 	if isbn.length == 10
# 		true
# 	else
# 		false
# 	end
# end		
def check_digit_generator(isbn)
	arr=[]
	isbn = isbn.chars
	check = isbn.pop
	isbn.each_with_index do |va,ind|
		arr.push(va.to_i * (ind+1).to_i)
	end
	sum = 0
	arr.each { |a| sum+=a }
	sum = sum%11
	check = check.to_i
	if sum == check 
		p "This Is A valid ISBN"
	else 
		p "This Is Not A Valid ISBN"
	end		
end	



	
 p 	check_digit_generator("0471958697")
