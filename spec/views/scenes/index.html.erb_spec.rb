require 'rails_helper'

RSpec.describe "scenes/index", type: :view do
  before(:each) do
    assign(:scenes, [
      Scene.create!(
        :texto => "MyText"
      ),
      Scene.create!(
        :texto => "MyText"
      )
    ])
  end

  it "renders a list of scenes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
