
import Foundation
///UseCase ;  For restriction of creating multiple instances

//lets create sigleton class with 'shared' name
class Employee {
    static var shared = Employee()
    func employeeDetail(with: String){
        print("lapu sa sachin")
    }
}
Employee.shared.employeeDetail(with: "sachin")


//MARK: Restricting multi instace
///User can also restrict to create multiple instance for singleton class do doing 'init' as private

class student {
    var rollN = 12
    private init(rollN: Int = 12) {
        self.rollN = rollN
    }
    static var shared = student()
}


// var ayush = student()     /// can't create instance for this class

///Only one instance available which is singleton class
student.shared.rollN



/*
There r many preDefined singleton classes:-
 
URLSession.shared:- Created urlsession with singleton class
 UserDefaults.standard
 Filemanager.
*/
