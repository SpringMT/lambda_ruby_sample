class Response
  def initialize(event)
    @event = event
  end

  def generate
    query_string = event["queryStringParameters"]
    {
      "statusCode": 200,
      "headers": {
        "Content-Type": "application/json",
        "My-Custom-Header": "Custom Value"
      },
      "body": "{ \"message\": \"Hello, world!\" #{query_string} }",
      "isBase64Encoded": false
    }
  end
end
