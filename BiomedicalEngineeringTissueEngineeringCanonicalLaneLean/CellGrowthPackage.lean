import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TissueEngineering

structure CellGrowthPackage where
  proliferationRate : Prop
  differentiationFactor : Prop
  scaffoldAdhesion : Prop
  nutrientConsumption : Prop

structure CellGrowthEvidence (C : CellGrowthPackage) where
  proliferationRateClosed : C.proliferationRate
  differentiationFactorClosed : C.differentiationFactor
  scaffoldAdhesionClosed : C.scaffoldAdhesion
  nutrientConsumptionClosed : C.nutrientConsumption

def CellGrowthClosed (C : CellGrowthPackage) : Prop :=
  C.proliferationRate ∧ C.differentiationFactor ∧ C.scaffoldAdhesion ∧ C.nutrientConsumption

theorem cell_growth_closed_from_evidence
    (C : CellGrowthPackage) (E : CellGrowthEvidence C) :
    CellGrowthClosed C := by
  exact And.intro E.proliferationRateClosed
    (And.intro E.differentiationFactorClosed
      (And.intro E.scaffoldAdhesionClosed E.nutrientConsumptionClosed))

end TissueEngineering
end HautevilleHouse