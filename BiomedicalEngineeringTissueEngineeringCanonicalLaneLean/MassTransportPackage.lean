import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TissueEngineering

structure MassTransportPackage where
  oxygenDiffusionRate : Prop
  nutrientConvection : Prop
  wasteRemoval : Prop
  scaffoldPermeability : Prop

structure MassTransportEvidence (M : MassTransportPackage) where
  oxygenDiffusionRateClosed : M.oxygenDiffusionRate
  nutrientConvectionClosed : M.nutrientConvection
  wasteRemovalClosed : M.wasteRemoval
  scaffoldPermeabilityClosed : M.scaffoldPermeability

def MassTransportClosed (M : MassTransportPackage) : Prop :=
  M.oxygenDiffusionRate ∧ M.nutrientConvection ∧ M.wasteRemoval ∧ M.scaffoldPermeability

theorem mass_transport_closed_from_evidence
    (M : MassTransportPackage) (E : MassTransportEvidence M) :
    MassTransportClosed M := by
  exact And.intro E.oxygenDiffusionRateClosed
    (And.intro E.nutrientConvectionClosed
      (And.intro E.wasteRemovalClosed E.scaffoldPermeabilityClosed))

end TissueEngineering
end HautevilleHouse