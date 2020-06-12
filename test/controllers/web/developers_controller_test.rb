require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    assert_difference 'Developer.count', 1 do
      post :create, params: { developer: attributes_for(:developer) }
    end
    assert_response :redirect
  end
end
