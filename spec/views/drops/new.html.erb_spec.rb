require 'rails_helper'

RSpec.describe "drops/new", :type => :view do
  before(:each) do
    assign(:drop, Drop.new(
      :user_id => 1
    ))
  end

  it "renders new drop form" do
    render

    assert_select "form[action=?][method=?]", drops_path, "post" do

      assert_select "input#drop_user_id[name=?]", "drop[user_id]"
    end
  end
end
