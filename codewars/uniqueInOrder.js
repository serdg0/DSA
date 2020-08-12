var uniqueInOrder=function(iterable){
    if (iterable.length === 0) { return [] };
    let i = 0;
    let res = [iterable[0]];
    
    while (i < iterable.length - 1) {
      const x = iterable[i];
      const nex = iterable[i + 1];
      if (x !== nex) { res.push(nex) };
      i += 1;
    };
    return res;
}