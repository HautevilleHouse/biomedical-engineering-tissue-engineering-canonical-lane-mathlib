import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure AdmittedObject where
  scaffoldType : String
  cellType : String
  growthFactors : List String
  conclusion : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse