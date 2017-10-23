require 'rails_helper'

RSpec.describe "contatos/show", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      :Nome => "Nome",
      :Email => "Email",
      :Subject => "Subject",
      :Message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Message/)
  end
end
