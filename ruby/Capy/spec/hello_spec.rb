
describe 'Meu primeiro script' do
    it 'visitar a pagina' do
        visit "https://training-wheels-protocol.herokuapp.com/"
        puts page.title 

        expect(page.title).to eql 'Training Wheels Protocol'

        sleep 5
    end


end