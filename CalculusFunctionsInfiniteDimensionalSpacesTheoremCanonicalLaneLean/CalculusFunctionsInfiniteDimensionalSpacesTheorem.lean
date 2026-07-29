import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.AnalysisInBanachSpaces
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DifferentialCalculusAndChainRule

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B : BanachSpacePackage := A.banachSpacePackage
  BanachSpaceClosed B ∧ FrechetDerivativeClosed (A.frechetDerivativePackage B) ∧ ChainRuleClosed (A.chainRulePackage (A.frechetDerivativePackage B) (A.frechetDerivativePackage B))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  refine ⟨?_, ?_, ?_⟩
  · exact A.banachSpaceClosed
  · exact A.frechetDerivativeClosed (A.banachSpacePackage)
  · exact A.chainRuleClosed (A.frechetDerivativePackage (A.banachSpacePackage)) (A.frechetDerivativePackage (A.banachSpacePackage))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCalculusFunctionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem calculus_functions_infinite_dimensional_spaces_endgame (A : AdmissibleClass) :
    ConstrainedCalculusFunctionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse