require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal [2, 3], @m.middles([1, 2, 3], [2, 3, 4])
		assert_equal [0, 1], @m.middles([0, 0, 0], [2, 1, 2])
		assert_equal [-5, 4], @m.middles([10, -5, 1], [2, 4, 5])
	end
	
	def test_max
		assert_equal 5, @m.max([2, -5, 5, 4])
		assert_equal 3, @m.max([3, 2, 1])
		assert_equal 7, @m.max([5, 7, 6, 2, 3])
		assert_equal 0, @m.max([-3, 0, 0, -1])
	end

	def test_lucky13
		assert_equal true, @m.lucky13?([2, 0, 5, 4, 10])
		assert_equal true, @m.lucky13?([6, 4, 2, 7])
		assert_equal false, @m.lucky13?([1, 4, 1, 7])
		assert_equal false, @m.lucky13?([2, 3, 2])
	end

	def test_repeat_separator
		assert_equal 'ThisAndThis', @m.repeat_separator('This', 'And', 2)
		assert_equal 'OnAndOnAndOnAndOn', @m.repeat_separator('On', 'And', 4)
	end

	def test_same_ends
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 0)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 2)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 7)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 3)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 5)
	end

	def test_starry
		assert_equal true, @m.starry?('a*abc*c')
		assert_equal true, @m.starry?('****')
		assert_equal false, @m.starry?('abc*efg')
		assert_equal false, @m.starry?('12*34')
	end

end