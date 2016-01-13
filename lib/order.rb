class Order

  class EmailResult

    attr_reader :datetime, :success

    def initialize(datetime, success)
      @datetime = datetime
      @success = success
    end
  end

  attr_reader :status
  attr_reader :email

  def initialize(total_amount, email)
    @email = email
    @status = 'pending'
    @total_amount = total_amount
  end

  def submit
    @status = 'completed'
    result = notify_customer # true
    raise "NOOO!!!!!" unless result.success
  end

  private 

  def notify_customer
    puts "------"
    puts "TO: #{@email}"
    puts "FROM: noreply@pos.com"
    puts "Receipt for $#{@total_amount} order"
    puts "------"
    EmailResult.new(Time.now, true)
  end


end