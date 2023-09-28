"""
LinkL library
"""
cimport clists

cdef class _LinkL:
    cdef clists.L_List* _c_linkl
    cdef dict _data

    def __cinit__(self, dict data):
        cdef void *ptr
        ptr = <void*>data
        self._c_linkl = clists.L_list_new(ptr)
        if self._c_linkl is NULL:
            raise MemoryError()

    def __dealloc__(self):
        if self._c_linkl is not NULL:
            clists.L_list_destroy(self._c_linkl)

    cpdef dict get_data(self):
        cdef dict data = <object>clists.L_LIST_DATA(self._c_linkl)
        return data

    cpdef int insert(self, dict data):
        cdef void *ptr
        ptr = <void*>data
        cdef int result = clists.L_list_insert(self._c_linkl, ptr)
        return result
