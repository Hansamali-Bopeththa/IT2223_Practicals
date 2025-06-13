array = 1:1000;
target = input('Enter the target number to search: ');

tic; 
found = false;
for i = 1:length(array)
    if array(i) == target
        found = true;
        break;
    end
end


linearSearchTime = toc;
sortedArr = sort(array);

tic;
found  = binarySearch(sortedArr, target);
binarySearchTime = toc;

fprintf('Linear Search Time: %6f seconds\n', linearSearchTime);
fprintf('Binary search Time: %6f seconds\n', binarySearchTime);

function result = binarySearch(array, target)
left = 1;
right = length(array);
result = false;


while left <= right
        mid = floor((left + right) / 2);
        if array(mid) == target
            result = true;
            return;
        elseif array(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end
end



