require "replace_with_alphabet_position"

RSpec.describe ReplaceWithAlphabetPosition do
    # subject(:alphabet_position) { described_class.alphabet_position }

    it "should pass fixed test" do
        # expect(alphabet_position).to eq("20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
        # expect(:alphabet_postion).to not_to be_nil
        # @position_string.should_not be_nil 
        # expect(alphabet_position.length).to have_attributes(size: (be >= 0))
        # expect(alphabet_position).to receive(:foo).with(1, true)
        expect(subject).to receive(:text)
    end

end