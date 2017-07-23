
import Foundation

public class BinaryTree<T: Comparable> {
    public var value: T
    public var parent: BinaryTree?
    public var left: BinaryTree?
    public var right: BinaryTree?
    
    public init(value: T) {
        self.value = value
    }
    
    public func insert(value: T) {
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = BinaryTree(value: value)
                left?.parent = self
            }
        } else {
            if let right = right {
                right.insert(value: value)
            } else {
                right = BinaryTree(value: value)
                right?.parent = self
            }
        }
    }
    
    public func search(value: T) -> BinaryTree? {
        if value < self.value {
            return left?.search(value: value)
        } else if value > self.value {
            return right?.search(value: value)
        } else {
            print(self.value)
            return self  // found it!
        }
    }
}

let binaryTree: BinaryTree = BinaryTree(value: 0)

for _ in 0..<5000000 {
    binaryTree.insert(value: Int(arc4random_uniform(UInt32(5000000))))
//    binaryTree.insert(value: 300)
}

binaryTree.insert(value: 5000001)

_ = binaryTree.search(value: 5000001)
print("end")
