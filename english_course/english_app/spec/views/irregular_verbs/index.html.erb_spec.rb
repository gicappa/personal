require 'spec_helper'

describe "irregular_verbs/index" do
  before(:each) do
    assign(:irregular_verbs, [
      stub_model(IrregularVerb),
      stub_model(IrregularVerb)
    ])
  end

  it "renders a list of irregular_verbs" do
    render
  end
end
