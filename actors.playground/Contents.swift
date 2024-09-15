import Foundation
import UIKit
import SwiftUI
//MARK: Can use 'Actors' instead of 'semaphore' 'GCD with serial Queues' etc for modern programming.


///Similar to clases but only accessible to immutable things & func But you can access it with  await . also nt ssupport inherritence
///UseCase: Used to do async task in a sync way.

/*
class Student2 {
    let name = "chagan"
    var num = 0
    
    func incrementNum ()-> Int {
        num += 1
        return num
    }
}

actor Student1 {    ///write op comes only after read while doing concurrency which is not in class or struct
    let name: String = "Pawan"
    var rank: Int = 0
    func studRank()-> Int{
        rank += 1
        return rank
    }
}





let classStud = Student2()
classStud.name
classStud.num

let actorStud = Student1()
actorStud.name
//student1.rank           ///In class you won't get an errorr
await actorStud.rank
await actorStud.studRank()
await actorStud.rank




///Printing num 0-50 asyncronously in both class & actor

DispatchQueue.concurrentPerform(iterations: 50) { _ in
    ///Don't know what comes first read or write.
    print(classStud.incrementNum())
}                   ///OR
for _ in 0...20 {
    DispatchQueue.global().async {
        print(classStud.incrementNum())
    }
}


DispatchQueue.concurrentPerform(iterations: 20) { _ in
    ///It will print sequentially async operattion   because of actors first doing read then write
    Task{           ///task used for asyncrounous work
        print(await actorStud.studRank())
    }
}


*/
//MARK: example

actor Account {
    var balance = 1000
    func withdraw(amount: Int) {
        guard (balance >= amount) else{ return }
        balance -= amount
        print(balance)
    }
}

actor Transaction {
    let account: Account
    init(account: Account) {
        self.account = account    ///selfAcc will reffer to this actor acc & another one is referrring to another acotor account which is Account
    }
    func performWithdraw(amount: Int) async{
        await account.withdraw(amount: amount)
    }
}

let demoAccount = Account()
let manager = Transaction(account: demoAccount)

await manager.account.balance

Task{   ///its async so it will go concurrently
    await manager.performWithdraw(amount: 500)
}

Task{
    await demoAccount.withdraw(amount: 100)
}

await manager.account.balance
