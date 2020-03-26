describe 'drag and drop', :drop do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'homem aranha pertence ao time stark' do
        #desino
        stark = find('.team-stark .column')
        #item
        spider = find("img[alt$='Aranha']")

        spider.drag_to stark
        sleep 3
        expect(stark).to have_css "img[alt$='Aranha']"
        expect(spider).not_to have_css "img[alt$='Aranha']"

    end
 


    after(:each) do 
        sleep 3
    end
end