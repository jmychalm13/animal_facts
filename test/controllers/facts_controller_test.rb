require "test_helper"

class FactsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/facts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Fact.count, data.length
  end
end
