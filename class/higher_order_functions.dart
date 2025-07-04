void main(){


// List <int> numbers = [1,2,3,4,5,6,7,8,9,10];
List <int> numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];

List<int> evenNumbers = numbers.where((number) => number.isEven).toList();

  numbers.forEach((element) {
  print("Element is $element");
});

print("Even numbers are: $evenNumbers");

}



/** Higher Order Functions in Dart **/
/*
Function	Description
forEach()	Applies a function to each element
map()	Transforms each element and returns a new Iterable
where()	Filters elements based on a condition
any()	Returns true if any element satisfies a condition
every()	Returns true if all elements satisfy a condition
reduce()	Combines all elements using a function (e.g., sum)
fold()	Like reduce, but with an initial value
sort()	Sorts list based on a compare function
takeWhile()	Takes elements while a condition is true
skipWhile()	Skips elements while a condition is true
expand()	Expands elements into a single Iterable
firstWhere()	Returns the first element that matches the condition
lastWhere()	Returns the last matching element
singleWhere()	Returns the only matching element, else throws
retainWhere()	Keeps elements that match condition (modifies original list)
removeWhere()	Removes elements matching a condition
indexWhere()	Finds the index of the first element matching a condition
elementAt()	Accesses element by index (not a HOF but often used with them)
 */
