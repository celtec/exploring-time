package exploring

import "testing"

func TestSum(t *testing.T) {
  if sum(1, 2) != 3 {
    t.Fatal("Failed to sum numbers")
  }
  return
}

func TestSumWithNegativeNumbers(t *testing.T) {
  if sum(1, -2) != -1 {
    t.Fatal("Failed to sum negative numbers")
  }
  return
}
