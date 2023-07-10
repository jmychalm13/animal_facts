class FactsController < ApplicationController
  def index
    @facts = Fact.all

    render json: @facts.as_json
  end
end
