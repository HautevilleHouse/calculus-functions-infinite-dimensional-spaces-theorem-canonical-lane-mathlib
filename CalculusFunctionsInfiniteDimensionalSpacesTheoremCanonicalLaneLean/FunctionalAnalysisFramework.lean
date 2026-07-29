import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure InfiniteDimensionalSpacePackage where
  spaceType : Type u
  norm : spaceType → ℝ
  completeness : Prop
  separability : Prop
  completenessTerm : completeness
  separabilityTerm : separability

structure FunctionalAnalysisEvidence (S : InfiniteDimensionalSpacePackage) where
  normedStructureClosed : S.completeness ∧ S.separability
  normedStructureClosedTerm : normedStructureClosed

def FunctionalAnalysisClosed (S : InfiniteDimensionalSpacePackage) : Prop :=
  S.completeness ∧ S.separability

theorem functional_analysis_closed_from_evidence (S : InfiniteDimensionalSpacePackage)
    (E : FunctionalAnalysisEvidence S) : FunctionalAnalysisClosed S := by
  exact E.normedStructureClosedTerm

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
