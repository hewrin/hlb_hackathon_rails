class AccountsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @account = Account.first
  end

  def update
    account = Account.find(params[:id])
    if account.update(amount: account.amount + params[:amount].to_i)
      render json: {}, status: :ok
    else
      render json: {}, status: :unprocessable_entity
    end 
  end
end
