import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : ℝ → ℝ
  survivalFunction : ℝ → ℝ
  censoringIndicator : Prop
  proportionalHazards : Prop
  kaplanMeierEstimate : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringIndicatorClosed : S.censoringIndicator
  proportionalHazardsClosed : S.proportionalHazards
  kaplanMeierEstimateClosed : S.kaplanMeierEstimate

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringIndicator ∧ S.proportionalHazards ∧ S.kaplanMeierEstimate

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.censoringIndicatorClosed (And.intro E.proportionalHazardsClosed E.kaplanMeierEstimateClosed)

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse