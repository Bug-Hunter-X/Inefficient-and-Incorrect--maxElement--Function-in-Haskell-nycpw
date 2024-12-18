```haskell
import Data.Maybe (fromMaybe)

--Corrected maxElement function
maxElement :: (Ord a) => [a] -> Maybe a
maxElement [] = Nothing
maxElement xs = Just $ maximum xs

--Example Usage
main :: IO ()
main = do
  let list1 = [1, 5, 2, 8, 3]
  let list2 = [3, 1, 4, 1, 5, 9, 2, 6]
  let list3 = []
  let list4 = [5]
  print $ maxElement list1 -- Correctly returns Just 8
  print $ maxElement list2 -- Correctly returns Just 9
  print $ maxElement list3 --Correctly returns Nothing
  print $ maxElement list4 -- Correctly returns Just 5
```