class CompaniesController < ApplicationController

  def new
    return redirect_to company_path(company) unless company.new_record?
    company
    company.build_picture
  end

  def show
    company
  end

  def create
    if company.update_attributes(company_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    company
  end

  def update
    if company.update_attributes(company_params)
      redirect_to company_path(company)
    else
      render :edit
    end
  end

  protected

  def company
    @company ||= unless user.company
                  user.build_company
                else
                  user.company
                end
  end

  def user
    @user = current_user
  end

  def company_params
    params.require(:company).permit :user_id, :name, :address, :city, :province, :postalcode, :sector, :phone_number, :owner,
                                    picture_attributes: [:id, :file]
  end
end
