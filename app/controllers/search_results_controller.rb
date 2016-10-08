class SearchResultsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = Student.search(params[:search])
  end
end
