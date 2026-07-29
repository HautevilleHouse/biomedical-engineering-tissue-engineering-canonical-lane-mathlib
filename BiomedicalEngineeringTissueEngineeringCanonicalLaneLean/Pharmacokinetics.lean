import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure PharmacokineticsPackage (C : CompartmentModelPackage) where
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeOfDistribution : ℝ
  clearance : ℝ
  halfLife : ℝ
  bioavailability : Prop
  linearKinetics : Prop

structure PharmacokineticsEvidence {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) where
  bioavailabilityClosed : P.bioavailability
  linearKineticsClosed : P.linearKinetics

def PharmacokineticsClosed {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) : Prop :=
  P.bioavailability ∧ P.linearKinetics

theorem pharmacokinetics_closed_from_evidence {C : CompartmentModelPackage} (P : PharmacokineticsPackage C) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.bioavailabilityClosed E.linearKineticsClosed

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse