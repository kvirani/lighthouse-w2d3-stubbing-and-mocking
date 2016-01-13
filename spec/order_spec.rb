require 'order'

describe Order do
  
  # test case
  it "should should default to pending status" do 
    order = Order.new(10, 'kvirani@gmail.com')
    expect(order.status).to eq('pending')
  end

  describe '#submit' do
    it 'should update the status to completed' do
      order = Order.new(20, 'dude@hotmail.com')
      result = double(success: true)
      # puts result.inspect
      # allow(result).to receive(:success).and_return(true)
      allow(order).to receive(:notify_customer).and_return(result)
      order.submit
      expect(order.status).to eq('completed')
    end

    it 'should notify the customer via email' do 
      order = Order.new(20, 'dude@hotmail.com')
      result = double(success: true)
      # allow(result).to receive(:success).and_return(true)
      expect(order).to receive(:notify_customer).once.and_return(result)
      order.submit
    end

  end

end