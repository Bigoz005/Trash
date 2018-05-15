Opera-3d Modeller                       started on 15/May/2018 at 10:23:59
Opera 18R2 [Build 36152] (x64)
© Copyright Chelton Limited 1984-2016. All Rights Reserved.
Node: RB-14. Processor: Intel64/x64. System: Windows 7 (Service Pack 1)
Command language initialization.
Information: modeller.comi was not found in the local or home directory
OpenGL error: nieprawid?owe wyliczenie in OGLList::oglStartList
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=0 Y0=0 Z0=0 X1=10 Y1=10 Z1=10
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=0 Y0=0 Z0=0 X1=10 Y1=10 Z1=10
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** THREED OPTION=SETVIEW SIZE=0
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=20 Y0=20 Z0=20 X1=30 Y1=30 Z1=30
Updating unique body name to 'Block-001'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $COMI MODE=CONTINUOUS FILE='H:\Opera\pudelko.comi'
Opening file for input: H:\Opera\pudelko.comi
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=40 Y0=40 Z0=40 X1=50 Y1=50 Z1=50
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='Block'
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='Block-001'
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='pudelko'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=APPEND POSITION=1  COMIFILENAME='H:\Opera\pudelko.comi'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=1
*** CONTROL COMMAND ** $COMI 'H:/Opera/pudelko.comi'
Opening file for input: H:/Opera/pudelko.comi
$COMI file name resolved to: H:\Opera\pudelko.comi
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=40 Y0=40 Z0=40 X1=50 Y1=50 Z1=50
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='pudelko'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
*** CONTROL COMMAND ** $COMI 'H:/Opera/pudelko.comi'
Opening file for input: H:/Opera/pudelko.comi
$COMI file name resolved to: H:\Opera\pudelko.comi
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=40 Y0=40 Z0=40 X1=50 Y1=50 Z1=50
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='pudelko'
**** COMMAND INPUT *** MODEL CREATE
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='ModelBody'
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
6 faces completed, generating 1512 surface elements

Triangular facet quality on 6 faces
Triangles: 1512, Max: 0.999986, Min: 0.774857, Mean: 0.976525, Power2Mean: 0.975162

**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 1 cells
Tetrahedra: 6147, Max: 1.262746, Min: 0.492598, RMS: 1.028218, Power2Mean: 1.007219, Worst cell: 1

Total nodes:    1428
Tetrahedra:     6147
Total volume: 1000.0
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='ModelBody'
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
6 faces completed, generating 1512 surface elements

Triangular facet quality on 6 faces
Triangles: 1512, Max: 0.999986, Min: 0.774857, Mean: 0.976525, Power2Mean: 0.975162

**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='ModelBody'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='pudelko'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
*** CONTROL COMMAND ** $COMI 'H:/Opera/pudelko.comi'
Opening file for input: H:/Opera/pudelko.comi
$COMI file name resolved to: H:\Opera\pudelko.comi
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=40 Y0=40 Z0=40 X1=50 Y1=50 Z1=50
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT *** MODEL CREATE
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
6 faces completed, generating 1512 surface elements

Triangular facet quality on 6 faces
Triangles: 1512, Max: 0.999986, Min: 0.774857, Mean: 0.976525, Power2Mean: 0.975162

**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 1 cells
Tetrahedra: 6147, Max: 1.262746, Min: 0.492598, RMS: 1.028218, Power2Mean: 1.007219, Worst cell: 1

Total nodes:    1428
Tetrahedra:     6147
Total volume: 1000.0
*** CONTROL COMMAND ** $constant #a 3
#a=3
*** CONTROL COMMAND ** $constant #b 4
#b=4
*** CONTROL COMMAND ** $constant #c #a+#b
#c=7
*** CONTROL COMMAND ** $parameter #b #a+#b
#b=#A+#B=7
*** CONTROL COMMAND ** $string t1 'Witaj'
 t1='Witaj'
*** CONTROL COMMAND ** $askparameter #g 'podaj wzor na g'
Please give a value for #g (podaj wzor na g)
podaj wzor na g
*** TERMINAL INPUT *** #a+#b
*** CONTROL COMMAND ** $PARAMETER #g #a+#b
#g=#A+#B=22
DCOD Message 103:Control command 'promt t2 'podaj nazwe pliku' ' not recognized. (CSTRUC)
*** CONTROL COMMAND ** $prompt t2 'podaj nazwe pliku'
Please give a value for T2 (podaj nazwe pliku)
podaj nazwe pliku
*** TERMINAL INPUT *** pliczek
*** CONTROL COMMAND ** $STRING T2 pliczek
 T2='pliczek'
*** CONTROL COMMAND ** $displayline 'nazwa pliku to: pliczek
DCOD Message  15:Terminating quote missing in value starting 'nazwa pliku to: pliczek... (DECODE)
*** CONTROL COMMAND ** $displayline 'nazwa pliku to: pliczek'
nazwa pliku to: pliczek
**** COMMAND INPUT *** #z 7.14
DCOD Message   1:Command '#z' not recognized. (CMND)
**** COMMAND INPUT *** #z 7,14
DCOD Message   1:Command '#z' not recognized. (CMND)
DCOD Message 103:Control command 'z 7,14 ' not recognized. (CSTRUC)
**** COMMAND INPUT *** constant #z 7.19
DCOD Message   1:Command 'constant' not recognized. (CMND)
*** CONTROL COMMAND ** $constant #z 7.14
#z=7.14
*** CONTROL COMMAND ** $displayline ' czesc rzeczywista z to: 7.14'
 czesc rzeczywista z to: 7.14
