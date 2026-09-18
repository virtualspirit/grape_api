require_relative "test_helper"
require "rack/mock"

class Rails8SmokeAPI < GrapeAPI::Endpoint::Base
  get :ping do
    { status: "ok" }
  end
end

class Rails8SmokeTest < Minitest::Test
  def test_rails_and_gem_boot
    assert_operator Gem::Version.new(Rails.version), :>=, Gem::Version.new("7.1")
    assert_equal "3.0.0", GrapeAPI::VERSION
  end

  def test_grape_endpoint_responds
    response = Rack::MockRequest.new(Rails8SmokeAPI).get("/api/v1/ping")
    assert_equal 200, response.status
    assert_includes response.body, "ok"
  end
end
