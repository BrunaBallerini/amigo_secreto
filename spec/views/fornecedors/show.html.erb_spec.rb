require 'rails_helper'

RSpec.describe "fornecedors/show", type: :view do
  before(:each) do
    assign(:fornecedor, Fornecedor.create!(
      nome: "Nome",
      cnpj: "Cnpj",
      endereco: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/MyText/)
  end
end
