import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.TissueEngineeringObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure ScaffoldDegradationPackage (C : TissueEngineeredConstruct) where
  degradationRate : Prop
  mechanicalIntegrity : Prop
  degradationProductToxicity : Prop
  degradationRateClosed : degradationRate
  mechanicalIntegrityClosed : mechanicalIntegrity
  degradationProductToxicityClosed : degradationProductToxicity

structure ScaffoldDegradationEvidence {C : TissueEngineeredConstruct} (P : ScaffoldDegradationPackage C) where
  degradationRateClosed : P.degradationRate
  mechanicalIntegrityClosed : P.mechanicalIntegrity
  degradationProductToxicityClosed : P.degradationProductToxicity

def ScaffoldDegradationClosed {C : TissueEngineeredConstruct} (P : ScaffoldDegradationPackage C) : Prop :=
  P.degradationRate ∧ P.mechanicalIntegrity ∧ P.degradationProductToxicity

theorem scaffold_degradation_closed_from_evidence {C : TissueEngineeredConstruct} (P : ScaffoldDegradationPackage C) (E : ScaffoldDegradationEvidence P) : ScaffoldDegradationClosed P :=
  And.intro E.degradationRateClosed (And.intro E.mechanicalIntegrityClosed E.degradationProductToxicityClosed)

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse