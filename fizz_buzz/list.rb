module FizzBuzz
    class List

    def initialize(length)
        @length = length
    end

  def call
    (1..@length).map do |number|
      Element.new(number).call
    end
  end
end
end
