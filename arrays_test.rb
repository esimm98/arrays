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
end