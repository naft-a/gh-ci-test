require "rack"
require "rack/test"
require "test/unit"
require "json"

class TestApp < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.parse_file("config.ru")
  end

  def test_root
    get "/"
    assert !last_response.ok?
  end
end
