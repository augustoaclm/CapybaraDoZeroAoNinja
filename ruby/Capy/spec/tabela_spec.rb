describe 'tabelas', :tabela do
    before(:each) do


        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end

    it 'Pega o tony star na lista' do

        expect(page).to have_content 'Robert Downey Jr'

    end

    it 'Deve exibir o salario do stark' do
        atores = all('table tbody tr')
       stark =  atores.detect { |ator| ator.text.include?('Robert Downey Jr') }

       puts stark.text
        expect(stark.text).to include '10.000.000'

    end


    it 'Deve exibir salario do vin disel' do

        diesel = find('table tbody tr', text: 'Vin Diesel')

        

        expect(diesel).to have_content '10.000.000'


    end

    it 'Deve exibir filme velozes' do
        diesel = find('table tbody tr', text: 'Vin Diesel')
        movie = diesel.all('td')[2].text

        expect(movie).to eql 'Velozes e Furiosos'


    end

    it 'Deve exibir o insta do Chris Evans' do

        evans = find('table tbody tr', text: 'Chris Evans')

        insta = evans.all('td')[4].text
        expect(insta).to eql '@teamcevans'

    end

    it 'Selecionar chris Prat para remocao' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
        sleep 3



    end





    after(:each) do
        sleep 3
    end
end