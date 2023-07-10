class FactsController < ApplicationController
  def index
    @facts = Fact.all

    render template: "facts/index"
  end

  def create
    @fact = Fact.create(
      animal: params[:animal],
      habitat: params[:habitat],
      fact: params[:fact],
      rank: params[:rank],
    )

    render template: "facts/show"
  end

  def show
    @fact = Fact.find_by(id: params[:id])

    render template: "facts/show"
  end
end
