require 'rails_helper'

RSpec.describe "housephotos/show", type: :view do
  before(:each) do
    @housephoto = assign(:housephoto, Housephoto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
