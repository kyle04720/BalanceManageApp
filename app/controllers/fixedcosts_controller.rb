class FixedcostsController < ApplicationController
  def index
    @fixedcosts = Fixedcost.order(created_at: :asc)
  end

  def show
    @fixedcost = Fixedcost.find(params[:id])
  end

  def new
    @fixedcost = Fixedcost.new()
  end

  def edit
    @fixedcost = Fixedcost.find(params[:id])
  end

  def create
    @fixedcost = Fixedcost.new(params[:fixedcost])
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費カテゴリを登録しました"
    else
      render "new"
    end
  end

  def update
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.assign_attributes(params[:fixedcost])
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費カテゴリを登録しました"
    else
      render "new"
    end
  end
end
