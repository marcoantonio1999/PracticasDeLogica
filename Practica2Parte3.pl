 



/*Recibe tres parámetros: M, N, L
La regla será satisfactoria cuando se cumpla la propiedad de que L contiene el
rango entre M y N.
range (M, N, L):-*/
range(M,N,[]) :- M > N.
range (M,N,[M|Rs]) :- M <= N, M1 is M+1, range(M1,N,Rs).


/*Recibe tres parámetros: L, N, A.
La regla será satisfactoria cuando se roten los primeros N elementos de la lista
L.
La lista resultante se guardará en la variable A.
rotate (L, N, A):-*/

/*Recibe dos parámetros: L, Lc
La regla será satisfactoria cuando se cumpla la propiedad de que Lc tiene la
compresión de los elementos de la lista L.
compress (L, Lc):-*/
compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Zs) :- compress([X|Xs],Zs).
compress([X,Y|Ys],[X|Zs]) :- X \= Y, compress([Y|Ys],Zs).

/*Recibe dos parámetros: L, LA
La regla será satisfactoria cuando se cumpla la propiedad de que LA tiene el
agrupamiento de los elementos de la lista L
c_by_group (L, LA):-*/

/*Recibe dos parámetros: L, LAC
La regla será satisfactoria cuando se cumpla la propiedad de que LAC tiene el
agrupamiento compreso de los elementos de la lista L
e12 (L, LAC) :-*/

/*Recibe tres parámetros: G,N,D
La regla será satisfactoria cuando se cumpla la propiedad de que D es el grado
del nodo N en la gráfica G.
degree(G,N,D).*/
degree(XS, N, D) :- dL(XS,N,L1) , dR(XS,N,L2) , D is L1 + L2.

dL( [], _, 0).
dL( [(X,_)|XS] ,X ,N) :- dL(XS,X,M), N is M + 1.
dL( [(X,_)|XS] ,Y ,N) :-  dL(XS,Y,N),Y\=X.

dR( [], _, 0).
dR( [(_,X)|XS], X, N) :- dR(XS,X,M), N is M + 1.
dR( [(_,X)|XS], Y, N) :- dR(XS,Y,N), Y\=X.

/*Recibe tres parámetros: G,N,NL
La regla será satisfactoria cuando se cumpla la propiedad de que NL es la lista
de vecinos del nodo N en la gráfica G.
neighbors (G,N,NL) :-*/
neighbors([],N,[]).
neighbors([(X,Y)|XS],X,[Y|R]) :- neighbors(XS,X,R),X\=Y.
neighbors([(Y,X)|XS],X,[Y|R]) :- neighbors(XS,X,R),X\=Y.
neighbors([(Y,Z)|XS],X,L) :- neighbors(XS,X,L),X\=Y,X\=Z.

/*Recibe cuatro parámetros: G, O, D, P
La regla será satisfactoria cuando se cumpla la propiedad de que P es el
camino que existe del nodo origen (O) al nodo destino (D) en la gráfica G.
path (G, O, D, P):- */
path(XS,E1,E2,N) :- walk(XS,E1,E2,N,XS,0).

walk([], E1, E2, N, XS,M) :- M > 0, path(XS,E1,E2,N).
walk([(X,Y)|_],X,Y,[X,Y],_,_).
walk([(X,Y)|_],Y,X,[Y,X],_,_).
walk([(X,Y)|XS] ,E1 ,E2 ,[X|N] ,YS ,I) :- E1 = X, member(X,N), walk(XS,Y,E2,N,YS,J), J is I+1.
walk([(X,Y)|XS] ,E1 ,E2 ,[Y|N] ,YS ,I) :- E1 = Y, member(Y,N), walk(XS,X,E2,N,YS,J), J is I+1.
walk([X|XS],E1,E2,N,YS,I) :- walk(XS,E1,E2,N,YS,I).

/*Recibe dos parámetros: T, P
La regla será satisfactoria cuando se cumpla la propiedad de que P es el
recorrido en pre-orden en el árbol T.
preorder (T, P) :-*/
preOrder(nil,[]).
preOrder(t(X,L,R), XS) :- preOrder(L, L1), preOrder(R, R1), concatena([X|L1],R1,XS).

/*Recibe dos parámetros: T, N
La regla será satisfactoria cuando se cumpla la propiedad de que N es el
número de hojas del árbol T.
num_leaves (T, N) :-*/
num_leaves(nil,0).
num_leaves(t(_,nil,nil),1):-!.
num_leaves(t(_,X,Y),R):- num_leaves(X,R1), num_leaves(Y,R2), R is R1 + R2, X\=nil, Y\=nil.

/*Recibe dos parámetros: T, L
La regla será satisfactoria cuando se cumpla la propiedad de que L es la lista
de hojas del árbol T.
list_leaves(T, L) :-*/


/*Recibe un parámetro: T
La regla será satisfactoria cuando se cumpla la propiedad de que el árbol T es
simétrico.
is_symetric (T) :-*/
