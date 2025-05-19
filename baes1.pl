parent(full_context, correct_answer).
parent(partial_context, incorect_answer).
parent(invalid_context, incorect_answer).
parent(incorect_answer, lower_temperature).
parent(incorect_answer, refresh_context).
parent(incorect_answer, fact_check).



p(full_context, 0.7).
p(partial_context, 0.2).
p(invalid_context, 0.1).
p(correct_answer, full_context, 0.95).
p(incorect_answer, full_context, 0.05).
p(correct_answer, partial_context, 0.3).
p(incorect_answer, partial_context, 0.7).
p(correct_answer, invalid_context, 0.01).
p(incorect_answer, invalid_context, 0.99).
p(lower_temperature, incorect_answer, 0.6). 
p(refresh_context, incorect_answer, 0.8).
p(fact_check, incorect_answer, 0.5).


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