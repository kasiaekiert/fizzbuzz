require './fizz_buzz/element'

RSpec.describe FizzBuzz::Element do 
  it do 
    expect(true).to be true
  end


  describe '#call' do
  subject { described_class.new(number).call }

    context "for 1" do
        let(:number) { 1 }
        it "returns '1'" do
            expect(subject).to eq(1)
        end
    end

    context "for 3" do
        let(:number) { 3 }
        it "returns 'Fizz' " do
            expect(subject).to eq('Fizz')
        end
    end

    context "for 6" do
        let(:number) { 6 }
        it "returns 'Fizz' " do
            expect(subject).to eq('Fizz')
        end
    end

    context "for 5" do
        let(:number) { 5 }
        it "returns 'Buzz'" do
            expect(subject).to eq('Buzz')
        end
    end

    context "for 10" do
      let(:number) { 5 }
      it "returns 'Buzz'" do
          expect(subject).to eq('Buzz')
      end
     end

     context "for 15" do
        let(:number) { 15 }
        it "returns 'Buzz'" do
            expect(subject).to eq('FizzBuzz')
        end
       end

    context "for nil" do
        let(:number) { nil }

        it "raises ArgumentError" do
            expect { subject }.to raise_error(ArgumentError)
        end
    end

    context "for 2.33" do
        let(:number) { 2.33 }

        it "return the number" do
            expect(subject).to eq(2.33)
        end
    end

    context "for 'string' " do
        let(:number) { '123' }

        it "raise the ArgumentError" do
          expect { subject }.to raise_error(ArgumentError)
        end
    end

    context "for array" do
        let(:number) { [] }

        it "raises the ArgumentError" do
          expect { subject }.to raise_error(ArgumentError)
        end
    end
  end
end 


# 1..n
# 1, 2, Fizz, 4, Buzz, Fizz, 7, 8,.., 14, FizzBuzz
# %3 -> Fizz
# %5 -> Buzz
# %15 -> FizzBuzz