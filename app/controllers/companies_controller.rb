class CompaniesController < ApplicationController
  def index
    total_companies = Company.total
    result = Result.new(month: Date.today.strftime("%B"), number_of_paying_residents: total_companies)
    result.save
    redirect_to root_url


  end
end
