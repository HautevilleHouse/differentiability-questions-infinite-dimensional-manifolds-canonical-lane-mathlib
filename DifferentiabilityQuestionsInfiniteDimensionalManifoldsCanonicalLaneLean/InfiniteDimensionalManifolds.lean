import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean

structure InfiniteDimensionalManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  chartAtlas : Type
  smoothCompatible : Prop
  infiniteDimensional : Prop

structure ChartTransition where
  source : InfiniteDimensionalManifold
  target : InfiniteDimensionalManifold
  map : source.carrier → target.carrier
  smooth : Prop

structure InfiniteDimensionalManifoldPackage where
  baseManifold : InfiniteDimensionalManifold
  tangentBundle : Type
  cotangentBundle : Type
  smoothStructureDefined : Prop
  infiniteDimensionalModel : Prop

structure InfiniteDimensionalManifoldEvidence (M : InfiniteDimensionalManifoldPackage) where
  smoothStructureDefinedClosed : M.smoothStructureDefined
  infiniteDimensionalModelClosed : M.infiniteDimensionalModel

def InfiniteDimensionalManifoldClosed (M : InfiniteDimensionalManifoldPackage) : Prop :=
  M.smoothStructureDefined ∧ M.infiniteDimensionalModel

theorem infinite_dimensional_manifold_closed_from_evidence
    (M : InfiniteDimensionalManifoldPackage) (E : InfiniteDimensionalManifoldEvidence M) :
    InfiniteDimensionalManifoldClosed M := by
  exact And.intro E.smoothStructureDefinedClosed E.infiniteDimensionalModelClosed

end DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
