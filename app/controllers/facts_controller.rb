class FactsController < ApplicationController
  def index
    @facts = Fact.all

    render json: @facts.as_json
  end

  def create
    @fact = Fact.create(
      animal: params[:animal],
      habitat: params[:habitat],
      fact: params[:fact],
      rank: params[:rank],
    )

    render json: @fact.as_json
  end
end
