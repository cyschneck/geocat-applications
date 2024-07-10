; gc_aangle
; https://www.ncl.ucar.edu/Document/Functions/Built-in/gc_aangle.shtml
aangle = gc_aangle( (/10.0d, 20.0d, 0.0d,  0.0d/), (/ 0.0d,  0.0d, 5.0d, 20.0d/) )
print (aangle) ; should be 89.99999999999963

; Variable: aangle
; Type: double
; Total Size: 8 bytes
;             1 values
; Number of Dimensions: 1
; Dimensions and sizes:	[1]
; Coordinates:
; (0)	89.99999999999963

lat = (/ (/ 0., 0.,   0., 10.0/) , (/22.,40.,  22., 10.0/), (/10.,20.,   0.,  0.0/) /)
lon = (/ (/ 0.,10.,   0.,  0.0/) , (/40.,50.,  40., 30.0/), (/ 0., 0.,   5., 20.0/) /)
angles = gc_aangle(lat, lon)
print(angles) ; should be 90, 17.20756, 90

; Variable: angles
; Type: float
; Total Size: 12 bytes
;             3 values
; Number of Dimensions: 1
; Dimensions and sizes:	[3]
; Coordinates:
; (0)	90
; (1)	17.20756
; (2)	90
