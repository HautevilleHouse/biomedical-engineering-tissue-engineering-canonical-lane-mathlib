import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TissueEngineering

structure ScaffoldDegradationPackage where
  degradationRate : Prop
  polymerType : Prop
  porosity : Prop
  mechanicalStrength : Prop

structure ScaffoldDegradationEvidence (S : ScaffoldDegradationPackage) where
  degradationRateClosed : S.degradationRate
  polymerTypeClosed : S.polymerType
  porosityClosed : S.porosity
  mechanicalStrengthClosed : S.mechanicalStrength

def ScaffoldDegradationClosed (S : ScaffoldDegradationPackage) : Prop :=
  S.degradationRate ∧ S.polymerType ∧ S.porosity ∧ S.mechanicalStrength

theorem scaffold_degradation_closed_from_evidence
    (S : ScaffoldDegradationPackage) (E : ScaffoldDegradationEvidence S) :
    ScaffoldDegradationClosed S := by
  exact And.intro E.degradationRateClosed
    (And.intro E.polymerTypeClosed
      (And.intro E.porosityClosed E.mechanicalStrengthClosed))

end TissueEngineering
end HautevilleHouse