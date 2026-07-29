import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.TissueEngineeringObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure TissueOxygenationPackage (C : TissueEngineeredConstruct) where
  oxygenDiffusivity : Prop
  consumptionRate : Prop
  partialPressureGradient : Prop
  oxygenDiffusivityClosed : oxygenDiffusivity
  consumptionRateClosed : consumptionRate
  partialPressureGradientClosed : partialPressureGradient

structure TissueOxygenationEvidence {C : TissueEngineeredConstruct} (P : TissueOxygenationPackage C) where
  oxygenDiffusivityClosed : P.oxygenDiffusivity
  consumptionRateClosed : P.consumptionRate
  partialPressureGradientClosed : P.partialPressureGradient

def TissueOxygenationClosed {C : TissueEngineeredConstruct} (P : TissueOxygenationPackage C) : Prop :=
  P.oxygenDiffusivity ∧ P.consumptionRate ∧ P.partialPressureGradient

theorem tissue_oxygenation_closed_from_evidence {C : TissueEngineeredConstruct} (P : TissueOxygenationPackage C) (E : TissueOxygenationEvidence P) : TissueOxygenationClosed P :=
  And.intro E.oxygenDiffusivityClosed (And.intro E.consumptionRateClosed E.partialPressureGradientClosed)

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse