require "spec_helper"
require_relative "../response"

RSpec.describe Response do
  describe "generate" do
    it 'success' do
      res = Response.new({}).generate
      expect(res[:statusCode]).to eq(200)
    end
  end
end

