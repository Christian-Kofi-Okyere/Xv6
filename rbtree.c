#include "rbtree.h"
#include "memlayout.h"
#include "types.h"
#include "defs.h"
#include "proc.h"

// Initialize the Red-Black Tree
void rb_init(struct rb_tree *tree) {
    tree->nil = (struct rb_node*) kalloc();  // Allocate nil node
    tree->nil->color = 1;  // NIL node is always BLACK
    tree->nil->left = tree->nil->right = tree->nil;
    tree->root = tree->nil;  // Empty tree starts with NIL root
}

// Left rotate subtree rooted at x
void rb_left_rotate(struct rb_tree *tree, struct rb_node *x) {
    struct rb_node *y = x->right;
    x->right = y->left;
    
    if (y->left != tree->nil) {
        y->left->parent = x;
    }
    
    y->parent = x->parent;
    
    if (x->parent == tree->nil) {
        tree->root = y;
    } else if (x == x->parent->left) {
        x->parent->left = y;
    } else {
        x->parent->right = y;
    }
    
    y->left = x;
    x->parent = y;
}

// Right rotate subtree rooted at x
void rb_right_rotate(struct rb_tree *tree, struct rb_node *x) {
    struct rb_node *y = x->left;
    x->left = y->right;
    
    if (y->right != tree->nil) {
        y->right->parent = x;
    }
    
    y->parent = x->parent;
    
    if (x->parent == tree->nil) {
        tree->root = y;
    } else if (x == x->parent->right) {
        x->parent->right = y;
    } else {
        x->parent->left = y;
    }
    
    y->right = x;
    x->parent = y;
}


// Fix Red-Black Tree after insertion
void rb_insert_fixup(struct rb_tree *tree, struct rb_node *z) {
    while (z->parent->color == 0) { // Parent is RED
        if (z->parent == z->parent->parent->left) {
            struct rb_node *y = z->parent->parent->right;
            if (y->color == 0) { // Case 1: Uncle is RED
                z->parent->color = 1;
                y->color = 1;
                z->parent->parent->color = 0;
                z = z->parent->parent;
            } else {
                if (z == z->parent->right) { // Case 2: z is a right child
                    z = z->parent;
                    rb_left_rotate(tree, z);
                }
                // Case 3: z is a left child
                z->parent->color = 1;
                z->parent->parent->color = 0;
                rb_right_rotate(tree, z->parent->parent);
            }
        } else { // Mirror cases for right child
            struct rb_node *y = z->parent->parent->left;
            if (y->color == 0) { // Case 1: Uncle is RED
                z->parent->color = 1;
                y->color = 1;
                z->parent->parent->color = 0;
                z = z->parent->parent;
            } else {
                if (z == z->parent->left) { // Case 2: z is a left child
                    z = z->parent;
                    rb_right_rotate(tree, z);
                }
                // Case 3: z is a right child
                z->parent->color = 1;
                z->parent->parent->color = 0;
                rb_left_rotate(tree, z->parent->parent);
            }
        }
    }
    tree->root->color = 1; // Root must always be BLACK
}

// Fix Red-Black Tree after deletion
void rb_delete_fixup(struct rb_tree *tree, struct rb_node *x) {
    while (x != tree->root && x->color == 1) { // BLACK node needs fixup
        if (x == x->parent->left) {
            struct rb_node *w = x->parent->right;
            if (w->color == 0) { // Case 1: Sibling is RED
                w->color = 1;
                x->parent->color = 0;
                rb_left_rotate(tree, x->parent);
                w = x->parent->right;
            }
            if (w->left->color == 1 && w->right->color == 1) { // Case 2: Both children are BLACK
                w->color = 0;
                x = x->parent;
            } else {
                if (w->right->color == 1) { // Case 3: Right child is BLACK
                    w->left->color = 1;
                    w->color = 0;
                    rb_right_rotate(tree, w);
                    w = x->parent->right;
                }
                // Case 4: Right child is RED
                w->color = x->parent->color;
                x->parent->color = 1;
                w->right->color = 1;
                rb_left_rotate(tree, x->parent);
                x = tree->root;
            }
        } else { // Mirror cases for right child
            struct rb_node *w = x->parent->left;
            if (w->color == 0) { // Case 1: Sibling is RED
                w->color = 1;
                x->parent->color = 0;
                rb_right_rotate(tree, x->parent);
                w = x->parent->left;
            }
            if (w->right->color == 1 && w->left->color == 1) { // Case 2: Both children are BLACK
                w->color = 0;
                x = x->parent;
            } else {
                if (w->left->color == 1) { // Case 3: Left child is BLACK
                    w->right->color = 1;
                    w->color = 0;
                    rb_left_rotate(tree, w);
                    w = x->parent->left;
                }
                // Case 4: Left child is RED
                w->color = x->parent->color;
                x->parent->color = 1;
                w->left->color = 1;
                rb_right_rotate(tree, x->parent);
                x = tree->root;
            }
        }
    }
    x->color = 1;
}

void rb_insert(struct rb_tree *tree, struct proc *process) {
    struct rb_node *z = (struct rb_node*) kalloc();
    z->process = process;
    z->left = z->right = tree->nil;
    z->color = 0;  // New node is always RED

    struct rb_node *y = tree->nil;
    struct rb_node *x = tree->root;

    // Find the correct insertion point
    while (x != tree->nil) {
        y = x;
        if (process->vruntime < x->process->vruntime)
            x = x->left;
        else
            x = x->right;
    }

    z->parent = y;
    if (y == tree->nil)
        tree->root = z;
    else if (process->vruntime < y->process->vruntime)
        y->left = z;
    else
        y->right = z;

    rb_insert_fixup(tree, z); // Fix tree balance
}

struct proc* rb_get_min(struct rb_tree *tree) {
    struct rb_node *node = tree->root;
    if (node == tree->nil)
        return 0;

    while (node->left != tree->nil)
        node = node->left;

    return node->process;
}

void rb_delete(struct rb_tree *tree, struct proc *process) {
    struct rb_node *z = tree->root;
    
    // Find the node to delete
    while (z != tree->nil) {
        if (z->process == process)
            break;
        else if (process->vruntime < z->process->vruntime)
            z = z->left;
        else
            z = z->right;
    }
    
    if (z == tree->nil)
        return;  // Process not found

    rb_delete_fixup(tree, z);
}


