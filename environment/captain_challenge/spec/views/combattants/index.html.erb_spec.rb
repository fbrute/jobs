require 'rails_helper'

RSpec.describe "combattants/index", type: :view do
  before(:each) do
    assign(:combattants, [
      Combattant.create!(
        :nom => "Nom",
        :points_de_vie => 2,
        :points_d_attaque => 3
      ),
      Combattant.create!(
        :nom => "Nom",
        :points_de_vie => 2,
        :points_d_attaque => 3
      )
    ])
  end

  it "renders a list of combattants" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
