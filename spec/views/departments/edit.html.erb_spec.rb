require 'spec_helper'

describe "departments/edit" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :school => nil,
      :name => "MyString",
      :kind => "MyString",
      :prefecture => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", department_path(@department), "post" do
      assert_select "input#department_school[name=?]", "department[school]"
      assert_select "input#department_name[name=?]", "department[name]"
      assert_select "input#department_kind[name=?]", "department[kind]"
      assert_select "input#department_prefecture[name=?]", "department[prefecture]"
      assert_select "input#department_address[name=?]", "department[address]"
    end
  end
end
