import CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.FrechetDifferentiability

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure VariationalPrinciplePackage {X : InfiniteDimensionalSpace} (F : FrechetDifferentiabilityPackage X X) where
  functional : X.carrier → ℝ
  actionMinimizerExists : Prop
  eulerLagrangeHolds : Prop
  palaisSmaleCondition : Prop

def VariationalPrincipleClosed {X : InfiniteDimensionalSpace} {F : FrechetDifferentiabilityPackage X X} (V : VariationalPrinciplePackage F) : Prop :=
  V.actionMinimizerExists ∧ V.eulerLagrangeHolds ∧ V.palaisSmaleCondition

-- Evidence and closure theorem follow pattern

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
