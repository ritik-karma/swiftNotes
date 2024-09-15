///Returning value must confirm to some

protocol Animal {
    func makeSound() -> String
}


class Dog:Animal{
    func makeSound() -> String {
        return "Bark"
    }
}
class Cat:Animal{
    func makeSound() -> String {
        return "Meow"
    }
}
class Cow {
    func makeSound() -> String {
        return "maaaaa"
    }}


func opaqueFunc () -> some Animal {
    ///'some' which is opaque type will return anything realted to the animal or any animal
    return Cat()
}

///will give eror because cow does nt confirms to Animal
//func opaqueErrorfunc () -> some Animal {
//    return Cow()
//}

//MARK: Ex

func makeInt() -> some Equatable{
    
    Int.random(in: 1...10)
   
}

let num1 = makeInt()
let  num2 = makeInt()


func myString () -> some Equatable{
    "hello"
}
