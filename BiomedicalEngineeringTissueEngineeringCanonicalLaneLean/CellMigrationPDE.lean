import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringTissueEngineeringCanonicalLaneLean.TissueEngineeringObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringTissueEngineeringCanonicalLaneLean

structure CellMigrationPDEPackage (C : TissueEngineeredConstruct) where
  diffusionCoefficient : Prop
  chemotaxisSensitivity : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  diffusionCoefficientClosed : diffusionCoefficient
  chemotaxisSensitivityClosed : chemotaxisSensitivity
  initialConditionClosed : initialCondition
  boundaryConditionClosed : boundaryCondition

structure CellMigrationPDEEvidence {C : TissueEngineeredConstruct} (P : CellMigrationPDEPackage C) where
  diffusionCoefficientClosed : P.diffusionCoefficient
  chemotaxisSensitivityClosed : P.chemotaxisSensitivity
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition

def CellMigrationPDEClosed {C : TissueEngineeredConstruct} (P : CellMigrationPDEPackage C) : Prop :=
  P.diffusionCoefficient ∧ P.chemotaxisSensitivity ∧ P.initialCondition ∧ P.boundaryCondition

theorem cell_migration_pde_closed_from_evidence {C : TissueEngineeredConstruct} (P : CellMigrationPDEPackage C) (E : CellMigrationPDEEvidence P) : CellMigrationPDEClosed P :=
  And.intro E.diffusionCoefficientClosed (And.intro E.chemotaxisSensitivityClosed (And.intro E.initialConditionClosed E.boundaryConditionClosed))

end BiomedicalEngineeringTissueEngineeringCanonicalLaneLean
end HautevilleHouse