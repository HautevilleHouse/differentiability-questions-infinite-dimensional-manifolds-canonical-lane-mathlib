import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiabilityQuestionsInfiniteDimensionalManifolds

structure AdmissibleClass where
  object : DifferentiabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DifferentiabilityQuestionsInfiniteDimensionalManifolds
end HautevilleHouse