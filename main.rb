require_relative "./response"

def main(event:, context:)
  res = Response.new(event)
  return res.generate
end

