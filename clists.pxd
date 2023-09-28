cdef extern from "v0.1.0/lists/lists.h":
    ctypedef struct L_List:
        void *data
        L_List* next;

    L_List *L_list_new(void *data);
    void L_list_destroy(L_List* list)
    L_List *L_LIST_DATA(L_List* list)
    int L_list_insert(L_List *list, void *data)
