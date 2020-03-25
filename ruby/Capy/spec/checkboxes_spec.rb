



describe 'caixa de selecao', :checkbox do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        #funciona com id e name
        check('thor')
    end

    it 'desmarcando uma opção' do
        #funciona com id e name
        uncheck('antman')
    end

    it 'marcando com find' do
        find('input[value=cap]').set(true)
        
    end
    
    it 'desmarcando com find' do
        find('input[value=guardians]').set(false)
        
    end

    after(:each) do
        sleep 3
    end
end