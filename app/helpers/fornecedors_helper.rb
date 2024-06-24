module FornecedorsHelper
  def fomata_hora(data)
    return data.strftime("%d/%m/%Y %H:%M")
  end
end
