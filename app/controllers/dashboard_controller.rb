class DashboardController < ApplicationController
  def index
    @properties = Property.all
    @my_properties = current_account.properties
  end

  def profile
    @account = Account.find(params[:id])
    @agent = @account

    @property = Property.where(account_id: @account).latest.first
    @my_properties = @account.properties
    
    @properties_for_sale = Property.where(account_id: @account).for_sale
    @properties_for_rent = Property.where(account_id: @account).for_rent
    @properties_sold = Property.where(account_id: @account).sold
    @properties_leased = Property.where(account_id: @account).leased
  end
end
