#include <iostream>
#include <functional>
#include "node.hpp"

using namespace std;

template <typename T>
class BinarySearchTree {
    
private:
    Node<T>* root;
    
public:
    BinarySearchTree<T>();
    ~BinarySearchTree<T>();
    
    bool search(T value, function<int(T&, T&)>& comp);
    bool insert(T value, function<int(T&, T&)>& f);
    bool internal_insert(Node<T>*& current, T value, function<int(T&, T&)>& f);
};

template <typename T>
BinarySearchTree<T>::BinarySearchTree() {
    root = nullptr;
}

template <typename T>
BinarySearchTree<T>::~BinarySearchTree() {
    delete root;
}

template <typename T>
bool BinarySearchTree<T>::search(T value, function<int(T&, T&)>& comp)
{
    Node<T>* current = root;
    
    while (current) {
        if (comp(current->data, value) == 0) {
            return true;
        } else if (comp(value, current->data) == 1) {
            current = current->right;
        } else {
            current = current->left;
        }
    }
    
    return false;
}

template <typename T>
bool BinarySearchTree<T>::insert(T value, function<int(T&, T&)>& comp) {
    
    return internal_insert(root, value, comp);
}

template <typename T>
bool BinarySearchTree<T>::internal_insert(Node<T>*& current, T value,
                                          function<int(T&, T&)>& comp)
{
    // recursive
    if (current == nullptr) {
        current = new Node<T>(value);
        return true;
    } else if (comp(current->data, value) == 1) {
        // if the variable current is greater than value,
        return internal_insert(current->left, value, comp);
    } else if (comp(current->data, value) == -1) {
        // if the variable current is less than value,
        return internal_insert(current->right, value, comp);
    }
    
    // duplicated
    return false;
}
