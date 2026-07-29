import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

structure FrechetDerivativePackage where
  sourceSpace : DifferentiabilitySpace
  targetSpace : DifferentiabilitySpace
  derivativeAtPoint : sourceSpace.carrier → (sourceSpace.carrier → targetSpace.carrier)
  linearity : Prop
  boundedness : Prop
  chainRule : Prop

structure FrechetDerivativeEvidence (F : FrechetDerivativePackage) where
  linearityClosed : F.linearity
  boundednessClosed : F.boundedness
  chainRuleClosed : F.chainRule

def FrechetDerivativeClosed (F : FrechetDerivativePackage) : Prop :=
  F.linearity ∧ F.boundedness ∧ F.chainRule

theorem frechet_derivative_closed_from_evidence (F : FrechetDerivativePackage)
    (E : FrechetDerivativeEvidence F) : FrechetDerivativeClosed F := by
  exact And.intro E.linearityClosed (And.intro E.boundednessClosed E.chainRuleClosed)

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse