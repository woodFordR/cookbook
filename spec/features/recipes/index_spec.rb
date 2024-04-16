# frozen_string_literal: true

RSpec.feature "Recipes Index" do
  let(:recipes) { Hanami.app["persistence.rom"].relations[:recipes] }
  before do
    recipes.insert(
      name: "French Toast",
      description: "This easy French Toast recipe is the BEST, with
        a thicker batter and cinnamon sugar flavors that really set
        it apart. It’s one of our family’s favorite breakfasts!"
    )
  end

  it "displays recipes" do
    visit "/recipes"

    expect(page).to have_selector "h1", text: "all the recipes"
    expect(page).to have_selector "h2", text: "Cinnamon Rolls"
    expect(page).to have_selector "h2", text: "fluffy pancakes"
  end
end
