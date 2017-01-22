cpdef int edit_distance(a, b, t):
    cdef char * aa = a
    cdef char * bb = b
    cdef thresh = t
    cdef int k, l, c

    c = 0

    l = len(a)
    for k from 0 <= k < l:
        if aa[k] != bb[k]:
            c += 1
	    if c > t:
	        return c
    return c
