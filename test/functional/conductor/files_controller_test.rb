require 'test_helper'

module Conductor
  class FilesControllerTest < ActionController::TestCase
    # test "the truth" do
    #   assert true
    # end

    test "Should get index" do
	    get :index, use_route: :conductor
	    assert_response :success
	end

  end
end
