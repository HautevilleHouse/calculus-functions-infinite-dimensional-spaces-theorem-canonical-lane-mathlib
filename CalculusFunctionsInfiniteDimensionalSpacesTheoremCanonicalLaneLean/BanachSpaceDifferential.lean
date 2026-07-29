import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure FréchetDifferentialPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  completeDomain : CompleteSpace domain
  completeCodomain : CompleteSpace codomain
  f : domain → codomain
  differentiableAt : domain → Prop
  derivative : domain → (domain →L[ℝ] codomain)
  derivativeIsBoundedLinear : ∀ x, differentiableAt x → (derivative x).isBoundedLinear

structure FréchetDifferentialEvidence (P : FréchetDifferentialPackage) where
  derivativeIsBoundedLinearClosed : ∀ x, P.differentiableAt x → (P.derivative x).isBoundedLinear

def FréchetDifferentialClosed (P : FréchetDifferentialPackage) : Prop :=
  ∀ x, P.differentiableAt x → (P.derivative x).isBoundedLinear

theorem fréchet_differential_closed_from_evidence (P : FréchetDifferentialPackage)
    (E : FréchetDifferentialEvidence P) : FréchetDifferentialClosed P :=
  E.derivativeIsBoundedLinearClosed

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse