import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transferRates : Matrix (Fin numCompartments) (Fin numCompartments) ℝ
  initialConditions : Vector ℝ numCompartments
  massBalance : Prop
  rateLaw : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  massBalanceClosed : C.massBalance
  rateLawClosed : C.rateLaw

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.massBalance ∧ C.rateLaw

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.massBalanceClosed E.rateLawClosed

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse