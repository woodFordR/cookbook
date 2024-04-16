# frozen_string_literal: true

module Cookbook
  class Routes < Hanami::Routes
    root to: "home.show"
    get "/recipes", to: "recipes.index"
    get "/recipes/:id", to: "recipes.show"
  end
end
