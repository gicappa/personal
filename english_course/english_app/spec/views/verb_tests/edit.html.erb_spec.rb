require 'spec_helper'

describe "verb_tests/edit" do
  before(:each) do
    @verb_test = assign(:verb_test, stub_model(VerbTest,
      :index => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit verb_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => verb_tests_path(@verb_test), :method => "post" do
      assert_select "input#verb_test_index", :name => "verb_test[index]"
      assert_select "input#verb_test_show", :name => "verb_test[show]"
    end
  end
end
