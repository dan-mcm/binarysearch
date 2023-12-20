class BinarySearch
    def initialize(array)
        @array = array
    end

    def search(target)
        binary_search(target, 0, @array.length - 1)
    end

    private
    def binary_search(target, left, right)
        return -1 if left > right

        middle = (left + right) / 2
        middle_value = @array[middle]

        if middle_value == target
            return middle
        elsif middle_value > target
            return binary_search(target, left, middle - 1)
        else
            return binary_search(target, middle + 1, right)
        end
    end
end