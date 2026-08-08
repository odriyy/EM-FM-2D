'# MWS Version: Version 2024.5 - Jun 14 2024 - ACIS 33.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 1 fmax = 5
'# created = '[VERSION]2024.5|33.0.1|20240614[/VERSION]


'@ new component: component1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Component.New "component1"

'@ define cylinder: component1:fluid

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "fluid" 
     .Component "component1" 
     .Material "PEC" 
     .OuterRadius "pipe_Ri" 
     .InnerRadius "0" 
     .Axis "z" 
     .Zrange "0", "L_sub" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ delete shape: component1:fluid

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:fluid"

'@ define material: Nutrient_solution

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "Nutrient_solution"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "78.4"
     .Mu "1"
     .Sigma "sigma_fluid"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define cylinder: component1:solid1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Nutrient_solution" 
     .OuterRadius "pipe_Ri" 
     .InnerRadius "0" 
     .Axis "z" 
     .Zrange "0", "L_sub" 
     .Xcenter "0" 
     .Ycenter "-0" 
     .Segments "0" 
     .Create 
End With

'@ define material: PVC

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "PVC"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "3.0"
     .Mu "1"
     .Sigma "0"
     .TanD "0.015"
     .TanDFreq "2.45"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "PDMS"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "2.7"
     .Mu "1"
     .Sigma "0"
     .TanD "0.03"
     .TanDFreq "2.45"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "Galinstan"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "1"
     .Mu "1"
     .Sigma "3.46e6"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define cylinder: component1:PVC cylinder

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "PVC cylinder" 
     .Component "component1" 
     .Material "PVC" 
     .OuterRadius "pipe_Ro" 
     .InnerRadius "pipe_Ri" 
     .Axis "z" 
     .Zrange "0", "L_sub" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ define material colour: PVC

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "PVC"
     .Folder ""
     .Colour "0.752941", "0.752941", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define brick: component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "GND" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "-W_sub/2", "W_sub/2" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ define material colour: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "Galinstan"
     .Folder ""
     .Colour "1", "1", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define brick: component1:PDMS_substrate

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "PDMS_substrate" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro", "h_sub" 
     .Yrange "-L_sub/2", "L_sub/2" 
     .Zrange "0", "W_sub" 
     .Create
End With

'@ define material colour: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "PDMS"
     .Folder ""
     .Colour "1", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define cylinder: component1:CSRR_outer_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "CSRR_outer_cut" 
     .Component "component1" 
     .Material "PDMS" 
     .OuterRadius "r_SRR + w_channel/2" 
     .InnerRadius "0" 
     .Axis "y" 
     .Yrange "pipe_Ro - 0.01", "pipe_Ro + t_metal + 0.01" 
     .Xcenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ delete shape: component1:CSRR_outer_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:CSRR_outer_cut"

'@ define material: Air

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material
     .Reset
     .Name "Air"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1.00059"
     .Mu "1.0"
     .Kappa "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstKappa"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "1.204"
     .ThermalType "Normal"
     .ThermalConductivity "0.026"
     .SpecificHeat "1005", "J/K/kg"
     .SetActiveMaterial "all"
     .Colour "0.682353", "0.717647", "1"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ define cylinder: component1:CSRR_outer_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "CSRR_outer_cut" 
     .Component "component1" 
     .Material "Air" 
     .OuterRadius "r_SRR + w_channel/2" 
     .InnerRadius "0" 
     .Axis "y" 
     .Yrange "pipe_Ro - 0.01", "pipe_Ro + t_metal + 0.01" 
     .Xcenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ boolean subtract shapes: component1:GND, component1:CSRR_outer_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:GND", "component1:CSRR_outer_cut"

'@ define cylinder: component1:CSRR_inner_island

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "CSRR_inner_island" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR - w_channel/2" 
     .InnerRadius "0" 
     .Axis "y" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Xcenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ define brick: component1:CSRR_gap_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "CSRR_gap_cut" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "-g_slot/2", "g_slot/2" 
     .Yrange "pipe_Ro - 0.01", "pipe_Ro + t_metal + 0.01" 
     .Zrange "L_sub/2 + r_SRR - w_channel", "L_sub/2 + r_SRR + w_channel" 
     .Create
End With

'@ boolean subtract shapes: component1:GND, component1:CSRR_gap_cut

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:GND", "component1:CSRR_gap_cut"

'@ define brick: component1:Microstrip

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Microstrip" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "-W_50/2", "W_50/2" 
     .Yrange "pipe_Ro + t_metal + h_sub", "pipe_Ro + t_metal + h_sub + t_metal" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:Microstrip", "4", "4"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:GND", "16", "12"

'@ define discrete face port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscreteFacePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltageAmplitude "1.0"
     .CurrentAmplitude "1.0"
     .Monitor "True"
     .CenterEdge "True"
     .SetP1 "True", "0", "15.02", "35"
     .SetP2 "True", "0", "14.52", "35"
     .LocalCoordinates "False"
     .InvertDirection "False"
     .UseProjection "False"
     .ReverseProjection "False"
     .FaceType "Linear"
     .Create 
End With

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:Microstrip", "6", "6"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:GND", "22", "18"

'@ define discrete face port: 2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscreteFacePort 
     .Reset 
     .PortNumber "2" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltageAmplitude "1.0"
     .CurrentAmplitude "1.0"
     .Monitor "True"
     .CenterEdge "True"
     .SetP1 "True", "0", "15.02", "0"
     .SetP2 "True", "0", "14.52", "0"
     .LocalCoordinates "False"
     .InvertDirection "False"
     .UseProjection "False"
     .ReverseProjection "False"
     .FaceType "Linear"
     .Create 
End With

'@ define frequency range

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solver.FrequencyRange "2", "2.5"

'@ define time domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set PBA version

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Discretizer.PBAVersion "2024061424"

'@ set mesh properties (Hexahedral)

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "1" 
     .Set "StepsPerWaveFar", "1" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "1"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "1"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024061424" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ define frequency range

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solver.FrequencyRange "2", "3"

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Time Domain"

'@ delete shape: component1:CSRR_inner_island

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:CSRR_inner_island"

'@ delete shape: component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:GND"

'@ define brick: component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "GND" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "-W_sub/2", "W_sub/2" 
     .Yrange "pipe_Ro", "pipe_Ro+t_metal" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ define torus: component1:slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Torus 
     .Reset 
     .Name "slot_ring" 
     .Component "component1" 
     .Material "Vacuum" 
     .OuterRadius "r_SRR + (w_channel/2)" 
     .InnerRadius "r_SRR - (w_channel/2)" 
     .Axis "y" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ delete shape: component1:slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:slot_ring"

'@ define cylinder: component1:slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "slot_ring" 
     .Component "component1" 
     .Material "Vacuum" 
     .OuterRadius "r_SRR + (w_channel/2)" 
     .InnerRadius "r_SRR - (w_channel/2)" 
     .Axis "y" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Xcenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ define cylinder: component1:inner_slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "inner_slot_ring" 
     .Component "component1" 
     .Material "Vacuum" 
     .OuterRadius "r_SRR - w_channel - 0.4" 
     .InnerRadius "r_SRR - (2 * w_channel) - 0.4" 
     .Axis "y" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Xcenter "0" 
     .Zcenter "L_sub/2" 
     .Segments "0" 
     .Create 
