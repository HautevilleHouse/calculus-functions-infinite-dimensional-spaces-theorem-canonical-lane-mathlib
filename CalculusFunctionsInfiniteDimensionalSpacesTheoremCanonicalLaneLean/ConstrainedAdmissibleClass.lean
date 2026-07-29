import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure BanachAdmittedObject where
  space : Type u
  normedSpace : NormedAddCommGroup space
  completeSpace : CompleteSpace space
  infiniteDimensional : Prop
  c1Function : space → ℝ
  derivativeBoundedLinear : ∀ x, DifferentiableAt ℝ c1Function x →
    (deriv ℝ c1Function x).IsBoundedLinear
  conclusion : derivativeBoundedLinear

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse