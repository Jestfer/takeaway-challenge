require 'menu'

describe Menu do

  let(:menu) { subject.menu }

  describe "#menu output" do
    initialize_menu = {
      'Scrumbled eggs' => 4.99,
      'Roasted aubergine & tomato curry' => 5.60,
      'Jacket Potato with whipped feta' => 8.25,
      'Mushroom, ricotta & rocket tart' => 9.20,
      'Cod with beans & artichokes' => 11.40,
    }

    it { is_expected.to respond_to :get_list }

    it 'should output a list with dishes and prices' do
      expect(subject.get_list(menu)).to eq initialize_menu
    end
  end
end