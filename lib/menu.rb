class Menu
  attr_reader :menu

  def initialize
    @menu = {
      'Scrumbled eggs' => 4.99,
      'Roasted aubergine & tomato curry' => 5.60,
      'Jacket Potato with whipped feta' => 8.25,
      'Mushroom, ricotta & rocket tart' => 9.20,
      'Cod with beans & artichokes' => 11.40,
    }
  end

  def get_list(menu)
    @menu
  end
end