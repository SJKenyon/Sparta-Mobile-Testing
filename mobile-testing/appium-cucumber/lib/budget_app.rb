require_relative "pages/homepage.rb"
require_relative "pages/budgetpage.rb"

module BudgetApp

  def homepage
    Homepage.new($driver)
  end

  def budgetpage
    BudgetPage.new($driver)
  end

end
