require_relative "./response"

def main(event:, context:)
  res = Respone.new(event)
  return res.generate
end

