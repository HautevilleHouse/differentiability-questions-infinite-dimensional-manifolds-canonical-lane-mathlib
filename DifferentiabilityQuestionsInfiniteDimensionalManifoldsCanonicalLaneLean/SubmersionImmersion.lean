import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean

structure SubmersionPackage {M N : InfiniteDimensionalManifoldPackage}
    (F : FrechetDerivativePackage M) (G : FrechetDerivativePackage N) where
  map : M.baseManifold.carrier → N.baseManifold.carrier
  derivativeSurjective : Prop
  regularValueProperty : Prop
  submersionLocalForm : Prop

structure ImmersionPackage {M N : InfiniteDimensionalManifoldPackage}
    (F : FrechetDerivativePackage M) (G : FrechetDerivativePackage N) where
  map : M.baseManifold.carrier → N.baseManifold.carrier
  derivativeInjective : Prop
  embeddingProperty : Prop
  immersionLocalForm : Prop

structure SubmersionEvidence {M N : InfiniteDimensionalManifoldPackage}
    {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (S : SubmersionPackage M N F G) where
  derivativeSurjectiveClosed : S.derivativeSurjective
  regularValuePropertyClosed : S.regularValueProperty
  submersionLocalFormClosed : S.submersionLocalForm

structure ImmersionEvidence {M N : InfiniteDimensionalManifoldPackage}
    {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (I : ImmersionPackage M N F G) where
  derivativeInjectiveClosed : I.derivativeInjective
  embeddingPropertyClosed : I.embeddingProperty
  immersionLocalFormClosed : I.immersionLocalForm

def SubmersionClosed {M N : InfiniteDimensionalManifoldPackage}
    {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (S : SubmersionPackage M N F G) : Prop :=
  S.derivativeSurjective ∧ S.regularValueProperty ∧ S.submersionLocalForm

def ImmersionClosed {M N : InfiniteDimensionalManifoldPackage}
    {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (I : ImmersionPackage M N F G) : Prop :=
  I.derivativeInjective ∧ I.embeddingProperty ∧ I.immersionLocalForm

theorem submersion_closed_from_evidence
    {M N : InfiniteDimensionalManifoldPackage} {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (S : SubmersionPackage M N F G) (E : SubmersionEvidence S) : SubmersionClosed S := by
  exact And.intro E.derivativeSurjectiveClosed
    (And.intro E.regularValuePropertyClosed E.submersionLocalFormClosed)

theorem immersion_closed_from_evidence
    {M N : InfiniteDimensionalManifoldPackage} {F : FrechetDerivativePackage M} {G : FrechetDerivativePackage N}
    (I : ImmersionPackage M N F G) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.derivativeInjectiveClosed
    (And.intro E.embeddingPropertyClosed E.immersionLocalFormClosed)

end DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
