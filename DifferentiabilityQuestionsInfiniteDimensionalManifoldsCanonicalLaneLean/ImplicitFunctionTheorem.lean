import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.InverseFunctionTheorem

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

structure ImplicitFunctionTheoremPackage (F : FrechetDerivativePackage) where
  mapping : F.sourceSpace.carrier → F.targetSpace.carrier
  point : F.sourceSpace.carrier
  surjectiveDerivative : Prop
  localSubmersion : Prop
  implicitFunctionDifferentiable : Prop

structure ImplicitFunctionTheoremEvidence {F : FrechetDerivativePackage} (I : ImplicitFunctionTheoremPackage F) where
  surjectiveDerivativeClosed : I.surjectiveDerivative
  localSubmersionClosed : I.localSubmersion
  implicitFunctionDifferentiableClosed : I.implicitFunctionDifferentiable

def ImplicitFunctionTheoremClosed {F : FrechetDerivativePackage} (I : ImplicitFunctionTheoremPackage F) : Prop :=
  I.surjectiveDerivative ∧ I.localSubmersion ∧ I.implicitFunctionDifferentiable

theorem implicit_function_theorem_closed_from_evidence {F : FrechetDerivativePackage}
    (I : ImplicitFunctionTheoremPackage F) (E : ImplicitFunctionTheoremEvidence I) : ImplicitFunctionTheoremClosed I := by
  exact And.intro E.surjectiveDerivativeClosed (And.intro E.localSubmersionClosed E.implicitFunctionDifferentiableClosed)

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse