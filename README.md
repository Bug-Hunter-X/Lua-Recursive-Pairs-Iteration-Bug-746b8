# Lua Recursive Pairs Iteration Bug

This repository demonstrates a potential bug in Lua's `pairs` iterator when used recursively on deeply nested tables.  Under certain conditions, the iterator may skip elements, leading to incomplete or incorrect processing of the table.

The `bug.lua` file contains code that reproduces the issue.  The `bugSolution.lua` file provides a corrected approach using a different iteration method to avoid the problem.

## Bug Description

The issue stems from the behavior of `pairs` when modifying a table during iteration. While technically not a bug in the Lua interpreter itself, it can lead to unforeseen consequences when nested iterations are involved. Modifying a table's structure during iteration may cause `pairs` to lose track of elements, resulting in skipped iterations.

## Solution

The solution involves iterating the table in a way that doesn't alter its structure during the iteration. The solution file provides an alternative that ensures all elements are processed correctly.