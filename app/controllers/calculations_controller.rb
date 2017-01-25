class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @number = params[:the_number].to_f
    @squared_number = @number ** 2
    render ("square.html.erb")
  end
  def square_root
    @number = params[:the_number].to_f
    @squared_number = @number ** 0.5
    render ("square_root.html.erb")
  end
  def random
    @lower_bound = params[:lower_bound].to_i
    @upper_bound = params[:upper_bound].to_i
    @random_number = rand(@lower_bound..@upper_bound)
    render ("random.html.erb")
  end

  def loan_payment
    @apr = params[:apr].to_f / 10
    @number_of_years = params[:number_of_years].to_i
    @principal_value = params[:principal_value].to_f
    decimal_apr = @apr / 100
    @loan_payment = (@principal_value * (decimal_apr / 12)) / (1 - (1 + decimal_apr / 12) ** (-12*@number_of_years))
    render ("loan_payment.html.erb")

  end

  def square_root_form
    @number = params[:the_number].to_f
    @squared_number = @number ** 2
    render("square_root_form.html.erb")
  end
end
