# Assignment 4

Build a Number List Analyzer in React using useMemo and useCallback.

Requirements

1. Number Input

	-> User can type a number and add it to a list.

2. List Display

	-> Show all added numbers in a list.

3. Calculations (useMemo)

	-> Display:

        -> The sum of all numbers.
        -> The largest number.
        -> Use useMemo so these values are only recalculated when the list changes.

4. Remove Function (useCallback)

    -> Each number should have a “Remove” button.

    -> Use useCallback for the remove handler so it’s not recreated unnecessarily when rendering the list.