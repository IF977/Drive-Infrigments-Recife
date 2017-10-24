require 'rails_helper'

RSpec.describe "contatos/index", type: :view do
  before(:each) do
    assign(:contatos, [
      Contato.create!(
        :Nome => "Nome",
        :Email => "Email",
        :Subject => "Subject",
        :Message => "Message"
      ),
      Contato.create!(
        :Nome => "Nome",
        :Email => "Email",
        :Subject => "Subject",
        :Message => "Message"
      )
    ])
  end

  it "renders a list of contatos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
