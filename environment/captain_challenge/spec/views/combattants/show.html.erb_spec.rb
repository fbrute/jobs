require 'rails_helper'

RSpec.describe "combattants/show", type: :view do
  before(:each) do
    @combattant = assign(:combattant, Combattant.create!(
      :nom => "Nom",
      :points_de_vie => 2,
      :points_d_attaque => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
