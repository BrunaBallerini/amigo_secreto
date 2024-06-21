require 'rails_helper'

RSpec.describe "fornecedors/index", type: :view do
  before(:each) do
    assign(:fornecedors, [
      Fornecedor.create!(
        nome: "Nome",
        cnpj: "Cnpj",
        endereco: "MyText"
      ),
      Fornecedor.create!(
        nome: "Nome",
        cnpj: "Cnpj",
        endereco: "MyText"
      )
    ])
  end

  it "renders a list of fornecedors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cnpj".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
