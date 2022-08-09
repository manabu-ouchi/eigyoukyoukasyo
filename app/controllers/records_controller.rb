class RecordsController < ApplicationController
  def index
    @records = Record.includes(:user).order('created_at DESC')
    @orders = Record.joins(:user).group(:last_name).order('sum_order DESC').sum(:order)
    @siten = Record.joins(:user).group(:department_id).order('sum_order DESC').sum(:order)
  end

  def new
    @record = Record.new
  end
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
        render :new
    end
  end



  private
  def record_params
    params.require(:record).permit(:mendan, :fulltalk, :mikomi, :mikomiorder, :order, :payment).merge(user_id: current_user.id)
  end
end
