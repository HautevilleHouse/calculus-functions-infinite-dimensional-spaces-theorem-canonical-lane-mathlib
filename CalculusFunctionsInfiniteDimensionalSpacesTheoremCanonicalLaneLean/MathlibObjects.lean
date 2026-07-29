import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure InfiniteDimensionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  vectorSpaceStructure : AddCommGroup carrier
  topologicalVectorSpace : TopologicalVectorSpace carrier

structure InfiniteDimensionalSpaceAdmittedObject where
  space : InfiniteDimensionalSpace
  completeMetric : Prop
  separable : Prop
  infiniteDimensional : Prop
  conclusionUnitBallCompact : conclusionUnitBallCompact
  conclusion : conclusionUnitBallCompact

structure CalculusFunctionsEndgameState where
  object : InfiniteDimensionalSpaceAdmittedObject

def InfiniteDimensionalSpaceWitnessClosed (O : InfiniteDimensionalSpaceAdmittedObject) : Prop :=
  O.conclusionUnitBallCompact

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse