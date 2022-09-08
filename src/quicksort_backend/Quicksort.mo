import Int "mo:base/Int";

module {
  public func quicksort(arr : [var Int], l : Int, r : Int) {
    if (l >= r) {
      return;
    };

    let i = partition(arr, l, r);

    quicksort(arr, l, i - 1);
    quicksort(arr, i + 1, r);
  };

  private func partition(arr : [var Int], l : Int, r : Int) : Int {
    var i = l;
    var j = r;

    while (i < j) {
      while (i < j and arr[Int.abs(j)] >= arr[Int.abs(l)]) {
        j -= 1;
      };
      while (i < j and arr[Int.abs(i)] <= arr[Int.abs(l)]) {
        i += 1;
      };
      swap(arr, i, j);
    };

    swap(arr, i, l);
    return i;
  };

  private func swap(arr : [var Int], i : Int, j : Int) {
    let tmp = arr[Int.abs(i)];
    arr[Int.abs(i)] := arr[Int.abs(j)];
    arr[Int.abs(j)] := tmp;
  };
};
