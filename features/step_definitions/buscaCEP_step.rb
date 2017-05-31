Dado(/^que eu estou na home de BuscaCEP$/) do
  #find_element(acessibility_id: "BuscaCEP")
end

Dado(/^informo o CEP que vai ser consultado$/) do
  cepConsultado = "06773090"
  find_element(id: "cep").send_keys(cepConsultado)
end

Quando(/^clico no icone de busca$/) do
  find_element(id: "search").click()
end

Então(/^vejo o endereço completo do CEP consultado\.$/) do
  retornoDaConsulta = find_element(id: "address")
  find_element(id: "cep").clear()

  validacao = retornoDaConsulta.text.include? 'Rua'
  puts validacao
end
