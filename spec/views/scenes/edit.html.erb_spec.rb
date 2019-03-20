require 'rails_helper'

RSpec.describe "scenes/edit", type: :view do
  before(:each) do
    @scene = assign(:scene, Scene.create!(
      :texto => "MyText"
    ))
  end

  it "renders the edit scene form" do
    render

    assert_select "form[action=?][method=?]", scene_path(@scene), "post" do

      assert_select "textarea[name=?]", "scene[texto]"
    end
  end
end
