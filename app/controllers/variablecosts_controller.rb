class VariablecostsController < ApplicationController
  def index
    @variablecosts = Variablecost.order(created_at: :asc)
  end

  def show
    @variablecost = Variablecost.find(params[:id])
  end

  def new
    @variablecost = Variablecost.new()
  end

  def create
    @variablecost = Variablecost.new(params[:variablecost])
    if @variablecost.save
      redirect_to @variablecost, notice: "支出カテゴリを登録しました"
    else
      render "new"
    end
  end

  def edit
    @variablecost = Variablecost.new(params[:variablecost])
    if @variablecost.save
      redirect_to @variablecost, notice: "支出カテゴリを登録しました"
    else
      render "new"
    end
  end

  def update
    @variablecost = Variablecost.find(params[:id])
    @variablecost.assign_attributes(params[:variablecost])
    if @variablecost.save
      redirect_to @variablecost, notice: "支出カテゴリを登録しました"
    else
      render "new"
    end
  end

  def destroy
    @variablecost = Variablecost.find(params[:id])
    @variablecost.destroy
    redirect_to :variablecosts, notice: "支出カテゴリを削除しました"
  end
end
