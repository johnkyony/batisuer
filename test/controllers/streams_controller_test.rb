require "test_helper"

describe StreamsController do
  let(:stream) { streams :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:streams)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates stream" do
    expect {
      post :create, stream: { grade_id: stream.grade_id, name: stream.name }
    }.must_change "Stream.count"

    must_redirect_to stream_path(assigns(:stream))
  end

  it "shows stream" do
    get :show, id: stream
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: stream
    value(response).must_be :success?
  end

  it "updates stream" do
    put :update, id: stream, stream: { grade_id: stream.grade_id, name: stream.name }
    must_redirect_to stream_path(assigns(:stream))
  end

  it "destroys stream" do
    expect {
      delete :destroy, id: stream
    }.must_change "Stream.count", -1

    must_redirect_to streams_path
  end
end
