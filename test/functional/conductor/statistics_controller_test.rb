require 'test_helper'

module Conductor
  class StatisticsControllerTest < ActionController::TestCase
    # test "the truth" do
    #   assert true
    # end
    test 'Should get index' do
    	get :index, use_route: :conductor
    	assert_response :success
    	assert_select 'h1', 'Statistics'
    end
  end
end
