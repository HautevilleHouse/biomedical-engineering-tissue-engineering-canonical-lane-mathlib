import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

def ConstrainedTissueEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tissue_engineering_endgame (A : AdmissibleClass) :
    ConstrainedTissueEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse