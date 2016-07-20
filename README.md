# LeetCode by Swift
[LeetCode Online Judge] (https://leetcode.com/) is a website containing many **algorithm questions**. Most of them are real interview questions of **Google, Facebook, LinkedIn, Apple**, etc. This repo shows my solutions by Swift and the code style strictly follows the [RayWenderlich Swift Style Guide](https://github.com/raywenderlich/swift-style-guide). Please feel free to reference and **STAR** to support this repo, thank you!

![Leetcode](https://scontent.xx.fbcdn.net/v/t1.0-9/391890_300545119987425_1275084672_n.jpg?oh=a1ba903f5e420f9de3b8824a70aa2183&oe=57C30872)

## Data Structures
* [Array](#array)
* [String](#string)
* [Linked List](#linked-list)
* [Stack](#stack)
* [Tree](#tree)
* [Dynamic programming](#dynamic-programming)
* [Depth-first search](#depth-first-search)
* [Math](#math)
* [Search](#search)
* [Sort](#sort)

## Companies
* [Google](#google)
* [Facebook](#facebook)
* [LinkedIn](#linkedin)
* [Amazon](#amazon)
* [Microsoft](#microsoft)

## Array
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Summary Ranges](https://leetcode.com/problems/summary-ranges/)| [Swift](./Array/SummaryRanges.swift)| Medium| O(n)| O(n)|
[Intersection of Two Arrays](https://leetcode.com/problems/intersection-of-two-arrays/)| [Swift](./Array/IntersectionTwoArrays.swift)| Easy| O(n)| O(n)|
[Intersection of Two Arrays II](https://leetcode.com/problems/intersection-of-two-arrays-ii/)| [Swift](./Array/IntersectionTwoArraysII.swift)| Easy| O(nlogn)| O(n)|
[Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)| [Swift](./Array/ContainsDuplicate.swift)| Easy| O(n)| O(n)|
[Contains Duplicate II](https://leetcode.com/problems/contains-duplicate-ii/)| [Swift](./Array/ContainsDuplicateII.swift)| Easy| O(n)| O(n)|
[Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)| [Swift](./Array/RemoveDuplicatesFromSortedArray.swift)| Easy| O(n)| O(1)|
[Remove Duplicates from Sorted Array II](https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/)| [Swift](./Array/RemoveDuplicatesFromSortedArrayII.swift)| Medium| O(n)| O(1)|
[Move Zeroes](https://leetcode.com/problems/move-zeroes/)| [Swift](./Array/MoveZeroes.swift)| Easy| O(n)| O(1)|
[Remove Element](https://leetcode.com/problems/remove-element/)| [Swift](./Array/RemoveElement.swift)| Easy| O(n)| O(1)|
[Two Sum](https://leetcode.com/problems/two-sum/)| [Swift](./Array/TwoSum.swift)| Easy| O(n)| O(n)|
[3Sum](https://leetcode.com/problems/3sum/)| [Swift](./Array/ThreeSum.swift)| Medium| O(n^2)| O(n)|
[4Sum](https://leetcode.com/problems/4sum/)| [Swift](./Array/FourSum.swift)| Medium| O(n^3)| O(n)|
[Maximum Size Subarray Sum Equals k](https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/)| [Swift](./Array/MaximumSizeSubarraySumEqualsK.swift)| Easy| O(n)| O(n)|
[Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)| [Swift](./Array/ProductExceptSelf.swift)| Medium| O(n)| O(n)|
[Rotate Array](https://leetcode.com/problems/rotate-array/)| [Swift](./Array/RotateArray.swift)| Easy| O(n)| O(1)|
[Rotate Image](https://leetcode.com/problems/rotate-image/)| [Swift](./Array/RotateImage.swift)| Medium| O(n^2)| O(1)|
[Spiral Matrix](https://leetcode.com/problems/spiral-matrix/)| [Swift](./Array/SpiralMatrix.swift)| Medium| O(n^2)| O(1)|
[Spiral Matrix II](https://leetcode.com/problems/spiral-matrix/)| [Swift](./Array/SpiralMatrixII.swift)| Medium| O(n^2)| O(1)|
[Valid Sudoku](https://leetcode.com/problems/valid-sudoku/)| [Swift](./Array/ValidSudoku.swift)| Easy| O(n^2)| O(n)|
[Sliding Window Maximum ](https://leetcode.com/problems/sliding-window-maximum/)| [Swift](./Array/SlidingWindowMaximum.swift)| Hard| O(n)| O(n)|

## String
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Count and Say](https://leetcode.com/problems/count-and-say/)| [Swift](./String/CountAndSay.swift)| Easy| O(n^2)| O(n)|
[Flip Game](https://leetcode.com/problems/flip-game/)| [Swift](./String/FlipGame.swift)| Easy| O(n)| O(n)|
[Implement strStr()](https://leetcode.com/problems/implement-strstr/)| [Swift](./String/StrStr.swift)| Easy| O(nm)| O(n)|
[Isomorphic Strings](https://leetcode.com/problems/isomorphic-strings/)| [Swift](./String/IsomorphicStrings.swift)| Easy| O(n)| O(n)|
[Reverse String](https://leetcode.com/problems/reverse-string/)| [Swift](./String/ReverseString.swift)| Easy| O(n)| O(n)|
[Reverse Vowels of a String](https://leetcode.com/problems/reverse-vowels-of-a-string/)| [Swift](./String/ReverseVowelsOfAString.swift)| Easy| O(n)| O(n)|
[Length of Last Word](https://leetcode.com/problems/length-of-last-word/)| [Swift](./String/LengthLastWord.swift)| Easy| O(n)| O(n)|
[Palindrome Permutation](https://leetcode.com/problems/palindrome-permutation/)| [Swift](./String/PalindromePermutation.swift)| Easy| O(n)| O(n)|
[Valid Anagram](https://leetcode.com/problems/valid-anagram/)| [Swift](./String/ValidAnagram.swift)| Easy| O(nlogn)| O(1)|
[Group Anagrams](https://leetcode.com/problems/anagrams/)| [Swift](./String/GroupAnagrams.swift)| Medium| O(nmlogm + nlogn)| O(n)
[Longest Common Prefix](https://leetcode.com/problems/longest-common-prefix/)| [Swift](./String/LongestCommonPrefix.swift)| Easy| O(nm)| O(m)|
[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)| [Swift](./String/LongestSubstringWithoutRepeatingCharacters.swift)| Medium| O(n)| O(n)|
[One Edit Distance](https://leetcode.com/problems/one-edit-distance/)| [Swift](./String/OneEditDistance.swift)| Medium| O(n)| O(n)|
[Word Pattern](https://leetcode.com/problems/word-pattern/)| [Swift](./String/WordPattern.swift)| Easy| O(n)| O(n)|
[Text Justification](https://leetcode.com/problems/text-justification/)| [Swift](./String/TextJustification.swift)| Hard| O(n^2)| O(n)|

## Linked List
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)| [Swift](./LinkedList/ReverseLinkedList.swift)| Easy| O(n)| O(1)|
[Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)| [Swift](./LinkedList/PalindromeLinkedList.swift)| Easy| O(n)| O(1)|
[Swap Nodes in Pairs](https://leetcode.com/problems/swap-nodes-in-pairs/)| [Swift](./LinkedList/SwapNodesInPairs.swift)| Easy| O(n)| O(1)|
[Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements/)| [Swift](./LinkedList/RemoveLinkedListElements.swift)| Easy| O(n)| O(1)|
[Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)| [Swift](./LinkedList/RemoveDuplicatesFromSortedList.swift)| Easy| O(n)| O(1)|
[Remove Duplicates from Sorted List II](https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/)| [Swift](./LinkedList/RemoveDuplicatesFromSortedListII.swift)| Medium| O(n)| O(1)|
[Remove Nth Node From End of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)| [Swift](./LinkedList/RemoveNthFromEnd.swift)| Easy| O(n)| O(1)|
[Rotate List](https://leetcode.com/problems/rotate-list/)| [Swift](./LinkedList/RotateList.swift)| Medium| O(n)| O(1)|
[Reorder List](https://leetcode.com/problems/reorder-list/)| [Swift](./LinkedList/ReorderList.swift)| Medium| O(n)| O(1)|
[Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)| [Swift](./LinkedList/MergeTwoSortedLists.swift)| Easy| O(n)| O(1)|
[Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)| [Swift](./LinkedList/MergeKSortedLists.swift)| Hard| O(mlogn)| O(1)|
[Partition List](https://leetcode.com/problems/partition-list/)| [Swift](./LinkedList/PartitionList.swift)| Medium| O(n)| O(1)|

## Stack
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)| [Swift](./Stack/ValidParentheses.swift)| Easy| O(n)| O(n)|
[Evaluate Reverse Polish Notation](https://leetcode.com/problems/evaluate-reverse-polish-notation/)| [Swift](./Stack/EvaluateReversePolishNotation.swift)| Medium| O(n)| O(n)|
[Simplify Path](https://leetcode.com/problems/simplify-path/)| [Swift](./Stack/SimplifyPath.swift)| Medium| O(n)| O(n)|
[Binary Tree Preorder Traversal](https://leetcode.com/problems/binary-tree-preorder-traversal/)| [Swift](./Stack/PreorderTraversal.swift)| Medium| O(n)| O(n)|
[Binary Tree Inorder Traversal](https://leetcode.com/problems/binary-tree-inorder-traversal/)| [Swift](./Stack/InorderTraversal.swift)| Medium| O(n)| O(n)|
[Binary Tree Postorder Traversal](https://leetcode.com/problems/binary-tree-postorder-traversal/)| [Swift](./Stack/PostorderTraversal.swift)| Hard| O(n)| O(n)|

## Tree
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Same Tree](https://oj.leetcode.com/problems/same-tree/)| [Swift](./Tree/SameTree.swift)| Easy| O(n)| O(1)|
[Symmetric Tree](https://leetcode.com/problems/symmetric-tree/)| [Swift](./Tree/SymmetricTree.swift)| Easy| O(n)| O(1)|
[Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/)| [Swift](./Tree/InvertBinaryTree)| Easy| O(n)| O(1)|
[Minimum Depth of Binary Tree](https://leetcode.com/problems/minimum-depth-of-binary-tree/)| [Swift](./Tree/MinimumDepthOfBinaryTree.swift)| Easy| O(n)| O(1)|
[Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)| [Swift](./Tree/MaximumDepthOfBinaryTree.swift)| Easy| O(n)| O(1)|
[Balanced Binary Tree](https://leetcode.com/problems/balanced-binary-tree/)| [Swift](./Tree/BalancedBinaryTree.swift)| Easy|  O(n)| O(1)|
[Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/)| [Swift](./Tree/ValidateBinarySearchTree.swift)| Medium| O(n)| O(1)|
[Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)| [Swift](./Tree/BinaryTreeLevelOrderTraversal.swift)| Easy| O(n)| O(n)|
[Binary Tree Level Order Traversal II](https://leetcode.com/problems/binary-tree-level-order-traversal-ii/)| [Swift](./Tree/BinaryTreeLevelOrderTraversalII.swift)| Easy| O(n)| O(n)|
[Binary Tree Zigzag Level Order Traversal](https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/)| [Swift](./Tree/BinaryTreeZigzagLevelOrderTraversal.swift)| Medium| O(n)| O(n)|
[Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)| [Swift](./Tree/ConstructBinaryTreePreorderInorder.swift)| Medium| O(n)| O(1)|
[Construct Binary Tree from Inorder and Postorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/)| [Swift](./Tree/ConstructBinaryTreeInorderPostorder.swift)| Medium| O(n)| O(1)|
[Path Sum](https://leetcode.com/problems/path-sum/)| [Swift](./Tree/PathSum.swift)| Easy| O(n)| O(1)|
[Path Sum II](https://leetcode.com/problems/path-sum-ii/)| [Swift](./Tree/PathSumII.swift)| Medium| O(n)| O(1)|

## Dynamic programming
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Nested List Weight Sum](https://leetcode.com/problems/nested-list-weight-sum/)| [Swift](./DP/NestedListWeightSum.swift)| Easy| O(n)| O(1)|
[Climbing Stairs](https://leetcode.com/problems/climbing-stairs/)| [Swift](./DP/ClimbingStairs.swift)| Easy| O(n)| O(1)|
[Unique Paths](https://leetcode.com/problems/unique-paths/)| [Swift](./DP/UniquePaths.swift)| Medium| O(mn)| O(mn)|
[Unique Paths II](https://leetcode.com/problems/unique-paths-ii/)| [Swift](./DP/UniquePathsII.swift)| Medium| O(mn)| O(mn)|
[Generate Parentheses](https://leetcode.com/problems/generate-parentheses/)| [Swift](./DP/GenerateParentheses.swift)| Medium| O(n^2)| O(n)|
[Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)| [Swift](./DP/BestTimeBuySellStock.swift)| Easy| O(n)| O(1)|
[Coin Change](https://leetcode.com/problems/coin-change/)| [Swift](./DP/CoinChange.swift)| Medium| O(n^2)| O(n)|
[Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)| [Swift](./DP/LongestIncreasingSubsequence.swift)| Medium| O(n^2)| O(n)|
[Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/)| [Swift](./DP/LongestPalindromicSubstring.swift)| Medium| O(n^2)| O(n^2)|
[Perfect Squares](https://leetcode.com/problems/perfect-squares/)| [Swift](./DP/PerfectSquares.swift)| Medium| O(n^2)| O(n)|
[House Robber](https://leetcode.com/problems/house-robber/)| [Swift](./DP/HouseRobber.swift)| Easy| O(n)| O(1)|
[House Robber II](https://leetcode.com/problems/house-robber-ii/)| [Swift](./DP/HouseRobberII.swift)| Medium| O(n)| O(1)|
[Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)| [Swift](./DP/MaximumSubarray.swift)| Medium| O(n)| O(1)|
[Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)| [Swift](./DP/MaximumProductSubarray.swift)| Medium| O(n)| O(1)|
[Maximal Square](https://leetcode.com/problems/maximal-square/)| [Swift](./DP/MaximalSquare.swift)| Medium| O(mn)| O(mn)|
[Edit Distance](https://leetcode.com/problems/edit-distance/)| [Swift](./DP/EditDistance.swift)| Hard| O(mn)| O(mn)|

## Depth-first search
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Permutations](https://leetcode.com/problems/permutations/)| [Swift](./DFS/Permutations.swift)| Medium| O(n!)| O(n)|
[Permutations II](https://leetcode.com/problems/permutations-ii/)| [Swift](./DFS/PermutationsII.swift)| Medium| O(n!)| O(n)|
[Subsets](https://leetcode.com/problems/subsets/)| [Swift](./DFS/Subsets.swift)| Medium| O(n!)| O(n)|
[Subsets II](https://leetcode.com/problems/subsets-ii/)| [Swift](./DFS/SubsetsII.swift)| Medium| O(n!)| O(n)|
[Combinations](https://leetcode.com/problems/combinations/)| [Swift](./DFS/Combinations.swift)| Medium| O(n!)| O(n)|
[Combination Sum](https://leetcode.com/problems/combination-sum/)| [Swift](./DFS/CombinationSum.swift)| Medium| O(n^n)| O(2^n - 1)|
[Combination Sum II](https://leetcode.com/problems/combination-sum-ii/)| [Swift](./DFS/CombinationSumII.swift)| Medium| O(n!)| O(2^n - 2)|
[Combination Sum III](https://leetcode.com/problems/combination-sum-iii/)| [Swift](./DFS/CombinationSumIII.swift)| Medium| O(n!)| O(nCk)|
[Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)| [Swift](./DFS/LetterCombinationsPhoneNumber.swift)| Medium| O(mn)| O(n)|
[Number of Islands](https://leetcode.com/problems/number-of-islands/)| [Swift](./DFS/NumberofIslands.swift)| Medium| O(mn)| O(1)|
[Word Search](https://leetcode.com/problems/word-search/)| [Swift](./DFS/WordSearch.swift)| Medium| O((n^2)!)| O(n^2)|


## Math
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Add Binary](https://leetcode.com/problems/add-binary/)| [Swift](./Math/AddBinary.swift)| Easy| O(n)| O(n)|
[Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)| [Swift](./Math/AddTwoNumbers.swift)| Medium| O(n)| O(1)|
[Plus One](https://leetcode.com/problems/plus-one/)| [Swift](./Math/PlusOne.swift)| Easy| O(n)| O(1)|
[Integer Break](https://leetcode.com/problems/integer-break/)| [Swift](./Math/IntegerBreak.swift)| Medium| O(logn)| O(1)|
[Happy Number](https://leetcode.com/problems/happy-number/)| [Swift](./Math/HappyNumber.swift)| Easy| O(n)| O(n)|
[Single Number](https://leetcode.com/problems/single-number/)| [Swift](./Math/SingleNumber.swift)| Medium| O(n)| O(1)|
[Ugly Number](https://leetcode.com/problems/ugly-number/)| [Swift](./Math/UglyNumber.swift)| Easy| O(logn)| O(1)|
[Ugly Number II](https://leetcode.com/problems/ugly-number-ii/)| [Swift](./Math/UglyNumberII.swift)| Medium| O(n)| O(n)|
[Super Ugly Number](https://leetcode.com/problems/super-ugly-number/)| [Swift](./Math/SuperUglyNumber.swift)| Medium| O(n^2)| O(n)|
[String to Integer (atoi)](https://leetcode.com/problems/string-to-integer-atoi/)| [Swift](./Math/Atoi.swift)| Easy| O(n)| O(1)|
[Pow(x, n)](https://leetcode.com/problems/isomorphic-strings/)| [Swift](./Math/Pow.swift)| Medium| O(logn)| O(1)|
[Power of Two](https://leetcode.com/problems/power-of-two/)| [Swift](./Math/PowerTwo.swift)| Easy| O(1)| O(1)|
[Power of Three](https://leetcode.com/problems/power-of-three/)| [Swift](./Math/PowerThree.swift)| Easy| O(1)| O(1)|
[Sum of Two Integers](https://leetcode.com/problems/sum-of-two-integers/)| [Swift](./Math/SumTwoIntegers.swift)| Easy| O(n)| O(1)|
[Excel Sheet Column Number](https://leetcode.com/problems/excel-sheet-column-number/)| [Swift](./Math/ExcelSheetColumnNumber.swift)| Easy| O(n)| O(1)|
[Roman to Integer](https://leetcode.com/problems/roman-to-integer/)| [Swift](./Math/RomanToInteger.swift)| Easy| O(n)| O(n)|
[Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water/)| [Swift](./Math/TrappingRainWater.swift)| Hard| O(n)| O(n)|

## Search
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Closest Binary Search Tree Value](https://leetcode.com/problems/closest-binary-search-tree-value/)| [Swift](./Search/ClosestBinarySearchTreeValue.swift)| Easy| O(logn)| O(1)|
[Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)| [Swift](./Search/SearchInRotatedSortedArray.swift)| Hard| O(logn)| O(1)|
[Search in Rotated Sorted Array II](https://leetcode.com/problems/search-in-rotated-sorted-array-ii/)| [Swift](./Search/SearchInRotatedSortedArrayII.swift)| Medium| O(logn)| O(1)|
[Find Minimum in Rotated Sorted Array](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)| [Swift](./Search/FindMinimumRotatedSortedArray.swift)| Medium| O(logn)| O(1)|
[Find Minimum in Rotated Sorted Array II](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/)| [Swift](./Search/FindMinimumRotatedSortedArrayII.swift)| Hard| O(logn)| O(1)|
[Search for a Range](https://leetcode.com/problems/search-for-a-range/)| [Swift](./Search/SearchForARange.swift)| Medium| O(logn)| O(1)|
[Search Insert Position](https://leetcode.com/problems/search-insert-position/)| [Swift](./Search/SearchForARange.swift)| Medium| O(logn)| O(1)|
[Find Peak Element](https://leetcode.com/problems/find-peak-element/)| [Swift](./Search/FindPeakElement.swift)| Medium| O(logn)| O(1)|
[Sqrt(x)](https://leetcode.com/problems/sqrtx/)| [Swift](./Search/Sqrtx.swift)| Medium| O(logn)| O(1)|

## Sort
| Title | Solution | Difficulty | Time | Space |
| ----- | -------- | ---------- | ---- | ----- |
[Sort Colors](https://leetcode.com/problems/sort-colors/)| [Swift](./Sort/SortColors.swift)| Medium| O(n)| O(1)|
[Wiggle Sort](https://leetcode.com/problems/wiggle-sort/)| [Swift](./Sort/WiggleSort.swift)| Medium| O(n)| O(1)|
[Wiggle Sort II](https://leetcode.com/problems/wiggle-sort-ii/)| [Swift](./Sort/WiggleSortII.swift)| Medium| O(nlogn)| O(n)|
[Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)| [Swift](./Array/TopKFrequentElements.swift)| Medium| O(nlogn)| O(n)|
[Meeting Rooms](https://leetcode.com/problems/meeting-rooms/)| [Swift](./Sort/MeetingRooms.swift)| Easy| O(nlogn)| O(1)|
[Merge Intervals](https://leetcode.com/problems/merge-intervals/)| [Swift](./Sort/MergeIntervals.swift)| Hard| O(nlogn)| O(n)|

## Google
| Title | Solution | Difficulty | Frequency |
| ----- | -------- | ---------- | --------- |
[Plus One](https://leetcode.com/problems/plus-one/)| [Swift](./Math/PlusOne.swift)| Easy| ★★★★★★|
[Number of Islands](https://leetcode.com/problems/number-of-islands/)| [Swift](./DFS/NumberofIslands.swift)| Medium| ★★★★|
[Summary Ranges](https://leetcode.com/problems/summary-ranges/)| [Swift](./Array/SummaryRanges.swift)| Medium| ★★★★|
[Perfect Squares](https://leetcode.com/problems/perfect-squares/)| [Swift](./DP/PerfectSquares.swift)| Medium| ★★★★|
[Merge Intervals](https://leetcode.com/problems/merge-intervals/)| [Swift](./Sort/MergeIntervals.swift)| Hard| ★★★|
[Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)| [Swift](./Stack/ValidParentheses.swift)| Easy| ★★★|
[Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water/)| [Swift](./Math/TrappingRainWater.swift)| Hard| ★★|
[Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)| [Swift](./LinkedList/MergeKSortedLists.swift)| Hard| ★★|
[Find Peak Element](https://leetcode.com/problems/find-peak-element/)| [Swift](./Search/FindPeakElement.swift)| Medium| ★★|
[Spiral Matrix](https://leetcode.com/problems/spiral-matrix/)| [Swift](./Array/SpiralMatrix.swift)| Medium| ★★|
[Sliding Window Maximum ](https://leetcode.com/problems/sliding-window-maximum/)| [Swift](./Array/SlidingWindowMaximum.swift)| Hard| ★★|
[Power of Two](https://leetcode.com/problems/power-of-two/)| [Swift](./Math/PowerTwo.swift)| Easy| ★★|

## Facebook
| Title | Solution | Difficulty | Frequency |
| ----- | -------- | ---------- | --------- |
[3Sum](https://leetcode.com/problems/3sum/)| [Swift](./Array/ThreeSum.swift)| Medium| ★★★★★★|
[Move Zeroes](https://leetcode.com/problems/move-zeroes/)| [Swift](./Array/MoveZeroes.swift)| Easy| ★★★★★★|
[Add Binary](https://leetcode.com/problems/add-binary/)| [Swift](./Math/AddBinary.swift)| Easy| ★★★★★|
[Two Sum](https://leetcode.com/problems/two-sum/)| [Swift](./Array/TwoSum.swift)| Easy| ★★★★★|
[Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)| [Swift](./DFS/LetterCombinationsPhoneNumber.swift)| Medium| ★★★★|
[Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)| [Swift](./LinkedList/MergeKSortedLists.swift)| Hard| ★★★★|
[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)| [Swift](./LinkedList/ReverseLinkedList.swift)| Easy| ★★★|
[Merge Intervals](https://leetcode.com/problems/merge-intervals/)| [Swift](./Sort/MergeIntervals.swift)| Hard| ★★★|
[Subsets](https://leetcode.com/problems/subsets/)| [Swift](./DFS/Subsets.swift)| Medium| ★★★|

## LinkedIn
| Title | Solution | Difficulty | Frequency |
| ----- | -------- | ---------- | --------- |
[Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)| [Swift](./DP/MaximumSubarray.swift)| Medium| ★★★★★★|
[Pow(x, n)](https://leetcode.com/problems/isomorphic-strings/)| [Swift](./Math/Pow.swift)| Medium| ★★★★★★|
[Merge Intervals](https://leetcode.com/problems/merge-intervals/)| [Swift](./Sort/MergeIntervals.swift)| Hard| ★★★★★★|
[Isomorphic Strings](https://leetcode.com/problems/isomorphic-strings/)| [Swift](./String/IsomorphicStrings.swift)| Easy| ★★★★★★|
[Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)| [Swift](./Search/SearchInRotatedSortedArray.swift)| Hard| ★★★★★|
[Search for a Range](https://leetcode.com/problems/search-for-a-range/)| [Swift](./Search/SearchForARange.swift)| Medium| ★★★★★|
[Two Sum](https://leetcode.com/problems/two-sum/)| [Swift](./Array/TwoSum.swift)| Easy| ★★★★|
[Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)| [Swift](./Tree/BinaryTreeLevelOrderTraversal.swift)| Easy| ★★★★|
[Evaluate Reverse Polish Notation](https://leetcode.com/problems/evaluate-reverse-polish-notation/)| [Swift](./Stack/EvaluateReversePolishNotation.swift)| Medium| ★★★|
[Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)| [Swift](./DP/MaximumProductSubarray.swift)| Medium| ★★★|
[Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)| [Swift](./Array/ProductExceptSelf.swift)| Medium| ★★★|

## Amazon
| Title | Solution | Difficulty | Frequency |
| ----- | -------- | ---------- | --------- |
[Two Sum](https://leetcode.com/problems/two-sum/)| [Swift](./Array/TwoSum.swift)| Easy| ★★★★★★|
[Number of Islands](https://leetcode.com/problems/number-of-islands/)| [Swift](./DFS/NumberofIslands.swift)| Medium| ★★|
[Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)| [Swift](./Math/AddTwoNumbers.swift)| Medium| ★★|
[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)| [Swift](./LinkedList/ReverseLinkedList.swift)| Easy| ★★|
[Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)| [Swift](./Stack/ValidParentheses.swift)| Easy| ★★|
[Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/)| [Swift](./DP/LongestPalindromicSubstring.swift)| Medium| ★★|
[Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water/)| [Swift](./Math/TrappingRainWater.swift)| Hard| ★★|
[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)| [Swift](./String/LongestSubstringWithoutRepeatingCharacters.swift)| Medium| ★★|
[Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number/)| [Swift](./DFS/LetterCombinationsPhoneNumber.swift)| Medium| ★★|
[Valid Anagram](https://leetcode.com/problems/valid-anagram/)| [Swift](./String/ValidAnagram.swift)| Easy| ★★|
[Rotate Image](https://leetcode.com/problems/rotate-image/)| [Swift](./Array/RotateImage.swift)| Medium| ★★|
[Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)| [Swift](./DP/BestTimeBuySellStock.swift)| Easy| ★★|
[3Sum](https://leetcode.com/problems/3sum/)| [Swift](./Array/ThreeSum.swift)| Medium| ★★|
[Sliding Window Maximum ](https://leetcode.com/problems/sliding-window-maximum/)| [Swift](./Array/SlidingWindowMaximum.swift)| Hard| ★★|

## Microsoft
| Title | Solution | Difficulty | Frequency |
| ----- | -------- | ---------- | --------- |
[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)| [Swift](./LinkedList/ReverseLinkedList.swift)| Easy| ★★★★★★|
[Two Sum](https://leetcode.com/problems/two-sum/)| [Swift](./Array/TwoSum.swift)| Easy| ★★★★★|
[String to Integer (atoi)](https://leetcode.com/problems/string-to-integer-atoi/)| [Swift](./Math/Atoi.swift)| Easy| ★★★★|
[Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)| [Swift](./Math/AddTwoNumbers.swift)| Medium| ★★★★|
[Excel Sheet Column Number](https://leetcode.com/problems/excel-sheet-column-number/)| [Swift](./Math/ExcelSheetColumnNumber.swift)| Easy| ★★★★|
[Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/)| [Swift](./Tree/ValidateBinarySearchTree.swift)| Medium| ★★★|
[Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)| [Swift](./LinkedList/MergeTwoSortedLists.swift)| Easy| ★★★|


# Problem Status
| Solution | Number | Title | Difficulty |
| -------- | ------ | ----- | ---------- |
|		|	375	|	[Guess Number Higher or Lower II](https://leetcode.com/problems/guess-number-higher-or-lower-ii/)	|	Medium	|
|	YES	|	374	|	[Guess Number Higher or Lower](https://leetcode.com/problems/guess-number-higher-or-lower/)	|	Easy	|
|		|	373	|	[Find K Pairs with Smallest Sums](https://leetcode.com/problems/find-k-pairs-with-smallest-sums/)	|	Medium	|
|	[Swift](./Math/SuperPow.swift)	|	372	|	[Super Pow](https://leetcode.com/problems/super-pow/)	|	Medium	|
|	[Swift](./Math/SumTwoIntegers.swift)	|	371	|	[Sum of Two Integers](https://leetcode.com/problems/sum-of-two-integers/)	|	Easy	|
|		|	370	|	Range Addition	|	Medium	|
|		|	369	|	Plus One Linked List	|	Medium	|
|		|	368	|	[Largest Divisible Subset](https://leetcode.com/problems/largest-divisible-subset/)	|	Medium	|
|		|	367	|	[Valid Perfect Square](https://leetcode.com/problems/valid-perfect-square/)	|	Medium	|
|		|	366	|	Find Leaves of Binary Tree	|	Medium	|
|		|	365	|	[Water and Jug Problem](https://leetcode.com/problems/water-and-jug-problem/)	|	Medium	|
|		|	364	|	Nested List Weight Sum II	|	Medium	|
|		|	363	|	[Max Sum of Rectangle No Larger Than K](https://leetcode.com/problems/max-sum-of-sub-matrix-no-larger-than-k/)	|	Hard	|
|		|	362	|	Design Hit Counter	|	Medium	|
|		|	361	|	Bomb Enemy	|	Medium	|
|		|	360	|	Sort Transformed Array	|	Medium	|
|		|	359	|	Logger Rate Limiter	|	Easy	|
|		|	358	|	Rearrange String k Distance Apart	|	Hard	|
|		|	357	|	[Count Numbers with Unique Digits](https://leetcode.com/problems/count-numbers-with-unique-digits/)	|	Medium	|
|		|	356	|	Line Reflection	|	Medium	|
|		|	355	|	[Design Twitter](https://leetcode.com/problems/design-twitter/)	|	Medium	|
|		|	354	|	[Russian Doll Envelopes](https://leetcode.com/problems/russian-doll-envelopes/)	|	Hard	|
|		|	353	|	Design Snake Game	|	Medium	|
|		|	352	|	[Data Stream as Disjoint Intervals](https://leetcode.com/problems/data-stream-as-disjoint-intervals/)	|	Hard	|
|		|	351	|	Android Unlock Patterns	|	Medium	|
|	[Swift](./Array/IntersectionTwoArraysII.swift)	|	350	|	[Intersection of Two Arrays II](https://leetcode.com/problems/intersection-of-two-arrays-ii/)	|	Easy	|
|	[Swift](./Array/IntersectionTwoArrays.swift)	|	349	|	[Intersection of Two Arrays](https://leetcode.com/problems/intersection-of-two-arrays/)	|	Easy	|
|		|	348	|	Design Tic-Tac-Toe	|	Medium	|
|	[Swift](./Sort/TopKFrequentElements.swift)	|	347	|	[Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)	|	Medium	|
|		|	346	|	Moving Average from Data Stream	|	Easy	|
|	[Swift](./String/ReverseVowelsOfAString.swift)	|	345	|	[Reverse Vowels of a String](https://leetcode.com/problems/reverse-vowels-of-a-string/)	|	Easy	|
|	[Swift](./String/ReverseString.swift)	|	344	|	[Reverse String](https://leetcode.com/problems/reverse-string/)	|	Easy	|
|	[Swift](./Math/IntegerBreak.swift)	|	343	|	[Integer Break](https://leetcode.com/problems/integer-break/)	|	Medium	|
|		|	342	|	[Power of Four](https://leetcode.com/problems/power-of-four/)	|	Easy	|
|		|	341	|	[Flatten Nested List Iterator](https://leetcode.com/problems/flatten-nested-list-iterator/)	|	Medium	|
|		|	340	|	Longest Substring with At Most K Distinct Characters	|	Hard	|
|	[Swift](./DP/NestedListWeightSum.swift)	|	339	|	Nested List Weight Sum	|	Easy	|
|		|	338	|	[Counting Bits](https://leetcode.com/problems/counting-bits/)	|	Medium	|
|		|	337	|	[House Robber III](https://leetcode.com/problems/house-robber-iii/)	|	Medium	|
|		|	336	|	[Palindrome Pairs](https://leetcode.com/problems/palindrome-pairs/)	|	Hard	|
|		|	335	|	[Self Crossing](https://leetcode.com/problems/self-crossing/)	|	Hard	|
|		|	334	|	[Increasing Triplet Subsequence](https://leetcode.com/problems/increasing-triplet-subsequence/)	|	Medium	|
|		|	333	|	Largest BST Subtree	|	Medium	|
|		|	332	|	[Reconstruct Itinerary](https://leetcode.com/problems/reconstruct-itinerary/)	|	Medium	|
|		|	331	|	[Verify Preorder Serialization of a Binary Tree](https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree/)	|	Medium	|
|		|	330	|	[Patching Array](https://leetcode.com/problems/patching-array/)	|	Hard	|
|		|	329	|	[Longest Increasing Path in a Matrix](https://leetcode.com/problems/longest-increasing-path-in-a-matrix/)	|	Hard	|
|		|	328	|	[Odd Even Linked List](https://leetcode.com/problems/odd-even-linked-list/)	|	Medium	|
|		|	327	|	[Count of Range Sum](https://leetcode.com/problems/count-of-range-sum/)	|	Hard	|
|	[Swift](./Math/PowerThree.swift)	|	326	|	[Power of Three](https://leetcode.com/problems/power-of-three/)	|	Easy	|
|	[Swift](./Array/MaximumSizeSubarraySumEqualsK.swift)	|	325	|	Maximum Size Subarray Sum Equals k	|	Medium	|
|	[Swift](./Sort/WiggleSortII.swift)	|	324	|	[Wiggle Sort II](https://leetcode.com/problems/wiggle-sort-ii/)	|	Medium	|
|		|	323	|	Number of Connected Components in an Undirected Graph	|	Medium	|
|	[Swift](./DP/CoinChange.swift)	|	322	|	[Coin Change](https://leetcode.com/problems/coin-change/)	|	Medium	|
|		|	321	|	[Create Maximum Number](https://leetcode.com/problems/create-maximum-number/)	|	Hard	|
|		|	320	|	Generalized Abbreviation	|	Medium	|
|		|	319	|	[Bulb Switcher](https://leetcode.com/problems/bulb-switcher/)	|	Medium	|
|		|	318	|	[Maximum Product of Word Lengths](https://leetcode.com/problems/maximum-product-of-word-lengths/)	|	Medium	|
|		|	317	|	Shortest Distance from All Buildings	|	Hard	|
|		|	316	|	[Remove Duplicate Letters](https://leetcode.com/problems/remove-duplicate-letters/)	|	Hard	|
|		|	315	|	[Count of Smaller Numbers After Self](https://leetcode.com/problems/count-of-smaller-numbers-after-self/)	|	Hard	|
|		|	314	|	Binary Tree Vertical Order Traversal	|	Medium	|
|	[Swift](./Math/SuperUglyNumber.swift)	|	313	|	[Super Ugly Number](https://leetcode.com/problems/super-ugly-number/)	|	Medium	|
|		|	312	|	[Burst Balloons](https://leetcode.com/problems/burst-balloons/)	|	Hard	|
|		|	311	|	Sparse Matrix Multiplication	|	Medium	|
|		|	310	|	[Minimum Height Trees](https://leetcode.com/problems/minimum-height-trees/)	|	Medium	|
|		|	309	|	[Best Time to Buy and Sell Stock with Cooldown](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/)	|	Medium	|
|		|	308	|	[Range Sum Query 2D - Mutable](https://leetcode.com/problems/range-sum-query-mutable/)	|	Hard	|
|		|	307	|	Range Sum Query - Mutable	|	Medium	|
|		|	306	|	[Additive Number](https://leetcode.com/problems/additive-number/)	|	Medium	|
|		|	305	|	Number of Islands II	|	Hard	|
|		|	304	|	[Range Sum Query 2D - Immutable](https://leetcode.com/problems/range-sum-query-2d-immutable/)	|	Medium	|
|		|	303	|	[Range Sum Query - Immutable](https://leetcode.com/problems/range-sum-query-immutable/)	|	Easy	|
|		|	302	|	Smallest Rectangle Enclosing Black Pixels	|	Hard	|
|		|	301	|	[Remove Invalid Parentheses](https://leetcode.com/problems/remove-invalid-parentheses/)	|	Hard	|
|	[Swift](./DP/LongestIncreasingSubsequence.swift)	|	300	|	[Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)	|	Medium	|
|		|	299	|	[Bulls and Cows](https://leetcode.com/problems/bulls-and-cows/)	|	Easy	|
|		|	298	|	Binary Tree Longest Consecutive Sequence	|	Medium	|
|		|	297	|	[Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)	|	Hard	|
|		|	296	|	Best Meeting Point	|	Hard	|
|		|	295	|	[Find Median from Data Stream](https://leetcode.com/problems/find-median-from-data-stream/)	|	Hard	|
|		|	294	|	Flip Game II	|	Medium	|
|	[Swift](./String/FlipGame.swift)	|	293	|	Flip Game	|	Easy	|
|		|	292	|	[Nim Game](https://leetcode.com/problems/nim-game/)	|	Easy	|
|		|	291	|	Word Pattern II	|	Hard	|
|	[Swift](./String/WordPattern.swift)	|	290	|	[Word Pattern](https://leetcode.com/problems/word-pattern/)	|	Easy	|
|		|	289	|	[Game of Life](https://leetcode.com/problems/game-of-life/)	|	Medium	|
|		|	288	|	Unique Word Abbreviation	|	Easy	|
|		|	287	|	[Find the Duplicate Number](https://leetcode.com/problems/find-the-duplicate-number/)	|	Hard	|
|		|	286	|	Walls and Gates	|	Medium	|
|		|	285	|	Inorder Successor in BST	|	Medium	|
|		|	284	|	[Peeking Iterator](https://leetcode.com/problems/peeking-iterator/)	|	Medium	|
|	[Swift](./Array/MoveZeroes.swift)	|	283	|	[Move Zeroes](https://leetcode.com/problems/move-zeroes/)	|	Easy	|
|		|	282	|	[Expression Add Operators](https://leetcode.com/problems/expression-add-operators/)	|	Hard	|
|		|	281	|	Zigzag Iterator	|	Medium	|
|	[Swift](./Sort/WiggleSort.swift)	|	280	|	Wiggle Sort	|	Medium	|
|	[Swift](./DP/PerfectSquares.swift)	|	279	|	[Perfect Squares](https://leetcode.com/problems/perfect-squares/)	|	Medium	|
|		|	278	|	[First Bad Version](https://leetcode.com/problems/first-bad-version/)	|	Easy	|
|		|	277	|	Find the Celebrity	|	Medium	|
|		|	276	|	Paint Fence	|	Easy	|
|		|	275	|	[H-Index II](https://leetcode.com/problems/h-index-ii/)	|	Medium	|
|		|	274	|	[H-Index](https://leetcode.com/problems/h-index/)	|	Medium	|
|		|	273	|	[Integer to English Words](https://leetcode.com/problems/integer-to-english-words/)	|	Hard	|
|	  |	272	|	Closest Binary Search Tree Value II	|	Hard	|
|		|	271	|	Encode and Decode Strings	|	Medium	|
|	[Swift](./Search/ClosestBinarySearchTreeValue.swift)	|	270	|	Closest Binary Search Tree Value	|	Easy	|
|		|	269	|	Alien Dictionary	|	Hard	|
|		|	268	|	[Missing Number](https://leetcode.com/problems/missing-number/)	|	Medium	|
|		|	267	|	Palindrome Permutation II	|	Medium	|
|	[Swift](./String/PalindromePermutation.swift)	|	266	|	Palindrome Permutation	|	Easy	|
|		|	265	|	Paint House II	|	Hard	|
|	[Swift](./Math/UglyNumberII.swift)	|	264	|	[Ugly Number II](https://leetcode.com/problems/ugly-number-ii/)	|	Medium	|
|	[Swift](./Math/UglyNumber.swift)	|	263	|	[Ugly Number](https://leetcode.com/problems/ugly-number/)	|	Easy	|
|		|	261	|	Graph Valid Tree	|	Medium	|
|		|	260	|	[Single Number III](https://leetcode.com/problems/single-number-iii/)	|	Medium	|
|		|	259	|	3Sum Smaller	|	Medium	|
|		|	258	|	[Add Digits](https://leetcode.com/problems/add-digits/)	|	Easy	|
|		|	257	|	[Binary Tree Paths](https://leetcode.com/problems/binary-tree-paths/)	|	Easy	|
|		|	256	|	Paint House	|	Medium	|
|		|	255	|	Verify Preorder Sequence in Binary Search Tree	|	Medium	|
|		|	254	|	Factor Combinations	|	Medium	|
|		|	253	|	Meeting Rooms II	|	Medium	|
|	[Swift](./Sort/MeetingRooms.swift)	|	252	|	Meeting Rooms	|	Easy	|
|		|	251	|	Flatten 2D Vector	|	Medium	|
|		|	250	|	Count Univalue Subtrees	|	Medium	|
|		|	249	|	Group Shifted Strings	|	Easy	|
|		|	248	|	Strobogrammatic Number III	|	Hard	|
|		|	247	|	Strobogrammatic Number II	|	Medium	|
|		|	246	|	Strobogrammatic Number	|	Easy	|
|		|	245	|	Shortest Word Distance III	|	Medium	|
|		|	244	|	Shortest Word Distance II	|	Medium	|
|		|	243	|	Shortest Word Distance	|	Easy	|
|	[Swift](./String/ValidAnagram.swift)	|	242	|	[Valid Anagram](https://leetcode.com/problems/valid-anagram/)	|	Easy	|
|		|	241	|	[Different Ways to Add Parentheses](https://leetcode.com/problems/different-ways-to-add-parentheses/)	|	Medium	|
|		|	240	|	[Search a 2D Matrix II](https://leetcode.com/problems/search-a-2d-matrix-ii/)	|	Medium	|
|	[Swift](./Array/SlidingWindowMaximum.swift)	|	239	|	[Sliding Window Maximum](https://leetcode.com/problems/sliding-window-maximum/)	|	Hard	|
|	[Swift](./Array/ProductExceptSelf.swift)	|	238	|	[Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)	|	Medium	|
|		|	237	|	[Delete Node in a Linked List](https://leetcode.com/problems/delete-node-in-a-linked-list/)	|	Easy	|
|		|	236	|	[Lowest Common Ancestor of a Binary Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/)	|	Medium	|
|		|	235	|	[Lowest Common Ancestor of a Binary Search Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)	|	Easy	|
|	[Swift](./LinkedList/PalindromeLinkedList.swift)	|	234	|	[Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)	|	Easy	|
|		|	233	|	[Number of Digit One](https://leetcode.com/problems/number-of-digit-one/)	|	Hard	|
|		|	232	|	[Implement Queue using Stacks](https://leetcode.com/problems/implement-queue-using-stacks/)	|	Easy	|
|	[Swift](./Math/PowerTwo.swift)	|	231	|	[Power of Two](https://leetcode.com/problems/power-of-two/)	|	Easy	|
|		|	230	|	[Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/)	|	Medium	|
|		|	229	|	[Majority Element II](https://leetcode.com/problems/majority-element-ii/)	|	Medium	|
|	[Swift](./Array/SummaryRanges.swift)	|	228	|	[Summary Ranges](https://leetcode.com/problems/summary-ranges/)	|	Medium	|
|		|	227	|	[Basic Calculator II](https://leetcode.com/problems/basic-calculator-ii/)	|	Medium	|
|	[Swift](./Tree/InvertBinaryTree.swift)	|	226	|	[Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/)	|	Easy	|
|		|	225	|	[Implement Stack using Queues](https://leetcode.com/problems/implement-stack-using-queues/)	|	Easy	|
|		|	224	|	[Basic Calculator](https://leetcode.com/problems/basic-calculator/)	|	Hard	|
|		|	223	|	[Rectangle Area](https://leetcode.com/problems/rectangle-area/)	|	Easy	|
|		|	222	|	[Count Complete Tree Nodes](https://leetcode.com/problems/count-complete-tree-nodes/)	|	Medium	|
|	[Swift](./DP/MaximalSquare.swift)	|	221	|	[Maximal Square](https://leetcode.com/problems/maximal-square/)	|	Medium	|
|		|	220	|	[Contains Duplicate III](https://leetcode.com/problems/contains-duplicate-iii/)	|	Medium	|
|	[Swift](./Array/ContainsDuplicateII.swift)	|	219	|	[Contains Duplicate II](https://leetcode.com/problems/contains-duplicate-ii/)	|	Easy	|
|		|	218	|	[The Skyline Problem](https://leetcode.com/problems/the-skyline-problem/)	|	Hard	|
|	[Swift](./Array/ContainsDuplicate.swift)	|	217	|	[Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)	|	Easy	|
|	[Swift](./DFS/combinationSumIII.swift)	|	216	|	[Combination Sum III](https://leetcode.com/problems/combination-sum-iii/)	|	Medium	|
|		|	215	|	[Kth Largest Element in an Array](https://leetcode.com/problems/kth-largest-element-in-an-array/)	|	Medium	|
|		|	214	|	[Shortest Palindrome](https://leetcode.com/problems/shortest-palindrome/)	|	Hard	|
|	[Swift](./DP/HouseRobberII.swift)	|	213	|	[House Robber II](https://leetcode.com/problems/house-robber-ii/)	|	Medium	|
|		|	212	|	[Word Search II](https://leetcode.com/problems/word-search-ii/)	|	Hard	|
|		|	211	|	[Add and Search Word - Data structure design](https://leetcode.com/problems/add-and-search-word-data-structure-design/)	|	Medium	|
|		|	210	|	[Course Schedule II](https://leetcode.com/problems/course-schedule-ii/)	|	Medium	|
|		|	209	|	[Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)	|	Medium	|
|		|	208	|	[Implement Trie (Prefix Tree)](https://leetcode.com/problems/implement-trie-prefix-tree/)	|	Medium	|
|		|	207	|	[Course Schedule](https://leetcode.com/problems/course-schedule/)	|	Medium	|
|	[Swift](./LinkedList/ReverseLinkedList.swift)	|	206	|	[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)	|	Easy	|
|	[Swift](./String/IsomorphicStrings.swift)	|	205	|	[Isomorphic Strings](https://leetcode.com/problems/isomorphic-strings/)	|	Easy	|
|		|	204	|	[Count Primes](https://leetcode.com/problems/count-primes/)	|	Easy	|
|	[Swift](./LinkedList/RemoveLinkedListElements.swift)	|	203	|	[Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements/)	|	Easy	|
|	[Swift](./Math/HappyNumber.swift)	|	202	|	[Happy Number](https://leetcode.com/problems/happy-number/)	|	Easy	|
|		|	201	|	[Bitwise AND of Numbers Range](https://leetcode.com/problems/bitwise-and-of-numbers-range/)	|	Medium	|
|	[Swift](./DFS/NumberofIslands.swift)	|	200	|	[Number of Islands](https://leetcode.com/problems/number-of-islands/)	|	Medium	|
|		|	199	|	Binary Tree Right Side View	|	Medium	|
|	[Swift](./DP/HouseRobber.swift)	|	198	|	House Robber	|	Easy	|
|		|	191	|	Number of 1 Bits	|	Easy	|
|		|	190	|	Reverse Bits	|	Easy	|
|	[Swift](./Array/RotateArray.swift)	|	189	|	Rotate Array	|	Easy	|
|		|	188	|	Best Time to Buy and Sell Stock IV	|	Hard	|
|		|	187	|	Repeated DNA Sequences	|	Medium	|
|		|	186	|	Reverse Words in a String II	|	Medium	|
|		|	179	|	Largest Number	|	Medium	|
|		|	174	|	Dungeon Game	|	Hard	|
|		|	173	|	Binary Search Tree Iterator	|	Medium	|
|		|	172	|	Factorial Trailing Zeroes	|	Easy	|
|	[Swift](./Math/ExcelSheetColumnNumber.swift)	|	171	|	Excel Sheet Column Number	|	Easy	|
|		|	170	|	Two Sum III - Data structure design	|	Easy	|
|		|	169	|	Majority Element	|	Easy	|
|		|	168	|	Excel Sheet Column Title	|	Easy	|
|		|	167	|	Two Sum II - Input array is sorted	|	Medium	|
|		|	166	|	Fraction to Recurring Decimal	|	Medium	|
|		|	165	|	Compare Version Numbers	|	Easy	|
|		|	164	|	Maximum Gap	|	Hard	|
|		|	163	|	Missing Ranges	|	Medium	|
|	[Swift](./Search/FindPeakElement.swift)	|	162	|	Find Peak Element	|	Medium	|
|	[Swift](./String/OneEditDistance.swift)	|	161	|	One Edit Distance	|	Medium	|
|		|	160	|	Intersection of Two Linked Lists	|	Easy	|
|		|	159	|	Longest Substring with At Most Two Distinct Characters	|	Hard	|
|		|	158	|	Read N Characters Given Read4 II - Call multiple times	|	Hard	|
|		|	157	|	Read N Characters Given Read4	|	Easy	|
|		|	156	|	Binary Tree Upside Down	|	Medium	|
|		|	155	|	Min Stack	|	Easy	|
|	[Swift](./Search/FindMinimumRotatedSortedArrayII.swift)	|	154	|	Find Minimum in Rotated Sorted Array II	|	Hard	|
|	[Swift](./Search/FindMinimumRotatedSortedArray.swift)	|	153	|	Find Minimum in Rotated Sorted Array	|	Medium	|
|	[Swift](./DP/MaximumProductSubarray.swift)	|	152	|	Maximum Product Subarray	|	Medium	|
|		|	151	|	Reverse Words in a String	|	Medium	|
|	[Swift](./Stack/EvaluateReversePolishNotation.swift)	|	150	|	Evaluate Reverse Polish Notation	|	Medium	|
|		|	149	|	Max Points on a Line	|	Hard	|
|		|	148	|	Sort List	|	Medium	|
|		|	147	|	Insertion Sort List	|	Medium	|
|		|	146	|	LRU Cache	|	Hard	|
|	[Swift](./Stack/PostorderTraversal.swift)	|	145	|	Binary Tree Postorder Traversal	|	Hard	|
|	[Swift](./Stack/PreorderTraversal.swift)	|	144	|	Binary Tree Preorder Traversal	|	Medium	|
|	[Swift](./LinkedList/ReorderList.swift)	|	143	|	Reorder List	|	Medium	|
|		|	142	|	Linked List Cycle II	|	Medium	|
|		|	141	|	Linked List Cycle	|	Easy	|
|		|	140	|	Word Break II	|	Hard	|
|		|	139	|	Word Break	|	Medium	|
|		|	138	|	Copy List with Random Pointer	|	Hard	|
|	[Swift](./Math/SingleNumberII.swift)	|	137	|	Single Number II	|	Medium	|
|	[Swift](./Math/SingleNumber.swift)	|	136	|	Single Number	|	Medium	|
|		|	135	|	Candy	|	Hard	|
|		|	134	|	Gas Station	|	Medium	|
|		|	133	|	Clone Graph	|	Medium	|
|		|	132	|	Palindrome Partitioning II	|	Hard	|
|		|	131	|	Palindrome Partitioning	|	Medium	|
|		|	130	|	Surrounded Regions	|	Medium	|
|		|	129	|	Sum Root to Leaf Numbers	|	Medium	|
|		|	128	|	Longest Consecutive Sequence	|	Hard	|
|		|	127	|	Word Ladder	|	Medium	|
|		|	126	|	Word Ladder II	|	Hard	|
|		|	125	|	Valid Palindrome	|	Easy	|
|		|	124	|	Binary Tree Maximum Path Sum	|	Hard	|
|		|	123	|	Best Time to Buy and Sell Stock III	|	Hard	|
|		|	122	|	Best Time to Buy and Sell Stock II	|	Medium	|
|	[Swift](./DP/BestTimeBuySellStock.swift)	|	121	|	Best Time to Buy and Sell Stock	|	Easy	|
|		|	120	|	Triangle	|	Medium	|
|		|	119	|	Pascal's Triangle II	|	Easy	|
|		|	118	|	Pascal's Triangle	|	Easy	|
|		|	117	|	Populating Next Right Pointers in Each Node II	|	Hard	|
|		|	116	|	Populating Next Right Pointers in Each Node	|	Medium	|
|		|	115	|	Distinct Subsequences	|	Hard	|
|		|	114	|	Flatten Binary Tree to Linked List	|	Medium	|
|	[Swift](./Tree/PathSumII.swift)	|	113	|	Path Sum II	|	Medium	|
|	[Swift](./Tree/PathSum.swift)	|	112	|	Path Sum	|	Easy	|
|	[Swift](./Tree/MinimumDepthOfBinaryTree.swift)	|	111	|	Minimum Depth of Binary Tree	|	Easy	|
|	[Swift](./Tree/BalancedBinaryTree.swift)	|	110	|	Balanced Binary Tree	|	Easy	|
|		|	109	|	Convert Sorted List to Binary Search Tree	|	Medium	|
|		|	108	|	Convert Sorted Array to Binary Search Tree	|	Medium	|
|	[Swift](./Tree/BinaryTreeLevelOrderTraversalII.swift)	|	107	|	Binary Tree Level Order Traversal II	|	Easy	|
|	[Swift](./Tree/ConstructBinaryTreeInorderPostorder.swift)	|	106	|	Construct Binary Tree from Inorder and Postorder Traversal	|	Medium	|
|	[Swift](./Tree/ConstructBinaryTreePreorderInorder.swift)	|	105	|	Construct Binary Tree from Preorder and Inorder Traversal	|	Medium	|
|	[Swift](./Tree/MaximumDepthOfBinaryTree.swift)	|	104	|	Maximum Depth of Binary Tree	|	Easy	|
|	[Swift](./Tree/BinaryTreeZigzagLevelOrderTraversal.swift)	|	103	|	Binary Tree Zigzag Level Order Traversal	|	Medium	|
|	[Swift](./Tree/BinaryTreeLevelOrderTraversal.swift)	|	102	|	Binary Tree Level Order Traversal	|	Easy	|
|	[Swift](./Tree/SymmetricTree.swift)	|	101	|	Symmetric Tree	|	Easy	|
|	[Swift](./Tree/SameTree.swift)	|	100	|	[Same Tree](https://oj.leetcode.com/problems/same-tree/)	|	Easy	|
|		|	99	|	[Recover Binary Search Tree](https://oj.leetcode.com/problems/recover-binary-search-tree/)	|	Hard	|
|	[Swift](./Tree/ValidateBinarySearchTree.swift)	|	98	|	[Validate Binary Search Tree](https://oj.leetcode.com/problems/validate-binary-search-tree/)	|	Medium	|
|		|	97	|	[Interleaving String](https://oj.leetcode.com/problems/interleaving-string/)	|	Hard	|
|		|	96	|	[Unique Binary Search Trees](https://oj.leetcode.com/problems/unique-binary-search-trees/)	|	Medium	|
|		|	95	|	[Unique Binary Search Trees II](https://oj.leetcode.com/problems/unique-binary-search-trees-ii/)	|	Medium	|
|	[Swift](./Stack/InorderTraversal.swift)	|	94	|	[Binary Tree Inorder Traversal](https://oj.leetcode.com/problems/binary-tree-inorder-traversal/)	|	Medium	|
|		|	93	|	[Restore IP Addresses](https://oj.leetcode.com/problems/restore-ip-addresses/)	|	Medium	|
|		|	92	|	[Reverse Linked List II](https://oj.leetcode.com/problems/reverse-linked-list-ii/)	|	Medium	|
|		|	91	|	[Decode Ways](https://oj.leetcode.com/problems/decode-ways/)	|	Medium	|
|	[Swift](./DFS/SubsetsII.swift)	|	90	|	[Subsets II](https://oj.leetcode.com/problems/subsets-ii/)	|	Medium	|
|		|	89	|	[Gray Code](https://oj.leetcode.com/problems/gray-code/)	|	Medium	|
|		|	88	|	[Merge Sorted Array](https://oj.leetcode.com/problems/merge-sorted-array/)	|	Easy	|
|		|	87	|	[Scramble String](https://oj.leetcode.com/problems/scramble-string/)	|	Hard	|
|	[Swift](./LinkedList/PartitionList.swift)	|	86	|	[Partition List](https://oj.leetcode.com/problems/partition-list/)	|	Medium	|
|		|	85	|	[Maximal Rectangle](https://oj.leetcode.com/problems/maximal-rectangle/)	|	Hard	|
|		|	84	|	[Largest Rectangle in Histogram](https://oj.leetcode.com/problems/largest-rectangle-in-histogram/)	|	Hard	|
|	[Swift](./LinkedList/RemoveDuplicatesFromSortedList.swift)	|	83	|	[Remove Duplicates from Sorted List](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-list/)	|	Easy	|
|	[Swift](./LinkedList/RemoveDuplicatesFromSortedListII.swift)	|	82	|	[Remove Duplicates from Sorted List II](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-list-ii/)	|	Medium	|
|	[Swift](./Search/SearchInRotatedSortedArrayII.swift)	|	81	|	[Search in Rotated Sorted Array II](https://oj.leetcode.com/problems/search-in-rotated-sorted-array-ii/)	|	Medium	|
|	[Swift](./Array/RemoveDuplicatesFromSortedArrayII.swift)	|	80	|	[Remove Duplicates from Sorted Array II](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-array-ii/)	|	Medium	|
|	[Swift](./DFS/WordSearch.swift)	|	79	|	[Word Search](https://oj.leetcode.com/problems/word-search/)| [C++](./algorithms/cpp/wordSearch/wordSearch.cpp)	|	Medium	|
|	[Swfit](./DFS/Subsets.swift)	|	78	|	[Subsets](https://oj.leetcode.com/problems/subsets/)	|	Medium	|
|	[Swift](./DFS/combinations.swift)	|	77	|	[Combinations](https://oj.leetcode.com/problems/combinations/)	|	Medium	|
|		|	76	|	[Minimum Window Substring](https://oj.leetcode.com/problems/minimum-window-substring/)	|	Hard	|
|	[Swift](./Sort/SortColors.swift)	|	75	|	[Sort Colors](https://oj.leetcode.com/problems/sort-colors/)	|	Medium	|
|		|	74	|	[Search a 2D Matrix](https://oj.leetcode.com/problems/search-a-2d-matrix/)	|	Medium	|
|		|	73	|	[Set Matrix Zeroes](https://oj.leetcode.com/problems/set-matrix-zeroes/)	|	Medium	|
|	[Swift](./DP/EditDistance.swift)	|	72	|	[Edit Distance](https://oj.leetcode.com/problems/edit-distance/)	|	Hard	|
|	[Swift](./Stack/SimplifyPath.swift)	|	71	|	[Simplify Path](https://oj.leetcode.com/problems/simplify-path/)	|	Medium	|
|	[Swift](./DP/ClimbingStairs.swift)	|	70	|	[Climbing Stairs](https://oj.leetcode.com/problems/climbing-stairs/)	|	Easy	|
|	[Swift](./Search/Sqrtx.swift)	|	69	|	[Sqrt(x)](https://oj.leetcode.com/problems/sqrtx/)	|	Medium	|
|	[Swift](./String/TextJustification.swift)	|	68	|	[Text Justification](https://oj.leetcode.com/problems/text-justification/)	|	Hard	|
|	[Swift](./Math/AddBinary.swift)	|	67	|	[Add Binary](https://oj.leetcode.com/problems/add-binary/)	|	Easy	|
|	[Swift](./Math/PlusOne.swift)	|	66	|	[Plus One](https://oj.leetcode.com/problems/plus-one/)	|	Easy	|
|		|	65	|	[Valid Number](https://oj.leetcode.com/problems/valid-number/)	|	Hard	|
|		|	64	|	[Minimum Path Sum](https://oj.leetcode.com/problems/minimum-path-sum/)	|	Medium	|
|	[Swift](./DP/UniquePathsII.swift)	|	63	|	[Unique Paths II](https://oj.leetcode.com/problems/unique-paths-ii/)	|	Medium	|
|	[Swift](./DP/UniquePaths.swift)	|	62	|	[Unique Paths](https://oj.leetcode.com/problems/unique-paths/)	|	Medium	|
|	[Swift](./LinkedList/RotateList.swift)	|	61	|	[Rotate List](https://oj.leetcode.com/problems/rotate-list/)	|	Medium	|
|		|	60	|	[Permutation Sequence](https://oj.leetcode.com/problems/permutation-sequence/)	|	Medium	|
|	[Swift](./Array/SpiralMatrixII.swift)	|	59	|	[Spiral Matrix II](https://oj.leetcode.com/problems/spiral-matrix-ii/)	|	Medium	|
|	[Swift](./String/LengthLastWord.swift)	|	58	|	[Length of Last Word](https://oj.leetcode.com/problems/length-of-last-word/)	|	Easy	|
|		|	57	|	[Insert Interval](https://oj.leetcode.com/problems/insert-interval/)	|	Hard	|
|	[Swift](./Sort/MergeIntervals.swift)	|	56	|	[Merge Intervals](https://oj.leetcode.com/problems/merge-intervals/)	|	Hard	|
|		|	55	|	[Jump Game](https://oj.leetcode.com/problems/jump-game/)	|	Medium	|
|	[Swift](./Array/SpiralMatrix.swift)	|	54	|	[Spiral Matrix](https://oj.leetcode.com/problems/spiral-matrix/)	|	Medium	|
|	[Swift](./DP/MaximumSubarray.swift)	|	53	|	[Maximum Subarray](https://oj.leetcode.com/problems/maximum-subarray/)	|	Medium	|
|		|	52	|	[N-Queens II](https://oj.leetcode.com/problems/n-queens-ii/)	|	Hard	|
|		|	51	|	[N-Queens](https://oj.leetcode.com/problems/n-queens/)	|	Hard	|
|	[Swift](./Math/Pow.swift)	|	50	|	["Pow(x, n)"](https://oj.leetcode.com/problems/powx-n/)	|	Medium	|
|	[Swift](./String/GroupAnagrams.swift)	|	49	|	[Group Anagrams](https://oj.leetcode.com/problems/anagrams/)	|	Medium	|
|	[Swift](./Array/RotateImage.swift)	|	48	|	[Rotate Image](https://oj.leetcode.com/problems/rotate-image/)	|	Medium	|
|	[Swift](./DFS/PermutationsII.swift)	|	47	|	[Permutations II](https://oj.leetcode.com/problems/permutations-ii/)	|	Medium	|
|	[Swift](./DFS/Permutations.swift)	|	46	|	[Permutations](https://oj.leetcode.com/problems/permutations/)	|	Medium	|
|		|	45	|	[Jump Game II](https://oj.leetcode.com/problems/jump-game-ii/)	|	Hard	|
|		|	44	|	[Wildcard Matching](https://oj.leetcode.com/problems/wildcard-matching/)	|	Hard	|
|		|	43	|	[Multiply Strings](https://oj.leetcode.com/problems/multiply-strings/)	|	Medium	|
|	[Swift](./Math/TrappingRainWater.swift)	|	42	|	[Trapping Rain Water](https://oj.leetcode.com/problems/trapping-rain-water/)	|	Hard	|
|		|	41	|	[First Missing Positive](https://oj.leetcode.com/problems/first-missing-positive/)	|	Hard	|
|	[Swift](./DFS/combinationSumII.swiftc)	|	40	|	[Combination Sum II](https://oj.leetcode.com/problems/combination-sum-ii/)	|	Medium	|
|	[Swift](./DFS/CombinationSum.swift)	|	39	|	[Combination Sum](https://oj.leetcode.com/problems/combination-sum/)	|	Medium	|
|	[Swift](./String/CountAndSay.swift)	|	38	|	[Count and Say](https://oj.leetcode.com/problems/count-and-say/)	|	Easy	|
|		|	37	|	[Sudoku Solver](https://oj.leetcode.com/problems/sudoku-solver/)	|	Hard	|
|	[Swift](./Array/ValidSudoku.swift)	|	36	|	[Valid Sudoku](https://oj.leetcode.com/problems/valid-sudoku/)	|	Easy	|
|	[Swift](./Search/SearchInsertPosition.swift)	|	35	|	[Search Insert Position](https://oj.leetcode.com/problems/search-insert-position/)	|	Medium	|
|	[Swift](./Search/SearchForARange.swift)	|	34	|	[Search for a Range](https://oj.leetcode.com/problems/search-for-a-range/)	|	Medium	|
|	[Swift](./Search/SearchInRotatedSortedArray.swift)	|	33	|	[Search in Rotated Sorted Array](https://oj.leetcode.com/problems/search-in-rotated-sorted-array/)	|	Hard	|
|		|	32	|	[Longest Valid Parentheses](https://oj.leetcode.com/problems/longest-valid-parentheses/)	|	Hard	|
|		|	31	|	[Next Permutation](https://oj.leetcode.com/problems/next-permutation/)	|	Medium	|
|		|	30	|	[Substring with Concatenation of All Words](https://oj.leetcode.com/problems/substring-with-concatenation-of-all-words/)	|	Hard	|
|		|	29	|	[Divide Two Integers](https://oj.leetcode.com/problems/divide-two-integers/)	|	Medium	|
|	[Swift](./String/StrStr.swift)	|	28	|	[Implement strStr()](https://oj.leetcode.com/problems/implement-strstr/)	|	Easy	|
|	[Swfit](./Array/RemoveElement.swift)	|	27	|	[Remove Element](https://oj.leetcode.com/problems/remove-element/)	|	Easy	|
|	[Swift](./Array/RemoveDuplicatesFromSortedArray.swift)	|	26	|	[Remove Duplicates from Sorted Array](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-array/)	|	Easy	|
|		|	25	|	[Reverse Nodes in k-Group](https://oj.leetcode.com/problems/reverse-nodes-in-k-group/)	|	Hard	|
|	[Swift](./LinkedList/SwapNodesInPairs.swift)	|	24	|	[Swap Nodes in Pairs](https://oj.leetcode.com/problems/swap-nodes-in-pairs/)	|	Easy	|
|	[Swift](./LinkedList/MergeKSortedLists.swift)	|	23	|	[Merge k Sorted Lists](https://oj.leetcode.com/problems/merge-k-sorted-lists/)	|	Hard	|
|	[Swift](./Math/GenerateParentheses.swift)	|	22	|	[Generate Parentheses](https://oj.leetcode.com/problems/generate-parentheses/)	|	Medium	|
|	[Swift](./LinkedList/MergeTwoSortedLists.swift)	|	21	|	[Merge Two Sorted Lists](https://oj.leetcode.com/problems/merge-two-sorted-lists/)	|	Easy	|
|	[Swift](./Stack/ValidParentheses.swift)	|	20	|	[Valid Parentheses](https://oj.leetcode.com/problems/valid-parentheses/)	|	Easy	|
|	[Swift](./LinkedList/RemoveNthFromEnd.swift)	|	19	|	[Remove Nth Node From End of List](https://oj.leetcode.com/problems/remove-nth-node-from-end-of-list/)	|	Easy	|
|	[Swift](./Array/FourSum.swift)	|	18	|	[4Sum](https://oj.leetcode.com/problems/4sum/)	|	Medium	|
|	[Swift](./DFS/LetterCombinationsPhoneNumber.swift)	|	17	|	[Letter Combinations of a Phone Number](https://oj.leetcode.com/problems/letter-combinations-of-a-phone-number/)	|	Medium	|
|		|	16	|	[3Sum Closest](https://oj.leetcode.com/problems/3sum-closest/)	|	Medium	|
|	[Swift](./Array/ThreeSum.swift)	|	15	|	[3Sum](https://oj.leetcode.com/problems/3sum/)	|	Medium	|
|	[Swift](./String/LongestCommonPrefix.swift)	|	14	|	[Longest Common Prefix](https://oj.leetcode.com/problems/longest-common-prefix/)	|	Easy	|
|	[Swift](./Math/RomanToInteger.swift)	|	13	|	[Roman to Integer](https://oj.leetcode.com/problems/roman-to-integer/)	|	Easy	|
|		|	12	|	[Integer to Roman](https://oj.leetcode.com/problems/integer-to-roman/)	|	Medium	|
|		|	11	|	[Container With Most Water](https://oj.leetcode.com/problems/container-with-most-water/)	|	Medium	|
|		|	10	|	[Regular Expression Matching](https://oj.leetcode.com/problems/regular-expression-matching/)	|	Hard	|
|		|	9	|	[Palindrome Number](https://oj.leetcode.com/problems/palindrome-number/)	|	Easy	|
|	[Swift](./Math/Atoi.swift)	|	8	|	[String to Integer (atoi)](https://oj.leetcode.com/problems/string-to-integer-atoi/)	|	Easy	|
|		|	7	|	[Reverse Integer](https://oj.leetcode.com/problems/reverse-integer/)	|	Easy	|
|		|	6	|	[ZigZag Conversion](https://oj.leetcode.com/problems/zigzag-conversion/)	|	Easy	|
|	[Swift](./DP/LongestPalindromicSubstring.swift)	|	5	|	[Longest Palindromic Substring](https://oj.leetcode.com/problems/longest-palindromic-substring/)	|	Medium	|
|		|	4	|	[Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays/)	|	Hard	|
|	[Swift](./String/LongestSubstringWithoutRepeatingCharacters.swift)	|	3	|	[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)	|	Medium	|
|	[Swift](./Math/AddTwoNumbers.swift)	|	2	|	[Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)	|	Medium	|
|	[Swift](./Array/TwoSum.swift)	|	1	|	[Two Sum](https://leetcode.com/problems/two-sum/)	|	Easy	|
