# frozen_string_literal: true

module Cookbook
  module Views
    module Recipes
      class Index < Cookbook::View
        expose :recipes do
          [
            {
              name: "Cinnamon Rolls",
              description: "The BEST cinnamon rolls in the WORLD. Big, fluffy,
                soft and absolutely delicious. You’ll never go back to any
                other recipe once you try this one!"
            },
            {
              name: "fluffy pancakes",
              description: "look no further because a steaming stack of
                perfectly soft, best fluffy pancakes are right here!"
            }
          ]
        end
      end
    end
  end
end
