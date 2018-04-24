Node: RB-14. Processor: Intel64/x64. System: Windows 7 (Service Pack 1)
  
  ____________________________________________________________________________
 |                                                                            |
 | Opera 18R2 [Build 36152] (x64)          started on 24/Apr/2018 at 10:51:53 |
 |____________________________________________________________________________|
  
 Solver command file: solver.comi does not exist
  
 Opening database                       complete 00:00:00.44 (00:00:00.03 cp)
  
 Simulation 1                            started at 10:51:55
 Opening database H:\Opera\Capacitor.op3, simulation number 1 on 24/Apr/2018 at 10:51:55
 ________________________________________________________________________________________________________________________
  
    DETAILS OF SIMULATION
    ---------------------
  
    Electrostatic Analysis (TOSCA)
  
    File: Capacitor.op3 simulation:  1
    Created on: 24/Apr/2018 10:51:47
    In Directory: H:\Opera\
    By Machine: Node: RB-14. Processor: Intel64/x64. System: Windows. version 7 (Service Pack 1)
    Log Files: Modeller_201804241023573641.log/lp
    Simulation created using: Opera-3d/Modeller Version 18.2.36152
    User did not enter a title
  
    SI(millimetre) units
  
    No conductors
    Adaptive RHS integrals
  
    Automatic potential cuts are enabled.
  
    Boundary conditions:
      TANGELEC
         Note: Assumed as the default boundary condition to one or more external faces.
      VOLTAGE
        0.0 [volt] with drive: (None)
        10.0 [volt] with drive: (None)
  
    Linear solution
  
    No periodicity conditions have been defined
  
    1 solution scaling factor defined for all drives: 1.0
  
    Materials defined:
    AIR
  
    44293 nodes in the model
    83534 edges in the model
    Both linear and quadratic elements exist in the model
    57864 tetrahedral elements (41284 linear and 16580 quadratic)
    57864 elements in total
  
    Symmetry:
    none
  
 ________________________________________________________________________________________________________________________
  
  
  Number of threads = 1. Available processors (CPU cores) = 2.
  
 Loading model description              complete 00:00:00.71 (00:00:00.28 cp)
 Preparing data                         complete 00:00:00.44 (00:00:00.34 cp)
  
 Model size information
 ----------------------
 Number of active elements : 57864
 Number of nodes           : 44293
 Number of equations       : 26269
 Number of non-zeros       : 286937
 Forming Matrix Sparsity                complete 00:00:00.28 (00:00:00.24 cp)
  
 Scaling factor 1, simulation 1: 1.0     started
 Solving linear equations
 Generating matrix                      complete 00:00:00.82 (00:00:00.67 cp)
 SSORCG iterations: 86, relative change=8.2389492334682E-09
 Matrix solution                        complete 00:00:00.26 (00:00:00.18 cp)
  
 Calculating nodal fields                started
 Generating primary fields E            complete 00:00:00.48 (00:00:00.48 cp)
 Enforcing fields on boundaries         complete 00:00:00.39 (00:00:00.35 cp)
 Adjusting midside nodal values         complete 00:00:00.62 (00:00:00.62 cp)
 Generating secondary fields D          complete 00:00:00.27 (00:00:00.26 cp)
 Estimated error in D Field: RMS = 18.99158%, Weighted RMS = 0.208732%
 Calculating error estimate             complete 00:00:00.55 (00:00:00.56 cp)
 Calculating nodal fields               complete 00:00:02.35 (00:00:02.29 cp)
 Scaling factor 1, simulation 1: 1.0    complete at 10:52:00
                                                 00:00:03.47 (00:00:03.18 cp)
 Simulation 1                           complete at 10:52:00
                                                 00:00:04.96 (00:00:04.08 cp)
  
  ____________________________________________________________________________
 |                                                                            |
 | Opera 18R2 [Build 36152] (x64)         complete on 24/Apr/2018 at 10:52:00 |
 |                                               00:00:06.29 (00:00:04.24 cp) |
 |____________________________________________________________________________|
  
