class BankAccount {
  final String? _accountID;
  final String? _customerName;
  int? _balance;

  BankAccount(
      {required String accountID,
      required String customerName,
      required int balance})
      : this._accountID = accountID,
        this._customerName = customerName,
        this._balance = balance {
    print('\nBank Account created Successfully!');
    print('Customer Name: ${this._customerName}');
    print('Account ID: ${this._accountID}');
    print('Available Balance: \$${this._balance}\n');
  }

  BankAccount.withoutBalance(
      {required String accountID, required String customerName})
      : _accountID = accountID,
        _customerName = customerName,
        this._balance = 0 {
    print('Bank Account created Successfully');
    print('Customer Name: ${this._customerName}');
    print('Account ID: ${this._accountID}');
    print('Available Balance: \$${this._balance}\n');
  }

  void withdraw(int amount) {
    if (amount > 0 && amount <= this._balance!) {
      this._balance = this._balance! - amount;
      print('Processing Withdrawal of \$$amount, Please wait...');
      print(
          'Deducted Amount: \$$amount \nYour New balance: \$${this._balance}\n');
    } else if (amount > this._balance!) {
      print('Processing Withdrawal of \$$amount, Please wait...');
      print('Insufficient balance!\n');
    } else {
      print('Invalid input!\n Please Enter a Positive Value\n');
    }
  }

  void deposit(int amount) {
    if (amount > 0) {
      this._balance = this._balance! + amount;
      print('a deposit of \$$amount is being processed, Please wait...');
      print(
          'Amount Deposited: \$${amount} \nYour New balance: \$${this._balance}\n');
    } else {
      print('a deposit of \$$amount is being processed, Please wait...');
      print('Invalid Deposit Amount!\n');
    }
  }

  void displayAccountInfo() {
    print('Requesting Account Info, Please Wait...');
    print('Account ID: ${this._accountID}');
    print('Customer Name: ${this._customerName}');
    print('Available Balance: \$${this._balance}\n');
  }
}
