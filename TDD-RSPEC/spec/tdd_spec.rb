require 'rspec'
require 'tdd'


describe "Array#my_uniq" do
    it "returns the unique elements" do
        expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end

    it "returns the element in the order that it appeared" do
        expect([5, 3, 3, 2, 5, 1].my_uniq).to eq([5, 3, 2, 1])
    end
end


describe "Array#two_sum" do
    it "finds all pairs of indices where elements sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
    end
    
    it "should return pairs of indices sorted smaller to larger" do
        expect([5, 6, -6, -5, -5, 5].two_sum).to eq([[0,3], [0,4], [1,2], [3,5], [4,5]])
    end
end

describe "my_transpose" do
    it "converts from a row-oriented to a column-oriented matrix" do
        expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq(
            [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
            )
    end
end

describe "stock_picker" do
    it "outputs the largest pair difference" do
        expect(stock_picker([63, 50, 2, 3, 101])).to eq([3, 5])
    end

    it "make sure the pair of prices are ordered so that stock sell price is higher that the stock buy price" do
        expect(stock_picker([101, 3, 2, 50, 63])).to eq([3, 5])
    end
end
