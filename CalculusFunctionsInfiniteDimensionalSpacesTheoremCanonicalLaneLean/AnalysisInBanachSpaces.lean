import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure BanachSpacePackage where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  complete : Prop
  completeTerm : complete

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  normedAddCommGroupClosed : B.normedAddCommGroup
  completeClosed : B.completeTerm

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.normedAddCommGroup ∧ B.complete

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.normedAddCommGroupClosed E.completeClosed

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse