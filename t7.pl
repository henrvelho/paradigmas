% EXERCICIO 1
% Explique o que está definido no predicado abaixo e quais serão as saídas
% das consultas. Responda esta questão em forma de comentário.

pred([],[]).
pred([H|T],[H1|T1]) :- H1 is H + 1, pred(T,T1).

% saidas: 
% 1 ?- pred ([8,9],L).
% L = [9, 10].

% 2 ?- pred([1,2,3],[2,L]).
% false.

% 3 ?- pred([1,2],[2,X]).
% X = 3.

% 4 ?- pred([1,2,3],[a,b,c]).
% false.

% ele esta somando o primeiro elemnto da lista e dps colocar em uma nova lista T1


% EXERCICIO 2
% Defina um predicado ziplus(L1,L2,L3), de forma que cada elemento da
% lista L3 seja a soma dos elementos de L1 e L2 na mesma posição.
% Exemplo:
% ziplus([
% 1,2,3],[5,5,5],L).
% L = [6, 7, 8].

ziplus([],[],[0]).
ziplus([H|T],[H1|T1],[H2|T2]) :- H2 is H + H1, ziplus(T,T1,T2).


% EXERCICIO 3
% Defina um predicado countdown(N,L), de forma que L seja uma lista com
% números de N a 0. Exemplo:
% countdown(
% 8,L).
% L = [8, 7, 6, 5, 4, 3, 2, 1, 0]
% countdown(
% 0,L).
% L= [0]

countdown(0,[0]).
countdown(N,[N|T1]) :- H1 is N - 1, countdown(H1,T1).


% EXERCICIO 4
% Defina um predicado potencias(N,L), de forma que L seja uma lista com
% as N primeiras potências de 2, sendo a primeira 2^0 e assim por diante,
%conforme o exemplo abaixo:
% potencias(
% 5,L).
% L = [1, 2, 4, 8, 16]
% potencias(
% 0,L).
% L = []

% potencias(0,[0]).
% potencias(N,[M|T1]) 

% EXERCICIO 5
% Defina um predicado positivos(L1,L2), de forma que L2 seja uma lista
% só com os elementos positivos de L1, conforme o exemplo abaixo:
% positivos([
% 1,0,1,
% 2,9],
% L).
% L = [1, 9]

positivos([],[]).
positivos([H1|T1],[H2|T2]) :- H1 > 0, H2 is H1, positivos(T1,T2).
positivos([_|T1],L) :- positivos(T1,L).


% EXERCICIO 6
% Considere que L1 e L2 sejam permutações de uma lista de elementos
% distintos, sem repetições. Sabendo disso, defina um predicado
% mesmaPosicao(A,L1,L2) para verificar se um elemento A está na mesma
% posição nas listas L1 e L2. Exemplo de uso:
% mesmaPosicao(
% c,[a,b,c,d,e],[e,d,c,b,a]).
% true
% mesmaPosicao(
% b,[a,b,c,d,e],[e,d,c,b,a]).
% false

mesmaPosicao(_,[],[]) :- false.
mesmaPosicao(A,[H1|_],[H2|_]) :- A = H1, H1 = H2, true.
mesmaPosicao(A,[_|T1],[_|T2]) :- mesmaPosicao(A,T1,T2).
