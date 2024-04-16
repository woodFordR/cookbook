# frozen_string_literal: true

module Cookbook
  module Persistence
    module Relations
      class Recipes < ROM::Relation[:sql]
        schema(:recipes, infer: true)
      end
    end
  end
end
