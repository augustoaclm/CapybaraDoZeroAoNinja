describe 'mouse hover', :hover do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o ouse sobre o blade' do
       card = find('img[alt="Blade"]')

       card.hover

       expect(page).to have_content 'Nome: Blade'
        

    end

    it 'quando passo o ouse sobre o pantera negra' do
        card = find("img[alt='Pantera Negra']")
 
        card.hover
 
        expect(page).to have_content 'Nome: Pantera Negra'
         
 
     end


    after(:each) do
        sleep 3
    end
end