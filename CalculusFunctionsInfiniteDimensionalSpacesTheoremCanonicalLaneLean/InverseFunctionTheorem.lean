import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure InverseFunctionTheoremPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  completeDomain : CompleteSpace domain
  completeCodomain : CompleteSpace codomain
  f : domain → codomain
  a : domain
  fDifferentiableAtA : Prop
  derivativeAtA : domain →L[ℝ] codomain
  derivativeInvertible : Prop
  localInverseExists : Prop
  localInverseDifferentiable : Prop

def InverseFunctionTheoremClosed (P : InverseFunctionTheoremPackage) : Prop :=
  P.fDifferentiableAtA ∧ P.derivativeInvertible → P.localInverseExists ∧ P.localInverseDifferentiable

theorem inverse_function_theorem_closed (P : InverseFunctionTheoremPackage) (h : P.fDifferentiableAtA ∧ P.derivativeInvertible) :
    InverseFunctionTheoremClosed P :=
  by
    refine And.intro ?_ ?_
    · exact P.localInverseExists
    · exact P.localInverseDifferentiable

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse