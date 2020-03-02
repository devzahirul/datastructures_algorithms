//Binary search tree implementation in Swift
class Node<Element: Comparable> {
    var left: Node<Element>!
    var right: Node<Element>!
    
    var data: Element
    
    init(_ data: Element) {
        self.data = data
    }
    
    //Insert a new value into node
    //If left or right node not nil then recursivly call for next node
    func insert(_ value: Element) {
        if value <= data {
            if left == nil {
                left = Node<Element>.init(value)
            } else {
                left.insert(value)
            }
        } else {
            if right == nil {
                right = Node<Element>.init(value)
            } else {
                right.insert(value)
            }
        }
    }
    
    //Search element into BST
    //Call recursivly left/right
    func contain(_ value: Element) -> Bool {
        if data == value {
            return true
        } else if value < data {
            if left == nil {
                return false
            } else {
                return left.contain(value)
            }
        } else {
            if right == nil {
                return false
            } else {
                return right.contain(value)
            }
        }
    }
    
    //print BST inOrder Traversal
    func printInOrder() {
        if left != nil {
            left.printInOrder()
        }
        
        print(data)
        
        if right != nil {
            right.printInOrder()
            
        }
    }
}


let rootNode = Node<Int>.init(8)
rootNode.insert(10)
rootNode.insert(5)
rootNode.insert(15)
rootNode.insert(7)
rootNode.printInOrder()

//Output
/**
 5
 7
 8
 10
 15
 */
