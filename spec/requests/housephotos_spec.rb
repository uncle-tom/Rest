require 'rails_helper'

RSpec.describe "Housephotos", type: :request do
  describe "GET /housephotos" do
    it "works! (now write some real specs)" do
      get housephotos_path
      expect(response).to have_http_status(200)
    end
  end
end
