function findOdd(A) {
    //happy coding!
    let i = 0;
    let dics = {}; // dics for dictionary, perv
    
    while (i < A.length) {
      const num = A[i];
      
      if (dics[num]) {
        dics[num] += 1;
      } else {
        dics[num] = 1;
      }
      i += 1;
    };
    
    const numstr = Object.keys(dics).filter( x => dics[x] % 2 !== 0 )[0];
    
    return parseInt(numstr);
}