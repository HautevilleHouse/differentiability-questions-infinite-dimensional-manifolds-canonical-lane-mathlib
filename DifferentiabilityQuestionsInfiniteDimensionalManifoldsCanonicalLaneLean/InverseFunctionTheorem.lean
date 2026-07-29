import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

structure InverseFunctionTheoremPackage (F : FrechetDerivativePackage) where
  point : F.sourceSpace.carrier
  derivativeInvertible : Prop
  localDiffeomorphism : Prop
  inverseDifferentiable : Prop

structure InverseFunctionTheoremEvidence {F : FrechetDerivativePackage} (I : InverseFunctionTheoremPackage F) where
  derivativeInvertibleClosed : I.derivativeInvertible
  localDiffeomorphismClosed : I.localDiffeomorphism
  inverseDifferentiableClosed : I.inverseDifferentiable

def InverseFunctionTheoremClosed {F : FrechetDerivativePackage} (I : InverseFunctionTheoremPackage F) : Prop :=
  I.derivativeInvertible ∧ I.localDiffeomorphism ∧ I.inverseDifferentiable

theorem inverse_function_theorem_closed_from_evidence {F : FrechetDerivativePackage}
    (I : InverseFunctionTheoremPackage F) (E : InverseFunctionTheoremEvidence I) : InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeInvertibleClosed (And.intro E.localDiffeomorphismClosed E.inverseDifferentiableClosed)

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse