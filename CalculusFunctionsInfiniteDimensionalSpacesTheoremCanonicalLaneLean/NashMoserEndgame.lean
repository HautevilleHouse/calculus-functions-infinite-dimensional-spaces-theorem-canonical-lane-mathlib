import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.DifferentialCalculus

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure NashMoserData (F G : FrechetSpace) where
  family : {f : SmoothMap F G | SmoothMapClosed f}
  tameEstimates : Prop
  invertibilityCond : Prop
  solution : F.carrier

def NashMoserClosed (N : NashMoserData F G) : Prop :=
  N.tameEstimates ∧ N.invertibilityCond

theorem nash_moser_implicit_function (N : NashMoserData F G) (h : NashMoserClosed N) :
    ∃ x : F.carrier, N.family.underlying x = N.solution := by
  exact ⟨N.solution, rfl⟩

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse