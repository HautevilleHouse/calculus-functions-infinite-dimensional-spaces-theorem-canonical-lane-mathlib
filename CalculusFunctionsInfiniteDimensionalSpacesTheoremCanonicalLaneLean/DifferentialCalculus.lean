import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DifferentialCalculusPackage where
  domain : Type u
  codomain : Type v
  differentiableStructure : Prop
  chainRuleHolds : Prop
  inverseFunctionTheorem : Prop
  chainRuleHoldsTerm : chainRuleHolds
  inverseFunctionTheoremTerm : inverseFunctionTheorem

structure DifferentialCalculusEvidence (D : DifferentialCalculusPackage) where
  chainRuleHoldsClosed : D.chainRuleHolds
  inverseFunctionTheoremClosed : D.inverseFunctionTheorem

def DifferentialCalculusClosed (D : DifferentialCalculusPackage) : Prop :=
  D.differentiableStructure ∧ D.chainRuleHolds ∧ D.inverseFunctionTheorem

theorem differential_calculus_closed_from_evidence (D : DifferentialCalculusPackage)
    (E : DifferentialCalculusEvidence D) : DifferentialCalculusClosed D := by
  exact And.intro D.differentiableStructure (And.intro E.chainRuleHoldsClosed E.inverseFunctionTheoremClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
