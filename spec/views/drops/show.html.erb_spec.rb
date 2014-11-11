require 'rails_helper'

RSpec.describe "drops/show", :type => :view do
  before(:each) do
    @drop = assign(:drop, Drop.create!(
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
