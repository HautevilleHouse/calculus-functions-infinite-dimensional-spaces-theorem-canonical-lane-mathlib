import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Basic

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure EquivalenceOfNormsPackage {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U} where
  normEquivalenceExists : Prop
  normEquivalenceIsBijective : Prop
  normEquivalenceIsBounded : Prop

structure EquivalenceOfNormsEvidence {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U}
    (P : EquivalenceOfNormsPackage I) where
  normEquivalenceExistsClosed : P.normEquivalenceExists
  normEquivalenceIsBijectiveClosed : P.normEquivalenceIsBijective
  normEquivalenceIsBoundedClosed : P.normEquivalenceIsBounded

def EquivalenceOfNormsClosed {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U}
    (P : EquivalenceOfNormsPackage I) : Prop :=
  P.normEquivalenceExists ∧ P.normEquivalenceIsBijective ∧ P.normEquivalenceIsBounded

theorem equivalence_of_norms_closed_from_evidence
    {A : AdmissibleClass} {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S} {I : InfiniteDimensionalityPackage U}
    (P : EquivalenceOfNormsPackage I) (E : EquivalenceOfNormsEvidence P) :
    EquivalenceOfNormsClosed P := by
  exact And.intro E.normEquivalenceExistsClosed (And.intro E.normEquivalenceIsBijectiveClosed E.normEquivalenceIsBoundedClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse