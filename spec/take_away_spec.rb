require 'take_away'

describe TakeAway do

  let(:quantity) { 6 }
  let(:dish) { 'Scrambled eggs' }

  default_menu = {
    'Nutella on rice cakes and banana on top' => 3.00,
    'Scrambled eggs' => 4.99,
    'Roasted aubergine & tomato curry' => 5.60,
    'Jacket Potato with whipped feta' => 8.25,
    'Mushroom, ricotta & rocket tart' => 9.20,
    'Cod with beans & artichokes' => 11.40,
  }

  describe "#menu output" do
    it 'should output a list with dishes and prices' do
      expect(subject.list).to eq default_menu
    end
  end

  describe "#select dish(es)" do
    it 'should select the right number of dishes as per user choice' do
      subject.select(dish, quantity)

      expect(subject.selection).to eq({ dish => quantity })
    end
  end
end
