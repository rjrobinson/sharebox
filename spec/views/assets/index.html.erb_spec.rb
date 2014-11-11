require 'rails_helper'

RSpec.describe "assets/index", :type => :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        :user_id => ""
      ),
      Asset.create!(
        :user_id => ""
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
