require 'minitest/autorun'
require_relative '../lib/binary_search'

class BinarySearchTest < Minitest::Test
    def setup
        @sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        @binary_sorted_instance = BinarySearch.new(@sorted_array)

        # primarily for use if we default to a linearsearch result if array is not sorted
        @unsorted_array = [5, 2, 8, 1, 9, 3, 6, 7, 10, 4]
        @binary_unsorted_instance = BinarySearch.new(@unsorted_array)

        @positive_negative_array = [-5, -2, 0, 2, 4, -8, 7, -10, 3, 1]
        @binary_positive_negative_instance = BinarySearch.new(@positive_negative_array)

        @decimal_array = [1.5, 2.2, 3.7, 4.1, 5.9, 6.4, 7.0, 8.6, 9.2, 10.8]
        @binary_decimal_instance = BinarySearch.new(@decimal_array)

        @large_array_sorted = (-1000..1000).to_a
        @large_array_sorted_instance = BinarySearch.new(@large_array_sorted)

        # primarily for use if we default to a linearsearch result if array is not sorted
        @large_array_unsorted = (-1000..1000).to_a.shuffle
        @large_array_unsorted_instance = BinarySearch.new(@large_array_unsorted)
    end

    def test_existing_sorted_array
        assert_equal(5, @binary_sorted_instance.search(6))
    end

    def test_nonexistent_sorted_array
        assert_equal(-1, @binary_sorted_instance.search(11))
    end

    # definition of BinarySearch has pre-condition of array to already be unsorted so not relevant... can be used later stage for testing additional LinearSearch
    # def test_existing_unsorted_array
    #     assert_equal 5, @binary_unsorted_instance.search(6)
    # end

    def test_nonexistent_unsorted_array
        assert_equal(-1, @binary_unsorted_instance.search(11))
    end

    def test_existing_element_positive_negative_array
        assert_equal 2, @binary_positive_negative_instance.search(0)
    end

    def test_nonexistent_element_positive_negative_array
        assert_equal(-1, @binary_positive_negative_instance.search(-6))
    end

    def test_existing_element_decimal_array
        assert_equal 3, @binary_decimal_instance.search(4.1)
    end

    def test_nonexistent_element_decimal_array
        assert_equal(-1, @binary_decimal_instance.search(5.0))
    end

    def test_existing_element_large_array_sorted
        assert_equal 1043, @large_array_sorted_instance.search(43)
    end

    def test_nonexistent_element_large_array_sorted
        assert_equal(-1, @large_array_sorted_instance.search(1001))
    end

    # definition of BinarySearch has pre-condition of array to already be unsorted so not relevant... can be used later stage for testing additional LinearSearch
    # def test_existing_element_large_array_unsorted
    #     assert_equal 42, @large_array_unsorted_instance.search(42)
    # end

    def test_nonexistent_element_large_array_unsorted
        assert_equal(-1, @large_array_unsorted_instance.search(1001))
    end
end