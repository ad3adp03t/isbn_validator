def isbn_cleaner(isbn)
	isbn = isbn.gsub(/[-]/,'')
	isbn = isbn.gsub(/[ ]/,'')
	isbn_length_check(isbn)
end	
			

def isbn_length_check(isbn)
	if isbn.length == 10
		alpha_check10(isbn)
	elsif isbn.length == 13
		alpha_check13(isbn)
	else 
		false	
	end
end		



def alpha_check10(isbn)
	last = last
	upper = *("A".."Z")
	lower = *("a".."z")
	isbn = isbn.chars
	last = isbn.pop
	if last == "x"
		isbn.push("10")
	else
		isbn.push(last)
	end	
	 
	if (upper-isbn).size == 26&& (lower-isbn).size == 26
		check_digit_generator10(isbn)
	else	
		false
	end
end	
# alpha_check10("12355679")

def alpha_check13(isbn)
	upper = *("A".."Z")
	lower = *("a".."z")
	isbn = isbn.chars
	 
	if (upper-isbn).size == 26&& (lower-isbn).size == 26
		check_digit_13(isbn)
	else	
		false
	end
end	
# alpha_check13("123556798S387")

def check_digit_generator10(isbn)
	arr=[]
	
	check = isbn.pop
	check = check.to_i
	
	isbn.each_with_index do |va,ind|
		arr.push(va.to_i * (ind+1).to_i)
	end	
	
	sum = 0
	arr.each { |a| sum+=a }
	sum = sum%11
	if sum == check 
		true
	else 
		false
	end		
end	
 # p 	check_digit_generator10("080442957X")

def check_digit_13(isbn)
	arr = []
	sum = 0
	
	check = isbn.pop.to_i
	isbn.each_with_index do |x,y|
		if (y+1) % 2 == 0
			arr.push(x.to_i*3)
		else
			arr.push(x.to_i)
		end
	end		
	arr.each {|a|sum+=a}
	sum = sum%10 
	sum = (10-sum)
	sum = sum%10
	if check == sum
		true
	else 
		false	
	end	
end

	
 p isbn_cleaner("877195869x")


				



