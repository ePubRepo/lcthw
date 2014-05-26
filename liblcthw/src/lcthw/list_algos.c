#include <lcthw/list_algos.h>
#include <lcthw/dbg.h>

inline void ListNode_swap(ListNode *a, ListNode *b)
{
    void *temp = a->value;
    a->value = b->value;
    b->value = temp;
}

int List_bubble_sort(List *list, List_compare cmp)
{
}

inline List *List_merge(List *left, List *right, List_compare cmp)
{
}

List *List_merge_sort(List *list, List_compare cmp)
{
}
