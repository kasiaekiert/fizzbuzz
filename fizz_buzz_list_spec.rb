require './fizz_buzz/list'
require './fizz_buzz/element'
require 'pry'

RSpec.describe FizzBuzz::List do
  shared_examples 'a FizzBuzz list' do |list_length|
    subject { described_class.new(list_length).call }
  
    it "returns the proper answer for numbers from 1 to #{list_length}" do
    binding.pry
      expect(subject).to eq(create_expected_output(list_length))
    end
  end

  describe '#call' do
    it_behaves_like 'a FizzBuzz list', 10
    it_behaves_like 'a FizzBuzz list', 100
  end
end

def create_expected_output(list_length)
  (1..list_length).map do |number|
    case 0
    when number % 15 then 'FizzBuzz'
    when number % 5 then 'Buzz'
    when number % 3 then 'Fizz'
    else number
    end
  end
end
