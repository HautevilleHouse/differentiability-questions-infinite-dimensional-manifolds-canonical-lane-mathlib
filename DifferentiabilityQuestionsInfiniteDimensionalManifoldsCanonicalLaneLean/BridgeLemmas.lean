import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.frechetDifferentiability

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.differentiabilityConclusion

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse