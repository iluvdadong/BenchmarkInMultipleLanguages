//
//  main.cpp
//  CBinaryTree
//
//  Created by Sohn on 23/07/2017.
//  Copyright © 2017 Sohn. All rights reserved.
//

#include <iostream>
#include "tree.hpp"
using namespace std;

int main(int argc, const char * argv[]) {
    
    BinarySearchTree<int> bst;
    
    function<int(int&, int&)> comparator = [](int& lhs, int& rhs)->int{
        if(lhs >= rhs) {
            return 1;
        } else if (lhs < rhs) {
            return -1;
        } else {
            return 0;
        }
    };
    
    srand((unsigned int)time(NULL));
    
    for(int i = 0; i < 5000000; i++) {
        int ranNum = rand() * 5000000;
        bst.insert(ranNum, comparator);
    }
    
    bst.insert(5000001, comparator);

    cout << bst.search(5000001, comparator);
    
    return 0;
}
