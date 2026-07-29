import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.FunctionalAnalysis.Basic

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure SelectedBoundedLinearFunctionalsPackage (A : AdmissibleClass) where
  selectionExists : Prop
  boundednessProperty : Prop
  closureUnderWeakStar : Prop

structure SelectedBoundedLinearFunctionalsEvidence {A : AdmissibleClass} (P : SelectedBoundedLinearFunctionalsPackage A) where
  selectionExistsClosed : P.selectionExists
  boundednessPropertyClosed : P.boundednessProperty
  closureUnderWeakStarClosed : P.closureUnderWeakStar

def SelectedBoundedLinearFunctionalsClosed {A : AdmissibleClass} (P : SelectedBoundedLinearFunctionalsPackage A) : Prop :=
  P.selectionExists ∧ P.boundednessProperty ∧ P.closureUnderWeakStar

theorem selected_bounded_linear_functionals_closed_from_evidence
    {A : AdmissibleClass} (P : SelectedBoundedLinearFunctionalsPackage A)
    (E : SelectedBoundedLinearFunctionalsEvidence P) :
    SelectedBoundedLinearFunctionalsClosed P := by
  exact And.intro E.selectionExistsClosed (And.intro E.boundednessPropertyClosed E.closureUnderWeakStarClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse