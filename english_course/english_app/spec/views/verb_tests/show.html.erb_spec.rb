require 'spec_helper'

describe "verb_tests/show" do
  before(:each) do
    @verb_test = assign(:verb_test, stub_model(VerbTest,
      :index => "Index",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Show/)
  end
end