End With

'@ define brick: component1:gap_cut_top

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "gap_cut_top" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "-g_slot", "g_slot" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Zrange "L_sub / 2 + (r_SRR - w_channel - 0.4)", "L_sub / 2 + r_SRR + 1" 
     .Create
End With

'@ define brick: component1:gap_cut_bottom

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "gap_cut_bottom" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "-g_slot", "g_slot" 
     .Yrange "pipe_Ro", "pipe_Ro + t_metal" 
     .Zrange "L_sub / 2 - (r_SRR - w_channel - 0.4) - 0.1", "L_sub / 2 - (r_SRR - 2 * w_channel - 0.4) + 0.1" 
     .Create
End With

'@ boolean subtract shapes: component1:GND, component1:slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:GND", "component1:slot_ring"

'@ boolean subtract shapes: component1:GND, component1:inner_slot_ring

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:GND", "component1:inner_slot_ring"

'@ boolean add shapes: component1:GND, component1:gap_cut_bottom

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Add "component1:GND", "component1:gap_cut_bottom"

'@ boolean add shapes: component1:GND, component1:gap_cut_top

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Add "component1:GND", "component1:gap_cut_top"

'@ delete shape: component1:GND

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:GND"

'@ delete shapes

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Microstrip" 
Solid.Delete "component1:PDMS_substrate" 
Solid.Delete "component1:PVC cylinder" 
Solid.Delete "component1:solid1"

'@ define cylinder: component1:fluid

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "fluid" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "pipe_Ri" 
     .InnerRadius "0" 
     .Axis "z" 
     .Zrange "0", "L_sub" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ change material: component1:fluid to: Nutrient_solution

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:fluid", "Nutrient_solution"

'@ define cylinder: component1:pvc pipe

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "pvc pipe" 
     .Component "component1" 
     .Material "PVC" 
     .OuterRadius "pipe_Ro" 
     .InnerRadius "pipe_Ri" 
     .Axis "z" 
     .Zrange "0", "L_sub" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ define brick: component1:GND

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "GND" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "pipe_Ro", "pipe_Ro+0.035" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ delete port: port1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Port.Delete "1"

'@ delete port: port2

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Port.Delete "2"

'@ define brick: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "PDMS" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+t_metal", "pipe_Ro +t_metal+ h_sub" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ define brick: component1:Mold_line

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Mold_line" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "pipe_Ro+h_sub", "pipe_Ro+h_sub+t_PDMS_microstrip" 
     .Yrange "-W_50/2", "W_50/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ define cylinder: component1:Mold_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Mold_L_Out" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR" 
     .InnerRadius "r_SRR - w_channel" 
     .Axis "x" 
     .Xrange "pipe_Ro +h4", "pipe_Ro +h4+ t_SRR" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ define cylinder: component1:Mold_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Mold_L_In" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR_in" 
     .InnerRadius "r_SRR_in - w_channel" 
     .Axis "x" 
     .Xrange "pipe_Ro + h_sub*4/28", "pipe_Ro + h_sub*4/28+t_SRR" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ define cylinder: component1:Mold_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Mold_R_Out" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR" 
     .InnerRadius "r_SRR - w_channel" 
     .Axis "x" 
     .Xrange "0.035 + pipe_Ro + 1.0 - (t_metal / 2)", "0.035 + pipe_Ro + 1.0 + (t_metal / 2)" 
     .Ycenter "0" 
     .Zcenter "Z_mid + D_center/2" 
     .Segments "0" 
     .Create 
End With

'@ define cylinder: component1:Mold_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Mold_R_In" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR_in" 
     .InnerRadius "r_SRR_in - w_channel" 
     .Axis "x" 
     .Xrange "0.035+pipe_Ro + 1.0 - (t_metal / 2)", "0.035 + pipe_Ro + 1.0 + (t_metal / 2)" 
     .Ycenter "0" 
     .Zcenter "Z_mid + D_center/2" 
     .Segments "0" 
     .Create 
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Insert "component1:PDMS", "component1:Mold_R_In"

'@ define brick: component1:L_Out_Gap

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "L_Out_Gap" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "pipe_Ro + 1.0", "pipe_Ro + 1.0 + t_metal" 
     .Yrange "-g_slot/2", "g_slot/2" 
     .Zrange "Z_mid - D_center/2", "Z_mid - D_center/2 + r_SRR + 1" 
     .Create
End With

'@ delete shape: component1:L_Out_Gap

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:L_Out_Gap"

'@ define material colour: PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Material 
     .Name "PDMS"
     .Folder ""
     .Colour "1", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "True" 
     .Transparency "55" 
     .ChangeColour 
End With

'@ paste structure data: 1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*1.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 2

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*2.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 3

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*3.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_Out_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_Out_1"

'@ define brick: component1:Cut_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_Out" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "t_metal+pipe_Ro + 1.0 - (t_metal / 2)", "t_metal+pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "r_SRR - w_channel - 0.1", "r_SRR + 0.1" 
     .Zrange "(Z_mid - D_center/2) - g_slot/2", "(Z_mid - D_center/2) + g_slot/2" 
     .Create
End With

'@ define brick: component1:Cut_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_In" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "0.035-5+pipe_Ro + 1.0 - (t_metal / 2)", "5+ 0.035+pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "-r_SRR_in - 0.1", "-(r_SRR_in - w_channel) + 0.1" 
     .Zrange "(Z_mid - D_center/2) - g_slot/2", "(Z_mid - D_center/2) + g_slot/2" 
     .Create
End With

'@ define brick: component1:Cut_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_R_Out" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "t_metal+pipe_Ro + 1.0 - (t_metal / 2)", "t_metal+pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "r_SRR - w_channel - 0.1", "r_SRR + 0.1" 
     .Zrange "(Z_mid + D_center/2) - g_slot/2", "(Z_mid + D_center/2) + g_slot/2" 
     .Create
End With

'@ define brick: component1:Cut_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_R_In" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "t_metal+pipe_Ro + 1.0 - (t_metal / 2)", "t_metal+pipe_Ro + 1.0 +(t_metal / 2)" 
     .Yrange "-r_SRR_in - 0.1", "-(r_SRR_in - w_channel) + 0.1" 
     .Zrange "(Z_mid + D_center/2) - g_slot/2", "(Z_mid + D_center/2) + g_slot/2" 
     .Create
End With

'@ paste structure data: 4

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*4.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ boolean subtract shapes: component1:Mold_R_Out, component1:Cut_R_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_Out", "component1:Cut_R_Out_1"

'@ boolean subtract shapes: component1:Mold_R_In, component1:Cut_R_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_In", "component1:Cut_R_In_1"

'@ boolean subtract shapes: component1:Mold_L_Out, component1:Cut_L_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_Out", "component1:Cut_L_Out_1"

'@ boolean subtract shapes: component1:Mold_L_In, component1:Cut_L_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_In", "component1:Cut_L_In_1"

'@ delete shape: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:PDMS"

'@ define brick: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "PDMS" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+t_metal", "pipe_Ro+t_metal+h_sub" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ boolean subtract shapes: component1:Mold_R_Out, component1:Cut_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_Out", "component1:Cut_R_Out"

'@ boolean subtract shapes: component1:Mold_R_In, component1:Cut_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_In", "component1:Cut_R_In"

'@ boolean subtract shapes: component1:Mold_L_Out, component1:Cut_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_Out", "component1:Cut_L_Out"

'@ boolean subtract shapes: component1:Mold_L_In, component1:Cut_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_In", "component1:Cut_L_In"

'@ paste structure data: 5

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*5.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ change material: component1:Mold_L_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_In_1", "Vacuum"

'@ change material: component1:Mold_L_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_Out_1", "Vacuum"

'@ change material: component1:Mold_R_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_In_1", "Vacuum"

'@ change material: component1:Mold_R_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_Out_1", "Vacuum"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_Out_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_Out_1"

'@ pick end point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickEndpointFromId "component1:Mold_line", "9"

'@ pick mid point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickMidpointFromId "component1:PDMS", "62"

'@ pick end point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickEndpointFromId "component1:Mold_line", "10"

'@ pick mid point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickMidpointFromId "component1:PDMS", "55"

'@ delete shape: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:PDMS"

'@ define brick: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "PDMS" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+ 0.035", "pipe_Ro+ 0.035+h_sub" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ paste structure data: 6

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*6.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ change material: component1:Mold_L_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_In_1", "Vacuum"

'@ change material: component1:Mold_L_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_Out_1", "Vacuum"

'@ change material: component1:Mold_R_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_In_1", "Vacuum"

'@ change material: component1:Mold_R_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_Out_1", "Vacuum"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_L_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_L_Out_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_In_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_In_1"

'@ boolean subtract shapes: component1:PDMS, component1:Mold_R_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:PDMS", "component1:Mold_R_Out_1"

'@ define material: Copper (annealed)

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .FrqType "all"
     .Type "Lossy metal"
     .SetMaterialUnit "GHz", "mm"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ change material and color: component1:GND to: Copper (annealed)

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:GND", "Copper (annealed)" 
Solid.SetUseIndividualColor "component1:GND", 1
Solid.ChangeIndividualColor "component1:GND", "170", "170", "255"

'@ change material and color: component1:Mold_line to: Copper (annealed)

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_line", "Copper (annealed)" 
Solid.SetUseIndividualColor "component1:Mold_line", 1
Solid.ChangeIndividualColor "component1:Mold_line", "170", "170", "255"

'@ paste structure data: 7

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*7.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 8

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*8.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 9

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*9.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 10

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With SAT 
     .Reset 
     .FileName "*10.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ change material: component1:Mold_R_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_Out_1", "Vacuum"

'@ change material: component1:Mold_R_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_R_In_1", "Vacuum"

'@ change material: component1:Mold_L_Out_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_Out_1", "Vacuum"

'@ change material: component1:Mold_L_In_1 to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Mold_L_In_1", "Vacuum"

'@ define cylinder: component1:Cut_L_In_PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Cut_L_In_PDMS" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR" 
     .InnerRadius "r_SRR_in - w_channel" 
     .Axis "x" 
     .Xrange "t_metal + pipe_Ro + 1.0 - (t_metal / 2)", "t_metal + pipe_Ro + 1.0 + (t_metal / 2)" 
     .Ycenter "0" 
     .Zcenter "Z_mid - D_center/2" 
     .Segments "0" 
     .Create 
End With

'@ delete shape: component1:Mold_R_Out_1

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Mold_R_Out_1"

'@ delete shapes

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Mold_L_In_1" 
Solid.Delete "component1:Mold_L_Out_1" 
Solid.Delete "component1:Mold_R_In_1"

'@ delete shape: component1:Cut_L_In_PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Cut_L_In_PDMS"

'@ delete shape: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:PDMS"

'@ define brick: component1:Cut_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_Out" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "0.035 -5 + pipe_Ro + 1.0 - (t_metal / 2)", "0.035 +5 + pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "r_SRR - w_channel - 0.1", "r_SRR + 0.1" 
     .Zrange "(Z_mid - D_center/2) - g_slot/2", "(Z_mid - D_center/2) + g_slot/2" 
     .Create
End With

'@ define brick: component1:Cut_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_In" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "0.035 -5+pipe_Ro + 1.0 - (t_metal / 2)", "0.035 + 5+pipe_Ro + 1.0 - (t_metal / 2)" 
     .Yrange "-r_SRR_in - 0.1", "-(r_SRR_in - w_channel) + 0.1" 
     .Zrange "(Z_mid - D_center/2) - g_slot/2", "(Z_mid - D_center/2) + g_slot/2" 
     .Create
End With

'@ define brick: component1:Cut_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_R_Out" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "0.035 -5+pipe_Ro + 1.0 - (t_metal / 2)", "0.035 + 5+pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "r_SRR - w_channel - 0.1", "r_SRR + 0.1" 
     .Zrange "(Z_mid + D_center/2) - g_slot/2", "(Z_mid + D_center/2) + g_slot/2" 
     .Create
End With

'@ change material: component1:Cut_L_Out to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Cut_L_Out", "Vacuum"

'@ define brick: component1:Cut_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "Cut_R_In" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "0.035 - 5 +pipe_Ro + 1.0 - (t_metal / 2)", "0.035 +  5 +pipe_Ro + 1.0 + (t_metal / 2)" 
     .Yrange "-r_SRR_in - 0.1", "-(r_SRR_in - w_channel) + 0.1" 
     .Zrange "(Z_mid + D_center/2) - g_slot/2", "(Z_mid + D_center/2) + g_slot/2" 
     .Create
End With

'@ boolean subtract shapes: component1:Mold_R_Out, component1:Cut_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_Out", "component1:Cut_R_Out"

'@ boolean subtract shapes: component1:Mold_R_In, component1:Cut_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_R_In", "component1:Cut_R_In"

'@ boolean subtract shapes: component1:Mold_L_Out, component1:Cut_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_Out", "component1:Cut_L_Out"

'@ boolean subtract shapes: component1:Mold_L_In, component1:Cut_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Subtract "component1:Mold_L_In", "component1:Cut_L_In"

'@ define brick: component1:PDMS

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Brick
     .Reset 
     .Name "PDMS" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+0.035", "pipe_Ro+0.035 + h_sub" 
     .Yrange "-W_Sub/2", "W_Sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ define cylinder: component1:Cut_Mold_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Cut_Mold_L_In" 
     .Component "component1" 
     .Material "Vacuum" 
     .OuterRadius "r_SRR_in" 
     .InnerRadius "r_SRR_in - w_channel" 
     .Axis "x" 
     .Xrange "0.035 + pipe_Ro+1 - (t_metal/2)", "0.035 + pipe_Ro+1 + (t_metal/2)" 
     .Ycenter "0" 
     .Zcenter "Z_mid-D_center/2" 
     .Segments "0" 
     .Create 
End With

'@ define cylinder: component1:Cut_Mold_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Cylinder 
     .Reset 
     .Name "Cut_Mold_L_Out" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR" 
     .InnerRadius "r_SRR- w_channel" 
     .Axis "x" 
     .Xrange "0.035+pipe_Ro+1-(t_metal/2)", "0.035+pipe_Ro+1+(t_metal/2)" 
     .Ycenter "0" 
     .Zcenter "Z_mid - D_center/2" 
     .Segments "0" 
     .Create 
End With

'@ change material: component1:Cut_Mold_L_Out to: Vacuum

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.ChangeMaterial "component1:Cut_Mold_L_Out", "Vacuum"

'@ boolean insert shapes: component1:PDMS, component1:Mold_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_L_In" 
     .Version 1
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_L_Out" 
     .Version 1
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_R_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_R_In" 
     .Version 1
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_R_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_R_Out" 
     .Version 1
End With

'@ delete shape: component1:Cut_Mold_L_Out

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Cut_Mold_L_Out"

'@ delete shape: component1:Cut_Mold_L_In

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Solid.Delete "component1:Cut_Mold_L_In"

'@ pick mid point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickMidpointFromId "component1:GND", "14"

'@ pick end point

'[VERSION]2024.0|33.0.1|20230901[/VERSION]
Pick.PickEndpointFromId "component1:Mold_line", "10"

'@ delete shapes

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:Mold_R_In" 
Solid.Delete "component1:Mold_R_Out"

'@ delete shape: component1:PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:PDMS"

'@ define brick: component1:PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "PDMS" 
     .Component "component1" 
     .Material "Nutrient_solution" 
     .Xrange "pipe_Ro", "pipe_Ro+h_sub" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ change material and color: component1:GND to: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:GND", "Galinstan" 
Solid.SetUseIndividualColor "component1:GND", 0

'@ change material and color: component1:Mold_line to: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Mold_line", "Galinstan" 
Solid.SetUseIndividualColor "component1:Mold_line", 0

'@ delete shape: component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:GND"

'@ change material: component1:PDMS to: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:PDMS", "PDMS"

'@ change material: component1:Mold_line to: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Mold_line", "PDMS"

'@ rename block: component1:Mold_line to: component1:PDMS_microstrip

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Rename "component1:Mold_line", "PDMS_microstrip"

'@ define brick: component1:Microstrip_line

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Microstrip_line" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+ h4+t_SRR+h3", "pipe_Ro+ h4+t_SRR+h3+t_microstrip" 
     .Yrange "-L2/2", "L2/2" 
     .Zrange "Z_mid- (r_SRR)+ w_channel/2 -L3/2 + L3", "Z_mid- (r_SRR)+ w_channel/2 -L3/2 + L3+L1" 
     .Create
End With

'@ change material: component1:Microstrip_line to: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Microstrip_line", "Galinstan"

'@ define brick: component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "GND" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro +h4+t_SRR+h3+t_microstrip+h2", "pipe_Ro +h4+t_SRR+h3+t_microstrip+h2+t_gnd" 
     .Yrange "-W_sub/2 +0.2", "W_sub/2 -0.2" 
     .Zrange "0.2", "L_sub - 0.2" 
     .Create
End With

'@ change material: component1:GND to: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:GND", "Galinstan"

'@ pick mid point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickMidpointFromId "component1:GND", "1"

'@ pick mid point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickMidpointFromId "component1:Microstrip_line", "3"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "15.625", "0", "40"
     .SetP2 "True", "17.0625", "0", "40"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ pick mid point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickMidpointFromId "component1:GND", "5"

'@ pick mid point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickMidpointFromId "component1:Microstrip_line", "7"

'@ define discrete port: 2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "2" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "15.625", "0", "0"
     .SetP2 "True", "17.0625", "0", "0"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_L_In

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_L_In" 
     .Version 1
End With

'@ boolean insert shapes: component1:PDMS, component1:Mold_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Solid
     .Version 10
     .Insert "component1:PDMS", "component1:Mold_L_Out" 
     .Version 1
End With

'@ boolean insert shapes: component1:PDMS, component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:PDMS", "component1:GND"

'@ boolean insert shapes: component1:PDMS_microstrip, component1:Microstrip_line

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:PDMS_microstrip", "component1:Microstrip_line"

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Frequency Domain"

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "False" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ define frequency range

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solver.FrequencyRange "1", "3"

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "False" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ define frequency range

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solver.FrequencyRange "1", "3"

'@ new component: component2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Component.New "component2"

'@ define brick: component2:Cut_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_Out" 
     .Component "component2" 
     .Material "Galinstan" 
     .Xrange "pipe_Ro + h_sub*2/4", "pipe_Ro + h_sub*3.5/4" 
     .Yrange "-g_slot", "g_slot" 
     .Zrange "Z_mid+r_SRR", "Z_mid+r_SRR+w_channel" 
     .Create
End With

'@ delete shape: component2:Cut_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component2:Cut_L_Out"

'@ delete component: component2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Component.Delete "component2"

'@ define brick: component1:Cut_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_Out" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "pipe_Ro +h4", "pipe_Ro +h4+t_SRR" 
     .Yrange "-g_slot/2", "g_slot/2" 
     .Zrange "Z_mid + (r_SRR - w_channel)-0.1", "Z_mid +r_SRR" 
     .Create
End With

'@ change material: component1:Cut_L_Out to: Vacuum

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Cut_L_Out", "Vacuum"

'@ define brick: component1:Cut_L_In

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Cut_L_In" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "pipe_Ro +h_sub*4/28-0.5", "pipe_Ro +h_sub*4/28+t_SRR+0.5" 
     .Yrange "-g_slot/2", "g_slot/2" 
     .Zrange "Z_mid + r_SRR_in - w_channel-0.1", "Z_mid +r_SRR_in+0.1" 
     .Create
End With

'@ change material: component1:Cut_L_In to: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Cut_L_In", "PDMS"

'@ change material: component1:Cut_L_Out to: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:Cut_L_Out", "PDMS"

'@ boolean insert shapes: component1:Mold_L_In, component1:Cut_L_In

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:Mold_L_In", "component1:Cut_L_In"

'@ boolean insert shapes: component1:Mold_L_Out, component1:Cut_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:Mold_L_Out", "component1:Cut_L_Out"

'@ define frequency range

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solver.FrequencyRange "1", "5"

'@ delete ports

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1" 
Port.Delete "2"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:Microstrip_line", "3", "3"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:Microstrip_line", "13", "9"

'@ pick mid point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickMidpointFromId "component1:GND", "15"

'@ delete shape: component1:PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:PDMS"

'@ define brick: component1:new_PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "new_PDMS" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro", "(pipe_Ro + h_sub)" 
     .Yrange "-W_sub/2", "W_sub/2" 
     .Zrange "0", "L_sub" 
     .Create
End With

'@ delete shape: component1:PDMS_microstrip

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:PDMS_microstrip"

'@ delete shape: component1:Mold_L_In

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:Mold_L_In"

'@ rename block: component1:Microstrip_line to: component1:Microstrip_vertical

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Rename "component1:Microstrip_line", "Microstrip_vertical"

'@ define brick: component1:Microstrip_horizontal

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Microstrip_horizontal" 
     .Component "component1" 
     .Material "Galinstan" 
     .Xrange "pipe_Ro +h4 +t_SRR +h3", "pipe_Ro +h4 +t_SRR +h3+t_microstrip" 
     .Yrange "-L4/2", "L4/2" 
     .Zrange "Z_mid- (r_SRR)+ w_channel/2 -L3/2", "Z_mid- (r_SRR)+ w_channel/2 -L3/2 + L3" 
     .Create
End With

'@ boolean insert shapes: component1:new_PDMS, component1:GND

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Solid
     .Version 10
     .Insert "component1:new_PDMS", "component1:GND" 
     .Version 1
End With

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "False", "pipe_ro +h1+t_gnd", "0", "Z_mid"
     .SetP2 "False", "pipe_ro +h1+t_gnd+h2", "0", "Z_mid"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ delete shape: component1:fluid

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:fluid"

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "False", "pipe_Ro +h1+t_gnd", "0.0", "Z_mid"
     .SetP2 "False", "pipe_Ro +h1+t_gnd+h2", "0.0", "Z_mid"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "False", "-(pipe_Ro +h1+t_gnd)", "0.0", "Z_mid"
     .SetP2 "False", "-(pipe_Ro +h1+t_gnd+h2)", "0.0", "Z_mid"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ boolean subtract shapes: component1:Mold_L_Out, component1:Cut_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:Mold_L_Out", "component1:Cut_L_Out"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "1.2"
     .SetP1 "False", "pipe_Ro +h4+t_SRR+h3+t_microstrip+h2+t_gnd", "0.0", "Z_mid"
     .SetP2 "False", "pipe_Ro +h4+t_SRR+h3+t_microstrip+h2", "0.0", "Z_mid"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ create group: meshgroup1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Group.Add "meshgroup1", "mesh"

'@ set local mesh properties for: meshgroup1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With MeshSettings
     With .ItemMeshSettings ("group$meshgroup1")
          .SetMeshType "Tet"
          .Set "LayerStackup", "Automatic"
          .Set "LocalAutomaticEdgeRefinement", "0"
          .Set "LocalAutomaticEdgeRefinementOverwrite", 0
          .Set "MaterialIndependent", 0
          .Set "OctreeSizeFaces", "0"
          .Set "PatchIndependent", 0
          .Set "Size", "0.05"
     End With
End With

'@ add items to group: "meshgroup1"

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Group.AddItem "solid$component1:GND", "meshgroup1"
Group.AddItem "solid$component1:Microstrip_horizontal", "meshgroup1"
Group.AddItem "solid$component1:Microstrip_vertical", "meshgroup1"
Group.AddItem "solid$component1:Mold_L_Out", "meshgroup1"

'@ set local mesh properties for: meshgroup1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With MeshSettings
     With .ItemMeshSettings ("group$meshgroup1")
          .SetMeshType "Tet"
          .Set "LayerStackup", "Automatic"
          .Set "LocalAutomaticEdgeRefinement", "0"
          .Set "LocalAutomaticEdgeRefinementOverwrite", 0
          .Set "MaterialIndependent", 0
          .Set "OctreeSizeFaces", "0"
          .Set "PatchIndependent", 0
          .Set "Size", "0.015"
     End With
End With

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "True" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddInactiveSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ define material: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "Galinstan"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Mu "1"
     .Sigma "3.46e6"
     .LossyMetalSIRoughness "0.0"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "1", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define cylinder: component1:needle

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "needle" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "needle_radius" 
     .InnerRadius "0" 
     .Axis "x" 
     .Xrange "pipe_Ro+h4+t_SRR+h3+t_microstrip+h2+t_gnd", "pipe_Ro+h4+t_SRR+h3+t_microstrip+h2" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ clear picks

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.ClearAllPicks

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:needle", "2", "2"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:needle", "1", "1"

'@ define discrete face port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscreteFacePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltageAmplitude "1.0"
     .CurrentAmplitude "1.0"
     .Monitor "True"
     .CenterEdge "True"
     .SetP1 "True", "22", "0", "14.6"
     .SetP2 "True", "21.9", "0", "14.6"
     .LocalCoordinates "False"
     .InvertDirection "False"
     .UseProjection "False"
     .ReverseProjection "False"
     .FaceType "Linear"
     .Create 
End With

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddInactiveSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ set local mesh properties for: meshgroup1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With MeshSettings
     With .ItemMeshSettings ("group$meshgroup1")
          .SetMeshType "Tet"
          .Set "LayerStackup", "Automatic"
          .Set "LocalAutomaticEdgeRefinement", "0"
          .Set "LocalAutomaticEdgeRefinementOverwrite", 0
          .Set "MaterialIndependent", 0
          .Set "OctreeSizeFaces", "0"
          .Set "PatchIndependent", 0
          .Set "Size", "0"
     End With
End With

'@ create group: meshgroup2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Group.Add "meshgroup2", "mesh"

'@ add items to group: "meshgroup2"

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Group.AddItem "solid$component1:needle", "meshgroup2"
Group.AddItem "solid$component1:new_PDMS", "meshgroup2"

'@ set mesh properties (Tetrahedral)

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Mesh 
     .MeshType "Tetrahedral" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "4" 
     .Set "StepsPerWaveFar", "4" 
     .Set "PhaseErrorNear", "0.02" 
     .Set "PhaseErrorFar", "0.02" 
     .Set "CellsPerWavelengthPolicy", "automatic" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "25" 
     .Set "StepsPerBoxFar", "1" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     'MIN CELL 
     .Set "UseRatioLimit", "0" 
     .Set "RatioLimit", "100" 
     .Set "MinStep", "0" 
     'MESHING METHOD 
     .SetMeshType "Unstr" 
     .Set "Method", "0" 
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "CurvatureOrder", "1" 
     .Set "CurvatureOrderPolicy", "automatic" 
     .Set "CurvRefinementControl", "NormalTolerance" 
     .Set "NormalTolerance", "22.5" 
     .Set "SrfMeshGradation", "1.5" 
     .Set "SrfMeshOptimization", "1" 
End With 
With MeshSettings 
     .SetMeshType "Unstr" 
     .Set "UseMaterials",  "1" 
     .Set "MoveMesh", "0" 
End With 
With MeshSettings 
     .SetMeshType "All" 
     .Set "AutomaticEdgeRefinement",  "0" 
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "UseAnisoCurveRefinement", "1" 
     .Set "UseSameSrfAndVolMeshGradation", "1" 
     .Set "VolMeshGradation", "1.5" 
     .Set "VolMeshOptimization", "1" 
End With 
With MeshSettings 
     .SetMeshType "Unstr" 
     .Set "SmallFeatureSize", "0" 
     .Set "CoincidenceTolerance", "1e-06" 
     .Set "SelfIntersectionCheck", "1" 
     .Set "OptimizeForPlanarStructures", "0" 
End With 
With Mesh 
     .SetParallelMesherMode "Tet", "maximum" 
     .SetMaxParallelMesherThreads "Tet", "1" 
End With

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ pick circle center point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickCirclecenterFromId "component1:needle", "2"

'@ pick circle center point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickCirclecenterFromId "component1:needle", "1"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "22", "0", "15"
     .SetP2 "True", "21.9", "0", "15"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Time Domain"

'@ define time domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set local mesh properties for: meshgroup2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With MeshSettings
     With .ItemMeshSettings ("group$meshgroup2")
          .SetMeshType "Hex"
          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 1
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "2"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 1
          .Set "SnapToCylinderCenters", 1
          .Set "SnapToCylinders", 1
          .Set "SnapToEllipseCenters", 1
          .Set "SnapToEllipses", 1
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", 1
          .Set "SnapToSpheres", 1
          .Set "SnapToTori", 1
          .Set "SnapXYZ", "1", "1", "1"
          .Set "UseMaterialRefinement", 1
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 3, 3, 3
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "STEPS_PER_DIM"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "2", "2", "2"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "0.1", "0.1", "0.1"
          .Set "VolumeRefinementType", "ABS_VALUE"
          .Set "VolumeRefinementValueUseSameXYZ", 1
     End With
End With

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Frequency Domain"

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddInactiveSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:needle", "2", "2"

'@ pick edge

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickEdgeFromId "component1:needle", "1", "1"

'@ execute macro: Construct\Discrete Ports\Convert Discrete Edge Port to Discrete Face Port

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
FastModelLoad "False"

	Dim n As Integer
	Dim ii As Integer
	Dim m As Integer
	Dim k As Integer
	Dim kk As Integer
	Dim jj As Integer
	Dim Port_Number As Integer
	Dim slabel As String
	Dim port_lineimpedance As Double
	Dim xmin As Double
	Dim ymin As Double
	Dim zmin As Double
	Dim xmax As Double
	Dim ymax As Double
	Dim zmax As Double
	Dim IsPointInObject_Top As Boolean
	Dim IsPointInObject_Bottom As Boolean
	Dim TopMaterial As String
	Dim BottomMaterial As String
	Dim PortWidth As Double		'Default value = 0.6
	Dim UserDefinedPortWidth As Double
	Dim LeftCoordinate As Double
	Dim LeftTopCheck As Boolean
	Dim RightCoordinate As Double
	Dim RightTopCheck As Boolean
	Dim LeftBottomCheck As Boolean
	Dim RightBottomCheck As Boolean
	Dim TopObject As String
	Dim BottomObject As String
	Dim LeftIntersection As Boolean
	Dim RightIntersection As Boolean
	Dim x_orientation As Boolean
	Dim y_orientation As Boolean



	WCS.Store ("TempWCS")
	WCS.ActivateWCS ("global")

	UserDefinedPortWidth = 0.6

	For n = 1 To Port.Startportnumberiteration

		'Get Port numbering, label, impedance and coordinates
		Port_Number = Port.GetNextPortNumber
		slabel = Port.Getlabel(Port_Number)
		port_lineimpedance = Port.GetLineImpedance(Port_Number, 1)
		DiscretePort.GetCoordinates (Port_Number, xmin, ymin, zmin, xmax, ymax, zmax)
		PortWidth = UserDefinedPortWidth


		'get top and bottom objects where port is defined
		For ii = 0 To Solid.GetNumberOfShapes-1

			IsPointInObject_Top = Solid.IsPointInsideShape (xmin, ymin, zmin, Solid.getnameofshapefromindex(ii))
			IsPointInObject_Bottom = Solid.IsPointInsideShape (xmax, ymax, zmax, Solid.getnameofshapefromindex(ii))

			If IsPointInObject_Top = True Then
				If Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(ii))) = "Lossy metal" Or Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(ii))) = "PEC" Then
					TopMaterial = Solid.GetMaterialNameForShape(Solid.getnameofshapefromindex(ii))
					TopObject = Solid.getnameofshapefromindex(ii)
				End If
			End If
			If IsPointInObject_Bottom = True Then
				If Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(ii))) = "Lossy metal" Or Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(ii))) = "PEC" Then
					BottomMaterial = Solid.GetMaterialNameForShape(Solid.getnameofshapefromindex(ii))
					BottomObject = Solid.getnameofshapefromindex(ii)
				End If
			End If
		Next ii





'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	For m = 1 To 10

			PortWidth = PortWidth*(1-0.1*(m-1))
			x_orientation = False
			y_orientation = False
			LeftTopCheck = True
			RightTopCheck = True
			LeftBottomCheck = True
			RightBottomCheck = True
			k = 1

			While (LeftTopCheck And RightTopCheck And LeftBottomCheck And RightBottomCheck = True)

				LeftCoordinate = xmin-PortWidth*(1-0.1*(k-1))*0.5
				RightCoordinate = xmin+PortWidth*(1-0.1*(k-1))*0.5

				LeftTopCheck = Solid.IsPointInsideShape (LeftCoordinate, ymin, zmin, TopObject)
				RightTopCheck = Solid.IsPointInsideShape (RightCoordinate, ymin, zmin, TopObject)
				LeftBottomCheck = Solid.IsPointInsideShape (LeftCoordinate, ymax, zmax, BottomObject)
				RightBottomCheck = Solid.IsPointInsideShape (RightCoordinate, ymax, zmax, BottomObject)

				For kk = 0 To Solid.GetNumberOfShapes-1
					RightIntersection = Solid.IsPointInsideShape (RightCoordinate, ymin, zmin, Solid.getnameofshapefromindex(kk))
					LeftIntersection = Solid.IsPointInsideShape (LeftCoordinate, ymin, zmin, Solid.getnameofshapefromindex(kk))

					If RightIntersection Or LeftIntersection = True Then
						If Solid.getnameofshapefromindex(kk) <> TopObject Then
							If Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(kk))) = "PEC" Or Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(kk))) = "Lossy metal" Then
								GoTo JumpOut1
							End If
						End If
					End If
				Next kk

				k = k + 1
				If k = 9 Then
					x_orientation = True
					Pick.AddEdge (xmin-PortWidth*0.5, ymin, zmin, xmin+PortWidth*0.5, ymin, zmin)
					Pick.AddEdge (xmin-PortWidth*0.5, ymax, zmax, xmin+PortWidth*0.5, ymax, zmax)
					GoTo CreatePort
				End If


			Wend

			JumpOut1:

			LeftTopCheck = True
			RightTopCheck = True
			LeftBottomCheck = True
			RightBottomCheck = True
			k = 1

			While (LeftTopCheck And RightTopCheck And LeftBottomCheck And RightBottomCheck = True)

				LeftCoordinate = ymin-PortWidth*(1-0.1*(k-1))*0.5
				RightCoordinate = ymin+PortWidth*(1-0.1*(k-1))*0.5

				LeftTopCheck = Solid.IsPointInsideShape (xmin, LeftCoordinate, zmin, TopObject)
				RightTopCheck = Solid.IsPointInsideShape (xmin, RightCoordinate, zmin, TopObject)
				LeftBottomCheck = Solid.IsPointInsideShape (xmax, LeftCoordinate, zmax, BottomObject)
				RightBottomCheck = Solid.IsPointInsideShape (xmax, RightCoordinate, zmax, BottomObject)


				For kk = 0 To Solid.GetNumberOfShapes-1
					RightIntersection = Solid.IsPointInsideShape (xmin, RightCoordinate, zmin, Solid.getnameofshapefromindex(kk))
					LeftIntersection = Solid.IsPointInsideShape (xmin, LeftCoordinate, zmin, Solid.getnameofshapefromindex(kk))

					If RightIntersection Or LeftIntersection = True Then
						If Solid.getnameofshapefromindex(kk) <> TopObject Then
							If Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(kk))) = "PEC" Or Material.GetTypeOfMaterial(Solid.GetMaterialNameforshape(Solid.getnameofshapefromindex(kk))) = "Lossy metal" Then
								GoTo JumpOut2
							End If
						End If
					End If
				Next kk

				k = k + 1
				If k = 9 Then
					y_orientation = True
					Pick.AddEdge (xmin, ymin-PortWidth*0.5, zmin, xmin, ymin+PortWidth*0.5, zmin)
					Pick.AddEdge (xmax, ymin-PortWidth*0.5, zmax, xmax, ymin+PortWidth*0.5, zmax)
					GoTo CreatePort
				End If

			Wend

			JumpOut2:

	Next m
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
		CreatePort:

								With DiscreteFacePort
								     .Reset
								     .PortNumber Port_Number
								     .Type "SParameter"
								     .Label slabel
								     .Impedance port_lineimpedance
								     .VoltageAmplitude "1.0"
								     .SetP1 "True", CStr(xmin), CStr(ymin), CStr(zmin)
								     .SetP2 "True", CStr(xmin), CStr(ymin), CStr(zmin)
								     .LocalCoordinates "False"
								     .InvertDirection "False"
								     .CenterEdge "True"
								     .Monitor "False"
								     .Create
								End With

	Next n

	WCS.Restore ("TempWCS")
	WCS.Delete ("TempWCS")

'@ define discrete face port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscreteFacePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .VoltageAmplitude "1.0"
     .CurrentAmplitude "1.0"
     .Monitor "True"
     .CenterEdge "True"
     .SetP1 "True", "22", "0", "14.6"
     .SetP2 "True", "21.9", "0", "14.6"
     .LocalCoordinates "True"
     .InvertDirection "False"
     .UseProjection "False"
     .ReverseProjection "False"
     .FaceType "Linear"
     .Create 
End With

'@ change material: component1:needle to: Copper (annealed)

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:needle", "Copper (annealed)"

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Time Domain"

'@ define time domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set mesh properties (Hexahedral)

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "1" 
     .Set "StepsPerWaveFar", "1" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "10" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "15" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementType", "NONE" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementType", "NONE" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementType", "RATIO" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "1" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "1"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "1"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
     .Set "SnapToTori", "1"
End With 
With Mesh 
     .ConnectivityCheck "True"
     .UsePecEdgeModel "True" 
     .PointAccEnhancement "0" 
     .TSTVersion "0"
	  .PBAVersion "2024061424" 
     .SetCADProcessingMethod "MultiThread22", "-1" 
     .SetGPUForMatrixCalculationDisabled "False" 
End With

'@ set local mesh properties for: meshgroup2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With MeshSettings
     With .ItemMeshSettings ("group$meshgroup2")
          .SetMeshType "Hex"
          .Set "ConsiderGlobalEdgeRefinement", 0
          .Set "ConsiderGlobalFaceRefinement", 0
          .Set "ConsiderGlobalMaterialRefinement", 0
          .Set "ConsiderGlobalRefinement", 0
          .Set "ConsiderGlobalSnapping", 1
          .Set "EdgeRefinementBufferLines", 3
          .Set "EdgeRefinementRatio", "2"
          .Set "EdgeRefinementStep", "0"
          .Set "EdgeRefinementType", "NONE"
          .Set "EllipseRefinementNSteps", 2
          .Set "EllipseRefinementRatio", 2
          .Set "EllipseRefinementStep", 0
          .Set "EllipseRefinementType", "NONE"
          .Set "FaceRefinementBufferLines", 3
          .Set "FaceRefinementNSteps", 2
          .Set "FaceRefinementRatio", 2
          .Set "FaceRefinementStep", 0
          .Set "FaceRefinementType", "NONE"
          .Set "SnappingIntervals", 0, 0, 0
          .Set "SnappingPriority", 0
          .Set "SnapToAxialEdges", 1
          .Set "SnapToCylinderCenters", 1
          .Set "SnapToCylinders", 1
          .Set "SnapToEllipseCenters", 1
          .Set "SnapToEllipses", 1
          .Set "SnapToObjectBoundaries", 0
          .Set "SnapToPlanes", 1
          .Set "SnapToSpheres", 1
          .Set "SnapToTori", 1
          .Set "SnapXYZ", "1", "1", "1"
          .Set "UseMaterialRefinement", 1
          .Set "UseSnappingPriority", 0
          .Set "VolumeRefinementExtentNumSteps", 3, 3, 3
          .Set "VolumeRefinementExtentStep", 0, 0, 0
          .Set "VolumeRefinementExtentType", "STEPS_PER_DIM"
          .Set "VolumeRefinementExtentValueUseSameXYZ", 1
          .Set "VolumeRefinementNumSteps", "0", "0", "0"
          .Set "VolumeRefinementRatio", "2", "2", "2"
          .Set "VolumeRefinementScopeType", "ALL"
          .Set "VolumeRefinementStep", "0.1", "0.1", "0.1"
          .Set "VolumeRefinementType", "NONE"
          .Set "VolumeRefinementValueUseSameXYZ", 1
     End With
End With

'@ change solver type

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
ChangeSolverType "HF Frequency Domain"

'@ define material: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "Galinstan"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "1"
     .Mu "1"
     .Sigma "3.46e6"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "1", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddInactiveSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ change material: component1:needle to: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:needle", "Galinstan"

'@ delete port: port1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Port.Delete "1"

'@ clear picks

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.ClearAllPicks

'@ rename block: component1:needle to: component1:needle_1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Rename "component1:needle", "needle_1"

'@ define cylinder: component1:needle_2

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "needle_2" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "needle_radius" 
     .InnerRadius "0" 
     .Axis "x" 
     .Xrange "pipe_Ro +h4 +t_SRR +h3", "pipe_Ro +h4 +t_SRR +h3+t_microstrip" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ pick circle center point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickCirclecenterFromId "component1:needle_1", "2"

'@ pick circle center point

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Pick.PickCirclecenterFromId "component1:needle_2", "2"

'@ define discrete port: 1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "22", "0", "15"
     .SetP2 "True", "20.9", "0", "15"
     .InvertDirection "False"
     .LocalCoordinates "True"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ define cylinder: component1:hole_puncher

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "hole_puncher" 
     .Component "component1" 
     .Material "Vacuum" 
     .OuterRadius "hole_puncher" 
     .InnerRadius "0.0" 
     .Axis "x" 
     .Xrange "pipe_Ro+h4+t_SRR+h3+t_microstrip+h2+t_gnd", "pipe_Ro+h4+t_SRR+h3+t_microstrip+h2" 
     .Ycenter "0" 
     .Zcenter "z_mid" 
     .Segments "0" 
     .Create 
End With

'@ define material: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "Galinstan"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Mu "1"
     .Sigma "3.46e6"
     .LossyMetalSIRoughness "0.0"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "1", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define frequency domain solver parameters

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Mesh.SetCreator "High Frequency" 

With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "General purpose" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "1" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "False" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-4" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Auto" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "False" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .SetKeepSolutionCoefficients "MonitorsAndMeshAdaptation" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseEnhancedCFIE2 "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .UseEnhancedNFSImprint "True" 
     .UseFastDirectFFCalc "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "1001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "1024"
     .MaximumNumberOfCPUDevices "2"
End With

With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
     .ExtraPreconditioning "False" 
End With

With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetRCSOptimizationProperties "True", "100", "0.00001" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
     .CalculateModalWeightingCoefficientsCMA "True" 
     .DetectThinDielectrics "True" 
End With

'@ delete shape: component1:Cut_L_In

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:Cut_L_In"

'@ define cylinder: component1:SRR_Circle

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "SRR_Circle" 
     .Component "component1" 
     .Material "Galinstan" 
     .OuterRadius "r_SRR" 
     .InnerRadius "r_SRR -w_channel" 
     .Axis "x" 
     .Xrange "pipe_Ro+h4", "pipe_Ro +h4 + t_SRR" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ delete shape: component1:Mold_L_Out

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Delete "component1:Mold_L_Out"

'@ define brick: component1:Cut_circle

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Brick
     .Reset 
     .Name "Cut_circle" 
     .Component "component1" 
     .Material "PDMS" 
     .Xrange "pipe_Ro+ h4", "pipe_Ro + h4 +t_SRR" 
     .Yrange "-g_slot", "g_slot" 
     .Zrange "Z_mid+ r_SRR - w_channel-0.5", "Z_mid + r_SRR" 
     .Create
End With

'@ boolean subtract shapes: component1:SRR_Circle, component1:Cut_circle

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:SRR_Circle", "component1:Cut_circle"

'@ boolean insert shapes: component1:new_PDMS, component1:SRR_Circle

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:new_PDMS", "component1:SRR_Circle"

'@ set mesh properties (Tetrahedral)

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Mesh 
     .MeshType "Tetrahedral" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "4" 
     .Set "StepsPerWaveFar", "4" 
     .Set "PhaseErrorNear", "0.02" 
     .Set "PhaseErrorFar", "0.02" 
     .Set "CellsPerWavelengthPolicy", "automatic" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "15" 
     .Set "StepsPerBoxFar", "1" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     'MIN CELL 
     .Set "UseRatioLimit", "0" 
     .Set "RatioLimit", "100" 
     .Set "MinStep", "0" 
     'MESHING METHOD 
     .SetMeshType "Unstr" 
     .Set "Method", "0" 
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "CurvatureOrder", "1" 
     .Set "CurvatureOrderPolicy", "automatic" 
     .Set "CurvRefinementControl", "NormalTolerance" 
     .Set "NormalTolerance", "22.5" 
     .Set "SrfMeshGradation", "1.5" 
     .Set "SrfMeshOptimization", "1" 
End With 
With MeshSettings 
     .SetMeshType "Unstr" 
     .Set "UseMaterials",  "1" 
     .Set "MoveMesh", "0" 
End With 
With MeshSettings 
     .SetMeshType "All" 
     .Set "AutomaticEdgeRefinement",  "0" 
End With 
With MeshSettings 
     .SetMeshType "Tet" 
     .Set "UseAnisoCurveRefinement", "1" 
     .Set "UseSameSrfAndVolMeshGradation", "1" 
     .Set "VolMeshGradation", "1.5" 
     .Set "VolMeshOptimization", "1" 
End With 
With MeshSettings 
     .SetMeshType "Unstr" 
     .Set "SmallFeatureSize", "0" 
     .Set "CoincidenceTolerance", "1e-06" 
     .Set "SelfIntersectionCheck", "1" 
     .Set "OptimizeForPlanarStructures", "0" 
End With 
With Mesh 
     .SetParallelMesherMode "Tet", "maximum" 
     .SetMaxParallelMesherThreads "Tet", "1" 
End With

'@ define material colour: Galinstan

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "Galinstan"
     .Folder ""
     .Colour "1", "1", "0.501961" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define material colour: PDMS

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "PDMS"
     .Folder ""
     .Colour "1", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "True" 
     .Transparency "55" 
     .ChangeColour 
End With

'@ boolean add shapes: component1:Microstrip_horizontal, component1:Microstrip_vertical

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Add "component1:Microstrip_horizontal", "component1:Microstrip_vertical"

'@ boolean insert shapes: component1:new_PDMS, component1:Microstrip_horizontal

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Insert "component1:new_PDMS", "component1:Microstrip_horizontal"

'@ bend: layer stackup, component1:pvc pipe

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Bending 
	.Reset 
	.Version "10" 
	.Shape "component1:GND" 
	.Shape "component1:Microstrip_horizontal" 
	.Shape "component1:SRR_Circle" 
	.Shape "component1:new_PDMS" 
	.Solid "component1:pvc pipe" 
	.Faces "2,2" 
	.FlexBending "True" 
	.Bend 
End With

'@ boolean subtract shapes: component1:GND, component1:hole_puncher

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.Subtract "component1:GND", "component1:hole_puncher"

'@ define cylinder: component1:hole_puncher1

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Cylinder 
     .Reset 
     .Name "hole_puncher1" 
     .Component "component1" 
     .Material "PDMS" 
     .OuterRadius "hole_puncher1" 
     .InnerRadius "0.0" 
     .Axis "x" 
     .Xrange "pipe_Ro +h4 +t_SRR+h3 + t_microstrip+ h2", "pipe_Ro +h4 +t_SRR+h3 + t_microstrip+ h2+ t_gnd" 
     .Ycenter "0" 
     .Zcenter "Z_mid" 
     .Segments "0" 
     .Create 
End With

'@ define material: 2.5/ecoflex

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Reset 
     .Name "ecoflex"
     .Folder "2.5"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "1"
     .Mu "1"
     .Sigma "0"
     .TanD "0.02"
     .TanDFreq "0.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.501961", "0.501961", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ change material: component1:hole_puncher1 to: 2.5/ecoflex

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:hole_puncher1", "2.5/ecoflex"

'@ change material: component1:needle_1 to: 2.5/ecoflex

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:needle_1", "2.5/ecoflex"

'@ change material: component1:new_PDMS to: 2.5/ecoflex

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
Solid.ChangeMaterial "component1:new_PDMS", "2.5/ecoflex"

'@ define material colour: 2.5/ecoflex

'[VERSION]2024.5|33.0.1|20240614[/VERSION]
With Material 
     .Name "ecoflex"
     .Folder "2.5"
     .Colour "0.501961", "0.501961", "0.752941" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "65" 
     .ChangeColour 
End With

