import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.TissueEngineeringObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure GrowthFactorTransportPackage (C : TissueEngineeredConstruct) where
  diffusionRate : Prop
  bindingKinetics : Prop
  degradationRate : Prop
  initialConcentration : Prop
  diffusionRateClosed : diffusionRate
  bindingKineticsClosed : bindingKinetics
  degradationRateClosed : degradationRate
  initialConcentrationClosed : initialConcentration

structure GrowthFactorTransportEvidence {C : TissueEngineeredConstruct} (P : GrowthFactorTransportPackage C) where
  diffusionRateClosed : P.diffusionRate
  bindingKineticsClosed : P.bindingKinetics
  degradationRateClosed : P.degradationRate
  initialConcentrationClosed : P.initialConcentration

def GrowthFactorTransportClosed {C : TissueEngineeredConstruct} (P : GrowthFactorTransportPackage C) : Prop :=
  P.diffusionRate ∧ P.bindingKinetics ∧ P.degradationRate ∧ P.initialConcentration

theorem growth_factor_transport_closed_from_evidence {C : TissueEngineeredConstruct} (P : GrowthFactorTransportPackage C) (E : GrowthFactorTransportEvidence P) : GrowthFactorTransportClosed P :=
  And.intro E.diffusionRateClosed (And.intro E.bindingKineticsClosed (And.intro E.degradationRateClosed E.initialConcentrationClosed))

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse