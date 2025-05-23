import Foundation
/*
 Diff b/w parallelism & concurrency:-
 
 parallelism: 2 works done by 2 workers    But In
 Concurrency:2 works done simultanrously by 1 workers by time slicing & context switching
 
 ex: 1 work 2sec(completed),  2nd work 2sec ,  2nd work 2 sec (completed)
 
 
 
 */


///Concurrency: execution of the multiple instruction sequences at the same time.


///Concurrent == async

//MARK: Keywords
///task         doing async (background task) in main Que or thread //main q is not background task
///global()     for entire system
///sync()        syncrounous (Run sequentially)
///async()      asyncrounus (run parallelly)
///try              try handles any errors thrown by the loadTransferable method. If an error occurs, it can be caught in a do-catch block or passed up the chain if this function itself is marked with throws.
///await            Indicates that the function being called is asynchronous and needs to be awaited, meaning it will pause the current task until the async function completes.


DispatchQueue.global().sync(){
    print("Inside the sync task")
}
print("After the sync task")



DispatchQueue.global().async(){
    print("Inside the async task")
    print("1")
}
print("After the async task")



///Creating my own Queue

let serial1 = DispatchQueue(label: "ios.learning")

serial1.async {
    for i in 0...5{
        print("Inside my own syn task \(i)")
    }
}
 print("hiiiiiiiii")


//MARK: Priority async
/*
 QOS (Quality of service)
 Can give 6 types of priorities:-
 
 the order from high priority to low
 
 - userInitiated
 - default
 - userInteractive
 - unspecified
 - utility
 - background
 
 */

let queUserInitiated = DispatchQueue.global(qos: .userInitiated)
let queDefault = DispatchQueue.global(qos: .default)


