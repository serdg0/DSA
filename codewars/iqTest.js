function iqTest(numbers){
    const arr = numbers.split(" ");
    const isEven = num => num % 2 === 0;
    let odd = [];
    let even = [];
    
    arr.forEach((num, i) => {
      if (isEven(num)) {
        even.push(i + 1);
      } else {
        odd.push(i + 1);
      }
    });
  
    return even.length === 1 ? even[0] : odd[0];
}
// Time O(n) Space O(n)