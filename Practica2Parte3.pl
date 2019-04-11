 



% Recibe tres parámetros: M, N, L
%La regla será satisfactoria cuando se cumpla la propiedad de que L contiene el
%rango entre M y N.

range (M, N, L):-


%Recibe tres parámetros: L, N, A.
%La regla será satisfactoria cuando se roten los primeros N elementos de la lista
%L.
%La lista resultante se guardará en la variable A.

rotate (L, N, A):-

%Recibe dos parámetros: L, Lc
%La regla será satisfactoria cuando se cumpla la propiedad de que Lc tiene la
%compresión de los elementos de la lista L.

compress (L, Lc):-

%Recibe dos parámetros: L, LA
%La regla será satisfactoria cuando se cumpla la propiedad de que LA tiene el
%agrupamiento de los elementos de la lista L

c_by_group (L, LA):-
%Recibe dos parámetros: L, LAC
%La regla será satisfactoria cuando se cumpla la propiedad de que LAC tiene el
%agrupamiento compreso de los elementos de la lista L

e12 (L, LAC) :-
%Recibe tres parámetros: G,N,D
%La regla será satisfactoria cuando se cumpla la propiedad de que D es el grado
%del nodo N en la gráfica G.

degree (G,N,D) :-
%Recibe tres parámetros: G,N,NL
%La regla será satisfactoria cuando se cumpla la propiedad de que NL es la lista
%de vecinos del nodo N en la gráfica G.

neighbors (G,N,NL) :-
%Recibe cuatro parámetros: G, O, D, P
%La regla será satisfactoria cuando se cumpla la propiedad de que P es el
%camino que existe del nodo origen (O) al nodo destino (D) en la gráfica G.

path (G, O, D, P):- 

%Recibe dos parámetros: T, P
%La regla será satisfactoria cuando se cumpla la propiedad de que P es el
%recorrido en pre-orden en el árbol T.

preorder (T, P) :-
%Recibe dos parámetros: T, N
%La regla será satisfactoria cuando se cumpla la propiedad de que N es el
%número de hojas del árbol T.

num_leaves (T, N) :-
%Recibe dos parámetros: T, L
%La regla será satisfactoria cuando se cumpla la propiedad de que L es la lista
%de hojas del árbol T.

list_leaves(T, L) :-


%Recibe un parámetro: T
%La regla será satisfactoria cuando se cumpla la propiedad de que el árbol T es
%simétrico.

is_symetric (T) :-