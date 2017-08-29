def dash_remove(isbn)
	isbn.gsub!(/[-]/, '')
end	

p dash_remove("12-345-67") 

def space_remove(isbn)
	isbn.gsub!(/[ ]/, '')
end	

p space_remove("12 345 67") 