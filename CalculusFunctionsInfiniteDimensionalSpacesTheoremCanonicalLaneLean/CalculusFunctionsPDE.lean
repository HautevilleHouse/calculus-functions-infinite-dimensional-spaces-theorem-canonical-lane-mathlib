import CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DifferentialStructure

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure CalculusFunctionsPDEPackage (D : DifferentialStructurePackage) where
  timeParameter : Type u
  stateSpace : D.banachSpace
  evolutionEquation : (stateSpace → stateSpace) → Prop
  initialCondition : stateSpace
  solutionExists : Prop
  regularity : Prop

structure CalculusFunctionsPDEEvidence {D : DifferentialStructurePackage}
    (P : CalculusFunctionsPDEPackage D) where
  evolutionEquationClosed : P.evolutionEquation (λ x => x)
  initialConditionClosed : P.initialCondition = P.initialCondition
  solutionExistsClosed : P.solutionExists
  regularityClosed : P.regularity

def CalculusFunctionsPDEClosed {D : DifferentialStructurePackage}
    (P : CalculusFunctionsPDEPackage D) : Prop :=
  P.evolutionEquation (λ x => x) ∧ P.solutionExists ∧ P.regularity

theorem calculus_functions_pde_closed_from_evidence {D : DifferentialStructurePackage}
    (P : CalculusFunctionsPDEPackage D) (E : CalculusFunctionsPDEEvidence P) :
    CalculusFunctionsPDEClosed P := by
  exact And.intro E.evolutionEquationClosed (And.intro E.solutionExistsClosed E.regularityClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse