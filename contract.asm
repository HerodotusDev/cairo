%{ memory[ap + 0] = 0 <= memory[fp + -6] %}
jmp rel 7 if [ap + 0] != 0, ap++
[ap + 0] = [fp + -6] + 340282366920938463463374607431768211456, ap++
[ap + -1] = [[fp + -7] + 0]
jmp rel 106
[fp + -6] = [ap + 0] + 0, ap++
[ap + -1] = [[fp + -7] + 0]
[ap + 0] = [fp + -7] + 1, ap++
[fp + -3] = [ap + 0] + [fp + -4], ap++
jmp rel 4 if [ap + -1] != 0
jmp rel 10
[ap + 0] = [fp + -4] + 1, ap++
[ap + 0] = [fp + -3], ap++
[ap + 0] = 0, ap++
[ap + 0] = [[fp + -4] + 0], ap++
jmp rel 8
[ap + 0] = [fp + -4], ap++
[ap + 0] = [fp + -3], ap++
[ap + 0] = 1, ap++
[ap + 0] = 0, ap++
jmp rel 66 if [ap + -2] != 0
[ap + -3] = [ap + 0] + [ap + -4], ap++
jmp rel 4 if [ap + -1] != 0
jmp rel 16
%{ memory[ap + 0] = segments.add() %}
ap += 1
[ap + 0] = 7733229381460288120802334208475838166080759535023995805565484692595, ap++
[ap + -1] = [[ap + -2] + 0]
[ap + 0] = [ap + -9], ap++
[ap + 0] = [ap + -11], ap++
[ap + 0] = [fp + -5], ap++
[ap + 0] = 1, ap++
[ap + 0] = [ap + -6], ap++
[ap + 0] = [ap + -7] + 1, ap++
ret
call rel 74
[ap + 0] = [ap + -1] + 73, ap++
[ap + 0] = [[ap + -1] + 0], ap++
%{ memory[ap + 0] = 0 <= memory[ap + -12] %}
jmp rel 9 if [ap + 0] != 0, ap++
[ap + -13] = [ap + 0] + 0, ap++
[ap + 0] = [ap + -1] + 340282366920938463463374607431768211456, ap++
[ap + -1] = [[ap + -14] + 0]
jmp rel 18
[ap + -13] = [ap + 0] + 0, ap++
[ap + -1] = [[ap + -13] + 0]
%{ memory[ap + 0] = segments.add() %}
ap += 1
[ap + -9] = [[ap + -1] + 0]
[ap + 0] = [ap + -14] + 1, ap++
[ap + 0] = [ap + -3], ap++
[ap + 0] = [fp + -5], ap++
[ap + 0] = 0, ap++
[ap + 0] = [ap + -5], ap++
[ap + 0] = [ap + -6] + 1, ap++
ret
%{ memory[ap + 0] = segments.add() %}
ap += 1
[ap + 0] = 375233589013918064796019, ap++
[ap + -1] = [[ap + -2] + 0]
[ap + 0] = [ap + -16] + 1, ap++
[ap + 0] = [ap + -18], ap++
[ap + 0] = [fp + -5], ap++
[ap + 0] = 1, ap++
[ap + 0] = [ap + -6], ap++
[ap + 0] = [ap + -7] + 1, ap++
ret
%{ memory[ap + 0] = segments.add() %}
ap += 1
[ap + 0] = 485748461484230571791265682659113160264223489397539653310998840191492913, ap++
[ap + -1] = [[ap + -2] + 0]
[ap + 0] = [ap + -8], ap++
[ap + 0] = [ap + -10], ap++
[ap + 0] = [fp + -5], ap++
[ap + 0] = 1, ap++
[ap + 0] = [ap + -6], ap++
[ap + 0] = [ap + -7] + 1, ap++
ret
%{ memory[ap + 0] = segments.add() %}
ap += 1
[ap + 0] = 375233589013918064796019, ap++
[ap + -1] = [[ap + -2] + 0]
[ap + 0] = [fp + -7] + 1, ap++
[ap + 0] = [fp + -6], ap++
[ap + 0] = [fp + -5], ap++
[ap + 0] = 1, ap++
[ap + 0] = [ap + -6], ap++
[ap + 0] = [ap + -7] + 1, ap++
ret