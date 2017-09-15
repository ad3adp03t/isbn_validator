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
  	def test_if_arr
  		num ="123456"
  		assert_equal(["1","2","3","4","5","6","7","8","9","2"],check_digit_generator10(num))
  	end	
    def 


end
