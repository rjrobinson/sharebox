require 'rails_helper'

RSpec.describe "assets/new", :type => :view do
  before(:each) do
    assign(:asset, Asset.new(
      :user_id => ""
    ))
  end

  it "renders new asset form" do
    render

    assert_select "form[action=?][method=?]", assets_path, "post" do

      assert_select "input#asset_user_id[name=?]", "asset[user_id]"
    end
  end
end
