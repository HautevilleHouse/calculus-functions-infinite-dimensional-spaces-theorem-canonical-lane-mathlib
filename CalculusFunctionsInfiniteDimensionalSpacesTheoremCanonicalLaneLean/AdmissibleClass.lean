import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : InfiniteDimensionalSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InfiniteDimensionalSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse