require "replace_with_alphabet_position"

RSpec.describe ReplaceWithAlphabetPosition do
    subject(:alphabet_position) { described_class.alphabet_position }

    it "should pass fixed test" do
        expect(alphabet_position).to eq("20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
    end

end