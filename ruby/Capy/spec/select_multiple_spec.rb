

describe 'select multiple', :multiple do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
    end

    def selecionar(ator)
      opcao = find("span[class$='select2-selection--multiple']")
      opcao.click
      find(".select2-search__field").set ator
        sleep 1
      item = find(".select2-results__option")    
      item.click



    end

    it 'Seleciona ator' do

      atores = ['Owen Wilson','Jim Carrey' ]

      atores.each do |a|

      selecionar(a)
      

      end

    end

    after(:each) do
        sleep 3
    end
end