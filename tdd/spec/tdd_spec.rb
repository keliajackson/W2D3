require "rspec"
require "tdd"

describe "Array" do
    describe "#my_uniq" do 
        let(:arr) {[1, 2, 1, 3, 3]}
        it "it should return arr contains unique elements" do 
            expect(arr.my_uniq).to eq([1, 2, 3])
        end
    end

    describe "#two_sum" do
        let(:arr){[-1, 0, 2, -2, 1]}
        it "it should return the pair of indices where the elements at those position sum to zero" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        let(:arr) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
        it "it should return 2d grid of numbers which will convert between the row-oriented and column-oriented representations" do
            expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        let(:arr){[100, 250, 400, 50, 300, 270, 250, 375]}
        it "it should return the pair of indices of the days which obtains the highest profit." do
            expect(arr.stock_picker).to eq([3,7])
            expect(arr.stock_picker).to_not eq([3,2])
        end

        it "returns buy day earlier than sell day" do
            expect(arr.stock_picker).to eq(arr.stock_picker.sort)
        end
    end
end

##delete unecessarily files