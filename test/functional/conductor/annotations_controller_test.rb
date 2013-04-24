require 'test_helper'

module Conductor
  class AnnotationsControllerTest < ActionController::TestCase
    # test "the truth" do
    #   assert true
    # end
    def setup
    end

    test "Should get index" do
    	get :index, use_route: :conductor
    	assert_response :success
    	assert_select 'h1', 'Notes'
    end
  end
end
