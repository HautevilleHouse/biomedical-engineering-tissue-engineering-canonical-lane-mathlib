import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure TissueEngineeringAdmittedObject where
  scaffoldType : Type
  cellType : Type
  cultureCondition : Prop
  maturationGoal : Prop
  conclusion : maturationGoal

structure TissueEngineeringEndgameState where
  object : TissueEngineeringAdmittedObject

structure AdmissibleClass where
  object : TissueEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TissueEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TissueEngineeringWitnessClosed (O : TissueEngineeringAdmittedObject) : Prop :=
  O.maturationGoal

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse