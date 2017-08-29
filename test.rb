require "minitest/autorun"
require_relative "isbnapp.rb"

class TestISBN < Minitest::Test
  	def test_1_equals_1
    	assert_equal(10-5, 3+2)
  	end
  	def test_for_length
  		num ="6836401867"
  		assert_equal(num.length,10)
  	end	

end
