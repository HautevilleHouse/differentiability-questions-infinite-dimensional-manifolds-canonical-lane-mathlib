import DifferentiabilityQuestionsInfiniteDimensionalManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

def ConstrainedDifferentiabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differentiability_endgame (A : AdmissibleClass) :
    ConstrainedDifferentiabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse