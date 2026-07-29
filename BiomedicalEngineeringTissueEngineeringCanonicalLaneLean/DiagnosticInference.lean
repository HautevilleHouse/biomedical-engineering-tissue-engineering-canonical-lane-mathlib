import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : ℝ
  specificity : ℝ
  prevalence : ℝ
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ
  likelihoodRatio : ℝ
  diagnosticAccuracy : Prop
  bayesianConsistency : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  diagnosticAccuracyClosed : D.diagnosticAccuracy
  bayesianConsistencyClosed : D.bayesianConsistency

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.diagnosticAccuracy ∧ D.bayesianConsistency

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.diagnosticAccuracyClosed E.bayesianConsistencyClosed

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse