require 'rails_helper'

RSpec.describe "drops/index", :type => :view do
  before(:each) do
    assign(:drops, [
      Drop.create!(
        :user_id => 1
      ),
      Drop.create!(
        :user_id => 1
      )
    ])
  end

  it "renders a list of drops" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
