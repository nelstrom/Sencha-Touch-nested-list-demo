require "json"

class JsonPrettifyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    if headers["Content-Type"].include? "application/json"
      objects  = JSON.parse response.first
      response = JSON.pretty_generate(objects)
    end
    [status, headers, response]
  end
end
