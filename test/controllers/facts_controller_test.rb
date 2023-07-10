require "test_helper"

class FactsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/facts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Fact.count, data.length
  end

  test "create" do
    assert_difference "Fact.count", 1 do
      post "/facts.json", params: { animal: "test animal", fact: "test fact", habitat: "test habitat", rank: 5000 }
      assert_response 200
    end
  end

  test "show" do
    get "/facts/#{Fact.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["animal", "habitat", "fact", "rank"], data.keys
  end
end
