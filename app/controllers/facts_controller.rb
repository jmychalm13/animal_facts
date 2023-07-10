class FactsController < ApplicationController
  def index
    @facts = Fact.all

    render template: "facts/index"
  end
end
