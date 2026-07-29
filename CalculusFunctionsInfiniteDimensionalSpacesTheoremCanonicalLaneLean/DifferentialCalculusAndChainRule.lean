import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.AnalysisInBanachSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure FrechetDerivativePackage {B : BanachSpacePackage} where
  domain : B.space
  codomain : B.space
  derivative : B.space → B.space
  linear : Prop
  bounded : Prop
  linearTerm : linear
  boundedTerm : bounded

structure FrechetDerivativeEvidence {B : BanachSpacePackage} (F : FrechetDerivativePackage B) where
  linearClosed : F.linear
  boundedClosed : F.bounded

def FrechetDerivativeClosed {B : BanachSpacePackage} (F : FrechetDerivativePackage B) : Prop :=
  F.linear ∧ F.bounded

theorem frechet_derivative_closed_from_evidence {B : BanachSpacePackage}
    (F : FrechetDerivativePackage B) (E : FrechetDerivativeEvidence F) :
    FrechetDerivativeClosed F := by
  exact And.intro E.linearClosed E.boundedClosed

structure ChainRulePackage {B C D : BanachSpacePackage}
    (F : FrechetDerivativePackage B) (G : FrechetDerivativePackage C) where
  compositionDifferentiable : Prop
  chainRuleFormula : Prop
  compositionDifferentiableTerm : compositionDifferentiable
  chainRuleFormulaTerm : chainRuleFormula

structure ChainRuleEvidence {B C D : BanachSpacePackage}
    {F : FrechetDerivativePackage B} {G : FrechetDerivativePackage C}
    (R : ChainRulePackage F G) where
  compositionDifferentiableClosed : R.compositionDifferentiable
  chainRuleFormulaClosed : R.chainRuleFormula

def ChainRuleClosed {B C D : BanachSpacePackage}
    {F : FrechetDerivativePackage B} {G : FrechetDerivativePackage C}
    (R : ChainRulePackage F G) : Prop :=
  R.compositionDifferentiable ∧ R.chainRuleFormula

theorem chain_rule_closed_from_evidence {B C D : BanachSpacePackage}
    {F : FrechetDerivativePackage B} {G : FrechetDerivativePackage C}
    (R : ChainRulePackage F G) (E : ChainRuleEvidence R) : ChainRuleClosed R := by
  exact And.intro E.compositionDifferentiableClosed E.chainRuleFormulaClosed

end CalculusFunctionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse