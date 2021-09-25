# OOPs in Kotlin
* [Defining Class and creating Objects](#defining-class-and-creating-objects)
* [Data Class](#data-class)
* [Object Declarations](#object-declarations)
* [Companion Object](#companion-object)
---
# Defining Class and creating Objects

### Kotlin Class

Class is a blueprint for the objects which have common properties. Kotlin classes are declared using keyword class. Kotlin class has a class header which specifies its type parameters, constructor etc. and the class body which is surrounded by curly braces.

#### Syntax of Kotlin class declaration
```kotlin=
class className{ // class header

  // property

  // member function
}
```

Properties and member function of class are accessed by **.** operator using object
#### Example
Create a **Car** class along with some properties (brand, model and year)
```kotlin
class Car { var brand = "" var model = "" var year = 0 }
```

### Create an Object
Now we can use the class named **Car** to create objects.

In the example below, we create an object of Car called c1 , and then we access the properties of c1 by using the dot syntax (.), just like we did to access array and string properties:

#### Example
```kotlin
// Create a c1 object of the Car class
val c1 = Car()

// Access the properties and add some values to it
c1.brand = "Ford"
c1.model = "Mustang"
c1.year = 1969

println(c1.brand)   // Outputs Ford
println(c1.model)   // Outputs Mustang
println(c1.year)    // Outputs 1969
```
---

# Data Class
Data class is a simple class which is used to hold data/state and contains standard functionality. A  **data**  keyword is used to declare a class as a data class. There may arise a situation where you need to create a class solely to hold data. These classes are known as  **data class**  or  **data access objects**  or  **data transfer objects** , etc.

The compiler automatically derives the following functions :

- equals()
- hashCode()
- toString()
- copy()

### **Rules to create Data classes –**

Data classes have to fulfill the following requirements to ensure the consistency:

- The primary constructor needs to have at least one parameter.
- All primary constructor parameters need to be marked as _val_ or _var_.
- Data classes cannot be abstract, open, sealed or inner.
- Data classes may only implement interfaces.

```kotlin
fun main(args: Array<String>) {
    var user1 = User("Sam", 10)
    var user2 = User("Sam", 10)
    if (user1 == user2)
        println("Equal")
    else
        println("Not equal")
}
class User(var name: String, var id: Int)
```


#### Output:
> Not equal

```kotlin
fun main(args: Array<String>) {
    var user1 = User("Sam", 10)
    var user2 = User("Sam", 10)
    println(user1.toString())
    if (user1 == user2)
        println("Equal")
    else
        println("Not equal")
    var newUser = user1.copy(id = 25)
    println(newUser)
}

data class User(var name: String, var id: Int)
```
#### Output:

> User(name=Sam, id=10)
>
> Equal
>
> User(name=Sam, id=25)

---
# Object Declarations

Singleton Class in Kotlin is also called as the Singleton Object in Kotlin. Singleton class is a class that is defined in such a way that only one instance of the class can be created and used everywhere.

Kotlin provides an easy way to create singletons using the object declaration feature. For that, object keyword is used.
```kotlin
object SingletonExample {
    ... .. ...
    // body of class
    ... .. ...
}
```


The above code combines a class declaration and a declaration of a single instance SingletonExample of the class.

An object declaration can contain properties, methods and so on. However, they are not allowed to have constructors

### **Properties of Singleton Class**

The following are the properties of a typical singleton class:

- **Only one instance** : The singleton class has only one instance and this is done by providing an instance of the class, within the class.
- **Globally accessible** : The instance of the singleton class should be globally accessible so that each class can use it.
- **Constructor not allowed** : We can use the init method to initialize our member variables.

```kotlin
fun main(args: Array<String>)
{
    println(Test.name)
    println("The answer of addition is ${Test.add(3,2)}")
    println("The answer of addition is ${Test.add(10,15)}")
}

object Test
{
    init
    {
        println("Singleton class invoked.")
    }

    var name = "This is a test";

    fun add(num1:Int,num2:Int):Int
    {
        return num1+num2
    }
}
```
#### Output:
> Singleton class invoked.
>
> This is a test
>
> The answer of addition is 5
>
> The answer of addition is 25

---
# Companion Object

There might be a situation where we want to have  **some properties common for all objects**  of the class. These types of properties and methods are known as  **class level fields**. In Kotlin, a  **companion object**  is used to declare the class level fields.

### **Creating and accessing Companion Object**

The companion object is created using the companion keyword. Let us create a class  **Employee**  and create a companion object with name  **Test** :

```kotlin
class Employee {
    var salary:Int = 0
    fun printSalary(){
        println("Salary is: ${this.salary}")
    }
    companion object Test{
        var i: Int = 1
        fun printI(){
            println("Value of i: $i")
            i++
        }
    }
}
```
They can also be accessed using both the class name or the object name.

```kotlin
fun main() {
    Employee.printI()       // Access printI() method using class name
    Employee.Test.printI()  // Access printI() method using class name and companion object name
}
```
#### Output : 
> Value of i: 1
>
> Value of i: 2

Few important points regarding companion objects:

- Companion objects are accessed using the class name instead of object names.
- If the companion object name is missing, the default name Companion is assigned to it.
- There can only be  **one companion object**  in a class.
- A companion object is  **initialized**  when the  **class is loaded**.
- If we try to access class level fields using objects or objects fields using the class name, an error will be thrown.
