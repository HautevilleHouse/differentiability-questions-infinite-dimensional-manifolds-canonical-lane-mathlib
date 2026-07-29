import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.InfiniteDimensionalManifolds

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean

structure TangentBundlePackage (M : InfiniteDimensionalManifoldPackage) where
  totalSpace : Type
  projectionMap : totalSpace → M.baseManifold.carrier
  vectorBundleStructure : Prop
  smoothLocalTrivialization : Prop
  transitionFunctionsSmooth : Prop

structure TangentBundleEvidence {M : InfiniteDimensionalManifoldPackage}
    (T : TangentBundlePackage M) where
  vectorBundleStructureClosed : T.vectorBundleStructure
  smoothLocalTrivializationClosed : T.smoothLocalTrivialization
  transitionFunctionsSmoothClosed : T.transitionFunctionsSmooth

def TangentBundleClosed {M : InfiniteDimensionalManifoldPackage}
    (T : TangentBundlePackage M) : Prop :=
  T.vectorBundleStructure ∧ T.smoothLocalTrivialization ∧ T.transitionFunctionsSmooth

theorem tangent_bundle_closed_from_evidence
    {M : InfiniteDimensionalManifoldPackage} (T : TangentBundlePackage M)
    (E : TangentBundleEvidence T) : TangentBundleClosed T := by
  exact And.intro E.vectorBundleStructureClosed
    (And.intro E.smoothLocalTrivializationClosed E.transitionFunctionsSmoothClosed)

end DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
