require 'rails_helper'

RSpec.describe "contatos/edit", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      :Nome => "MyString",
      :Email => "MyString",
      :Subject => "MyString",
      :Message => "MyString"
    ))
  end

  it "renders the edit contato form" do
    render

    assert_select "form[action=?][method=?]", contato_path(@contato), "post" do

      assert_select "input#contato_Nome[name=?]", "contato[Nome]"

      assert_select "input#contato_Email[name=?]", "contato[Email]"

      assert_select "input#contato_Subject[name=?]", "contato[Subject]"

      assert_select "input#contato_Message[name=?]", "contato[Message]"
    end
  end
end
