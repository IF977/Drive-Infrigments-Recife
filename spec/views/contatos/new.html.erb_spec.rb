require 'rails_helper'

RSpec.describe "contatos/new", type: :view do
  before(:each) do
    assign(:contato, Contato.new(
      :Nome => "MyString",
      :Email => "MyString",
      :Subject => "MyString",
      :Message => "MyString"
    ))
  end

  it "renders new contato form" do
    render

    assert_select "form[action=?][method=?]", contatos_path, "post" do

      assert_select "input#contato_Nome[name=?]", "contato[Nome]"

      assert_select "input#contato_Email[name=?]", "contato[Email]"

      assert_select "input#contato_Subject[name=?]", "contato[Subject]"

      assert_select "input#contato_Message[name=?]", "contato[Message]"
    end
  end
end
