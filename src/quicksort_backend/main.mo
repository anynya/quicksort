import Array "mo:base/Array";
import Int "mo:base/Int";
import Quicksort "Quicksort";

actor {
  public func qsort(arr : [Int]) : async [Int] {
    let result : [var Int] = Array.thaw(arr);
    Quicksort.quicksort(result, 0, result.size() - 1);
    return Array.freeze(result);
  };
};