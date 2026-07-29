import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DifferentialStructurePackage where
  banachSpace : Type u
  norm : banachSpace → ℝ
  isBanachSpace : Prop
  frechetDerivative : (banachSpace → banachSpace) → banachSpace → (banachSpace →L[ℝ] banachSpace)
  chainRuleHolds : Prop
  productRuleHolds : Prop
  inverseFunctionTheorem : Prop
  implicitFunctionTheorem : Prop

structure DifferentialStructureEvidence (D : DifferentialStructurePackage) where
  isBanachSpaceClosed : D.isBanachSpace
  chainRuleHoldsClosed : D.chainRuleHolds
  productRuleHoldsClosed : D.productRuleHolds
  inverseFunctionTheoremClosed : D.inverseFunctionTheorem
  implicitFunctionTheoremClosed : D.implicitFunctionTheorem

def DifferentialStructureClosed (D : DifferentialStructurePackage) : Prop :=
  D.isBanachSpace ∧ D.chainRuleHolds ∧ D.productRuleHolds ∧ D.inverseFunctionTheorem ∧ D.implicitFunctionTheorem

theorem differential_structure_closed_from_evidence (D : DifferentialStructurePackage)
    (E : DifferentialStructureEvidence D) : DifferentialStructureClosed D := by
  exact And.intro E.isBanachSpaceClosed (And.intro E.chainRuleHoldsClosed (And.intro E.productRuleHoldsClosed (And.intro E.inverseFunctionTheoremClosed E.implicitFunctionTheoremClosed)))

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse