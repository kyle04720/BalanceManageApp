class IncomeValuesController < ApplicationController
  def index
    @incomes = Income.order(created_at: :asc)
    @income_values = IncomeValue.order("year_month asc")
  end

  def show
    @income_value = IncomeValue.find(params[:id])
    @form = Form::IncomeForm.new
  end

  def new
    year_month_day = params[:year_month] + "-01"
    @year_month = year_month_day.to_date

    @incomes = Income.order(created_at: :asc)
    @form = Form::IncomeForm.new
  end

  def create
    @form = Form::IncomeForm.new(income_form_params)
    if @form.save
      redirect_to :income_values, notice: "登録しました"
    else
      redirect_to :income_values, notice: "登録に失敗しました"
    end
  end

  def income_form_params
    params
      .require(:form_income_form)
      .permit(income_values_attributes: Form::IncomeValues::REGISTRABLE_ATTRIBUTES)
  end

  def update
    @income_value = IncomeValue.find(params[:id])
    @income_value.assign_attributes(params[:income_value])
    if @income_value.save
      redirect_to :income_values, notice: "情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @income_value = IncomeValue.find(params[:id])
    @income_value.destroy
    redirect_to :income_values, notice: "データを削除しましたs"
  end
end
