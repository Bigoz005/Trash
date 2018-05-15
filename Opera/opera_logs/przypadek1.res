Node: RB-14. Processor: Intel64/x64. System: Windows 7 (Service Pack 1)
  
  ____________________________________________________________________________
 |                                                                            |
 | Opera 18R2 [Build 36152] (x64)          started on 24/Apr/2018 at 11:42:50 |
 |____________________________________________________________________________|
  
 Solver command file: solver.comi does not exist
  
 Opening database                       complete 00:00:00.80 (00:00:00.00 cp)
  
 Simulation 1                            started at 11:42:52
 Opening database H:\Opera\przypadek1.op3, simulation number 1 on 24/Apr/2018 at 11:42:52
 ________________________________________________________________________________________________________________________
  
    DETAILS OF SIMULATION
    ---------------------
  
    Electrostatic Analysis (TOSCA)
  
    File: przypadek1.op3 simulation:  1
    Created on: 24/Apr/2018 11:42:44
    In Directory: H:\Opera\
    By Machine: Node: RB-14. Processor: Intel64/x64. System: Windows. version 7 (Service Pack 1)
    Log Files: Modeller_201804241059405361.log/lp
    Simulation created using: Opera-3d/Modeller Version 18.2.36152
    User did not enter a title
  
    SI(micron) units
  
    No conductors
    Adaptive RHS integrals
  
    Automatic potential cuts are enabled.
  
    Boundary conditions:
      TANGELEC
         Note: Assumed as the default boundary condition to one or more external faces.
      VOLTAGE
         Note: Defined on internal faces. Please ensure these are required.
        0.0 [volt] with drive: (None)
        50.0 [volt] with drive: (None)
  
    Linear solution
  
    No periodicity conditions have been defined
  
    1 solution scaling factor defined for all drives: 1.0
  
    Materials defined:
    POLISILIKON
      Non conducting
      Isotropic permittivity: 1.0E-03
    AZOTEK_KRZEMU
      Non conducting
      Isotropic permittivity: 6.0
    SILIKON
      Non conducting
      Isotropic permittivity: 11.7
    DWUTLENEK_KRZEMU
      Non conducting
      Isotropic permittivity: 3.9
    AIR
  
    67756 nodes in the model
    123578 edges in the model
    Both linear and quadratic elements exist in the model
    78497 tetrahedral elements (56157 linear and 22340 quadratic)
    78497 elements in total
  
    Symmetry:
    none
  
 ________________________________________________________________________________________________________________________
  
  
  Number of threads = 1. Available processors (CPU cores) = 2.
  
 Loading model description              complete 00:00:01.44 (00:00:00.29 cp)
 Preparing data                         complete 00:00:00.83 (00:00:00.76 cp)
  
 Model size information
 ----------------------
 Number of active elements : 78497
 Number of nodes           : 67756
 Number of equations       : 28226
 Number of non-zeros       : 285640
 Forming Matrix Sparsity                complete 00:00:00.29 (00:00:00.28 cp)
  
 Scaling factor 1, simulation 1: 1.0     started
 Solving linear equations
 Generating matrix                      complete 00:00:00.84 (00:00:00.79 cp)
 SSORCG iterations: 70, relative change=7.51280449830845E-09
 Matrix solution                        complete 00:00:00.17 (00:00:00.15 cp)
  
 Calculating nodal fields                started
 Generating primary fields E            complete 00:00:00.64 (00:00:00.65 cp)
 Enforcing fields on boundaries         complete 00:00:00.43 (00:00:00.42 cp)
 Adjusting midside nodal values         complete 00:00:00.90 (00:00:00.85 cp)
 Generating secondary fields D          complete 00:00:00.46 (00:00:00.46 cp)
 Estimated error in D Field: RMS = 21.4096 %, Weighted RMS = 1.754487%
 Calculating error estimate             complete 00:00:00.83 (00:00:00.79 cp)
 Calculating nodal fields               complete 00:00:03.29 (00:00:03.21 cp)
 Scaling factor 1, simulation 1: 1.0    complete at 11:42:59
                                                 00:00:04.33 (00:00:04.18 cp)
 Simulation 1                           complete at 11:42:59
                                                 00:00:06.91 (00:00:05.55 cp)
  
  ____________________________________________________________________________
 |                                                                            |
 | Opera 18R2 [Build 36152] (x64)         complete on 24/Apr/2018 at 11:42:59 |
 |                                               00:00:09.46 (00:00:05.64 cp) |
 |____________________________________________________________________________|
  
