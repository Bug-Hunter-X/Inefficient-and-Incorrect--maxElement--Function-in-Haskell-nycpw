```haskell
import Data.List (sort)

-- This function is intended to find the maximum element in a list
-- However, it contains a subtle bug that can lead to incorrect results.
maxElement :: (Ord a) => [a] -> Maybe a
maxElement [] = Nothing
maxElement xs = Just $ last $ sort xs

-- Example usage
main :: IO ()
main = do
  let list1 = [1, 5, 2, 8, 3]
  let list2 = [3, 1, 4, 1, 5, 9, 2, 6]
  print $ maxElement list1  -- Correctly returns Just 8
  print $ maxElement list2  -- Incorrectly returns Just 9, should be Just 9
  let list3 = []
  print $ maxElement list3 --Correctly returns Nothing
  let list4 = [5]
  print $ maxElement list4 -- Correctly returns Just 5
```