class StockPickerError < StandardError; end

class Array
    def my_uniq
        count = Hash.new(0)
        self.each { |k, v| count[k] += 1 }
        arr = []
        count.select{|k,v| arr << k if count.has_value?(1)}
        arr
    end

    def two_sum
        indices = []
        self.each_with_index do |el_1, i|
            self.each_with_index do |el_2, j|
                if i < j && el_1 + el_2 == 0
                    indices << [i,j]
                end
            end
        end
        indices
    end

    def my_transpose
        arr = []
        i = 0
        while i < self.length
            sub = []
            j = 0
            while j < self.length
                sub << self[j][i]
                j += 1
            end
            i += 1
            arr << sub
        end
        arr
    end

    def stock_picker
        profit = 0
        days = []
        self.each_with_index do |price_1, i|
            self.each_with_index do |price_2, j|
                if i < j && ((price_2 - price_1) > profit)
                    profit = price_2 - price_1
                    days = [i,j]
                end
            end
        end
        days 
    end

end

