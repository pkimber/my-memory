Lettuce
*******

Adapted from `scenario outlines`_

::

  Feature: Compute factorial
    In order to play with Lettuce
    As beginners
    We'll implement factorial

    Scenario Outline: Factorials [0-4]
      Given I have the number <number> and the description <description>
      When I compute its factorial
      Then I see the number <result>

    Examples:
      | number | result | description |
      | 0      | 1      | Pat         |
      | 1      | 1      | Patrick K   |
      | 2      | 2      | LLW drums   |
      | 3      | 6      | 1 2 3       |
      | 4      | 24     | Eggs Ham    |

.. code-block:: python

  @step('I have the number (\d+) and the description (.*)')
  def have_the_number(step, number, description):
      logger.debug(description)
      world.number = int(number)

  @step('I compute its factorial')
  def compute_its_factorial(step):
      world.number = factorial(world.number)

  @step('I see the number (\d+)')
  def check_number(step, expected):
      expected = int(expected)
      assert world.number == expected, \
          "Got %d" % world.number

  def factorial(number):
      number = int(number)
      if (number == 0) or (number == 1):
          return 1
      else:
          return number*factorial(number-1)


.. _`scenario outlines`: http://lettuce.it/tutorial/scenario-outlines.html#tutorial-scenario-outlines
