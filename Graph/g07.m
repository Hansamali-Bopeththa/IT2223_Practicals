s = [1 2 3 4 5 6 7 8 9 10 1 1 6 2 7 3 8 4 9 5 3 4 5 1 2];
t = [11 11 11 11 11 11 11 11 11 11 10 6 2 7 3 8 4 9 5 10 4 5 1 2 3];
G = graph(s, t);
h = plot(G, 'LineWidth', 2.5);
highlight(h, 1:11, 'NodeColor','blue');
highlight(h, 11, 1:10, 'EdgeColor', 'magenta');
highlight(h, [1 1 2 3 4], [2 5 3 4 5], 'EdgeColor', 'green');
highlight(h, [1 6 2 7 3 8 4 9 5 10], [6 2 7 3 8 4 9 5 10 1], 'EdgeColor', 'red');