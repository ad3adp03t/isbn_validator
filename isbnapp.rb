def isbn_cleaner(isbn)
	isbn = isbn.gsub(/[-]/, '')
	isbn = isbn.gsub(/[ ]/, '')
end	
def check_digit_generator(isbn)
	arr=[]
	isbn = isbn.chars
	isbn.each_with_index do |va,ind|
		arr.push(va.to_i * (ind+1).to_i)
	end
	p arr	
end	
p 	check_digit_generator("407234058")
