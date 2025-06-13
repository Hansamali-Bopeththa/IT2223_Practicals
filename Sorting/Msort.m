function sortedArr = mergeSort(arr)
if length(arr) <= 1
    sortedArr = arr;
    return ;

end

mid = floor(length(arr)/2);   %floor use to round the number
lefthalf = mergeSort(arr(1:mid));
righthalf = mergeSort(arr(mid+1:end));

sortedArr = merge(lefthalf, righthalf);
end

function mergedArr = merge(left, right)
i = 1; j = 1;
mergedArr = [];

while i <=length(left) && j <= length(right)
    if left(i) < right(j)
        mergedArr = [mergedArr, left(i)];
        i = i + 1;
    else
        mergedArr = [mergedArr, right(j)];
        j = j + 1;
    end
end
mergedArr = [mergedArr, left(i:end), right(j:end)];
end

arr = [8, 3, 5, 1, 7, 2];
sortedArr = mergeSort(arr);
disp('Sorted array: ');
disp(sortedArr);