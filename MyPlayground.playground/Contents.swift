import UIKit
import CoreGraphics

class Student {
    var name : String
    var age : Int
    var aClass : Int
    var studentDegree : Int
    
    init (name: String , age : Int , aClass: Int ,studentDegree: Int  ){
    
    self.name = name
    self.age = age
    self.aClass = aClass
    self.studentDegree = studentDegree
}
func goSchool() {
    print("go school ....")
    
}
}
var a = Student (name: "jawaher" , age: 24, aClass: 1, studentDegree: 100)
print(" name :\(a.name) ,age \(a.age) , aclass \(a.aClass), degree \(a.studentDegree)")


class Teacher : Student {
    var salary = Int()
    init(name : String , age : Int , aClass:Int , salary : Int ){
        self.name = name
        self.age = age
        self.aClass = aClass
        self.salary = salary
    }
    
        
        
    }
    
    
    
    
}
