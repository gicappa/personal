require 'spec_helper'

describe "irregular_verbs/new" do
  before(:each) do
    assign(:irregular_verb, stub_model(IrregularVerb).as_new_record)
  end

  it "renders new irregular_verb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => irregular_verbs_path, :method => "post" do
    end
  end
end
