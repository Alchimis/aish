% Факты о вопросах (длина в словах)
question_length(short) :- between(1, 10).
question_length(medium) :- between(11, 30).
question_length(long) :- between(31, 10000).

% Факты о времени генерации ответа (в мс)
response_time(fast) :- between(0, 1000).
response_time(medium) :- between(1001, 3000).
response_time(slow) :- between(3001, 100000).

% Вероятностные распределения

% Вероятность корректного ответа в зависимости от длины вопроса
correct_answer_prob(short, 0.9).
correct_answer_prob(medium, 0.7).
correct_answer_prob(long, 0.4).


% parent(Child, Parent).
parent(correct_answer, question).
parent(hallucination, question).
parent(outdated_fact, question).
parent(lower_temperature, hallucination).
parent(fact_check, hallucination).
parent(fact_check, outdated_fact).
parent(renew_context, outdated_fact).

p(correct_answer, 0.7).
p(hallucination, 0.2).
p(outdated_fact, 0.1).  


% Меры для hallucination (выдуманный факт)
p(temperature_reduction, [hallucination, outdated], 0.95).

% 2. Только галлюцинация (без устаревания)
p(temperature_reduction, [hallucination, not(outdated)], 0.85).

% 3. Только устаревший (без галлюцинации)
p(temperature_reduction, [not(hallucination), outdated], 0.3).

% 4. Ни галлюцинации, ни устаревания (корректный ответ)
p(temperature_reduction, [not(hallucination), not(outdated)], 0.001).




p(fact_checking, [hallucination], 0.9).          % Проверка фактов с P=0.9

% Меры для outdated_fact (устаревший факт)
p(fact_checking, [outdated_fact], 0.9).               % Проверка фактов с P=0.9
p(context_update, [outdated_fact], 0.7).              % Обновление контекста с P=0.7

% Успешное исправление ответа (корректный после мер)
p(fixed_answer, [correct], 1.0).                 % Корректный остается корректным
p(fixed_answer, [hallucination, temperature_reduction, fact_checking], 0.95). % P успеха
p(fixed_answer, [outdated_fact, fact_checking, context_update], 0.9).               % P успеха

% Если меры не применены (ошибка сохраняется)
p(fixed_answer, [hallucination, not(temperature_reduction), not(fact_checking)], 0.0).
p(fixed_answer, [outdated_fact, not(fact_checking), not(context_update)], 0.0).

% Частичное применение мер (пример для hallucination)
p(fixed_answer, [hallucination, temperature_reduction, not(fact_checking)], 0.3).
p(fixed_answer, [hallucination, not(temperature_reduction), fact_checking], 0.6).

% Частичное применение мер для outdated_fact
p(fixed_answer, [outdated_fact, fact_checking, not(context_update)], 0.5).
p(fixed_answer, [outdated_fact, not(fact_checking), context_update], 0.2).



prob([X|Xs],Cond,P):-!,                             %Вероятность конъюнкции
    prob(X,Cond,Px),
    prob(Xs,[X|Cond],PRest),
    P is Px*PRest.
prob([],_,1):-!.                                    %Пустая конъюнкция
prob(X,Cond,1):-member(X,Cond),!.                   %Из условия Cond следует X
prob(X,Cond,0):-member(not(X),Cond),!.              % Из условия Cond следует, что X- ложно
prob(not(X),Cond,P):-!, prob(X,Cond,P0),P is 1-P0.  % Вероятность отрицания
% Применить закон Байеса, если условие распространяется на дочерние узлы X
prob(X,Cond0,P):-
    delete(Y,Cond0,Cond),
    predecessor(X,Y),!,                             % Y-дочерний X
    prob(X,Cond,Px),
    prob(Y,[X|Cond],PyGivenX),
    prob(Y,Cond,Py),
    P is Px * PyGivenX / Py.                        % Py > 0
%случаи, в которых условие не распространяется на дочерние узлы
prob(X,Cond,P):-p(X,P),!.                           % X- корневой узел, его вероятность задана
prob(X,Cond,P):-!,
    findall(( Condi,Pi),p(X,Condi,Pi),CPlist),      %Условия, которые распространяются на род узлы
    sum_probs(CPlist,Cond,P).
    %sum_probs (CondProbs? Cond, WeightedSum
    %    CondProbs - список условий и соответствующих вероятностей
    %    WeightedSum- взвешенная сумма вероятностей
sum_probs([],_,0).
sum_probs([(Cond1,P1)|CondsProbs],Cond,P):-
    prob( Cond1,Cond,PC1),
    sum_probs(CondsProbs,Cond,PRest),
    P is P1*PC1+PRest.
predecessor(X,not(Y)):-!,                           % Переменная X, к которой применена операция отрицания
    predecessor(X,Y).
predecessor(X, Y):-parent(X,Y).
predecessor(X, Z):-parent(X,Y),
    predecessor(Y,Z).
member(X,[X|_]).
member(X,[_|L]):-member(X,L).
delete(X,[X|L],L).
delete(X,[Y|L],[Y|L2]):-delete(X,L,L2).
