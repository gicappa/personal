require 'spec_helper'

describe "irregular_verbs/show" do
  before(:each) do
    @irregular_verb = assign(:irregular_verb, stub_model(IrregularVerb))
  end

  it "renders attributes in <p>" do
    render
  end
end
