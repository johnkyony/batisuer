require "test_helper"

describe DirectionsController do
  let(:direction) { directions :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:directions)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates direction" do
    expect {
      post :create, direction: { name: direction.name }
    }.must_change "Direction.count"

    must_redirect_to direction_path(assigns(:direction))
  end

  it "shows direction" do
    get :show, id: direction
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: direction
    value(response).must_be :success?
  end

  it "updates direction" do
    put :update, id: direction, direction: { name: direction.name }
    must_redirect_to direction_path(assigns(:direction))
  end

  it "destroys direction" do
    expect {
      delete :destroy, id: direction
    }.must_change "Direction.count", -1

    must_redirect_to directions_path
  end
end
