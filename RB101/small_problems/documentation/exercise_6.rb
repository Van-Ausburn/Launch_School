# exercise_6.rb

5.step(to: 10, by: 3) { |value| puts value }

# 5
# 8
    #   1
    #   2 From: numeric.c (C Method):
    #   3 Owner: Numeric
    #   4 Visibility: public
    #   5 Signature: step(*arg1)
    #   6 Number of lines: 118
    #   7
    #   8 Invokes the given block with the sequence of numbers starting at num,
    #   9 incremented by step (defaulted to 1) on each call.
    #  10
    #  11 The loop finishes when the value to be passed to the block is greater than
    #  12 limit (if step is positive) or less than limit (if step is
    #  13 negative), where limit is defaulted to infinity.
    #  14
    #  15 In the recommended keyword argument style, either or both of
    #  16 step and limit (default infinity) can be omitted.  In the
    #  17 fixed position argument style, zero as a step
    #  18 (i.e. num.step(limit, 0)) is not allowed for historical
    #  19 compatibility reasons.
    #  20
    #  21 If all the arguments are integers, the loop operates using an integer
    #  22 counter.
    #  23
    #  24 If any of the arguments are floating point numbers, all are converted
    #  25 to floats, and the loop is executed
    #  26 floor(n + n*Float::EPSILON) + 1 times,
    #  27 where n = (limit - num)/step.
    #  28
    #  29 Otherwise, the loop starts at num, uses either the
    #  30 less-than (<) or greater-than (>) operator
    #  31 to compare the counter against limit,
    #  32 and increments itself using the + operator.
    #  33
    #  34 If no block is given, an Enumerator is returned instead.
    #  35 Especially, the enumerator is an Enumerator::ArithmeticSequence
    #  36 if both limit and step are kind of Numeric or nil.
    #  37
    #  38 For example:
    #  39
    #  40    p 1.step.take(4)
    #  41    p 10.step(by: -1).take(4)
    #  42    3.step(to: 5) {|i| print i, " " }
    #  43    1.step(10, 2) {|i| print i, " " }
    #  44    Math::E.step(to: Math::PI, by: 0.2) {|f| print f, " " }
    #  45
    #  46 Will produce:
    #  47
    #  48    [1, 2, 3, 4]
    #  49    [10, 9, 8, 7]
    #  50    3 4 5
    #  51    1 3 5 7 9
    #  52    2.718281828459045 2.9182818284590453 3.118281828459045
