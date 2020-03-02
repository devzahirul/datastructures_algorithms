
import UIKit

//A generic dynamic array implementation
struct DynamicArray<Element> {
    private var arr: Array<Element>!
    private var len: Int = 0
    public var capacity: Int = 0
    
    init() {
        arr = Array<Element>.init()
        self.capacity = arr.capacity
        self.len = self.arr.count
    }
    
    init(capacity: Int, defaultElement: Element) {
        if capacity < 0 {fatalError("Illegal Capacity : \(capacity)")}
        arr = Array<Element>.init(repeating: defaultElement, count: capacity)
        self.capacity = arr.capacity
        self.len = arr.count
    }
    
    var count: Int {
        return self.len
    }
    
    var isEmpty: Bool {
        return len == 0
    }
    
    func append(_ element: Element) {
        
    }
}

let arr = DynamicArray<Int>.init(capacity: 10, defaultElement: 0)

print(arr.capacity)
print(arr.count)
print(arr.isEmpty)
