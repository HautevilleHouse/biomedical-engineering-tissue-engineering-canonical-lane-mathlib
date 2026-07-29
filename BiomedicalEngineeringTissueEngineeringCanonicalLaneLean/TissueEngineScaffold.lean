import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure TissueEngineScaffoldPackage {C : CompartmentModelPackage} {D : DiagnosticInferencePackage C} {S : SurvivalAnalysisPackage C D} where
  scaffoldPorosityValid : Prop
  degradationRateControlled : Prop
  cellAdhesionSupported : Prop
  mechanicalPropertiesMatch : Prop
  biocompatibilityConfirmed : Prop

structure TissueEngineScaffoldEvidence {C : CompartmentModelPackage} {D : DiagnosticInferencePackage C} {S : SurvivalAnalysisPackage C D} (T : TissueEngineScaffoldPackage C D S) where
  scaffoldPorosityValidClosed : T.scaffoldPorosityValid
  degradationRateControlledClosed : T.degradationRateControlled
  cellAdhesionSupportedClosed : T.cellAdhesionSupported
  mechanicalPropertiesMatchClosed : T.mechanicalPropertiesMatch
  biocompatibilityConfirmedClosed : T.biocompatibilityConfirmed

def TissueEngineScaffoldClosed {C : CompartmentModelPackage} {D : DiagnosticInferencePackage C} {S : SurvivalAnalysisPackage C D} (T : TissueEngineScaffoldPackage C D S) : Prop :=
  T.scaffoldPorosityValid ∧ T.degradationRateControlled ∧
  T.cellAdhesionSupported ∧ T.mechanicalPropertiesMatch ∧
  T.biocompatibilityConfirmed

theorem tissue_engine_scaffold_closed_from_evidence {C : CompartmentModelPackage} {D : DiagnosticInferencePackage C} {S : SurvivalAnalysisPackage C D} (T : TissueEngineScaffoldPackage C D S) (E : TissueEngineScaffoldEvidence T) :
    TissueEngineScaffoldClosed T := by
  exact And.intro E.scaffoldPorosityValidClosed
    (And.intro E.degradationRateControlledClosed
      (And.intro E.cellAdhesionSupportedClosed
        (And.intro E.mechanicalPropertiesMatchClosed E.biocompatibilityConfirmedClosed)))

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse