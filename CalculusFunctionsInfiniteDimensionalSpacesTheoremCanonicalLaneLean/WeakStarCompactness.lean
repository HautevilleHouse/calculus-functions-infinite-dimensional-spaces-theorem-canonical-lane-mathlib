import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.WeakStar.Basic

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure WeakStarCompactnessPackage {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U}
    {E : EquivalenceOfNormsPackage I} where
  weakStarClosedUnitBall : Prop
  weakStarCompactUnitBall : Prop
  weakStarSequentialCompactness : Prop

structure WeakStarCompactnessEvidence {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U}
    {E : EquivalenceOfNormsPackage I}
    (P : WeakStarCompactnessPackage E) where
  weakStarClosedUnitBallClosed : P.weakStarClosedUnitBall
  weakStarCompactUnitBallClosed : P.weakStarCompactUnitBall
  weakStarSequentialCompactnessClosed : P.weakStarSequentialCompactness

def WeakStarCompactnessClosed {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    {I : InfiniteDimensionalityPackage U}
    {E : EquivalenceOfNormsPackage I}
    (P : WeakStarCompactnessPackage E) : Prop :=
  P.weakStarClosedUnitBall ∧ P.weakStarCompactUnitBall ∧ P.weakStarSequentialCompactness

theorem weak_star_compactness_closed_from_evidence
    {A : AdmissibleClass} {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S} {I : InfiniteDimensionalityPackage U}
    {E : EquivalenceOfNormsPackage I}
    (P : WeakStarCompactnessPackage E) (Ev : WeakStarCompactnessEvidence P) :
    WeakStarCompactnessClosed P := by
  exact And.intro Ev.weakStarClosedUnitBallClosed (And.intro Ev.weakStarCompactUnitBallClosed Ev.weakStarSequentialCompactnessClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse