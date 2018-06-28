require 'rspec'
require 'spec_project'

describe '#my_uniq' do
  it 'removes duplicates from an array' do
    array =[1,2,1,3,3]
    expect(array.my_uniq).to eq([1,2,3])
  end
end

describe '#two_sum' do
  it 'finds indicies where elements sum to zero' do
    array =[-1,0,2,-2,1]
    expect(array.two_sum).to eq([[0,4], [2,3]])
  end
end

describe '#my_transpose' do
  it 'switches rows to columns' do
    rows = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]   
    cols = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    expect(my_transpose(rows)).to eq(cols)
  end
end

describe '#stock_picker' do
  it 'picks the best day to buy and sell to maximize profit' do
    stock_prices = [50, 70, 100, 200, 50, 200, 40, 180, 250, 300]
    answer = [6,9]
    expect(stock_picker(stock_prices)).to eq(answer)
  end
end

