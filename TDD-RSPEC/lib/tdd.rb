class Array

    def my_uniq
        result = []
        self.each do |ele|
            result << ele if !result.include?(ele)
        end
        result
    end

    def two_sum
        pairs = []
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                pairs << [idx1, idx2] if idx2 > idx1 && num1 + num2 == 0
            end
        end
        pairs
    end

end

def my_transpose(matrix) #[[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    transposed = Array.new(matrix.length) { Array.new }
    matrix.length.times do |i| #0, 1, 2
        matrix.length.times do |j| #0, 1, 2
            transposed[i] << matrix[j][i]
        end
    end
    transposed #[[0],[3],[6]]
end
    
def stock_picker(prices) # [63, 50, 2, 3, 101]
    len = prices.length - 1
    max = [0]

    (0..len).each do |i| # 0
        (i..len).each do |j| # 0-4:  1
            diff = prices[j] - prices[i] # 13
            if diff > max[0]
                max = [diff, i, j] # 13, 0, 1
            end
        end
    end

    [max[1]+1, max[-1]+1 ]
end
    