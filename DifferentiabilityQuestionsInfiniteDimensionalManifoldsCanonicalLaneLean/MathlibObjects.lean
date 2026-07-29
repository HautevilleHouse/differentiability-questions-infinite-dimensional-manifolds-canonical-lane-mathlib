import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

structure DifferentiabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  manifoldModel : Type
  chartAtlas : Type
  smoothStructure : Prop

def DifferentiabilityAdmittedObject where
  space : DifferentiabilitySpace
  infiniteDimensional : Prop
  frechetDifferentiable : Prop
  frechetDifferentiability : Prop
  differentiabilityConclusion : frechetDifferentiability

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse