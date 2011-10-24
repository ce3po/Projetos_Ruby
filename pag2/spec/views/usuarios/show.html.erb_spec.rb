require 'spec_helper'

describe "usuarios/show.html.erb" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :email => "Email",
      :password => "Password",
      :password_confirmation => "Password_confirmation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password_confirmation/)
  end
end
