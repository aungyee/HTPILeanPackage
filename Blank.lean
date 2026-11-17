import HTPILib.HTPIDefs
namespace HTPI

theorem extremely_easy (P : Prop) (h : P) : P := h

theorem very_easy
    (P Q : Prop) (h1 : P → Q) (h2 : P) : Q := h1 h2

theorem easy (P Q R : Prop) (h1 : P → Q)
    (h2 : Q → R) (h3 : P) : R := h2 (h1 h3)

theorem two_imp (P Q R : Prop)
    (h1 : P → Q) (h2 : Q → ¬R) : R → ¬P := by
  contrapos
  assume h3 : P
  show ¬R from h2 (h1 h3)
  done
