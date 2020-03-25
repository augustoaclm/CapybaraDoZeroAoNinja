
describe 'Caixa de selecao', :dropdown do

    it 'item especifico simples' do
        #select('opcao'), from 'elemeto')
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        #opção para quem possui id
        select('Loki', from: 'dropdown')
        sleep 3
    
    end

    
    it 'item especifico find' do
        #select('opcao'), from 'elemeto')
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        drop = find('.avenger-list')
        drop.find('option', text: 'Loki').select_option
        sleep 3
    
    end

    it 'item qualquer item' do
        #select('opcao'), from 'elemeto')
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    
    end

end