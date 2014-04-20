class CustomersController < ApplicationController

  def new
    customer
  end

  def index
    @customers = user.customers
  end

  def create
    if customer.update_attributes(customer_params)
      redirect_to customers_path
    else
      render :new
    end
  end

  def edit
    customer
  end

  def update
    if customer.update_attributes(customer_params)
      redirect_to customer_path(customer)
    else
      render :edit
    end
  end

  def show
    customer
  end

  def destroy
    customer.destroy
    redirect_to customers_path
  end

  def destroy_members
    customer_scope.each &:destroy
    redirect_to customers_path
  end

  protected

  def customer
    @customer ||= if params[:id]
                    user.customers.find params[:id]
                  else
                    user.customers.new
                  end
  end

  def user
    @user = current_user
  end

  def customer_params
    params.require(:customer).permit :user_id, :name, :address, :city, :province, :phone_number, :postal_code, :owner, :email, :caretaker,
                                    :caretaker_email, :caretaker_phone_number
  end

  def params_customer_ids
    JSON.parse params.require(:customer_ids)
  end

  def customer_scope
    Customer.find( params_customer_ids )
  end

end
