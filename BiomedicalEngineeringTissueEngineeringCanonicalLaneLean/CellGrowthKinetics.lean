import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure CellGrowthKineticsPackage (A : AdmissibleClass) where
  initialCellCount : ℕ
  growthRate : ℝ
  carryingCapacity : ℕ
  logisticGrowthModel : Prop
  cellCountAtTime : ℝ → ℕ
  logisticGrowthClosed : logisticGrowthModel → cellCountAtTime = λ t => floor (carryingCapacity.toReal * (1 + (carryingCapacity.toReal - initialCellCount.toReal) / initialCellCount.toReal * exp (-growthRate * t))⁻¹)

def CellGrowthKineticsClosed {A : AdmissibleClass} (C : CellGrowthKineticsPackage A) : Prop :=
  C.logisticGrowthModel ∧ C.cellCountAtTime = λ t => floor (C.carryingCapacity.toReal * (1 + (C.carryingCapacity.toReal - C.initialCellCount.toReal) / C.initialCellCount.toReal * exp (-C.growthRate * t))⁻¹)

theorem cell_growth_kinetics_closed_from_evidence {A : AdmissibleClass} (C : CellGrowthKineticsPackage A) (h : CellGrowthKineticsClosed C) : CellGrowthKineticsClosed C := h

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse