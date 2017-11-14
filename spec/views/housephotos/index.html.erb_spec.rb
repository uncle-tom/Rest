require 'rails_helper'

RSpec.describe "housephotos/index", type: :view do
  before(:each) do
    assign(:housephotos, [
      Housephoto.create!(),
      Housephoto.create!()
    ])
  end

  it "renders a list of housephotos" do
    render
  end
end
