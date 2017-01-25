Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:the_number", { :controller => "calculations", :action => "square"})
  get("/square_root", { :controller => "calculations", :action => "square_root"})
  get("/random/:lower_bound/:upper_bound", { :controller => "calculations", :action => "random"})
  get("/payment/:apr/:number_of_years/:principal_value", { :controller => "calculations", :action => "loan_payment"})
  get("/square_root_form", { :controller => "calculations", :action => "square_root_form"})
end
