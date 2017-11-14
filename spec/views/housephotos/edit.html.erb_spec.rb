require 'rails_helper'

RSpec.describe "housephotos/edit", type: :view do
  before(:each) do
    @housephoto = assign(:housephoto, Housephoto.create!())
  end

  it "renders the edit housephoto form" do
    render

    assert_select "form[action=?][method=?]", housephoto_path(@housephoto), "post" do
    end
  end
end
