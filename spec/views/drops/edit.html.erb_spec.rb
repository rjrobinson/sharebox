require 'rails_helper'

RSpec.describe "drops/edit", :type => :view do
  before(:each) do
    @drop = assign(:drop, Drop.create!(
      :user_id => 1
    ))
  end

  it "renders the edit drop form" do
    render

    assert_select "form[action=?][method=?]", drop_path(@drop), "post" do

      assert_select "input#drop_user_id[name=?]", "drop[user_id]"
    end
  end
end
