class SearchResultsController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource
  def index
    @students = Student.search(params[:search])
  end
end
