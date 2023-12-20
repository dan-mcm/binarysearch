require 'minitest/autorun'
require_relative '../lib/binary_search'

class BinarySearchTest < Minitest::Test
    def setup
        @sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        @binary_sorted_instance = BinarySearch.new(@sorted_array)
    end

    def test_existing_sorted_array
        assert_equal(5, @binary_sorted_instance.search(6))
    end

    def test_nonexistent_sorted_array
        assert_equal(-1, @binary_sorted_instance.search(11))
    end
end