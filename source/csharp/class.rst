Class
*****

Initialisation
==============

The common language runtime initializes all fields to their default values
before running the constructor.

`Default Values Table`_:

The following table shows the default values of value types returned by the
default constructors.  Default constructors are invoked by using the new
operator, as follows:

::

  int myInt = new int();

The preceding statement has the same effect as the following statement:

::

  int myInt = 0;

Remember that using uninitialized variables in C# is not allowed.

=============== ===============================================================
**Value type**  **Default value**
=============== ===============================================================
bool            false
byte            0
char            '\\0'
decimal         0.0M
double          0.0D
enum            The value produced by the expression (E)0, where E is the enum identifier.
float           0.0F
int             0
long            0L
sbyte           0
short           0
struct          The value produced by setting all value-type fields to their default values and a
uint            0
ulong           0
ushort          0
=============== ===============================================================


.. _`Default Values Table`: http://msdn2.microsoft.com/en-us/library/83fhsxwc(VS.80).aspx

