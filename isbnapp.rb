# def isbn_cleaner(isbn)
# 	isbn = isbn.gsub(/[-]/,'')
# 	isbn = isbn.gsub(/[ ]/,'')
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


# def alpha_check10(isbn)
# 	last = last
# 	upper = *("A".."Z")
# 	lower = *("a".."z")
# 	isbn = isbn.chars
# 	last = isbn.pop
# 	if last == "x"
# 		isbn.push("10")
# 	else
# 		isbn.push(last)
# 	end	
# 	p isbn
# 	if isbn.include?(upper) 
# 		p "Not a valid ISBN"
# 	elsif isbn.include?(lower)
# 		p "not a valid ISBN"
# 	else	
# 		p "Valid"
# 	end
		
# end		



# def alpha_check10(isbn)
# 	last = last
# 	upper = *("A".."Z")
# 	lower = *("a".."z")
# 	isbn = isbn.chars
# 	last = isbn.pop
# 	if last == "x"
# 		isbn.push("10")
# 	else
# 		isbn.push(last)
# 	end	
	 
# 	if (upper-isbn).size == 26&& (lower-isbn).size == 26
# 		p "Valid ISBN"
# 	else	
# 		p "not valid"
# 	end
# end	
# alpha_check10("12355679")

# def alpha_check13(isbn)
# 	upper = *("A".."Z")
# 	lower = *("a".."z")
# 	isbn = isbn.chars
	 
# 	if (upper-isbn).size == 26&& (lower-isbn).size == 26
# 		p "Valid ISBN"
# 	else	
# 		p "not valid"
# 	end
# end	
# alpha_check13("123556798S387")

def check_digit_generator10(isbn)
	arr=[]
	isbn = isbn.chars
	check = isbn.pop
	check = check.to_i
	
	isbn.each_with_index do |va,ind|
		arr.push(va.to_i * (ind+1).to_i)
	end	
	
	sum = 0
	arr.each { |a| sum+=a }
	sum = sum%11
	if check == "x"||"X" && sum == 10
		p "Valid"
	elsif sum == check 
		p "This Is A valid ISBN"
	else 
		p "This Is Not A Valid ISBN"
	end		
end	
 p 	check_digit_generator10("080442957X")

# def check_digit_13(isbn)
# 	arr = []
# 	sum = 0
# 	isbn = isbn.chars
# 	check = isbn.pop.to_i
# 	isbn.each_with_index do |x,y|
# 		if (y+1) % 2 == 0
# 			arr.push(x.to_i*3)
# 		else
# 			arr.push(x.to_i)
# 		end
# 	end		
# 	arr.each {|a|sum+=a}
# 	sum = sum%10 
# 	sum = (10-sum)
# 	sum = sum%10
# 	p check
# 	p sum
# 	if check == sum
# 		p "valid check digit"
# 	else 
# 		p "not valid"	
# 	end	
# end
# p check_digit_13("9780470059029")


				



