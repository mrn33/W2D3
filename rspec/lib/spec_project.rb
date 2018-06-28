class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end
  
  def two_sum
    result = []
    for i in 0...self.length - 1
      for j in (i + 1)...self.length
        sum = self[i] + self[j]
        result << [i, j] if sum == 0
      end
    end
    result
  end
end



def my_transpose(array)
  result = Array.new(array.length) {[]}
  array.each do |row|
    for index in 0...array[0].length
      result[index] << row[index]
    end
  end
  result
end


def stock_picker(array)
  result = []
  profit = array[1] - array[0]
  
  array.each_with_index do |buy_price, buy_date|
    
    for sell_date in 1...array.length
      sell_price = array[sell_date]
      curr_profit = sell_price - buy_price
      
      if curr_profit > profit
        profit = curr_profit
        result = [buy_date, sell_date]
      end
    end
  end
  
  result
end

