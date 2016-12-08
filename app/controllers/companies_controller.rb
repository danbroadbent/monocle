class CompaniesController < ApplicationController
  helper_method :company_size
  include CompanySize

  def index
    @companies = Company.approved_companies
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    @location = Location.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      @location = @company.locations.create(location_params)
      @location.update(state: params[:state])
      flash[:notice] = "Company is pending approval."
      redirect_to company_path(@company)
    else
      flash.now[:danger] = @company.errors.full_messages
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name,
                                    :website,
                                    :headquarters,
                                    :products_services)
  end

  def company_size
    company_size_options
  end

  def location_params
    params.require(:location).permit(:street_address,
                                      :street_address_2,
                                      :phone,
                                      :primary_contact,
                                      :city,
                                      :zip_code).merge(state: params[:state])
  end

end
