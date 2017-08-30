# def isbn_cleaner(isbn)
# 	isbn = isbn.gsub(/[-]/, '')
# 	isbn = isbn.gsub(/[ ]/, '')
# end	
def isbn_alpha_check(isbn)
	isbn.to_i.chars
	isbn.each_with_index do |num,ind|
		while ind<=8
			if num is == *(A..Z) || *(a..z)
				p "Invalid Number"
		end	
		while ind==9
			if num is == *(A..W)|| *(a..w)||Y||y||Z||z
				p "Invaid Number"
		end
	end
end				


p isbn_alpha_check("8637a028b0")
p isbn_alpha_check("401703793x")

# def isbn_length_check(isbn)
# 	isbn = isbn_cleaner(isbn)
# 	if isbn.length == 10
# 		true
# 	else
# 		false
# 	end
# end		
# def check_digit_generator(isbn)
# 	arr=[]
# 	isbn = isbn.chars
# 	isbn.each_with_index do |va,ind|
# 		arr.push(va.to_i * (ind+1).to_i)
# 	end
# 	sum = 0
# 	arr.each { |a| sum+=a }
# 	sum = sum%11
# end	
	
# p 	check_digit_generator("047195869")
