import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure ScaffoldDegradationPackage (A : AdmissibleClass) where
  degradationRate : ℝ
  porosityChange : ℝ → ℝ
  mechanicalStrengthLoss : ℝ → ℝ
  degradationModelValid : Prop
  porosityChangeClosed : degradationRate > 0 → porosityChange = λ t => 1 / (1 + degradationRate * t)
  mechanicalStrengthLossClosed : mechanicalStrengthLoss = λ t => 1 - degradationRate * t / (1 + degradationRate * t)

def ScaffoldDegradationClosed {A : AdmissibleClass} (S : ScaffoldDegradationPackage A) : Prop :=
  S.degradationModelValid ∧ S.porosityChange = λ t => 1 / (1 + S.degradationRate * t) ∧ S.mechanicalStrengthLoss = λ t => 1 - S.degradationRate * t / (1 + S.degradationRate * t)

theorem scaffold_degradation_closed_from_evidence {A : AdmissibleClass} (S : ScaffoldDegradationPackage A) (h : ScaffoldDegradationClosed S) : ScaffoldDegradationClosed S := h

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse