function sumTwoSmallestNumbers(numbers) {  
    let min1 = Infinity;
    let min2 = Infinity;
    
    numbers.forEach(x => {
      if (x < min1) {
        min2 = min1;
        min1 = x;
      } else if (x >= min1 && x < min2) {
        min2 = x;
      }
    });
    
    return min1 + min2;
}