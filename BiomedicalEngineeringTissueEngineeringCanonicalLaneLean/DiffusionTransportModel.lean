import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure DiffusionTransportPackage (S : ScaffoldDegradationPackage) (C : CellGrowthPDEPackage S) where
  nutrientConcentrationField : Type u
  diffusionLaw : Prop
  initialConditionSatisfied : Prop
  boundaryFluxControlled : Prop
  transportEquationSolved : Prop

structure DiffusionTransportEvidence {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S}
    (D : DiffusionTransportPackage S C) where
  diffusionLawClosed : D.diffusionLaw
  initialConditionClosed : D.initialConditionSatisfied
  boundaryFluxClosed : D.boundaryFluxControlled
  transportEquationClosed : D.transportEquationSolved

def DiffusionTransportClosed {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S}
    (D : DiffusionTransportPackage S C) : Prop :=
  D.diffusionLaw ∧ D.initialConditionSatisfied ∧ D.boundaryFluxControlled ∧ D.transportEquationSolved

theorem diffusion_transport_closed_from_evidence
    {S : ScaffoldDegradationPackage} {C : CellGrowthPDEPackage S}
    (D : DiffusionTransportPackage S C) (E : DiffusionTransportEvidence D) :
    DiffusionTransportClosed D := by
  exact And.intro E.diffusionLawClosed (And.intro E.initialConditionClosed (And.intro E.boundaryFluxClosed E.transportEquationClosed))

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse