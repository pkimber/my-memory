

class Desc(object):
    def __get__(self, obj, objtype):
        print 'Invocation'
        print 'Returning x + 10'
        return obj.x + 10

class A(object):
    def __init__(self, x):
        self.x = x
    plus_ten = Desc()

a = A(5)
a.x
print a.plus_ten

print 'Try with the class...'
A.plus_ten

