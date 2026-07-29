import CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure FrechetDifferentiabilityPackage (X : InfiniteDimensionalSpace) (Y : InfiniteDimensionalSpace) where
  domain : X.carrier → Prop
  codomain : Y.carrier → Prop
  derivativeExistence : Prop
  linearity : Prop
  boundedness : Prop

def FrechetDifferentiabilityClosed {X Y : InfiniteDimensionalSpace} (F : FrechetDifferentiabilityPackage X Y) : Prop :=
  F.derivativeExistence ∧ F.linearity ∧ F.boundedness

-- Evidence structure and closure theorem would follow pattern from Poincaré

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
