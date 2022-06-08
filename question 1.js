const countEachWord = (book) => {
  let convertedBookArr = book.toLowerCase().split(" ");
  let count = {};
  for (let i = 0; i < convertedBookArr.lenght; i++) {
    let currentWord = convertedBookArr[i];
  }
  return count;
};

countEachWord("Is your favorite car brand BMW? Mine is Toyota");
