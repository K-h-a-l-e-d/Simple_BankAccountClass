import 'BankAccount.dart';

void main() {
  /***************  Default Constructor Case: *******************/
  /***************  Account with ID & Balance *******************/

  /********* Scenario 1:  Normal Successfull Operation ******/
  BankAccount KhaledAccount =
      BankAccount(accountID: '200305', customerName: 'Khaled', balance: 5000);

  KhaledAccount.deposit(20);
  KhaledAccount.withdraw(10);
  KhaledAccount.displayAccountInfo();

  /********* Scenario 2:  Insufficient balance ********/

  KhaledAccount.withdraw(6000);

  /***************  Named Constructor Case *******************/
  /***************  Account with ID ONLY & 0 Balance *******************/

  /********** Scenario 3: Invalid Input ***************/

  BankAccount MohamedAccount =
      BankAccount.withoutBalance(accountID: '300107', customerName: 'Mohamed');

  MohamedAccount.deposit(0);
}
