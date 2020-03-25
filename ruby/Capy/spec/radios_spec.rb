describe 'botoes de radio radios', :radios do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'selecao por id' do
        #funciona com id
        choose('cap')
    end

    it 'selecao por find e css ' do
        #funciona com id
        find('input[value=guardians').click
    end


    after(:each) do
        sleep 3
    end
end