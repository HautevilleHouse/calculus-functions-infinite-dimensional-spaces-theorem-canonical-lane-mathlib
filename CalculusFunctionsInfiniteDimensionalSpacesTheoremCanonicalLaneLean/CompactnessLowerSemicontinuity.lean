import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpaces.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpaces

structure CompactnessLowerSemicontinuityPackage (A : AdmissibleClass) where
  weakCompactness : Prop
  weakLowerSemicontinuity : Prop
  weakCompactnessProof : weakCompactness
  weakLowerSemicontinuityProof : weakLowerSemicontinuity

structure CompactnessLowerSemicontinuityEvidence (A : AdmissibleClass)
    (P : CompactnessLowerSemicontinuityPackage A) where
  weakCompactnessClosed : P.weakCompactness
  weakLowerSemicontinuityClosed : P.weakLowerSemicontinuity

def CompactnessLowerSemicontinuityClosed (A : AdmissibleClass)
    (P : CompactnessLowerSemicontinuityPackage A) : Prop :=
  P.weakCompactness ∧ P.weakLowerSemicontinuity

theorem compactness_lower_semicontinuity_closed_from_evidence (A : AdmissibleClass)
    (P : CompactnessLowerSemicontinuityPackage A)
    (E : CompactnessLowerSemicontinuityEvidence A P) :
    CompactnessLowerSemicontinuityClosed A P :=
  And.intro E.weakCompactnessClosed E.weakLowerSemicontinuityClosed

end CalculusFunctionsInfiniteDimensionalSpaces
end HautevilleHouse