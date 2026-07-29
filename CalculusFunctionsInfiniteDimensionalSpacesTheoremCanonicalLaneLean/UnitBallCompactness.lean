import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Compactness.Basic

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure UnitBallCompactnessPackage {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A} where
  unitBallClosed : Prop
  unitBallTotallyBounded : Prop
  unitBallComplete : Prop

structure UnitBallCompactnessEvidence {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    (P : UnitBallCompactnessPackage S) where
  unitBallClosedClosed : P.unitBallClosed
  unitBallTotallyBoundedClosed : P.unitBallTotallyBounded
  unitBallCompleteClosed : P.unitBallComplete

def UnitBallCompactnessClosed {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    (P : UnitBallCompactnessPackage S) : Prop :=
  P.unitBallClosed ∧ P.unitBallTotallyBounded ∧ P.unitBallComplete

theorem unit_ball_compactness_closed_from_evidence
    {A : AdmissibleClass} {S : SelectedBoundedLinearFunctionalsPackage A}
    (P : UnitBallCompactnessPackage S) (E : UnitBallCompactnessEvidence P) :
    UnitBallCompactnessClosed P := by
  exact And.intro E.unitBallClosedClosed (And.intro E.unitBallTotallyBoundedClosed E.unitBallCompleteClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse