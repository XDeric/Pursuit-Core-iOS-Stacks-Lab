import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var stacks = stack
    var currentVal = 0
    while !stacks.isEmpty(){
        let stacking = stacks.pop() ?? 0
        if currentVal < stacking {
            currentVal = stacking
        }
    }
    return currentVal
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var stacks = stack
    var currentVal = 0
    while !stacks.isEmpty() {
        currentVal += stacks.pop() ?? 0
    }
    return currentVal
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    var stacks = stack
    var currentVal = Stack<T>()
    while !stacks.isEmpty(){
        currentVal.push(element: stacks.pop()!)
    }
    return currentVal
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stack1 = stackOne
    var stack2 = stackTwo
//    while !(stack1.isEmpty() && stack2.isEmpty()){
//        if stack1.pop()! != stack2.pop()!{
//            return false
//        }
//    }
    while !stack1.isEmpty() && !stack2.isEmpty(){
        if stack1.pop()! != stack2.pop()!{
            return false
        }
    }
    return true
}

//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var stack5 = stack
    var currentVal = Stack<T>()
    while !stack5.isEmpty(){
        currentVal.push(element: newElement)
        currentVal.push(element: stack5.pop()!)
    }
    return Stack<T>()
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

