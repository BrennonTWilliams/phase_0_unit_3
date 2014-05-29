// U3.W8-9: Challenge you're converting
// Calcuate the median in an array of numbers

// I worked on this challenge by myself

// 2. Pseudocode
// Define the function with one array as parameter
// sort the array
// if odd number of elements split the array in half and return the middle element
// if even find the two middle numbers subtract them, divide by 2 and add it to the first half

// MY SOLUTION IN RUBY
// def median array
//    array = array.sort
//   if array.length%2 == 1 #odd
//     array[(array.length.to_f/2)]
//   else # even
//     mid1 = array[(array.length/2) - 1]
//     mid2 = array[(array.length/2)]
//     (mid2 - mid1).to_f/2 + mid1
//   end
// end

// 3. Initial Solution

function findMedian (array){
	//array.sort( function(a,b) {return a - b;} ); //sort the array
	//sortedArray = Arrays.sort(array);
	array.sort();

	if (array.length % 2 === 1) { //odd
		return array[Math.floor(array.length/2)];
	}
	else { //even
		mid1 = array[(array.length/2) - 1];
		mid2 = array[(array.length)/2];
		return (mid2 - mid1)/2 + mid1;
	}
}

// 4. Refactored Solution

// I'm pretty happy with the brevity and clarity of my solution.
// There may be a way to reduce the number of variables by consolidating
// mid1 and mid2, though I don't think its necessary. 



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

console.log(findMedian([1,1,5,3,2,4,4]) === 3);
console.log(findMedian([1,2,3,4,5,6,7,8]) === 4.5);




// 5. Reflection 
// This excercise was particularly helpful in 
