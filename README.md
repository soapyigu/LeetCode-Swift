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

## Progress
[Problem Status](#problem-status) shows the latest progress of solutions to all 300+ questions. The questions with &hearts; mark means that you have to Subscript to premium membership of LeetCode to unlock them.

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
[Regular Expression Matching](https://leetcode.com/problems/regular-expression-matching/) | [Swift](./String/RegularExpressionMatching.swift) | Hard | O(n) | O(n) |

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


## Problem Status
| Solution | Number | Title | Difficulty |
| -------- | ------ | ----- | ---------- |
|		|	375	|	[Guess Number Higher or Lower II](https://leetcode.com/problems/guess-number-higher-or-lower-ii/)	|	&hearts;   &hearts;
|		|	374	|	[Guess Number Higher or Lower](https://leetcode.com/problems/guess-number-higher-or-lower/)	|	&hearts;
|		|	373	|	[Find K Pairs with Smallest Sums](https://leetcode.com/problems/find-k-pairs-with-smallest-sums/)	|	&hearts;   &hearts;
|	[Swift](./Math/SuperPow.swift)	|	372	|	[Super Pow](https://leetcode.com/problems/super-pow/)	|	&hearts;   &hearts;
|	[Swift](./Math/SumTwoIntegers.swift)	|	371	|	[Sum of Two Integers](https://leetcode.com/problems/sum-of-two-integers/)	|	&hearts;
|		|	370	|	[Range Addition](https://leetcode.com/problems/range-addition/) &hearts;	|	&hearts;   &hearts;
|		|	369	|	[Plus One Linked List](https://leetcode.com/problems/plus-one-linked-list/) &hearts;	|	&hearts;   &hearts;
|		|	368	|	[Largest Divisible Subset](https://leetcode.com/problems/largest-divisible-subset/)	|	&hearts;   &hearts;
|		|	367	|	[Valid Perfect Square](https://leetcode.com/problems/valid-perfect-square/)	|	&hearts;   &hearts;
|		|	366	|	[Find Leaves of Binary Tree](https://leetcode.com/problems/find-leaves-of-binary-tree/) &hearts;	|	&hearts;   &hearts;
|		|	365	|	[Water and Jug Problem](https://leetcode.com/problems/water-and-jug-problem/)	|	&hearts;   &hearts;
|		|	364	|	[Nested List Weight Sum II](https://leetcode.com/problems/nested-list-weight-sum-ii/) &hearts;	|	&hearts;   &hearts;
|		|	363	|	[Max Sum of Rectangle No Larger Than K](https://leetcode.com/problems/max-sum-of-sub-matrix-no-larger-than-k/)	|	&hearts;   &hearts;   &hearts;
|		|	362	|	[Design Hit Counter](https://leetcode.com/problems/design-hit-counter/) &hearts;	|	&hearts;   &hearts;
|		|	361	|	[Bomb Enemy](https://leetcode.com/problems/bomb-enemy/) &hearts;	|	&hearts;   &hearts;
|		|	360	|	[Sort Transformed Array](https://leetcode.com/problems/sort-transformed-array/) &hearts;	|	&hearts;   &hearts;
|		|	359	|	[Logger Rate Limiter](https://leetcode.com/problems/logger-rate-limiter/) &hearts;	|	&hearts;
|		|	358	|	[Rearrange String k Distance Apart](https://leetcode.com/problems/rearrange-string-k-distance-apart/) &hearts;	|	&hearts;   &hearts;   &hearts;
|		|	357	|	[Count Numbers with Unique Digits](https://leetcode.com/problems/count-numbers-with-unique-digits/)	|	&hearts;   &hearts;
|		|	356	|	[Line Reflection](https://leetcode.com/problems/line-reflection/) &hearts;	|	&hearts;   &hearts;
|		|	355	|	[Design Twitter](https://leetcode.com/problems/design-twitter/)	|	&hearts;   &hearts;
|		|	354	|	[Russian Doll Envelopes](https://leetcode.com/problems/russian-doll-envelopes/)	|	&hearts;   &hearts;   &hearts;
|		|	353	|	[Design Snake Game](https://leetcode.com/problems/design-snake-game/) &hearts;	|	&hearts;   &hearts;
|		|	352	|	[Data Stream as Disjoint Intervals](https://leetcode.com/problems/data-stream-as-disjoint-intervals/)	|	&hearts;   &hearts;   &hearts;
|		|	351	|	[Android Unlock Patterns](https://leetcode.com/problems/android-unlock-patterns/) &hearts;	|	&hearts;   &hearts;
|	[Swift](./Array/IntersectionTwoArraysII.swift)	|	350	|	[Intersection of Two Arrays II](https://leetcode.com/problems/intersection-of-two-arrays-ii/)	|	&hearts;
|	[Swift](./Array/IntersectionTwoArrays.swift)	|	349	|	[Intersection of Two Arrays](https://leetcode.com/problems/intersection-of-two-arrays/)	|	&hearts;
|		|	348	|	[Design Tic-Tac-Toe](https://leetcode.com/problems/design-tic-tac-toe/) &hearts;	|	&hearts;   &hearts;
|	[Swift](./Sort/TopKFrequentElements.swift)	|	347	|	[Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)	|	&hearts;   &hearts;
|		|	346	|	[Moving Average from Data Stream](https://leetcode.com/problems/moving-average-from-data-stream/) &hearts;	|	&hearts;
|	[Swift](./String/ReverseVowelsOfAString.swift)	|	345	|	[Reverse Vowels of a String](https://leetcode.com/problems/reverse-vowels-of-a-string/)	|	&hearts;
|	[Swift](./String/ReverseString.swift)	|	344	|	[Reverse String](https://leetcode.com/problems/reverse-string/)	|	&hearts;
|	[Swift](./Math/IntegerBreak.swift)	|	343	|	[Integer Break](https://leetcode.com/problems/integer-break/)	|	&hearts;   &hearts;
|		|	342	|	[Power of Four](https://leetcode.com/problems/power-of-four/)	|	&hearts;
|		|	341	|	[Flatten Nested List Iterator](https://leetcode.com/problems/flatten-nested-list-iterator/)	|	&hearts;   &hearts;
|		|	340	|	[Longest Substring with At Most K Distinct Characters](https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/)  &hearts;	|	&hearts;   &hearts;   &hearts;
|	[Swift](./DP/NestedListWeightSum.swift)	|	339	|	[Nested List Weight Sum](https://leetcode.com/problems/nested-list-weight-sum/)  &hearts;	|	&hearts;
|		|	338	|	[Counting Bits](https://leetcode.com/problems/counting-bits/)	|	&hearts;   &hearts;
|		|	337	|	[House Robber III](https://leetcode.com/problems/house-robber-iii/)	|	&hearts;   &hearts;
|		|	336	|	[Palindrome Pairs](https://leetcode.com/problems/palindrome-pairs/)	|	&hearts;   &hearts;   &hearts;
|		|	335	|	[Self Crossing](https://leetcode.com/problems/self-crossing/)	|	&hearts;   &hearts;   &hearts;
|		|	334	|	[Increasing Triplet Subsequence](https://leetcode.com/problems/increasing-triplet-subsequence/)	|	&hearts;   &hearts;
|		|	333	|	[Largest BST Subtree](https://leetcode.com/problems/largest-bst-subtree/)  &hearts;	|	&hearts;   &hearts;
|		|	332	|	[Reconstruct Itinerary](https://leetcode.com/problems/reconstruct-itinerary/)	|	&hearts;   &hearts;
|		|	331	|	[Verify Preorder Serialization of a Binary Tree](https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree/)	|	&hearts;   &hearts;
|		|	330	|	[Patching Array](https://leetcode.com/problems/patching-array/)	|	&hearts;   &hearts;   &hearts;
|		|	329	|	[Longest Increasing Path in a Matrix](https://leetcode.com/problems/longest-increasing-path-in-a-matrix/)	|	&hearts;   &hearts;   &hearts;
|		|	328	|	[Odd Even Linked List](https://leetcode.com/problems/odd-even-linked-list/)	|	&hearts;   &hearts;
|		|	327	|	[Count of Range Sum](https://leetcode.com/problems/count-of-range-sum/)	|	&hearts;   &hearts;   &hearts;
|	[Swift](./Math/PowerThree.swift)	|	326	|	[Power of Three](https://leetcode.com/problems/power-of-three/)	|	&hearts;
|	[Swift](./Array/MaximumSizeSubarraySumEqualsK.swift)	|	325	|	[Maximum Size Subarray Sum Equals k](https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/)  &hearts;	|	&hearts;   &hearts;
|	[Swift](./Sort/WiggleSortII.swift)	|	324	|	[Wiggle Sort II](https://leetcode.com/problems/wiggle-sort-ii/)	|	&hearts;   &hearts;
|		|	323	|	[Number of Connected Components in an Undirected Graph](https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/)  &hearts;	|	&hearts;   &hearts;
|	[Swift](./DP/CoinChange.swift)	|	322	|	[Coin Change](https://leetcode.com/problems/coin-change/)	|	&hearts;   &hearts;
|		|	321	|	[Create Maximum Number](https://leetcode.com/problems/create-maximum-number/)	|	&hearts;   &hearts;   &hearts;
|		|	320	|	[Generalized Abbreviation](https://leetcode.com/problems/generalized-abbreviation/)  &hearts;	|	&hearts;   &hearts;
|		|	319	|	[Bulb Switcher](https://leetcode.com/problems/bulb-switcher/)	|	&hearts;   &hearts;
|		|	318	|	[Maximum Product of Word Lengths](https://leetcode.com/problems/maximum-product-of-word-lengths/)	|	&hearts;   &hearts;
|		|	317	|	[Shortest Distance from All Buildings](https://leetcode.com/problems/shortest-distance-from-all-buildings/)  &hearts;	|	&hearts;   &hearts;   &hearts;
|		|	316	|	[Remove Duplicate Letters](https://leetcode.com/problems/remove-duplicate-letters/)	|	&hearts;   &hearts;   &hearts;
|		|	315	|	[Count of Smaller Numbers After Self](https://leetcode.com/problems/count-of-smaller-numbers-after-self/)	|	&hearts;   &hearts;   &hearts;
|		|	314	|	[Binary Tree Vertical Order Traversal](https://leetcode.com/problems/binary-tree-vertical-order-traversal/) &hearts;	|	&hearts;   &hearts;
|	[Swift](./Math/SuperUglyNumber.swift)	|	313	|	[Super Ugly Number](https://leetcode.com/problems/super-ugly-number/)	|	&hearts;   &hearts;
|		|	312	|	[Burst Balloons](https://leetcode.com/problems/burst-balloons/)	|	&hearts;   &hearts;   &hearts;
|		|	311	|	[Sparse Matrix Multiplication](https://leetcode.com/problems/sparse-matrix-multiplication/)  &hearts;	|	&hearts;   &hearts;
|		|	310	|	[Minimum Height Trees](https://leetcode.com/problems/minimum-height-trees/)	|	&hearts;   &hearts;
|		|	309	|	[Best Time to Buy and Sell Stock with Cooldown](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/)	|	&hearts;   &hearts;
|		|	308	|	[Range Sum Query 2D - Mutable](https://leetcode.com/problems/range-sum-query-2d-mutable/) &hearts;	|	&hearts;   &hearts;   &hearts;
|		|	307	|	[Range Sum Query - Mutable](https://leetcode.com/problems/range-sum-query-mutable/)	|	&hearts;   &hearts;
|		|	306	|	[Additive Number](https://leetcode.com/problems/additive-number/)	|	&hearts;   &hearts;
|		|	305	|	[Number of Islands II](https://leetcode.com/problems/number-of-islands-ii/)  &hearts;	|	&hearts;   &hearts;   &hearts;
|		|	304	|	[Range Sum Query 2D - Immutable](https://leetcode.com/problems/range-sum-query-2d-immutable/)	|	&hearts;   &hearts;
|		|	303	|	[Range Sum Query - Immutable](https://leetcode.com/problems/range-sum-query-immutable/)	|	&hearts;
|		|	302	|	[Smallest Rectangle Enclosing Black Pixels](https://leetcode.com/problems/smallest-rectangle-enclosing-black-pixels/)  &hearts;	|	&hearts;   &hearts;   &hearts;
|		|	301	|	[Remove Invalid Parentheses](https://leetcode.com/problems/remove-invalid-parentheses/)	|	&hearts;   &hearts;   &hearts;
|	[Swift](./DP/LongestIncreasingSubsequence.swift)	|	300	|	[Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)	|	&hearts;   &hearts;
|		|	299	|	[Bulls and Cows](https://leetcode.com/problems/bulls-and-cows/)	|	&hearts;	|
|		|	298	|	[Binary Tree Longest Consecutive Sequence](https://leetcode.com/problems/binary-tree-longest-consecutive-sequence/) &hearts;	|	&hearts;   &hearts;	|
|		|	297	|	[Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)	|	&hearts;   &hearts;   &hearts;	|
|		|	296	|	[Best Meeting Point](https://leetcode.com/problems/best-meeting-point/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|		|	295	|	[Find Median from Data Stream](https://leetcode.com/problems/find-median-from-data-stream/)	|	&hearts;   &hearts;   &hearts;	|
|		|	294	|	[Flip Game II](https://leetcode.com/problems/flip-game-ii/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./String/FlipGame.swift)	|	293	|	[Flip Game](https://leetcode.com/problems/flip-game/) &hearts;	|	&hearts;	|
|		|	292	|	[Nim Game](https://leetcode.com/problems/nim-game/)	|	&hearts;	|
|		|	291	|	[Word Pattern II](https://leetcode.com/problems/word-pattern-ii/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|	[Swift](./String/WordPattern.swift)	|	290	|	[Word Pattern](https://leetcode.com/problems/word-pattern/)	|	&hearts;	|
|		|	289	|	[Game of Life](https://leetcode.com/problems/game-of-life/)	|	&hearts;   &hearts;	|
|		|	288	|	[Unique Word Abbreviation](https://leetcode.com/problems/unique-word-abbreviation/) &hearts;	|	&hearts;	|
|		|	287	|	[Find the Duplicate Number](https://leetcode.com/problems/find-the-duplicate-number/)	|	&hearts;   &hearts;   &hearts;	|
|		|	286	|	[Walls and Gates](https://leetcode.com/problems/walls-and-gates/) &hearts;	|	&hearts;   &hearts;	|
|		|	285	|	[Inorder Successor in BST](https://leetcode.com/problems/inorder-successor-in-bst/) &hearts;	|	&hearts;   &hearts;	|
|		|	284	|	[Peeking Iterator](https://leetcode.com/problems/peeking-iterator/)	|	&hearts;   &hearts;	|
|	[Swift](./Array/MoveZeroes.swift)	|	283	|	[Move Zeroes](https://leetcode.com/problems/move-zeroes/)	|	&hearts;	|
|		|	282	|	[Expression Add Operators](https://leetcode.com/problems/expression-add-operators/)	|	&hearts;   &hearts;   &hearts;	|
|		|	281	|	[Zigzag Iterator](https://leetcode.com/problems/zigzag-iterator/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./Sort/WiggleSort.swift)	|	280	|	[Wiggle Sort](https://leetcode.com/problems/wiggle-sort/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./DP/PerfectSquares.swift)	|	279	|	[Perfect Squares](https://leetcode.com/problems/perfect-squares/)	|	&hearts;   &hearts;	|
|		|	278	|	[First Bad Version](https://leetcode.com/problems/first-bad-version/)	|	&hearts;	|
|		|	277	|	[Find the Celebrity](https://leetcode.com/problems/find-the-celebrity/) &hearts;	|	&hearts;   &hearts;	|
|		|	276	|	[Paint Fence](https://leetcode.com/problems/paint-fence/) &hearts;	|	&hearts;	|
|		|	275	|	[H-Index II](https://leetcode.com/problems/h-index-ii/)	|	&hearts;   &hearts;	|
|		|	274	|	[H-Index](https://leetcode.com/problems/h-index/)	|	&hearts;   &hearts;	|
|		|	273	|	[Integer to English Words](https://leetcode.com/problems/integer-to-english-words/)	|	&hearts;   &hearts;   &hearts;	|
|		|	272	|	[Closest Binary Search Tree Value II](https://leetcode.com/problems/closest-binary-search-tree-value-ii/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|		|	271	|	[Encode and Decode Strings](https://leetcode.com/problems/encode-and-decode-strings/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./Search/ClosestBinarySearchTreeValue.swift)	|	270	|	[Closest Binary Search Tree Value](https://leetcode.com/problems/closest-binary-search-tree-value/) &hearts;	|	&hearts;	|
|		|	269	|	[Alien Dictionary](https://leetcode.com/problems/alien-dictionary/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|		|	268	|	[Missing Number](https://leetcode.com/problems/missing-number/)	|	&hearts;   &hearts;	|
|		|	267	|	[Palindrome Permutation II](https://leetcode.com/problems/palindrome-permutation-ii/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./String/PalindromePermutation.swift)	|	266	|	[Palindrome Permutation](https://leetcode.com/problems/palindrome-permutation/) &hearts;	|	&hearts;	|
|		|	265	|	[Paint House II](https://leetcode.com/problems/paint-house-ii/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|	[Swift](./Math/UglyNumberII.swift)	|	264	|	[Ugly Number II](https://leetcode.com/problems/ugly-number-ii/)	|	&hearts;   &hearts;	|
|	[Swift](./Math/UglyNumber.swift)	|	263	|	[Ugly Number](https://leetcode.com/problems/ugly-number/)	|	&hearts;	|
|		|	261	|	[Graph Valid Tree](https://leetcode.com/problems/graph-valid-tree/) &hearts;	|	&hearts;   &hearts;	|
|		|	260	|	[Single Number III](https://leetcode.com/problems/single-number-iii/)	|	&hearts;   &hearts;	|
|		|	259	|	[3Sum Smaller](https://leetcode.com/problems/3sum-smaller/) &hearts;	|	&hearts;   &hearts;	|
|		|	258	|	[Add Digits](https://leetcode.com/problems/add-digits/)	|	&hearts;	|
|		|	257	|	[Binary Tree Paths](https://leetcode.com/problems/binary-tree-paths/)	|	&hearts;	|
|		|	256	|	[Paint House](https://leetcode.com/problems/paint-house/) &hearts;	|	&hearts;   &hearts;	|
|		|	255	|	[Verify Preorder Sequence in Binary Search Tree](https://leetcode.com/problems/verify-preorder-sequence-in-binary-search-tree/) &hearts;	|	&hearts;   &hearts;	|
|		|	254	|	[Factor Combinations](https://leetcode.com/problems/factor-combinations/) &hearts;	|	&hearts;   &hearts;	|
|		|	253	|	[Meeting Rooms II](https://leetcode.com/problems/meeting-rooms-ii/) &hearts;	|	&hearts;   &hearts;	|
|	[Swift](./Sort/MeetingRooms.swift)	|	252	|	[Meeting Rooms](https://leetcode.com/problems/meeting-rooms/) &hearts;	|	&hearts;	|
|		|	251	|	[Flatten 2D Vector](https://leetcode.com/problems/flatten-2d-vector/) &hearts;	|	&hearts;   &hearts;	|
|		|	250	|	[Count Univalue Subtrees](https://leetcode.com/problems/count-univalue-subtrees/) &hearts;	|	&hearts;   &hearts;	|
|		|	249	|	[Group Shifted Strings](https://leetcode.com/problems/group-shifted-strings/) &hearts;	|	&hearts;	|
|		|	248	|	[Strobogrammatic Number III](https://leetcode.com/problems/strobogrammatic-number-iii/) &hearts;	|	&hearts;   &hearts;   &hearts;	|
|		|	247	|	[Strobogrammatic Number II](https://leetcode.com/problems/strobogrammatic-number-ii/) &hearts;	|	&hearts;   &hearts;	|
|		|	246	|	[Strobogrammatic Number](https://leetcode.com/problems/strobogrammatic-number/) &hearts;	|	&hearts;	|
|		|	245	|	[Shortest Word Distance III](https://leetcode.com/problems/shortest-word-distance-iii/) &hearts;	|	&hearts;   &hearts;	|
|		|	244	|	[Shortest Word Distance II](https://leetcode.com/problems/shortest-word-distance-ii/) &hearts;	|	&hearts;   &hearts;	|
|		|	243	|	[Shortest Word Distance](https://leetcode.com/problems/shortest-word-distance/) &hearts;	|	&hearts;	|
|	[Swift](./String/ValidAnagram.swift)	|	242	|	[Valid Anagram](https://leetcode.com/problems/valid-anagram/)	|	&hearts;	|
|		|	241	|	[Different Ways to Add Parentheses](https://leetcode.com/problems/different-ways-to-add-parentheses/)	|	&hearts;   &hearts;	|
|		|	240	|	[Search a 2D Matrix II](https://leetcode.com/problems/search-a-2d-matrix-ii/)	|	&hearts;   &hearts;	|
|	[Swift](./Array/SlidingWindowMaximum.swift)	|	239	|	[Sliding Window Maximum](https://leetcode.com/problems/sliding-window-maximum/)	|	&hearts;   &hearts;   &hearts;	|
|	[Swift](./Array/ProductExceptSelf.swift)	|	238	|	[Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)	|	&hearts;   &hearts;	|
|		|	237	|	[Delete Node in a Linked List](https://leetcode.com/problems/delete-node-in-a-linked-list/)	|	&hearts;	|
|		|	236	|	[Lowest Common Ancestor of a Binary Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/)	|	&hearts;   &hearts;	|
|		|	235	|	[Lowest Common Ancestor of a Binary Search Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)	|	&hearts;	|
|	[Swift](./LinkedList/PalindromeLinkedList.swift)	|	234	|	[Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)	|	&hearts;	|
|		|	233	|	[Number of Digit One](https://leetcode.com/problems/number-of-digit-one/)	|	&hearts;   &hearts;   &hearts;	|
|		|	232	|	[Implement Queue using Stacks](https://leetcode.com/problems/implement-queue-using-stacks/)	|	&hearts;	|
|	[Swift](./Math/PowerTwo.swift)	|	231	|	[Power of Two](https://leetcode.com/problems/power-of-two/)	|	&hearts;	|
|		|	230	|	[Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/)	|	&hearts;   &hearts;	|
|		|	229	|	[Majority Element II](https://leetcode.com/problems/majority-element-ii/)	|	&hearts;   &hearts;	|
|	[Swift](./Array/SummaryRanges.swift)	|	228	|	[Summary Ranges](https://leetcode.com/problems/summary-ranges/)	|	&hearts;   &hearts;	|
|		|	227	|	[Basic Calculator II](https://leetcode.com/problems/basic-calculator-ii/)	|	&hearts;   &hearts;	|
|	[Swift](./Tree/InvertBinaryTree.swift)	|	226	|	[Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/)	|	&hearts;	|
|		|	225	|	[Implement Stack using Queues](https://leetcode.com/problems/implement-stack-using-queues/)	|	&hearts;	|
|		|	224	|	[Basic Calculator](https://leetcode.com/problems/basic-calculator/)	|	&hearts;   &hearts;   &hearts;	|
|		|	223	|	[Rectangle Area](https://leetcode.com/problems/rectangle-area/)	|	&hearts;	|
|		|	222	|	[Count Complete Tree Nodes](https://leetcode.com/problems/count-complete-tree-nodes/)	|	&hearts;   &hearts;	|
|	[Swift](./DP/MaximalSquare.swift)	|	221	|	[Maximal Square](https://leetcode.com/problems/maximal-square/)	|	&hearts;   &hearts;	|
|		|	220	|	[Contains Duplicate III](https://leetcode.com/problems/contains-duplicate-iii/)	|	&hearts;   &hearts;	|
|	[Swift](./Array/ContainsDuplicateII.swift)	|	219	|	[Contains Duplicate II](https://leetcode.com/problems/contains-duplicate-ii/)	|	&hearts;	|
|		|	218	|	[The Skyline Problem](https://leetcode.com/problems/the-skyline-problem/)	|	&hearts;   &hearts;   &hearts;	|
|	[Swift](./Array/ContainsDuplicate.swift)	|	217	|	[Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)	|	&hearts;	|
|	[Swift](./DFS/combinationSumIII.swift)	|	216	|	[Combination Sum III](https://leetcode.com/problems/combination-sum-iii/)	|	&hearts;   &hearts;	|
|		|	215	|	[Kth Largest Element in an Array](https://leetcode.com/problems/kth-largest-element-in-an-array/)	|	&hearts;   &hearts;	|
|		|	214	|	[Shortest Palindrome](https://leetcode.com/problems/shortest-palindrome/)	|	&hearts;   &hearts;   &hearts;	|
|	[Swift](./DP/HouseRobberII.swift)	|	213	|	[House Robber II](https://leetcode.com/problems/house-robber-ii/)	|	&hearts;   &hearts;	|
|		|	212	|	[Word Search II](https://leetcode.com/problems/word-search-ii/)	|	&hearts;   &hearts;   &hearts;	|
|		|	211	|	[Add and Search Word - Data structure design](https://leetcode.com/problems/add-and-search-word-data-structure-design/)	|	&hearts;   &hearts;	|
|		|	210	|	[Course Schedule II](https://leetcode.com/problems/course-schedule-ii/)	|	&hearts;   &hearts;	|
|		|	209	|	[Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)	|	&hearts;   &hearts;	|
|		|	208	|	[Implement Trie (Prefix Tree)](https://leetcode.com/problems/implement-trie-prefix-tree/)	|	&hearts;   &hearts;	|
|		|	207	|	[Course Schedule](https://leetcode.com/problems/course-schedule/)	|	&hearts;   &hearts;	|
|	[Swift](./LinkedList/ReverseLinkedList.swift)	|	206	|	[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)	|	&hearts;	|
|	[Swift](./String/IsomorphicStrings.swift)	|	205	|	[Isomorphic Strings](https://leetcode.com/problems/isomorphic-strings/)	|	&hearts;	|
|		|	204	|	[Count Primes](https://leetcode.com/problems/count-primes/)	|	&hearts;	|
|	[Swift](./LinkedList/RemoveLinkedListElements.swift)	|	203	|	[Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements/)	|	&hearts;	|
|	[Swift](./Math/HappyNumber.swift)	|	202	|	[Happy Number](https://leetcode.com/problems/happy-number/)	|	&hearts;	|
|		|	201	|	[Bitwise AND of Numbers Range](https://leetcode.com/problems/bitwise-and-of-numbers-range/)	|	&hearts;   &hearts;	|
|	[Swift](./DFS/NumberofIslands.swift)	|	200	|	[Number of Islands](https://leetcode.com/problems/number-of-islands/)	|	&hearts;   &hearts;	|
|		|	199	|	[Binary Tree Right Side View](https://leetcode.com/problems/binary-tree-right-side-view/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/HouseRobber.swift)	|	198	|	[House Robber](https://leetcode.com/problems/house-robber/)	|	&hearts;	|
|		|	191	|	[Number of 1 Bits](https://oj.leetcode.com/problems/number-of-1-bits/)	|	&hearts;	|
|		|	190	|	[Reverse Bits](https://oj.leetcode.com/problems/reverse-bits/)	|	&hearts;	|
|	[Swift](./Array/RotateArray.swift)	|	189	|	[Rotate Array](https://oj.leetcode.com/problems/rotate-array/)	|	&hearts;	|
|		|	188	|	[Best Time to Buy and Sell Stock IV](https://oj.leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/)	|	&hearts;    &hearts;    &hearts;	|
|		|	187	|	[Repeated DNA Sequences](https://oj.leetcode.com/problems/repeated-dna-sequences/)	|	&hearts;    &hearts;	|
|		|	186	|	[Reverse Words in a String II](https://oj.leetcode.com/problems/reverse-words-in-a-string-ii/) &hearts;	|	&hearts;    &hearts;	|
|		|	179	|	[Largest Number](https://oj.leetcode.com/problems/largest-number/)	|	&hearts;    &hearts;	|
|		|	174	|	[Dungeon Game](https://oj.leetcode.com/problems/dungeon-game/)	|	&hearts;    &hearts;    &hearts;	|
|		|	173	|	[Binary Search Tree Iterator](https://oj.leetcode.com/problems/binary-search-tree-iterator/)	|	&hearts;    &hearts;	|
|		|	172	|	[Factorial Trailing Zeroes](https://oj.leetcode.com/problems/factorial-trailing-zeroes/)	|	&hearts;	|
|	[Swift](./Math/ExcelSheetColumnNumber.swift)	|	171	|	[Excel Sheet Column Number](https://oj.leetcode.com/problems/excel-sheet-column-number/)	|	&hearts;	|
|		|	170	|	[Two Sum III - Data structure design](https://oj.leetcode.com/problems/two-sum-iii-data-structure-design/) &hearts;	|	&hearts;	|
|		|	169	|	[Majority Element](https://oj.leetcode.com/problems/majority-element/)	|	&hearts;	|
|		|	168	|	[Excel Sheet Column Title](https://oj.leetcode.com/problems/excel-sheet-column-title/)	|	&hearts;	|
|		|	167	|	[Two Sum II - Input array is sorted](https://oj.leetcode.com/problems/two-sum-ii-input-array-is-sorted/) &hearts;	|	&hearts;    &hearts;	|
|		|	166	|	[Fraction to Recurring Decimal](https://oj.leetcode.com/problems/fraction-to-recurring-decimal/)	|	&hearts;    &hearts;	|
|		|	165	|	[Compare Version Numbers](https://oj.leetcode.com/problems/compare-version-numbers/)	|	&hearts;	|
|		|	164	|	[Maximum Gap](https://oj.leetcode.com/problems/maximum-gap/)	|	&hearts;    &hearts;    &hearts;	|
|		|	163	|	[Missing Ranges](https://oj.leetcode.com/problems/missing-ranges/) &hearts;	|	&hearts;    &hearts;	|
|	[Swift](./Search/FindPeakElement.swift)	|	162	|	[Find Peak Element](https://oj.leetcode.com/problems/find-peak-element/)	|	&hearts;    &hearts;	|
|	[Swift](./String/OneEditDistance.swift)	|	161	|	[One Edit Distance](https://oj.leetcode.com/problems/one-edit-distance/)&hearts;	|	&hearts;    &hearts;	|
|		|	160	|	[Intersection of Two Linked Lists](https://oj.leetcode.com/problems/intersection-of-two-linked-lists/)	|	&hearts;	|
|		|	159	|	[Longest Substring with At Most Two Distinct Characters](https://oj.leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/) &hearts;	|	&hearts;    &hearts;    &hearts;	|
|		|	158	|	[Read N Characters Given Read4 II - Call multiple times](https://oj.leetcode.com/problems/read-n-characters-given-read4-ii-call-multiple-times/) &hearts;	|	&hearts;    &hearts;    &hearts;	|
|		|	157	|	[Read N Characters Given Read4](https://oj.leetcode.com/problems/read-n-characters-given-read4/) &hearts;	|	&hearts;	|
|		|	156	|	[Binary Tree Upside Down](https://oj.leetcode.com/problems/binary-tree-upside-down/) &hearts;	|	&hearts;    &hearts;	|
|		|	155	|	[Min Stack](https://oj.leetcode.com/problems/min-stack/)	|	&hearts;	|
|	[Swift](./Search/FindMinimumRotatedSortedArrayII.swift)	|	154	|	[Find Minimum in Rotated Sorted Array II](https://oj.leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Search/FindMinimumRotatedSortedArray.swift)	|	153	|	[Find Minimum in Rotated Sorted Array](https://oj.leetcode.com/problems/find-minimum-in-rotated-sorted-array/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/MaximumProductSubarray.swift)	|	152	|	[Maximum Product Subarray](https://oj.leetcode.com/problems/maximum-product-subarray/)	|	&hearts;    &hearts;	|
|		|	151	|	[Reverse Words in a String](https://oj.leetcode.com/problems/reverse-words-in-a-string/)	|	&hearts;    &hearts;	|
|	[Swift](./Stack/EvaluateReversePolishNotation.swift)	|	150	|	[Evaluate Reverse Polish Notation](https://oj.leetcode.com/problems/evaluate-reverse-polish-notation/)	|	&hearts;    &hearts;	|
|		|	149	|	[Max Points on a Line](https://oj.leetcode.com/problems/max-points-on-a-line/)	|	&hearts;    &hearts;    &hearts;	|
|		|	148	|	[Sort List](https://oj.leetcode.com/problems/sort-list/)	|	&hearts;    &hearts;	|
|		|	147	|	[Insertion Sort List](https://oj.leetcode.com/problems/insertion-sort-list/)	|	&hearts;    &hearts;	|
|		|	146	|	[LRU Cache](https://oj.leetcode.com/problems/lru-cache/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Stack/PostorderTraversal.swift)	|	145	|	[Binary Tree Postorder Traversal](https://oj.leetcode.com/problems/binary-tree-postorder-traversal/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Stack/PreorderTraversal.swift)	|	144	|	[Binary Tree Preorder Traversal](https://oj.leetcode.com/problems/binary-tree-preorder-traversal/)	|	&hearts;    &hearts;	|
|	[Swift](./LinkedList/ReorderList.swift)	|	143	|	[Reorder List](https://oj.leetcode.com/problems/reorder-list/)	|	&hearts;    &hearts;	|
|		|	142	|	[Linked List Cycle II](https://oj.leetcode.com/problems/linked-list-cycle-ii/)	|	&hearts;    &hearts;	|
|		|	141	|	[Linked List Cycle](https://oj.leetcode.com/problems/linked-list-cycle/)	|	&hearts;	|
|		|	140	|	[Word Break II](https://oj.leetcode.com/problems/word-break-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	139	|	[Word Break](https://oj.leetcode.com/problems/word-break/)	|	&hearts;    &hearts;	|
|		|	138	|	[Copy List with Random Pointer](https://oj.leetcode.com/problems/copy-list-with-random-pointer/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Math/SingleNumberII.swift)	|	137	|	[Single Number II](https://oj.leetcode.com/problems/single-number-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./Math/SingleNumber.swift)	|	136	|	[Single Number](https://oj.leetcode.com/problems/single-number/)	|	&hearts;    &hearts;	|
|		|	135	|	[Candy](https://oj.leetcode.com/problems/candy/)	|	&hearts;    &hearts;    &hearts;	|
|		|	134	|	[Gas Station](https://oj.leetcode.com/problems/gas-station/)	|	&hearts;    &hearts;	|
|		|	133	|	[Clone Graph](https://oj.leetcode.com/problems/clone-graph/)	|	&hearts;    &hearts;	|
|		|	132	|	[Palindrome Partitioning II](https://oj.leetcode.com/problems/palindrome-partitioning-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	131	|	[Palindrome Partitioning](https://oj.leetcode.com/problems/palindrome-partitioning/)	|	&hearts;    &hearts;	|
|		|	130	|	[Surrounded Regions](https://oj.leetcode.com/problems/surrounded-regions/)	|	&hearts;    &hearts;	|
|		|	129	|	[Sum Root to Leaf Numbers](https://oj.leetcode.com/problems/sum-root-to-leaf-numbers/)	|	&hearts;    &hearts;	|
|		|	128	|	[Longest Consecutive Sequence](https://oj.leetcode.com/problems/longest-consecutive-sequence/)	|	&hearts;    &hearts;    &hearts;	|
|		|	127	|	[Word Ladder](https://oj.leetcode.com/problems/word-ladder/)	|	&hearts;    &hearts;	|
|		|	126	|	[Word Ladder II](https://oj.leetcode.com/problems/word-ladder-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	125	|	[Valid Palindrome](https://oj.leetcode.com/problems/valid-palindrome/)	|	&hearts;	|
|		|	124	|	[Binary Tree Maximum Path Sum](https://oj.leetcode.com/problems/binary-tree-maximum-path-sum/)	|	&hearts;    &hearts;    &hearts;	|
|		|	123	|	[Best Time to Buy and Sell Stock III](https://oj.leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	122	|	[Best Time to Buy and Sell Stock II](https://oj.leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/BestTimeBuySellStock.swift)	|	121	|	[Best Time to Buy and Sell Stock](https://oj.leetcode.com/problems/best-time-to-buy-and-sell-stock/)	|	&hearts;	|
|		|	120	|	[Triangle](https://oj.leetcode.com/problems/triangle/)	|	&hearts;    &hearts;	|
|		|	119	|	[Pascal's Triangle II](https://oj.leetcode.com/problems/pascals-triangle-ii/)	|	&hearts;	|
|		|	118	|	[Pascal's Triangle](https://oj.leetcode.com/problems/pascals-triangle/)	|	&hearts;	|
|		|	117	|	[Populating Next Right Pointers in Each Node II](https://oj.leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	116	|	[Populating Next Right Pointers in Each Node](https://oj.leetcode.com/problems/populating-next-right-pointers-in-each-node/)	|	&hearts;    &hearts;	|
|		|	115	|	[Distinct Subsequences](https://oj.leetcode.com/problems/distinct-subsequences/)	|	&hearts;    &hearts;    &hearts;	|
|		|	114	|	[Flatten Binary Tree to Linked List](https://oj.leetcode.com/problems/flatten-binary-tree-to-linked-list/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/PathSumII.swift)	|	113	|	[Path Sum II](https://oj.leetcode.com/problems/path-sum-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/PathSum.swift)	|	112	|	[Path Sum](https://oj.leetcode.com/problems/path-sum/)	|	&hearts;	|
|	[Swift](./Tree/MinimumDepthOfBinaryTree.swift)	|	111	|	[Minimum Depth of Binary Tree](https://oj.leetcode.com/problems/minimum-depth-of-binary-tree/)	|	&hearts;	|
|	[Swift](./Tree/BalancedBinaryTree.swift)	|	110	|	[Balanced Binary Tree](https://oj.leetcode.com/problems/balanced-binary-tree/)	|	&hearts;	|
|		|	109	|	[Convert Sorted List to Binary Search Tree](https://oj.leetcode.com/problems/convert-sorted-list-to-binary-search-tree/)	|	&hearts;    &hearts;	|
|		|	108	|	[Convert Sorted Array to Binary Search Tree](https://oj.leetcode.com/problems/convert-sorted-array-to-binary-search-tree/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/BinaryTreeLevelOrderTraversalII.swift)	|	107	|	[Binary Tree Level Order Traversal II](https://oj.leetcode.com/problems/binary-tree-level-order-traversal-ii/)	|	&hearts;	|
|	[Swift](./Tree/ConstructBinaryTreeInorderPostorder.swift)	|	106	|	[Construct Binary Tree from Inorder and Postorder Traversal](https://oj.leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/ConstructBinaryTreePreorderInorder.swift)	|	105	|	[Construct Binary Tree from Preorder and Inorder Traversal](https://oj.leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/MaximumDepthOfBinaryTree.swift)	|	104	|	[Maximum Depth of Binary Tree](https://oj.leetcode.com/problems/maximum-depth-of-binary-tree/)	|	&hearts;	|
|	[Swift](./Tree/BinaryTreeZigzagLevelOrderTraversal.swift)	|	103	|	[Binary Tree Zigzag Level Order Traversal](https://oj.leetcode.com/problems/binary-tree-zigzag-level-order-traversal/)	|	&hearts;    &hearts;	|
|	[Swift](./Tree/BinaryTreeLevelOrderTraversal.swift)	|	102	|	[Binary Tree Level Order Traversal](https://oj.leetcode.com/problems/binary-tree-level-order-traversal/)	|	&hearts;	|
|	[Swift](./Tree/SymmetricTree.swift)	|	101	|	[Symmetric Tree](https://oj.leetcode.com/problems/symmetric-tree/)	|	&hearts;	|
|	[Swift](./Tree/SameTree.swift)	|	100	|	[Same Tree](https://oj.leetcode.com/problems/same-tree/)	|	&hearts;	|
|		|	99	|	[Recover Binary Search Tree](https://oj.leetcode.com/problems/recover-binary-search-tree/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Tree/ValidateBinarySearchTree.swift)	|	98	|	[Validate Binary Search Tree](https://oj.leetcode.com/problems/validate-binary-search-tree/)	|	&hearts;    &hearts;	|
|		|	97	|	[Interleaving String](https://oj.leetcode.com/problems/interleaving-string/)	|	&hearts;    &hearts;    &hearts;	|
|		|	96	|	[Unique Binary Search Trees](https://oj.leetcode.com/problems/unique-binary-search-trees/)	|	&hearts;    &hearts;	|
|		|	95	|	[Unique Binary Search Trees II](https://oj.leetcode.com/problems/unique-binary-search-trees-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./Stack/InorderTraversal.swift)	|	94	|	[Binary Tree Inorder Traversal](https://oj.leetcode.com/problems/binary-tree-inorder-traversal/)	|	&hearts;    &hearts;	|
|		|	93	|	[Restore IP Addresses](https://oj.leetcode.com/problems/restore-ip-addresses/)	|	&hearts;    &hearts;	|
|		|	92	|	[Reverse Linked List II](https://oj.leetcode.com/problems/reverse-linked-list-ii/)	|	&hearts;    &hearts;	|
|		|	91	|	[Decode Ways](https://oj.leetcode.com/problems/decode-ways/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/SubsetsII.swift)	|	90	|	[Subsets II](https://oj.leetcode.com/problems/subsets-ii/)	|	&hearts;    &hearts;	|
|		|	89	|	[Gray Code](https://oj.leetcode.com/problems/gray-code/)	|	&hearts;    &hearts;	|
|		|	88	|	[Merge Sorted Array](https://oj.leetcode.com/problems/merge-sorted-array/)	|	&hearts;	|
|		|	87	|	[Scramble String](https://oj.leetcode.com/problems/scramble-string/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./LinkedList/PartitionList.swift)	|	86	|	[Partition List](https://oj.leetcode.com/problems/partition-list/)	|	&hearts;    &hearts;	|
|		|	85	|	[Maximal Rectangle](https://oj.leetcode.com/problems/maximal-rectangle/)	|	&hearts;    &hearts;    &hearts;	|
|		|	84	|	[Largest Rectangle in Histogram](https://oj.leetcode.com/problems/largest-rectangle-in-histogram/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./LinkedList/RemoveDuplicatesFromSortedList.swift)	|	83	|	[Remove Duplicates from Sorted List](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-list/)	|	&hearts;	|
|	[Swift](./LinkedList/RemoveDuplicatesFromSortedListII.swift)	|	82	|	[Remove Duplicates from Sorted List II](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-list-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./Search/SearchInRotatedSortedArrayII.swift)	|	81	|	[Search in Rotated Sorted Array II](https://oj.leetcode.com/problems/search-in-rotated-sorted-array-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/RemoveDuplicatesFromSortedArrayII.swift)	|	80	|	[Remove Duplicates from Sorted Array II](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-array-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/WordSearch.swift)	|	79	|	[Word Search](https://oj.leetcode.com/problems/word-search/)	|	&hearts;    &hearts;	|
|	[Swfit](./DFS/Subsets.swift)	|	78	|	[Subsets](https://oj.leetcode.com/problems/subsets/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/combinations.swift)	|	77	|	[Combinations](https://oj.leetcode.com/problems/combinations/)	|	&hearts;    &hearts;	|
|		|	76	|	[Minimum Window Substring](https://oj.leetcode.com/problems/minimum-window-substring/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Sort/SortColors.swift)	|	75	|	[Sort Colors](https://oj.leetcode.com/problems/sort-colors/)	|	&hearts;    &hearts;	|
|		|	74	|	[Search a 2D Matrix](https://oj.leetcode.com/problems/search-a-2d-matrix/)	|	&hearts;    &hearts;	|
|		|	73	|	[Set Matrix Zeroes](https://oj.leetcode.com/problems/set-matrix-zeroes/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/EditDistance.swift)	|	72	|	[Edit Distance](https://oj.leetcode.com/problems/edit-distance/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Stack/SimplifyPath.swift)	|	71	|	[Simplify Path](https://oj.leetcode.com/problems/simplify-path/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/ClimbingStairs.swift)	|	70	|	[Climbing Stairs](https://oj.leetcode.com/problems/climbing-stairs/)	|	&hearts;	|
|	[Swift](./Search/Sqrtx.swift)	|	69	|	[Sqrt(x)](https://oj.leetcode.com/problems/sqrtx/)	|	&hearts;    &hearts;	|
|	[Swift](./String/TextJustification.swift)	|	68	|	[Text Justification](https://oj.leetcode.com/problems/text-justification/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Math/AddBinary.swift)	|	67	|	[Add Binary](https://oj.leetcode.com/problems/add-binary/)	|	&hearts;	|
|	[Swift](./Math/PlusOne.swift)	|	66	|	[Plus One](https://oj.leetcode.com/problems/plus-one/)	|	&hearts;	|
|		|	65	|	[Valid Number](https://oj.leetcode.com/problems/valid-number/)	|	&hearts;    &hearts;    &hearts;	|
|		|	64	|	[Minimum Path Sum](https://oj.leetcode.com/problems/minimum-path-sum/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/UniquePathsII.swift)	|	63	|	[Unique Paths II](https://oj.leetcode.com/problems/unique-paths-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/UniquePaths.swift)	|	62	|	[Unique Paths](https://oj.leetcode.com/problems/unique-paths/)	|	&hearts;    &hearts;	|
|	[Swift](./LinkedList/RotateList.swift)	|	61	|	[Rotate List](https://oj.leetcode.com/problems/rotate-list/)	|	&hearts;    &hearts;	|
|		|	60	|	[Permutation Sequence](https://oj.leetcode.com/problems/permutation-sequence/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/SpiralMatrixII.swift)	|	59	|	[Spiral Matrix II](https://oj.leetcode.com/problems/spiral-matrix-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./String/LengthLastWord.swift)	|	58	|	[Length of Last Word](https://oj.leetcode.com/problems/length-of-last-word/)	|	&hearts;	|
|		|	57	|	[Insert Interval](https://oj.leetcode.com/problems/insert-interval/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Sort/MergeIntervals.swift)	|	56	|	[Merge Intervals](https://oj.leetcode.com/problems/merge-intervals/)	|	&hearts;    &hearts;    &hearts;	|
|		|	55	|	[Jump Game](https://oj.leetcode.com/problems/jump-game/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/SpiralMatrix.swift)	|	54	|	[Spiral Matrix](https://oj.leetcode.com/problems/spiral-matrix/)	|	&hearts;    &hearts;	|
|	[Swift](./DP/MaximumSubarray.swift)	|	53	|	[Maximum Subarray](https://oj.leetcode.com/problems/maximum-subarray/)	|	&hearts;    &hearts;	|
|		|	52	|	[N-Queens II](https://oj.leetcode.com/problems/n-queens-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	51	|	[N-Queens](https://oj.leetcode.com/problems/n-queens/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Math/Pow.swift)	|	50	|	["Pow(x, n)"](https://oj.leetcode.com/problems/powx-n/)	|	&hearts;    &hearts;	|
|	[Swift](./String/GroupAnagrams.swift)	|	49	|	[Group Anagrams](https://oj.leetcode.com/problems/anagrams/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/RotateImage.swift)	|	48	|	[Rotate Image](https://oj.leetcode.com/problems/rotate-image/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/PermutationsII.swift)	|	47	|	[Permutations II](https://oj.leetcode.com/problems/permutations-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/Permutations.swift)	|	46	|	[Permutations](https://oj.leetcode.com/problems/permutations/)	|	&hearts;    &hearts;	|
|		|	45	|	[Jump Game II](https://oj.leetcode.com/problems/jump-game-ii/)	|	&hearts;    &hearts;    &hearts;	|
|		|	44	|	[Wildcard Matching](https://oj.leetcode.com/problems/wildcard-matching/)	|	&hearts;    &hearts;    &hearts;	|
|		|	43	|	[Multiply Strings](https://oj.leetcode.com/problems/multiply-strings/)	|	&hearts;    &hearts;	|
|	[Swift](./Math/TrappingRainWater.swift)	|	42	|	[Trapping Rain Water](https://oj.leetcode.com/problems/trapping-rain-water/)	|	&hearts;    &hearts;    &hearts;	|
|		|	41	|	[First Missing Positive](https://oj.leetcode.com/problems/first-missing-positive/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./DFS/combinationSumII.swiftc)	|	40	|	[Combination Sum II](https://oj.leetcode.com/problems/combination-sum-ii/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/CombinationSum.swift)	|	39	|	[Combination Sum](https://oj.leetcode.com/problems/combination-sum/)	|	&hearts;    &hearts;	|
|	[Swift](./String/CountAndSay.swift)	|	38	|	[Count and Say](https://oj.leetcode.com/problems/count-and-say/)	|	&hearts;	|
|		|	37	|	[Sudoku Solver](https://oj.leetcode.com/problems/sudoku-solver/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Array/ValidSudoku.swift)	|	36	|	[Valid Sudoku](https://oj.leetcode.com/problems/valid-sudoku/)	|	&hearts;	|
|	[Swift](./Search/SearchInsertPosition.swift)	|	35	|	[Search Insert Position](https://oj.leetcode.com/problems/search-insert-position/)	|	&hearts;    &hearts;	|
|	[Swift](./Search/SearchForARange.swift)	|	34	|	[Search for a Range](https://oj.leetcode.com/problems/search-for-a-range/)	|	&hearts;    &hearts;	|
|	[Swift](./Search/SearchInRotatedSortedArray.swift)	|	33	|	[Search in Rotated Sorted Array](https://oj.leetcode.com/problems/search-in-rotated-sorted-array/)	|	&hearts;    &hearts;    &hearts;	|
|		|	32	|	[Longest Valid Parentheses](https://oj.leetcode.com/problems/longest-valid-parentheses/)	|	&hearts;    &hearts;    &hearts;	|
|		|	31	|	[Next Permutation](https://oj.leetcode.com/problems/next-permutation/)	|	&hearts;    &hearts;	|
|		|	30	|	[Substring with Concatenation of All Words](https://oj.leetcode.com/problems/substring-with-concatenation-of-all-words/)	|	&hearts;    &hearts;    &hearts;	|
|		|	29	|	[Divide Two Integers](https://oj.leetcode.com/problems/divide-two-integers/)	|	&hearts;    &hearts;	|
|	[Swift](./String/StrStr.swift)	|	28	|	[Implement strStr()](https://oj.leetcode.com/problems/implement-strstr/)	|	&hearts;	|
|	[Swfit](./Array/RemoveElement.swift)	|	27	|	[Remove Element](https://oj.leetcode.com/problems/remove-element/)	|	&hearts;	|
|	[Swift](./Array/RemoveDuplicatesFromSortedArray.swift)	|	26	|	[Remove Duplicates from Sorted Array](https://oj.leetcode.com/problems/remove-duplicates-from-sorted-array/)	|	&hearts;	|
|		|	25	|	[Reverse Nodes in k-Group](https://oj.leetcode.com/problems/reverse-nodes-in-k-group/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./LinkedList/SwapNodesInPairs.swift)	|	24	|	[Swap Nodes in Pairs](https://oj.leetcode.com/problems/swap-nodes-in-pairs/)	|	&hearts;	|
|	[Swift](./LinkedList/MergeKSortedLists.swift)	|	23	|	[Merge k Sorted Lists](https://oj.leetcode.com/problems/merge-k-sorted-lists/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Math/GenerateParentheses.swift)	|	22	|	[Generate Parentheses](https://oj.leetcode.com/problems/generate-parentheses/)	|	&hearts;    &hearts;	|
|	[Swift](./LinkedList/MergeTwoSortedLists.swift)	|	21	|	[Merge Two Sorted Lists](https://oj.leetcode.com/problems/merge-two-sorted-lists/)	|	&hearts;	|
|	[Swift](./Stack/ValidParentheses.swift)	|	20	|	[Valid Parentheses](https://oj.leetcode.com/problems/valid-parentheses/)	|	&hearts;	|
|	[Swift](./LinkedList/RemoveNthFromEnd.swift)	|	19	|	[Remove Nth Node From End of List](https://oj.leetcode.com/problems/remove-nth-node-from-end-of-list/)	|	&hearts;	|
|	[Swift](./Array/FourSum.swift)	|	18	|	[4Sum](https://oj.leetcode.com/problems/4sum/)	|	&hearts;    &hearts;	|
|	[Swift](./DFS/LetterCombinationsPhoneNumber.swift)	|	17	|	[Letter Combinations of a Phone Number](https://oj.leetcode.com/problems/letter-combinations-of-a-phone-number/)	|	&hearts;    &hearts;	|
|		|	16	|	[3Sum Closest](https://oj.leetcode.com/problems/3sum-closest/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/ThreeSum.swift)	|	15	|	[3Sum](https://oj.leetcode.com/problems/3sum/)	|	&hearts;    &hearts;	|
|	[Swift](./String/LongestCommonPrefix.swift)	|	14	|	[Longest Common Prefix](https://oj.leetcode.com/problems/longest-common-prefix/)	|	&hearts;	|
|	[Swift](./Math/RomanToInteger.swift)	|	13	|	[Roman to Integer](https://oj.leetcode.com/problems/roman-to-integer/)	|	&hearts;	|
|		|	12	|	[Integer to Roman](https://oj.leetcode.com/problems/integer-to-roman/)	|	&hearts;    &hearts;	|
|		|	11	|	[Container With Most Water](https://oj.leetcode.com/problems/container-with-most-water/)	|	&hearts;    &hearts;	|
|	[Swift](./String/RegularExpressionMatching.swift)	|	10	|	[Regular Expression Matching](https://oj.leetcode.com/problems/regular-expression-matching/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./Math/PalindromeNumber.swift)	|	9	|	[Palindrome Number](https://oj.leetcode.com/problems/palindrome-number/)	|	&hearts;	|
|	[Swift](./Math/Atoi.swift)	|	8	|	[String to Integer (atoi)](https://oj.leetcode.com/problems/string-to-integer-atoi/)	|	&hearts;	|
|	[Swift](./Math/ReverseInteger.swift)	|	7	|	[Reverse Integer](https://oj.leetcode.com/problems/reverse-integer/)	|	&hearts;	|
|	[Swift](./String/ZigZagConversion.swift)	|	6	|	[ZigZag Conversion](https://oj.leetcode.com/problems/zigzag-conversion/)	|	&hearts;	|
|	[Swift](./DP/LongestPalindromicSubstring.swift)	|	5	|	[Longest Palindromic Substring](https://oj.leetcode.com/problems/longest-palindromic-substring/)	|	&hearts;    &hearts;	|
|	[Swift](./Search/MedianOfTwoSortedArrays.swift)	|	4	|	[Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays/)	|	&hearts;    &hearts;    &hearts;	|
|	[Swift](./String/LongestSubstringWithoutRepeatingCharacters.swift)	|	3	|	[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)	|	&hearts;    &hearts;	|
|	[Swift](./Math/AddTwoNumbers.swift)	|	2	|	[Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)	|	&hearts;    &hearts;	|
|	[Swift](./Array/TwoSum.swift)	|	1	|	[Two Sum](https://leetcode.com/problems/two-sum/)	|	&hearts;	|
