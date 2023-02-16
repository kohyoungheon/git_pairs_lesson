class BankAccount
  attr_reader :account_number,
              :secret_code,
              :balance

  def initialize(id, pin, balance)
    @account_number = id
    @secret_code = pin
    @balance = balance
  end

  def deposit(amount)
    @balance = amount + @balance
  end

  def withdraw(amount)
    if @balance > amount
      @balance -= amount
    end
    amount
  end

  def verify?(id, pin)
    if id == @account_number && pin == @secret_code
      true
    else
      false
    end
  end
end