**** COMMAND INPUT ***
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=APPEND POSITION=1  COMIFILENAME='H:\Opera\model.comi'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=2
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=APPEND POSITION=1  COMIFILENAME='H:\Opera\suma.comi'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=3
*** CONTROL COMMAND ** $COMI 'H:/Opera/suma.comi'
Opening file for input: H:/Opera/suma.comi
$COMI file name resolved to: H:\Opera\suma.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='suma dwoch liczb'
*** CONTROL COMMAND ** $ask #a 'podaj a:'
*** CONTROL COMMAND ** $ask #b 'podaj b:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 3 DESCRIPTION='podaj a:'
#a=3 (podaj a:)
*** CONTROL COMMAND ** $CONSTANT #b 22 DESCRIPTION='podaj b:'
#b=22 (podaj b:)
*** CONTROL COMMAND ** $parameter #suma #a+#b
#suma=#A+#B=25
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Dodawanie'
*** CONTROL COMMAND ** $displayline text='Suma dwoch liczb" 3.0 + 22.0 = 25.0'
Suma dwoch liczb" 3.0 + 22.0 = 25.0
*** CONTROL COMMAND ** $DIALOG ACTION=stop
End of command file.
*** CONTROL COMMAND ** $ END COMI
*** CONTROL COMMAND ** $COMI 'H:/Opera/suma.comi'
Opening file for input: H:/Opera/suma.comi
$COMI file name resolved to: H:\Opera\suma.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='suma dwoch liczb'
*** CONTROL COMMAND ** $ask #a 'podaj a:'
*** CONTROL COMMAND ** $ask #b 'podaj b:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 3
#a=3
*** CONTROL COMMAND ** $CONSTANT #b 22
#b=22
*** CONTROL COMMAND ** $parameter #suma #a+#b
#suma=#A+#B=25
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Dodawanie'
*** CONTROL COMMAND ** $displayline text='Suma dwoch liczb" 3.0 + 22.0 = 25.0'
Suma dwoch liczb" 3.0 + 22.0 = 25.0
*** CONTROL COMMAND ** $DIALOG ACTION=stop
End of command file.
*** CONTROL COMMAND ** $ END COMI
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=APPEND POSITION=1  COMIFILENAME='H:\Opera\Kula.comi'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=4
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
Undefined variable: #R
DCOD Message  74:Unknown variable in expression '#r' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Kula.comi' (Line 8)
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=4
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
Undefined variable: #R
DCOD Message  74:Unknown variable in expression '#r' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Kula.comi' (Line 8)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
Undefined variable: #R
DCOD Message  74:Unknown variable in expression '#r' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Kula.comi' (Line 8)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 3
#a=3
*** CONTROL COMMAND ** $CONSTANT #b 22
#b=22
*** CONTROL COMMAND ** $CONSTANT #c 7 DESCRIPTION='podaj Z0:'
#c=7 (podaj Z0:)
*** CONTROL COMMAND ** $CONSTANT #r 4 DESCRIPTION='podaj R:'
#r=4 (podaj R:)
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
Primitive objects may not be created when the model body exists
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Kula.comi' (Line 9)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 3
#a=3
*** CONTROL COMMAND ** $CONSTANT #b 22
#b=22
*** CONTROL COMMAND ** $CONSTANT #c 7
#c=7
*** CONTROL COMMAND ** $CONSTANT #r 4
#r=4
**** FILE INPUT ******
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
Primitive objects may not be created when the model body exists
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Kula.comi' (Line 10)
**** COMMAND INPUT *** PICK OPTION=ALL TYPE=BODY
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='pudelko'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
*** CONTROL COMMAND ** $COMI 'H:/Opera/Kula.comi'
Opening file for input: H:/Opera/Kula.comi
$COMI file name resolved to: H:\Opera\Kula.comi
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie kuli'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne srodka kuli'
Wspolrzedne srodka kuli
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Promien kuli'
Promien kuli
*** CONTROL COMMAND ** $ask #r 'podaj R:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 3
#a=3
*** CONTROL COMMAND ** $CONSTANT #b 22
#b=22
*** CONTROL COMMAND ** $CONSTANT #c 7
#c=7
*** CONTROL COMMAND ** $CONSTANT #r 4
#r=4
**** FILE INPUT ******
**** FILE INPUT ****** SPHERE NAME='kula' X0=#a Y0=#b Z0=#c RADIUS=#r
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='kula'
**** COMMAND INPUT *** DELETE REGULARIZE=YES EXTERNAL=NO
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=INIT POSITION=0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=APPEND POSITION=1  COMIFILENAME='H:\Opera\Do box.comi'
*** CONTROL COMMAND ** $TOOLBUTTON ACTION=LOADCOMI POSITION=5
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO #g  1 4 1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box'
Wspolrzedne box
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $ask #d 'podaj X1:'
*** CONTROL COMMAND ** $ask #e 'podaj Y1:'
*** CONTROL COMMAND ** $ask #f 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#d Y1=#e Z1=#f
Undefined variable: #D
DCOD Message  74:Unknown variable in expression '#d' (DECODE)
Undefined variable: #E
DCOD Message  74:Unknown variable in expression '#e' (DECODE)
Undefined variable: #F
DCOD Message  74:Unknown variable in expression '#f' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 10)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box'
Wspolrzedne box
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $ask #d 'podaj X1:'
*** CONTROL COMMAND ** $ask #e 'podaj Y1:'
*** CONTROL COMMAND ** $ask #f 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#d Y1=#e Z1=#f
Undefined variable: #D
DCOD Message  74:Unknown variable in expression '#d' (DECODE)
Undefined variable: #E
DCOD Message  74:Unknown variable in expression '#e' (DECODE)
Undefined variable: #F
DCOD Message  74:Unknown variable in expression '#f' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 10)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #d 'podaj X1:'
*** CONTROL COMMAND ** $ask #e 'podaj Y1:'
*** CONTROL COMMAND ** $ask #f 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#d Y1=#e Z1=#f
Undefined variable: #D
DCOD Message  74:Unknown variable in expression '#d' (DECODE)
Undefined variable: #E
DCOD Message  74:Unknown variable in expression '#e' (DECODE)
Undefined variable: #F
DCOD Message  74:Unknown variable in expression '#f' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 11)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a0 'podaj X0:'
*** CONTROL COMMAND ** $ask #b0 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c0 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #a1 'podaj X0:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a0 Y0=#b0 Z0=#c0 X1=#a1 Y1=#b1 Z1=#c1
Undefined variable: #A0
DCOD Message  74:Unknown variable in expression '#a0' (DECODE)
Undefined variable: #B0
DCOD Message  74:Unknown variable in expression '#b0' (DECODE)
Undefined variable: #C0
DCOD Message  74:Unknown variable in expression '#c0' (DECODE)
Undefined variable: #A1
DCOD Message  74:Unknown variable in expression '#a1' (DECODE)
Undefined variable: #B1
DCOD Message  74:Unknown variable in expression '#b1' (DECODE)
Undefined variable: #C1
DCOD Message  74:Unknown variable in expression '#c1' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 11)
**** COMMAND INPUT *** CLEAR REVERT=NO
Information: modeller.comi was not found in the local or home directory
Command language initialization.
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a0 'podaj X0:'
*** CONTROL COMMAND ** $ask #b0 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c0 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #a1 'podaj X0:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a0 Y0=#b0 Z0=#c0 X1=#a1 Y1=#b1 Z1=#c1
Undefined variable: #A0
DCOD Message  74:Unknown variable in expression '#a0' (DECODE)
Undefined variable: #B0
DCOD Message  74:Unknown variable in expression '#b0' (DECODE)
Undefined variable: #C0
DCOD Message  74:Unknown variable in expression '#c0' (DECODE)
Undefined variable: #A1
DCOD Message  74:Unknown variable in expression '#a1' (DECODE)
Undefined variable: #B1
DCOD Message  74:Unknown variable in expression '#b1' (DECODE)
Undefined variable: #C1
DCOD Message  74:Unknown variable in expression '#c1' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 11)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #a1 'podaj X0:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#a1 Y1=#b1 Z1=#c1
Undefined variable: #A
DCOD Message  74:Unknown variable in expression '#a' (DECODE)
Undefined variable: #B
DCOD Message  74:Unknown variable in expression '#b' (DECODE)
Undefined variable: #C
DCOD Message  74:Unknown variable in expression '#c' (DECODE)
Undefined variable: #A1
DCOD Message  74:Unknown variable in expression '#a1' (DECODE)
Undefined variable: #B1
DCOD Message  74:Unknown variable in expression '#b1' (DECODE)
Undefined variable: #C1
DCOD Message  74:Unknown variable in expression '#c1' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 11)
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #a1 'podaj X0:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 0 DESCRIPTION='podaj X0:'
#a=0 (podaj X0:)
*** CONTROL COMMAND ** $CONSTANT #b 0 DESCRIPTION='podaj Y0:'
#b=0 (podaj Y0:)
*** CONTROL COMMAND ** $CONSTANT #c 0 DESCRIPTION='podaj Z0:'
#c=0 (podaj Z0:)
*** CONTROL COMMAND ** $CONSTANT #a1 1 DESCRIPTION='podaj X0:'
#a1=1 (podaj X0:)
*** CONTROL COMMAND ** $CONSTANT #b1 1 DESCRIPTION='podaj Y1:'
#b1=1 (podaj Y1:)
*** CONTROL COMMAND ** $CONSTANT #c1 1 DESCRIPTION='podaj Z1:'
#c1=1 (podaj Z1:)
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#a1 Y1=#b1 Z1=#c1
**** FILE INPUT ****** END DO
DCOD Message  36:This command has no parameters. (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 13)
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
*** LOOP COMMAND ***** yes
Information: modeller.comi was not found in the local or home directory
Command language initialization.
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box0'
Wspolrzedne box0
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
*** CONTROL COMMAND ** $displayline text='Wspolrzedne box1'
Wspolrzedne box1
*** CONTROL COMMAND ** $ask #a1 'podaj X0:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 0 DESCRIPTION='podaj X0:'
#a=0 (podaj X0:)
*** CONTROL COMMAND ** $CONSTANT #b 0 DESCRIPTION='podaj Y0:'
#b=0 (podaj Y0:)
*** CONTROL COMMAND ** $CONSTANT #c 0 DESCRIPTION='podaj Z0:'
#c=0 (podaj Z0:)
*** CONTROL COMMAND ** $CONSTANT #a1 15 DESCRIPTION='podaj X0:'
#a1=15 (podaj X0:)
*** CONTROL COMMAND ** $CONSTANT #b1 15 DESCRIPTION='podaj Y1:'
#b1=15 (podaj Y1:)
*** CONTROL COMMAND ** $CONSTANT #c1 15 DESCRIPTION='podaj Z1:'
#c1=15 (podaj Z1:)
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#a1 Y1=#b1 Z1=#c1
**** FILE INPUT ****** END DO
DCOD Message  36:This command has no parameters. (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 13)
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
*** LOOP COMMAND ***** yes
Information: modeller.comi was not found in the local or home directory
Command language initialization.
*** CONTROL COMMAND ** $COMI 'H:/Opera/Do box.comi'
Opening file for input: H:/Opera/Do box.comi
$COMI file name resolved to: H:\Opera\Do box.comi
*** CONTROL COMMAND ** $ DO INDEX=#g START=1 FINISH=4 INCREMENT=1
$DO-loop variable: #g=1
*** CONTROL COMMAND ** $DIALOG ACTION=start TITLE='Rysowanie box'
**** FILE INPUT ******
*** CONTROL COMMAND ** $ask #a 'podaj X0:'
*** CONTROL COMMAND ** $ask #b 'podaj Y0:'
*** CONTROL COMMAND ** $ask #c 'podaj Z0:'
**** FILE INPUT ******
*** CONTROL COMMAND ** $ask #a1 'podaj X1:'
*** CONTROL COMMAND ** $ask #b1 'podaj Y1:'
*** CONTROL COMMAND ** $ask #c1 'podaj Z1:'
*** CONTROL COMMAND ** $DIALOG ACTION=stop
*** CONTROL COMMAND ** $CONSTANT #a 0 DESCRIPTION='podaj X0:'
#a=0 (podaj X0:)
*** CONTROL COMMAND ** $CONSTANT #b 0 DESCRIPTION='podaj Y0:'
#b=0 (podaj Y0:)
*** CONTROL COMMAND ** $CONSTANT #c 0 DESCRIPTION='podaj Z0:'
#c=0 (podaj Z0:)
*** CONTROL COMMAND ** $CONSTANT #a1 1 DESCRIPTION='podaj X1:'
#a1=1 (podaj X1:)
*** CONTROL COMMAND ** $CONSTANT #b1 1 DESCRIPTION='podaj Y1:'
#b1=1 (podaj Y1:)
*** CONTROL COMMAND ** $CONSTANT #c1 1 DESCRIPTION='podaj Z1:'
#c1=1 (podaj Z1:)
**** FILE INPUT ****** BLOCK NAME='pudelko' X0=#a Y0=#b Z0=#c X1=#a1 Y1=#b1 Z1=#c1
**** FILE INPUT ****** END DO
DCOD Message  36:This command has no parameters. (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'H:\Opera\Do box.comi' (Line 13)
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
*** LOOP COMMAND ***** yes
Information: modeller.comi was not found in the local or home directory
Command language initialization.
User requested application close.
Opera-3d Modeller                      complete on 15/May/2018 at 11:24:08
                                                01:00:08.96 (00:00:42.08 cp)
