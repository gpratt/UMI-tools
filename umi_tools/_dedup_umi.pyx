
cpdef bint threshold_edit_distance(a, b, t):
    cdef char * aa = a
    cdef char * bb = b
    cdef thresh = t
    cdef int k, l, c

    c = 0

    l = len(a)
    for k from 0 <= k < l:
        if aa[k] != bb[k]:
            c += 1
            if c > thresh:
                return <bint>0
    return <bint>1


cpdef int edit_distance(a, b):
    cdef char * aa = a
    cdef char * bb = b
    cdef int k, l, c

    c = 0

    l = len(a)
    for k from 0 <= k < l:
        if aa[k] != bb[k]:
            c += 1
    return c
