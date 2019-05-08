(*Ejercicio 1*)
Theorem asoc_suma : forall n m p:nat, (n+m)+p = n+(m+p).
Proof.
intros.
induction n.
-trivial.
-simpl. rewrite IHn. reflexivity.
Qed.

(*Ejercicio 2*)
Lemma distr_mult_y_suma : forall n m p:nat, n*(m+p) = n*m + n*p.
Proof.
intros.
induction n.
- trivial.
Admitted.

(*Ejercicio 3*)
Theorem menor_igual_cero : forall n:nat, 0 <= n.
Proof.
intros.
induction n.
-constructor.
-constructor. trivial.
Qed.

Require Import List.

Notation "x :: l" := (cons x l) (at level 60, right associativity).
Notation "[]" := nil.
Notation "[ x , .. , y ]" := (cons x .. (cons y nil) .. ).

Variables A : Type.

Fixpoint elem (z:A) (l: list A) :=
  match l with
    | nil => False
    | (x::xs) => x = z \/ elem z xs
  end.

(*Ejercicio 4*
Theorem theorem_elem : forall (a:A) (l:list A), elem a (a::l).
Proof.
intros.
induction a.
constructor.
intuition.
Qed.
*)
(*Ejercicio 5*)
Theorem theorem_elem2 : forall a:A, ~ elem a nil.
Admitted.

(*Ejercicio 6*)
Theorem theorem_elem3 : forall (a b:A) (l:list A), elem b l -> elem b (a::l).
Admitted.

(*Ejercicio 7*)
Lemma nil_or_not : forall l:list A, l = [] \/ l <> [].
Admitted.

(*Ejercicio 8*)
Theorem split : forall l:list A, l <> [] -> exists x:A, exists l1 l2: list A, l = l1 ++ x::l2.
Proof.
intros.
induction l.
-contradiction.
-exists a, [], l. simpl. reflexivity.
Qed.

(*Ejercicio 9*)
Lemma equal_lists : forall (a:A) (xs ys:list A), a::xs = a::ys <-> xs = ys.
Admitted.

Variable p : A -> bool.

(*Ejercicio 10*)
Lemma diff : forall x y, p x = true -> p y = false -> x <> y.
Admitted.

Inductive bit: Type := 
  | zero:bit
  | one:bit.

Definition bin := list bit.

Check bit_ind.
Print bin.

(*Ejercicio 11*
Fixpoint increment_one (b:bin):bin :=
AQUI VA SU CÓDIGO
*)

(*Ejercicio 12*
Fixpoint to_binary (n:nat):bin :=
AQUI VA SU CÓDIGO
*)