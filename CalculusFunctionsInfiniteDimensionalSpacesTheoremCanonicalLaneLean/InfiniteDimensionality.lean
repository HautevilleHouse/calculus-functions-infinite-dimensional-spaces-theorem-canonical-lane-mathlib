import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Dimension

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure InfiniteDimensionalityPackage {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S} where
  infiniteDimensionExists : Prop
  algebraicBasisInfinite : Prop
  topologicalComplementExists : Prop

structure InfiniteDimensionalityEvidence {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    (P : InfiniteDimensionalityPackage U) where
  infiniteDimensionExistsClosed : P.infiniteDimensionExists
  algebraicBasisInfiniteClosed : P.algebraicBasisInfinite
  topologicalComplementExistsClosed : P.topologicalComplementExists

def InfiniteDimensionalityClosed {A : AdmissibleClass}
    {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    (P : InfiniteDimensionalityPackage U) : Prop :=
  P.infiniteDimensionExists ∧ P.algebraicBasisInfinite ∧ P.topologicalComplementExists

theorem infinite_dimensionality_closed_from_evidence
    {A : AdmissibleClass} {S : SelectedBoundedLinearFunctionalsPackage A}
    {U : UnitBallCompactnessPackage S}
    (P : InfiniteDimensionalityPackage U) (E : InfiniteDimensionalityEvidence P) :
    InfiniteDimensionalityClosed P := by
  exact And.intro E.infiniteDimensionExistsClosed (And.intro E.algebraicBasisInfiniteClosed E.topologicalComplementExistsClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse