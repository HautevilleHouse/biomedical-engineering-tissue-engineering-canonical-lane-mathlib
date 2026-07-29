import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure TissueEngineeredConstruct where
  scaffoldMaterial : Type
  cellType : Type
  growthFactor : Type
  constructViability : Prop
  constructFunction : Prop
  viabilityClosed : constructViability
  functionClosed : constructFunction

def TissueEngineeringWitnessClosed (C : TissueEngineeredConstruct) : Prop :=
  C.constructViability ∧ C.constructFunction

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse