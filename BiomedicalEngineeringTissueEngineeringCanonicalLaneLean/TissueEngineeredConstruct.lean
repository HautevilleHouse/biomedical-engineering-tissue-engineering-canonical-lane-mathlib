import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure TissueEngineeredConstructPackage (S : ScaffoldDegradationPackage) (C : CellGrowthPDEPackage S) (D : DiffusionTransportPackage S C) where
  constructGeometry : Type u
  functionalTissueFormed : Prop
  mechanicalPropertiesMatchTarget : Prop
  integrationWithHostTissue : Prop
  endpointAchieved : Prop

structure TissueEngineeredConstructEvidence {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S} {D : DiffusionTransportPackage S C}
    (T : TissueEngineeredConstructPackage S C D) where
  functionalTissueClosed : T.functionalTissueFormed
  mechanicalClosed : T.mechanicalPropertiesMatchTarget
  integrationClosed : T.integrationWithHostTissue
  endpointClosed : T.endpointAchieved

def TissueEngineeredConstructClosed {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S} {D : DiffusionTransportPackage S C}
    (T : TissueEngineeredConstructPackage S C D) : Prop :=
  T.functionalTissueFormed ∧ T.mechanicalPropertiesMatchTarget ∧ T.integrationWithHostTissue ∧ T.endpointAchieved

theorem tissue_engineered_construct_closed_from_evidence
    {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S} {D : DiffusionTransportPackage S C}
    (T : TissueEngineeredConstructPackage S C D) (E : TissueEngineeredConstructEvidence T) :
    TissueEngineeredConstructClosed T := by
  exact And.intro E.functionalTissueClosed (And.intro E.mechanicalClosed (And.intro E.integrationClosed E.endpointClosed))

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse