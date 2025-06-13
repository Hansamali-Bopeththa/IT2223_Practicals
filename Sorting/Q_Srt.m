function sortedArr = quickSort(arr)
if length(arr) <= 1
    sortedArr = arr;
    return;
end

pivot = arr(1);
left = arr (arr < pivot);
right = arr (arr > pivot);
middle = arr( arr == pivot);

sortedArr = [quickSort(left), middle, quickSort(right)];
end

arr = [8, 3, 5, 1, 7, 2];
sortedArr = quickSort(arr);
disp('Sorted array: ');
disp(sortedArr);