# Haskell `maxElement` Bug

This repository demonstrates a subtle bug in a Haskell function designed to find the maximum element in a list. The function uses `Data.List.sort` which is inefficient.  More importantly, it incorrectly handles lists with duplicate maximum values. The solution demonstrates a more efficient and correct approach.

## Bug Description

The original `maxElement` function sorts the input list before extracting the last element (the maximum). While this works for lists without duplicate maximum values, it fails when multiple elements share the same maximum value. The function doesn't handle empty lists correctly either. 

## Solution

The solution uses a more efficient and accurate approach. It avoids sorting entirely and uses pattern matching and recursion or the `maximum` function for efficiency.