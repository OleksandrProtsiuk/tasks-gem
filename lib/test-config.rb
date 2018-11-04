# edit this file to config your tests
load ''  # put here file with class for testing
# math_exercises = .new  # put here class for testing

TASKS = [] # array with numbers of tasks

EXPECTED = {} # hash with expected results

ACTUAL = {} # hash with actual results

"
Example of edited file
load 'main.rb'
math_exercises = MathExercises.new

TASKS = [1, 2, 3, 4, 5, 6, 8, 9, 10]

EXPECTED = { 1 => [5, -1, 6],
              2 => 1,
              3 => [8, 16]}

ACTUAL = { 1 => math_exercises.task1(a: 2, b: 3),
           2 => math_exercises.task2(x: 2, y: -1),
           3 => math_exercises.task3(a: 2)}
"