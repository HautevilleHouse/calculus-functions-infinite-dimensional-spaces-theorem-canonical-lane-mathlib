import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpaces.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpaces

structure DirectMethodPackage (A : AdmissibleClass) where
  weakLowerSemicontinuity : Prop
  coercivity : Prop
  existenceOfMinimizer : Prop
  weakLowerSemicontinuityProof : weakLowerSemicontinuity
  coercivityProof : coercivity
  existenceOfMinimizerProof : existenceOfMinimizer

structure DirectMethodEvidence (A : AdmissibleClass) (P : DirectMethodPackage A) where
  weakLowerSemicontinuityClosed : P.weakLowerSemicontinuity
  coercivityClosed : P.coercivity
  existenceOfMinimizerClosed : P.existenceOfMinimizer

def DirectMethodClosed (A : AdmissibleClass) (P : DirectMethodPackage A) : Prop :=
  P.weakLowerSemicontinuity ∧ P.coercivity ∧ P.existenceOfMinimizer

theorem direct_method_closed_from_evidence (A : AdmissibleClass) (P : DirectMethodPackage A)
    (E : DirectMethodEvidence A P) : DirectMethodClosed A P :=
  And.intro E.weakLowerSemicontinuityClosed
    (And.intro E.coercivityClosed E.existenceOfMinimizerClosed)

end CalculusFunctionsInfiniteDimensionalSpaces
end HautevilleHouse