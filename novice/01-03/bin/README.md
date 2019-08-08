#Hari 3 - Program Mesin ATM

Pada program mesin ATM ini terdapat 4 pilihan yaitu : Deposite, Withdraw, Balance Inquiry, dan Exit.

**Fungsi Main**

```
void main(List<String> args) {
    // var read = StringScanner(source);
    int select = 0;
    int choice = 0;
    

    print('====================================================');
    print('Welcome to this simple ATM Machine');
    print('====================================================');

   
    do {
      do {
          print('Please select ATM Transactions');
          print('Press [1] Deposite');
          print('Press [2] Withdraw');
          print('Press [3] Balance Inquiry');
          print('Press [4] Exit');

          stdout.write("What would you like to do?");
          select = int.parse(stdin.readLineSync());

          if (select>4){
            print('Please select correct transaction');
          } else {
            switch (select)
            {
              case 1:
              stdout.write("Enter the amount of money to deposit :");
              Deposit.deposit = double.parse(stdin.readLineSync());
              Balancelnquiry.balance = Deposit.deposit + Balancelnquiry.balance;
              ATMMachine.depositMoney();
              break;

              case 2:
              print('To withdraw, make sure that you have sufficient balance in your account.');
              print(' ');
              stdout.write("Enter amount of money to withdraw :");
              Withdraw.withdraw = double.parse(stdin.readLineSync());
              ATMMachine.withdrawMoney();
              break;

              case 3:
              ATMMachine.checkBalance();
              break;

              default:
              print('Transaction exited.');
              break;

            }
          }
        } while (select > 4);
        do {
          print('Would you like to try anothe transaction?');
          print('Press [1] Yes Press [2] No');
          stdout.write("Enter choice : ");
          choice = int.parse(stdin.readLineSync());

          if(choice > 2) {
            print('Please select correct choice.');
          }

          // catch (Exception e) {
          //   print('Error input! Please enter a number only.');
          //   stdout.write("Enter choice : ");
          //   choice = int.parse(stdin.readLineSync());
          // }
        } while (choice > 2);
      
      // catch(Exception e) {
      //   print('Error input! Please enter a number only.');
      
      //   stdout.write("Enter your choice : ");
      //   select= int.parse(stdin.readLineSync());
      // }
    } while(choice <= 1);
    print('Thank you for using this simple ATM Machine.');
  }
  ```

**Class ATMMachine**
Pada kelas ATMMachine terdapat 3 fungsi yaitu: checkBalance, withdrawMoney, dan depositMoney.
```
  class ATMMachine {
  static void checkBalance(){
    print('Your current balance is ${Balancelnquiry.get_Balance()}');
  }

  static void withdrawMoney(){
    if (Balancelnquiry.balance == 0) {
      print('Your current balance is zero.');
      print('You cannot withdraw!');
      print('You need to deposit money first.');
    } else if (Balancelnquiry.balance <= 500) {
      print('You do not have sufficinet money to withdraw');
      print('Checked your balance to see your money in the bank.');
    } else if (Withdraw.withdraw > Balancelnquiry.balance){
      print('The amount you withdraw is greater than to your balance');
      print('Please check the amount you entered');
    } else {
      Balancelnquiry.balance = Balancelnquiry.balance - Withdraw.withdraw;
      print('You withdraw the amount of PHP ${Withdraw.withdraw}');
    }
  }

  static void depositMoney(){
    print('You deposited the amount of ${Deposit.deposit}');
  }
}
```

**Class Deposit**
Pada kelas deposit terdapat fungsi setter dan getter untuk mengambil dan menampilkan dari hasil Deposit.
```
class Deposit extends ATMMachine {
  static double deposit;

  void set set_Deposit(double d){
    deposit = d;
  }
  static double get_Deposit(){
    return deposit;
  }
}
```
**Class Withdraw**
```
class Withdraw extends ATMMachine {
  static double withdraw = 0;
  void set set_Withdraw(double w) {
    withdraw = w;
  }
  static double get_Withdraw(){
    return withdraw;
  }
}
```

**Class Balancelnquiry**

```
class Balancelnquiry extends ATMMachine {
  static double balance = 0;
  void set set_Balance(double b) {
    balance = b;
  }
  static double get_Balance(){
    return balance;
  }
}
```

**Output dari Program**
```
====================================================
Welcome to this simple ATM Machine
====================================================
Please select ATM TRansactions
Press [1] Deposite
Press [2] Withdraw
Press [3] Balance Inquiry
Press [4] Exit
What would you like to do? 1
```

```
Enter the amount of money to deposit :5000000
You deposited the amount of 5000000.0
Would you like to try anothe transaction?
Press [1] Yes Press [2] No
Enter choice : 1
```

```
Please select ATM TRansactions
Press [1] Deposite
Press [2] Withdraw
Press [3] Balance Inquiry
Press [4] Exit
What would you like to do?2
To withdraw, make sure that you have sufficient balance in your account.
```

```
Enter amount of money to withdraw :500000
You withdraw the amount of PHP 500000.0
Would you like to try anothe transaction?
Press [1] Yes Press [2] No
Enter choice : 3
Please select correct choice.
Would you like to try anothe transaction?
Press [1] Yes Press [2] No
Enter choice : 1
```

```
Please select ATM TRansactions
Press [1] Deposite
Press [2] Withdraw
Press [3] Balance Inquiry
Press [4] Exit
What would you like to do?3
Your current balance is 4500000.0
Would you like to try anothe transaction?
Press [1] Yes Press [2] No
Enter choice : 2
Thank you for using this simple ATM Machine.
```