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

  def update
    @fact = Fact.find_by(id: params[:id])

    @fact.update(
      animal: params[:animal] || @fact.animal,
      habitat: params[:habitat] || @fact.habitat,
      fact: params[:fact] || @fact.fact,
      rank: params[:rank] || @fact.rank,
    )

    render template: "facts/show"
  end

  def destroy
    fact = Fact.find_by(id: params[:id])

    fact.destroy

    render json: { message: "Animal destroyed : (" }
  end
end
