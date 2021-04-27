
let bubbleSortArray: Array<i32>;

export function genAndBubbleSort(length: i32): void {
  generateBubbleSortArray(length)
  bubbleSort()
}

function generateBubbleSortArray(length: i32): void {
  const arr = new Array<i32>(length)
  for (let i = 0, k = arr.length; i < k; ++i) {
    arr[i] = i32((Math.random() * 2.0 - 1.0) * i32.MAX_VALUE)
  }
  bubbleSortArray = arr
}

function bubbleSort(): void {
  var done = false;
  while (!done) {
    done = true;
    for (var i = 1; i < bubbleSortArray.length; i++) {
      if (bubbleSortArray[i - 1] > bubbleSortArray[i]) {
        done = false;
        var tmp = bubbleSortArray[i - 1];
        bubbleSortArray[i - 1] = bubbleSortArray[i];
        bubbleSortArray[i] = tmp;
      }
    }
  }
}
