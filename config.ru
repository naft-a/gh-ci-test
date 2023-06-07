# frozen_string_literal: true

GREETER = "Hello CI?!"

run do |env|
  [200, {}, [GREETER]]
end
