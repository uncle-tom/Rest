require 'rails_helper'

RSpec.describe "housephotos/new", type: :view do
  before(:each) do
    assign(:housephoto, Housephoto.new())
  end

  it "renders new housephoto form" do
    render

    assert_select "form[action=?][method=?]", housephotos_path, "post" do
    end
  end
end
