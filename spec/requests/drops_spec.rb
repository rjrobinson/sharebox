require 'rails_helper'

RSpec.describe "Drops", :type => :request do
  describe "GET /drops" do
    it "works! (now write some real specs)" do
      get drops_path
      expect(response).to have_http_status(200)
    end
  end
end
