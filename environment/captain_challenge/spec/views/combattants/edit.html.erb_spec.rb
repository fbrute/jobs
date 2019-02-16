require 'rails_helper'

RSpec.describe "combattants/edit", type: :view do
  before(:each) do
    @combattant = assign(:combattant, Combattant.create!(
      :nom => "MyString",
      :points_de_vie => 1,
      :points_d_attaque => 1
    ))
  end

  it "renders the edit combattant form" do
    render

    assert_select "form[action=?][method=?]", combattant_path(@combattant), "post" do

      assert_select "input[name=?]", "combattant[nom]"

      assert_select "input[name=?]", "combattant[points_de_vie]"

      assert_select "input[name=?]", "combattant[points_d_attaque]"
    end
  end
end
