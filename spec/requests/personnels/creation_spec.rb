require 'spec_helper'
describe 'Personnels' do
  it "creating a person" do
    visit humanage.root_url
    click_link "Add Personnel"
    fill_in "Name", :with => "Corvo"
    click_button "Create Personnel"
    page.should have_content("Personnel successfully enlisted.")
  end
end
