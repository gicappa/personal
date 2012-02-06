require 'spec_helper'

describe "irregular_verbs/edit" do
  before(:each) do
    @irregular_verb = assign(:irregular_verb, stub_model(IrregularVerb))
  end

  it "renders the edit irregular_verb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => irregular_verbs_path(@irregular_verb), :method => "post" do
    end
  end
end
