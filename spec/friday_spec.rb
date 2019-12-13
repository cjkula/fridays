require 'friday'

describe "Friday" do
  let(:people) { [] }
  subject { Friday.new.seat_the_peeps(people) }

  describe '#seat_the_peeps' do
    describe 'with three people' do
      let(:people) { [1,2,3] }

      it 'seats at one table' do
        expect(subject.size).to eq(1)
        expect(subject.first).to match_array([1,2,3])
      end
    end

    describe 'with four people' do
      let(:people) { [1,2,3,4] }
      
      it 'seats at one table' do
        expect(subject.first).to match_array([1,2,3,4])
      end
    end

    describe 'with five people' do
      let(:people) { [1,2,3,4,5] }
      
      it 'seats at one table' do
        expect(subject.first).to match_array([1,2,3,4,5])
      end
    end

    describe 'with six people' do
      let(:people) { [1,2,3,4,5,6] }
      
      it 'seats at two tables' do
        puts({result: subject}).inspect
        expect(subject.size).to eq(2)
        expect(subject[0].size).to eq(3)
        expect(subject[1].size).to eq(3)
        expect(subject[0] + subject[1]).to match_array(people)
      end
    end

    describe 'with seven people' do
      let(:people) { [1,2,3,4,5,6,7] }
      
      it 'seats at two tables' do
        expect(subject.size).to eq(2)
        expect(subject[0].size).to be_between(3, 5).inclusive
        expect(subject[1].size).to be_between(3, 5).inclusive
        expect(subject[0] + subject[1]).to match_array(people)
      end
    end
  end
end