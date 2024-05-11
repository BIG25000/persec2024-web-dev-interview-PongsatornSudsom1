function sortArray(arr) {
  const newArr = arr.map((item) => {
  const startNum = item.search(/[0-9]/)
  const startIndexForOrther = String(parseInt(item.slice(startNum))).length; 

    const orther = item.slice(startNum + startIndexForOrther);
    return {
      value: parseInt(item.slice(startNum)),
      currency: item.slice(0, startNum),
      orther,
    };
  });
  newArr.sort((a, b) => {
    if (a.currency === b.currency) {
      return a.value - b.value;
    }
    return a.currency.localeCompare(b.currency);
  });
  return newArr.map((item) => {
    return item.currency + item.value + item.orther;
  });
}

console.log(sortArray(["TH19", "SG20", "TH2"])); 
console.log(sortArray(["TH10", "TH3Netflix", "TH1", "TH7"]))