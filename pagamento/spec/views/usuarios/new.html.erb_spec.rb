require 'spec_helper'

describe "usuarios/new.html.erb" do
  before(:each) do
    assign(:usuario, stub_model(Usuario,
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ).as_new_record)
  end

  it "renders new usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path, :method => "post" do
      assert_select "input#usuario_email", :name => "usuario[email]"
      assert_select "input#usuario_password", :name => "usuario[password]"
      assert_select "input#usuario_password_confirmation", :name => "usuario[password_confirmation]"
    end
  end
end
