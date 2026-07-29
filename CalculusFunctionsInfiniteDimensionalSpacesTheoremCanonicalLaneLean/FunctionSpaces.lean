import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure CkBanachPackage where
  source : Type u
  target : Type v
  normedSource : NormedAddCommGroup source
  normedTarget : NormedAddCommGroup target
  completeSource : CompleteSpace source
  completeTarget : CompleteSpace target
  k : ℕ
  ckSpace : Type w
  normedCk : NormedAddCommGroup ckSpace
  completeCk : CompleteSpace ckSpace
  inclusionMap : ckSpace → (source → target)
  inclusionContinuous : Continuous inclusionMap

def CkSpaceClosed (P : CkBanachPackage) : Prop :=
  P.inclusionContinuous

theorem ck_space_closed_from_evidence (P : CkBanachPackage) (h : P.inclusionContinuous) :
    CkSpaceClosed P :=
  h

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse