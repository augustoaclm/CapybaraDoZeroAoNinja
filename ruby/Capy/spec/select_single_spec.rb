

describe 'select single', :single do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
    end

    it 'Seleciona ator por nome' do

      opcao = find("span[class$='select2-selection--single']")

      opcao.click

      item= find("li[class$='select2-results__option']", text: 'Chris Rock')    

      item.click


    end

    it 'Seleciona ator atravasa pesquisa' do

        opcao = find("span[class$='select2-selection--single']")
  
        opcao.click

        find(".select2-search__field").set 'Chris Rock'
        sleep 1
  
        item = find(".select2-results__option")    
  
        item.click
  
  
      end


    after(:each) do
        sleep 3
    end
end