require 'spec_helper'

describe "verb_tests/new" do
  before(:each) do
    assign(:verb_test, stub_model(VerbTest,
      :index => "MyString",
      :show => "MyString"
    ).as_new_record)
  end

  it "renders new verb_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => verb_tests_path, :method => "post" do
      assert_select "input#verb_test_index", :name => "verb_test[index]"
      assert_select "input#verb_test_show", :name => "verb_test[show]"
    end
  end
end
