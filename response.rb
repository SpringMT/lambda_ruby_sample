class Response
  def initialize(event)
    @event = event
  end

  def generate
    {
      "statusCode": 200,
      "headers": {
        "Content-Type": "application/json",
          "My-Custom-Header": "Custom Value"
      },
      "body": "{ \"message\": \"Hello, world!\" }",
      "isBase64Encoded": false
    }
  end
end
