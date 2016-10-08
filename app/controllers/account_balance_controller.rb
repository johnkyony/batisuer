class AccountBalanceController < ApplicationController
  before_action :authenticate_user!

  def index
    @student = Student.find_by_id(params[:student_id])
    @account = Account.find_by_student_id(params[:student_id])
    @receipts = Receipt.where(:student_id => params[:student_id])
    if ! @account.blank? || !@receipts.blank?
      @final_balance = -@account.amount + receipts_amount = @receipts.pluck(:amount).sum
    end
  end

  def show
    
  end
end
