import UIKit

//intentions: creating a bank account that will allows us to make deposit, withdrawals, and transfers between two accs
//bc of our intentions we know that we are going to need three functions at least
class BankAcc{
    //properties underneath our class
    
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    //we dont put it in the () cuz that would be a lot of argument
    init() {
        accountName = "Pegah"
        currentBalance = 0.0
        routingNumber = 0
        
    }
    //challenege is to create functions for depositing, withdrawing, setting acc name and setting routing number - 4 function
    
    func makeDeposit(depositAmount : Double) {
        currentBalance = currentBalance + depositAmount
        
    }
    func makeWithdraw(withdrawNumber : Double){
        currentBalance = currentBalance - withdrawNumber
    }
    
    func accountName(name : String) {
        accountName = name
    }

    func routingNumber(accountNumber : Int) {
        routingNumber = accountNumber
    }

    
}

var sample = BankAcc()
sample.makeDeposit(depositAmount: 26)
print("Your current balance is \(sample.currentBalance)")

var sample2 = BankAcc()
print("Your current balance is \(sample2.currentBalance)")

var pegahAcc = BankAcc()
pegahAcc.makeDeposit(depositAmount: 4000)
print("Pegah's current acc balance is \(pegahAcc.currentBalance)")
pegahAcc.accountName = "Pegah"
print("\(pegahAcc.accountName)")

//how to transfer money with func
//for sender and recipeitn we should create OBJECTS within a function meaing that we create a bank acc everytime i access this acc transfer (impo for Aviatrix project in the future)
func accountTransfer(sender : BankAcc, recipient : BankAcc, amount : Double, routingNumber : Int) {
//        var recipient : String
//        var sender :  String
//        var amount : Double
//        var routingNumber : Int
    if sender.routingNumber == routingNumber{
        sender.currentBalance = sender.currentBalance - amount
        recipient.currentBalance = recipient.currentBalance + amount
        print("The recipient has successfully recieved the transfer!")
        } else {
        print("Please double check your routing number.")
    }
}

accountTransfer(sender: pegahAcc, recipient: sample, amount: 1.0, routingNumber: 0)




























