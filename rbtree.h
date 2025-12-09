#ifndef RBTREE_H
#define RBTREE_H

#include "proc.h"

// Define Red-Black Tree node structure
struct rb_node {
    struct proc *process;   // Pointer to process
    struct rb_node *parent;
    struct rb_node *left;
    struct rb_node *right;
    int color;              // RED = 0, BLACK = 1
};

// Define Red-Black Tree structure
struct rb_tree {
    struct rb_node *root;
    struct rb_node *nil;    // Sentinel nil node (always black)
};

// Function prototypes
void rb_init(struct rb_tree *tree);
void rb_insert(struct rb_tree *tree, struct proc *process);
void rb_delete(struct rb_tree *tree, struct proc *process);
struct proc* rb_get_min(struct rb_tree *tree); // Get process with lowest vruntime

void rb_insert_fixup(struct rb_tree *tree, struct rb_node *z);
void rb_delete_fixup(struct rb_tree *tree, struct rb_node *x);

#endif // RBTREE_H

