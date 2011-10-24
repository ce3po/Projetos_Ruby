require 'spec_helper'

describe "usuarios/index.html.erb" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password_confirmation"
      ),
      stub_model(Usuario,
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password_confirmation"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password_confirmation".to_s, :count => 2
  end
end
