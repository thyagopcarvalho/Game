require 'rails_helper'

RSpec.describe "scenes/show", type: :view do
  before(:each) do
    @scene = assign(:scene, Scene.create!(
      :texto => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
