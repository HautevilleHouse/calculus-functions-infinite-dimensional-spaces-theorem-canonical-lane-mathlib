import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure SmoothFunctionsPackage where
  source : Type u
  target : Type v
  smoothStructure : Prop
  smoothComposition : Prop
  exponentialLaw : Prop
  smoothCompositionTerm : smoothComposition
  exponentialLawTerm : exponentialLaw

structure SmoothFunctionsEvidence (S : SmoothFunctionsPackage) where
  smoothCompositionClosed : S.smoothComposition
  exponentialLawClosed : S.exponentialLaw

def SmoothFunctionsClosed (S : SmoothFunctionsPackage) : Prop :=
  S.smoothStructure ∧ S.smoothComposition ∧ S.exponentialLaw

theorem smooth_functions_closed_from_evidence (S : SmoothFunctionsPackage)
    (E : SmoothFunctionsEvidence S) : SmoothFunctionsClosed S := by
  exact And.intro S.smoothStructure (And.intro E.smoothCompositionClosed E.exponentialLawClosed)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
