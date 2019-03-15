require 'rails_helper'

RSpec.describe "stories/index", type: :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        :introducao => "MyText"
      ),
      Story.create!(
        :introducao => "MyText"
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
