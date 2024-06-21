require 'rails_helper'

RSpec.describe "fornecedors/new", type: :view do
  before(:each) do
    assign(:fornecedor, Fornecedor.new(
      nome: "MyString",
      cnpj: "MyString",
      endereco: "MyText"
    ))
  end

  it "renders new fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedors_path, "post" do

      assert_select "input[name=?]", "fornecedor[nome]"

      assert_select "input[name=?]", "fornecedor[cnpj]"

      assert_select "textarea[name=?]", "fornecedor[endereco]"
    end
  end
end
