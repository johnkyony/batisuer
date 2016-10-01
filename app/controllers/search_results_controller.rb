class SearchResultsController < ApplicationController
  def index
    @students = Student.search(params[:search])
  end
end
