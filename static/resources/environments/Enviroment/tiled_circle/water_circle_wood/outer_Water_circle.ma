//Maya ASCII 2018 scene
//Name: outer_Water_circle.ma
//Last modified: Thu, Sep 13, 2018 05:53:54 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1F89AC20-4937-6531-F5EB-BCB860E583E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -33.124183911656658 22.160502484216902 51.907013328671027 ;
	setAttr ".r" -type "double3" 339.26164729781243 1766.5999999988353 9.5243541412246382e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A7081671-4BD7-520A-5840-F6AA5B411B73";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 63.740662827379296;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.30962648037178653 -0.41012568898928214 2.1411247891359224 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1526BD10-4F0C-8E6D-92B4-CF863086AF67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "694137AE-430E-3385-6531-5199444F7152";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B251288C-4CD4-7737-B838-5DAE16D21433";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C83DB294-49A5-0E86-CEF9-26AE5D6B5164";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0BFAFE4D-4965-F0F6-D462-1E8C3FE430B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5E9209A1-4FF6-E5D6-1DE6-B5A604EB28E8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "design";
	rename -uid "0E631ED8-4804-24A4-DC2D-FE9D4852494D";
	setAttr ".t" -type "double3" 0.13268937221609023 -0.84074409080192791 -0.11311545692901737 ;
	setAttr ".s" -type "double3" 0.64579080168420899 0.64579080168420899 0.64579080168420899 ;
createNode transform -n "outer_water_circle" -p "design";
	rename -uid "8646B626-4645-94DB-D9A1-57B26AD855A6";
	setAttr ".rp" -type "double3" -0.20547127617855959 1.3018830362002842 0.17516121383752914 ;
	setAttr ".sp" -type "double3" -0.20547127617855959 1.3018830362002842 0.17516121383752914 ;
createNode mesh -n "outer_water_circleShape" -p "outer_water_circle";
	rename -uid "7D17CA97-4A11-7231-60BF-28A032B4E37E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8520946204662323 0.28510810434818268 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 176 ".uvst[0].uvsp[0:175]" -type "float2" 0.50318176 0.33494872
		 0.50318176 0.25340009 0.60356313 0.25340009 0.60356313 0.33494872 0.50318176 0.17185155
		 0.60356313 0.17185155 0.50318176 0.4085148 0.60356313 0.4085148 0.50318176 0.098285377
		 0.60356313 0.098285377 0.50318176 0.4668971 0.60356313 0.4668971 0.50318176 0.039903045
		 0.60356313 0.039903045 0.60910696 0.1718511 0.60910696 0.098285109 0.70948821 0.098285109
		 0.70948821 0.1718511 0.60910696 0.039903045 0.70948821 0.039903045 0.60910696 0.25339997
		 0.70948821 0.25339997 0.60910696 0.3349489 0.70948821 0.3349489 0.60910696 0.40851492
		 0.70948821 0.40851492 0.60910696 0.46689695 0.70948821 0.46689695 0.7773068 0.47945446
		 0.7773068 0.55809522 0.7150321 0.55809522 0.7150321 0.47945446 0.7773068 0.63673592
		 0.7150321 0.63673592 0.7773068 0.40851143 0.7150321 0.40851143 0.7773068 0.70767903
		 0.7150321 0.70767903 0.7773068 0.35221061 0.7150321 0.35221061 0.7773068 0.76397991
		 0.7150321 0.76397991 0.883232 0.32442862 0.883232 0.39537144 0.82095724 0.39537144
		 0.82095724 0.32442862 0.883232 0.45167229 0.82095724 0.45167229 0.883232 0.24578759
		 0.82095724 0.24578759 0.883232 0.16714677 0.82095724 0.16714677 0.883232 0.096203744
		 0.82095724 0.096203744 0.883232 0.039903045 0.82095724 0.039903045 0.46470717 0.33482677
		 0.47487149 0.27065179 0.4979465 0.27065179 0.48665273 0.34195691 0.46470737 0.20647684
		 0.48665297 0.19934666 0.43520933 0.39271957 0.45387748 0.4062824 0.43520933 0.14858398
		 0.45387748 0.13502115 0.3892653 0.43866339 0.40282834 0.45733148 0.3892653 0.10264018
		 0.40282857 0.083972067 0.3313725 0.46816123 0.33850306 0.490107 0.3313725 0.07314238
		 0.33850306 0.051196575 0.26719773 0.47832552 0.26719773 0.50140059 0.26719773 0.062978059
		 0.26719773 0.039903045 0.20302302 0.46816123 0.19589251 0.490107 0.20302302 0.07314238
		 0.19589239 0.051196575 0.14513007 0.43866339 0.131567 0.45733148 0.14513007 0.10264018
		 0.131567 0.083972067 0.099186122 0.39271957 0.080518126 0.4062824 0.099186033 0.14858398
		 0.080518126 0.13502115 0.069688231 0.33482677 0.047742635 0.34195691 0.069688231
		 0.20647684 0.047742635 0.19934666 0.05952388 0.27065179 0.036448985 0.27065179 0.48665267
		 0.66292071 0.49794644 0.73422599 0.47487143 0.73422599 0.46470711 0.67005128 0.48665288
		 0.80553138 0.46470734 0.79840076 0.45387745 0.59859538 0.43520933 0.61215848 0.45387745
		 0.86985672 0.43520933 0.85629368 0.40282834 0.54754633 0.38926524 0.56621444 0.40282857
		 0.92090571 0.38926524 0.90223771 0.33850306 0.51477104 0.33137241 0.53671634 0.33850306
		 0.95368111 0.33137241 0.93173563 0.26719773 0.50347728 0.26719773 0.52655226 0.26719773
		 0.96497476 0.26719773 0.9418999 0.19589248 0.51477104 0.20302296 0.53671634 0.19589236
		 0.95368111 0.20302296 0.93173563 0.131567 0.54754633 0.14513001 0.56621444 0.131567
		 0.92090571 0.14513001 0.90223771 0.080518126 0.59859538 0.099186093 0.61215848 0.080518126
		 0.86985672 0.099186003 0.85629368 0.047742665 0.66292071 0.069688171 0.67005128 0.047742665
		 0.80553126 0.069688171 0.79840076 0.036448985 0.73422599 0.05952391 0.73422599 0.21519771
		 0.14738128 0.21519771 0.073815316 0.31557918 0.073815316 0.31557918 0.14738128 0.21519771
		 0.22892994 0.31557918 0.22892994 0.21519771 0.31047848 0.31557918 0.31047848 0.21519771
		 0.38404477 0.31557918 0.38404477 0.81541431 0.27656624 0.81541431 0.3501316 0.7150321
		 0.3501316 0.7150321 0.27656624 0.81541431 0.19501734 0.7150321 0.19501734 0.81541431
		 0.11346835 0.7150321 0.11346835 0.81541431 0.039903045 0.7150321 0.039903045 0.14899448
		 0.17537272 0.14899448 0.1044302 0.21126974 0.1044302 0.21126974 0.17537272 0.14899448
		 0.25401342 0.21126974 0.25401342 0.14899448 0.33265409 0.21126974 0.33265409 0.14899448
		 0.40359771 0.21126974 0.40359771 0.38339764 0.33194959 0.38339764 0.40289235 0.32112288
		 0.40289235 0.32112288 0.33194959 0.38339764 0.2533085 0.32112288 0.2533085 0.38339764
		 0.17466763 0.32112288 0.17466763 0.38339764 0.10372454 0.32112288 0.10372454;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".pt[0:79]" -type "float3"  21.902046 -0.45236319 0.17515802 
		20.820028 -0.45236319 -4.9311495 17.679888 -0.45236319 -9.5376167 12.789003 -0.45236319 
		-13.19333 6.6261292 -0.45236319 -15.540441 -0.20546877 -0.45236319 -16.349201 -7.0370674 
		-0.45236319 -15.540441 -13.199942 -0.45236319 -13.19333 -18.090826 -0.45236319 -9.5376167 
		-21.230968 -0.45236319 -4.9311495 -22.312988 -0.45236319 0.1751585 -21.230968 -0.45236319 
		5.2814674 -18.090828 -0.45236319 9.8879337 -13.199943 -0.45236319 13.543649 -7.0370684 
		-0.45236319 15.890761 -0.20546806 -0.45236319 16.699522 6.626132 -0.45236319 15.890761 
		12.789009 -0.45236319 13.543651 17.679897 -0.45236319 9.8879366 20.820038 -0.45236319 
		5.2814674 21.902046 3.0561292 0.17515802 20.820028 3.0561292 -4.9311495 17.679888 
		3.0561292 -9.5376167 12.789003 3.0561292 -13.19333 6.6261292 3.0561292 -15.540441 
		-0.20546877 3.0561292 -16.349201 -7.0370674 3.0561292 -15.540441 -13.199942 3.0561292 
		-13.19333 -18.090826 3.0561292 -9.5376167 -21.230968 3.0561292 -4.9311495 -22.312988 
		3.0561292 0.1751585 -21.230968 3.0561292 5.2814674 -18.090828 3.0561292 9.8879337 
		-13.199943 3.0561292 13.543649 -7.0370684 3.0561292 15.890761 -0.20546806 3.0561292 
		16.699522 6.626132 3.0561292 15.890761 12.789009 3.0561292 13.543651 17.679897 3.0561292 
		9.8879366 20.820038 3.0561292 5.2814674 24.358437 3.0561292 0.17515802 23.156195 
		3.0561292 -5.498517 19.667149 3.0561292 -10.616814 14.232833 3.0561292 -14.678717 
		7.3851957 3.0561292 -17.286619 -0.20546877 3.0561292 -18.185242 -7.796134 3.0561292 
		-17.286621 -14.643771 3.0561292 -14.678718 -20.078089 3.0561292 -10.616815 -23.567137 
		3.0561292 -5.498518 -24.769379 3.0561292 0.17515802 -23.567137 3.0561292 5.848834 
		-20.078091 3.0561292 10.967133 -14.643775 3.0561292 15.029037 -7.7961359 3.0561292 
		17.636942 -0.20546806 3.0561292 18.535564 7.3851995 3.0561292 17.636942 14.232841 
		3.0561292 15.02904 19.667162 3.0561292 10.967135 23.15621 3.0561292 5.8488369 24.358437 
		-0.45236319 0.17515802 23.156195 -0.45236319 -5.498517 19.667149 -0.45236319 -10.616814 
		14.232833 -0.45236319 -14.678717 7.3851957 -0.45236319 -17.286619 -0.20546877 -0.45236319 
		-18.185242 -7.796134 -0.45236319 -17.286621 -14.643771 -0.45236319 -14.678718 -20.078089 
		-0.45236319 -10.616815 -23.567137 -0.45236319 -5.498518 -24.769379 -0.45236319 0.17515802 
		-23.567137 -0.45236319 5.848834 -20.078091 -0.45236319 10.967133 -14.643775 -0.45236319 
		15.029037 -7.7961359 -0.45236319 17.636942 -0.20546806 -0.45236319 18.535564 7.3851995 
		-0.45236319 17.636942 14.232841 -0.45236319 15.02904 19.667162 -0.45236319 10.967135 
		23.15621 -0.45236319 5.8488369;
	setAttr -s 80 ".vt[0:79]"  1.79999995 -0.5 -1.110223e-16 1.71190178 -0.5 -0.5562306
		 1.45623064 -0.5 -1.058013558 1.058013439 -0.5 -1.45623076 0.55623055 -0.5 -1.7119019
		 -5.9604645e-08 -0.5 -1.80000019 -0.55623072 -0.5 -1.7119019 -1.058013678 -0.5 -1.45623076
		 -1.45623088 -0.5 -1.058013558 -1.71190214 -0.5 -0.5562306 -1.80000043 -0.5 5.9604645e-08
		 -1.71190214 -0.5 0.55623078 -1.456231 -0.5 1.058013678 -1.058013797 -0.5 1.456231
		 -0.55623078 -0.5 1.71190226 0 -0.5 1.80000067 0.55623078 -0.5 1.71190238 1.058013916 -0.5 1.45623124
		 1.45623136 -0.5 1.058013916 1.71190262 -0.5 0.55623078 1.79999995 0.5 1.110223e-16
		 1.71190178 0.5 -0.5562306 1.45623064 0.5 -1.058013558 1.058013439 0.5 -1.45623076
		 0.55623055 0.5 -1.7119019 -5.9604645e-08 0.5 -1.80000019 -0.55623072 0.5 -1.7119019
		 -1.058013678 0.5 -1.45623076 -1.45623088 0.5 -1.058013558 -1.71190214 0.5 -0.5562306
		 -1.80000043 0.5 5.9604645e-08 -1.71190214 0.5 0.55623078 -1.456231 0.5 1.058013678
		 -1.058013797 0.5 1.456231 -0.55623078 0.5 1.71190226 0 0.5 1.80000067 0.55623078 0.5 1.71190238
		 1.058013916 0.5 1.45623124 1.45623136 0.5 1.058013916 1.71190262 0.5 0.55623078 2 0.5 1.110223e-16
		 1.90211308 0.5 -0.61803401 1.61803401 0.5 -1.17557061 1.17557049 0.5 -1.61803412
		 0.61803395 0.5 -1.9021132 -5.9604645e-08 0.5 -2.000000238419 -0.61803412 0.5 -1.90211332
		 -1.17557073 0.5 -1.61803424 -1.61803436 0.5 -1.17557073 -1.90211356 0.5 -0.61803412
		 -2.000000476837 0.5 1.110223e-16 -1.90211356 0.5 0.61803412 -1.61803448 0.5 1.17557085
		 -1.17557096 0.5 1.6180346 -0.6180343 0.5 1.90211391 0 0.5 2.000000953674 0.6180343 0.5 1.90211403
		 1.1755712 0.5 1.61803496 1.61803508 0.5 1.1755712 1.90211427 0.5 0.61803436 2 -0.5 -1.110223e-16
		 1.90211308 -0.5 -0.61803401 1.61803401 -0.5 -1.17557061 1.17557049 -0.5 -1.61803412
		 0.61803395 -0.5 -1.9021132 -5.9604645e-08 -0.5 -2.000000238419 -0.61803412 -0.5 -1.90211332
		 -1.17557073 -0.5 -1.61803424 -1.61803436 -0.5 -1.17557073 -1.90211356 -0.5 -0.61803412
		 -2.000000476837 -0.5 -1.110223e-16 -1.90211356 -0.5 0.61803412 -1.61803448 -0.5 1.17557085
		 -1.17557096 -0.5 1.6180346 -0.6180343 -0.5 1.90211391 0 -0.5 2.000000953674 0.6180343 -0.5 1.90211403
		 1.1755712 -0.5 1.61803496 1.61803508 -0.5 1.1755712 1.90211427 -0.5 0.61803436;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0
		 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0
		 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 20 1 1 21 1 2 22 1 3 23 1
		 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1
		 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1
		 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1
		 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1
		 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1 67 7 1 68 8 1 69 9 1 70 10 1
		 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1 78 18 1 79 19 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 -1 80 20 -82
		mu 0 4 0 1 2 3
		f 4 -2 81 21 -83
		mu 0 4 6 0 3 7
		f 4 -3 82 22 -84
		mu 0 4 10 6 7 11
		f 4 -4 83 23 -85
		mu 0 4 136 137 138 139
		f 4 -5 84 24 -86
		mu 0 4 140 136 139 141
		f 4 -6 85 25 -87
		mu 0 4 142 140 141 143
		f 4 -7 86 26 -88
		mu 0 4 144 142 143 145
		f 4 -8 87 27 -89
		mu 0 4 15 18 19 16
		f 4 -9 88 28 -90
		mu 0 4 14 15 16 17
		f 4 -10 89 29 -91
		mu 0 4 20 14 17 21
		f 4 -11 90 30 -92
		mu 0 4 22 20 21 23
		f 4 -12 91 31 -93
		mu 0 4 24 22 23 25
		f 4 -13 92 32 -94
		mu 0 4 26 24 25 27
		f 4 -14 93 33 -95
		mu 0 4 146 147 148 149
		f 4 -15 94 34 -96
		mu 0 4 150 146 149 151
		f 4 -16 95 35 -97
		mu 0 4 152 150 151 153
		f 4 -17 96 36 -98
		mu 0 4 154 152 153 155
		f 4 -18 97 37 -99
		mu 0 4 8 12 13 9
		f 4 -19 98 38 -100
		mu 0 4 4 8 9 5
		f 4 -20 99 39 -81
		mu 0 4 1 4 5 2
		f 4 -21 100 40 -102
		mu 0 4 56 57 58 59
		f 4 -22 101 41 -103
		mu 0 4 62 56 59 63
		f 4 -23 102 42 -104
		mu 0 4 66 62 63 67
		f 4 -24 103 43 -105
		mu 0 4 70 66 67 71
		f 4 -25 104 44 -106
		mu 0 4 74 70 71 75
		f 4 -26 105 45 -107
		mu 0 4 78 74 75 79
		f 4 -27 106 46 -108
		mu 0 4 82 78 79 83
		f 4 -28 107 47 -109
		mu 0 4 86 82 83 87
		f 4 -29 108 48 -110
		mu 0 4 90 86 87 91
		f 4 -30 109 49 -111
		mu 0 4 94 90 91 95
		f 4 -31 110 50 -112
		mu 0 4 92 94 95 93
		f 4 -32 111 51 -113
		mu 0 4 88 92 93 89
		f 4 -33 112 52 -114
		mu 0 4 84 88 89 85
		f 4 -34 113 53 -115
		mu 0 4 80 84 85 81
		f 4 -35 114 54 -116
		mu 0 4 76 80 81 77
		f 4 -36 115 55 -117
		mu 0 4 72 76 77 73
		f 4 -37 116 56 -118
		mu 0 4 68 72 73 69
		f 4 -38 117 57 -119
		mu 0 4 64 68 69 65
		f 4 -39 118 58 -120
		mu 0 4 60 64 65 61
		f 4 -40 119 59 -101
		mu 0 4 57 60 61 58
		f 4 -41 120 60 -122
		mu 0 4 28 29 30 31
		f 4 -42 121 61 -123
		mu 0 4 34 28 31 35
		f 4 -43 122 62 -124
		mu 0 4 38 34 35 39
		f 4 -44 123 63 -125
		mu 0 4 156 157 158 159
		f 4 -45 124 64 -126
		mu 0 4 160 156 159 161
		f 4 -46 125 65 -127
		mu 0 4 162 160 161 163
		f 4 -47 126 66 -128
		mu 0 4 164 162 163 165
		f 4 -48 127 67 -129
		mu 0 4 43 46 47 44
		f 4 -49 128 68 -130
		mu 0 4 42 43 44 45
		f 4 -50 129 69 -131
		mu 0 4 48 42 45 49
		f 4 -51 130 70 -132
		mu 0 4 50 48 49 51
		f 4 -52 131 71 -133
		mu 0 4 52 50 51 53
		f 4 -53 132 72 -134
		mu 0 4 54 52 53 55
		f 4 -54 133 73 -135
		mu 0 4 166 167 168 169
		f 4 -55 134 74 -136
		mu 0 4 170 166 169 171
		f 4 -56 135 75 -137
		mu 0 4 172 170 171 173
		f 4 -57 136 76 -138
		mu 0 4 174 172 173 175
		f 4 -58 137 77 -139
		mu 0 4 36 40 41 37
		f 4 -59 138 78 -140
		mu 0 4 32 36 37 33
		f 4 -60 139 79 -121
		mu 0 4 29 32 33 30
		f 4 -61 140 0 -142
		mu 0 4 96 97 98 99
		f 4 -62 141 1 -143
		mu 0 4 102 96 99 103
		f 4 -63 142 2 -144
		mu 0 4 106 102 103 107
		f 4 -64 143 3 -145
		mu 0 4 110 106 107 111
		f 4 -65 144 4 -146
		mu 0 4 114 110 111 115
		f 4 -66 145 5 -147
		mu 0 4 118 114 115 119
		f 4 -67 146 6 -148
		mu 0 4 122 118 119 123
		f 4 -68 147 7 -149
		mu 0 4 126 122 123 127
		f 4 -69 148 8 -150
		mu 0 4 130 126 127 131
		f 4 -70 149 9 -151
		mu 0 4 134 130 131 135
		f 4 -71 150 10 -152
		mu 0 4 132 134 135 133
		f 4 -72 151 11 -153
		mu 0 4 128 132 133 129
		f 4 -73 152 12 -154
		mu 0 4 124 128 129 125
		f 4 -74 153 13 -155
		mu 0 4 120 124 125 121
		f 4 -75 154 14 -156
		mu 0 4 116 120 121 117
		f 4 -76 155 15 -157
		mu 0 4 112 116 117 113
		f 4 -77 156 16 -158
		mu 0 4 108 112 113 109
		f 4 -78 157 17 -159
		mu 0 4 104 108 109 105
		f 4 -79 158 18 -160
		mu 0 4 100 104 105 101
		f 4 -80 159 19 -141
		mu 0 4 97 100 101 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7580F098-472A-5A5D-C597-E49A2F0EB5F9";
	setAttr -s 31 ".lnk";
	setAttr -s 31 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0233E619-4821-0F99-00A3-FE99DACB9BCF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6784D78A-4059-45B8-48DF-869919BAD483";
createNode displayLayerManager -n "layerManager";
	rename -uid "9A718540-40AD-C289-D8C8-68AECB142A89";
	setAttr ".cdl" 10;
	setAttr -s 11 ".dli[1:10]"  1 2 6 3 4 5 7 8 
		9 10;
	setAttr -s 11 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F3700C7-425F-7AE3-353B-21B53C0F21D8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "632CF923-4A31-A7EA-D53F-64B2947E4101";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "95E93C16-4DE1-F29C-AA0C-D9B20203593F";
	setAttr ".g" yes;
createNode displayLayer -n "layer1";
	rename -uid "44EACE6C-4566-D942-D462-12A1F44EEFD7";
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	rename -uid "3F38CA86-456E-890B-BDDF-E5887A3C032E";
	setAttr ".do" 2;
createNode displayLayer -n "layer3";
	rename -uid "B1416379-4536-29A3-DC2B-AB91DBDDABA6";
	setAttr ".v" no;
	setAttr ".do" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8EABA716-4700-B4C6-BFB5-8794BE3C9B0F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0CB66FE9-463E-14BB-AC8B-CF895121E111";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer4";
	rename -uid "3AD0FF3A-4236-EE48-464D-28A2407BFDEA";
	setAttr ".do" 4;
createNode displayLayer -n "layer5";
	rename -uid "9FDD3A2E-4B27-271E-C9B0-A58DAA495C81";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode displayLayer -n "circle_platforms";
	rename -uid "D9AC1D2C-4E35-E32B-BD75-A8B5B1E2FCBC";
	setAttr ".v" no;
	setAttr ".do" 6;
createNode phong -n "blinn1";
	rename -uid "A85B9BEE-4499-4BB2-06B5-3992D2A82C66";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.5529412 0.27280819 0.14311418 ;
	setAttr ".ambc" -type "float3" 0.032516975 0.015045396 0.0049744411 ;
	setAttr ".sc" -type "float3" 0.48780042 0.48780042 0.48780042 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 6.2772412300109863;
createNode shadingEngine -n "polySurface88SG";
	rename -uid "A69C9833-4471-E3AD-80C6-84B5FD6DDA15";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C18A3108-44EF-D3D3-15D8-8FABDF4C0F2E";
createNode phong -n "phong1";
	rename -uid "22E9A74F-4D1F-2947-43C9-CC83F5A24537";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.58823532 0.46445587 0.38062283 ;
	setAttr ".rfl" 0.74796700477600098;
createNode shadingEngine -n "polySurface89SG";
	rename -uid "C2AC551A-4E49-A296-A47D-C9921704AC2E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "33E6FCAD-4FF2-9DD3-4D2F-DB936AE73932";
createNode lambert -n "lambert2";
	rename -uid "FF2248BF-4505-B5ED-B071-E29CBA5352BD";
createNode shadingEngine -n "polySurface92SG";
	rename -uid "872EB4ED-474E-3680-49AE-188A6E0BBE94";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "B5512E37-4B16-6304-40DA-E3838526BB19";
createNode lambert -n "lambert3";
	rename -uid "23F33E67-4FE2-BD56-457D-55B6F16E93FA";
createNode shadingEngine -n "polySurface92SG1";
	rename -uid "7E3E8E02-4202-BD93-3B0E-08A27FE9B654";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "BF9B74E9-4FD7-3C26-2D82-DE936869FCAB";
createNode file -n "bag1_color_1";
	rename -uid "B82C1110-4019-AAD8-30A5-229EF6E816F0";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "046C1264-409E-972E-1321-83B26DBFA48E";
createNode bump2d -n "bump2d1";
	rename -uid "C49A3CA3-4FAA-6CFC-19C6-8295B73AEFD2";
	setAttr ".bd" 0.075000002980232239;
createNode file -n "bag1_bump_1";
	rename -uid "2FEFE87F-4399-4D3C-F16E-5A8DDC9BA661";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "EFE48F3D-4D6A-6EAF-90CD-1FBFE80B759D";
createNode file -n "bag1_color_2";
	rename -uid "56A92292-4D68-6ACC-B4E6-E8AA0E19B183";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "0210E279-44AE-6BC6-8CDF-808F72062782";
createNode lambert -n "initialShadingGroup1";
	rename -uid "FE9257D2-442D-D96B-6C8F-F9AAFB53F672";
createNode shadingEngine -n "polySurface99SG";
	rename -uid "2BF93F0C-4D2E-208E-A989-E289CB5D1830";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "D75316C6-49EC-0FB6-1488-2AA70AF045C9";
createNode phong -n "blinn2";
	rename -uid "44AC296E-4458-AA76-893A-43AA4EC8279F";
	setAttr ".rfl" 0.024390200152993202;
	setAttr ".cp" 10.485555648803711;
createNode shadingEngine -n "polySurface33SG";
	rename -uid "6D401B0A-44A8-B2B6-29DA-9D8833617B90";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "BAE316C4-4038-9869-57CB-B1BF8303A941";
createNode lambert -n "lambert4";
	rename -uid "554A8096-48E4-3AAD-39F1-21AA8F0BCF2A";
createNode shadingEngine -n "polySurface33SG1";
	rename -uid "C099A612-43E9-112C-B773-8381CF81889D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "929587AC-4FF8-491F-64EA-7DBC1AB3A63D";
createNode file -n "bag2_1";
	rename -uid "A69B6074-4186-2771-4FCB-2095EFD50B3F";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "C7E14648-43CE-59C4-845A-BBAB6D6D1CCA";
createNode bump2d -n "bump2d2";
	rename -uid "87A6F50F-49BB-4C7E-3A88-B1830604DC47";
	setAttr ".bd" 0.075000002980232239;
createNode file -n "bag2_bump_1";
	rename -uid "DD53CF4B-4A2B-1EEE-C8AF-A39D685A3860";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "20A259AE-442C-C5FE-E7C2-93AA24D5CB5F";
createNode file -n "bag1_color_3";
	rename -uid "9CC8CABF-459D-4199-CCB8-D3813416AB31";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "56B90E0D-4ABD-4E39-6DA0-43B4DCFE0DEE";
createNode phong -n "phong2";
	rename -uid "A13FC99C-4274-123E-7D96-3FA267EDA9BB";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.58823532 0.46445587 0.38062283 ;
	setAttr ".rfl" 0.74796700477600098;
createNode shadingEngine -n "polySurface36SG";
	rename -uid "5AB5D3C3-4A29-025E-9AB2-EEB16335400A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "9F29E390-48C9-08FC-EA60-8FAEC2EA71E3";
createNode lambert -n "initialShadingGroup2";
	rename -uid "2DDC78DF-4909-327D-7C31-0DA60CE3C7A2";
createNode shadingEngine -n "polySurface42SG";
	rename -uid "C8C8C6DB-48F4-7339-CC73-7C8543D6C4D3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "FC144B6F-49FA-2ADA-490B-25A7DCEAE8E7";
createNode phong -n "blinn3";
	rename -uid "3A0ECE9E-4913-78E5-DB65-C28D370558FF";
	setAttr ".rfl" 0.024390200152993202;
	setAttr ".cp" 10.485555648803711;
createNode shadingEngine -n "polySurface52SG";
	rename -uid "CE4D8E39-4436-AF44-2992-4DB4888E47AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "7B0C8D70-4E39-CF01-76CD-03B4347E73DC";
createNode file -n "bag2_diaopai_1";
	rename -uid "F655EDDF-494B-29A1-23E3-63A42ACC0E46";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_diaopai.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "D112C4F3-41CE-AA27-DD36-4A85CC9517D9";
createNode bump2d -n "bump2d3";
	rename -uid "E3032BC4-4B3A-858E-4328-C9B1E92EC15C";
	setAttr ".bd" 0.075000002980232239;
createNode file -n "bag2_diaopai_bump_1";
	rename -uid "B9EA6F26-4ADF-DC2B-E1F4-B1B44A1CABFA";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_diaopai_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "4F2A20ED-43D0-433F-EC7C-0F81DA2C2092";
createNode phong -n "blinn4";
	rename -uid "297E6F2A-4FF0-3C6D-007D-7B9648888CD6";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.5529412 0.27280819 0.14311418 ;
	setAttr ".ambc" -type "float3" 0.032516975 0.015045396 0.0049744411 ;
	setAttr ".sc" -type "float3" 0.48780042 0.48780042 0.48780042 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 6.2772412300109863;
createNode shadingEngine -n "polySurface88SG1";
	rename -uid "1E0BF302-42AC-B63A-E582-D78F11C05B33";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "1CB36B66-4055-33FF-4436-05928F69C913";
createNode phong -n "phong3";
	rename -uid "3C103088-489B-7764-0D9B-CCA6926B07AC";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.58823532 0.46445587 0.38062283 ;
	setAttr ".rfl" 0.74796700477600098;
createNode shadingEngine -n "polySurface89SG1";
	rename -uid "8B9AB22E-4A9E-4CB6-6A60-05BAD4C62487";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "51A0878C-48A7-E382-8FDD-389220D280BA";
createNode lambert -n "lambert5";
	rename -uid "81FCBB58-4372-A1A6-5596-9CB80A6F2544";
createNode shadingEngine -n "polySurface92SG2";
	rename -uid "946D2D63-47EF-9001-06A9-AB9A7298F263";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "9CAC88AE-4E3A-F57D-141C-C682776648E8";
createNode lambert -n "lambert6";
	rename -uid "120DE784-43EE-FF85-8691-38933FF6470F";
createNode shadingEngine -n "polySurface92SG3";
	rename -uid "0121A2F6-4ADE-65B3-9D46-37A669F37AFC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "94414831-4060-205B-4A67-9580A961F88E";
createNode file -n "bag1_color_4";
	rename -uid "606C3838-419E-F8E5-1331-7FB56A23DAFE";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "0360756C-4798-F693-D77D-7695ED22B23B";
createNode bump2d -n "bump2d4";
	rename -uid "FF406229-4234-51EE-F1FB-F99C9E9DD753";
	setAttr ".vc1" -type "float3" 0 0.00012000001 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "bag1_bump_2";
	rename -uid "E62443A5-4AD7-5455-9D6C-7AB0D76F9401";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "02D1138D-4F58-DF98-DFE2-5993C81E3C9D";
createNode file -n "bag1_color_5";
	rename -uid "6FCCA6D6-4908-1371-3E1D-4DB06913B54E";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "3874E582-41A3-EA9A-977E-099CB9B26D13";
createNode lambert -n "initialShadingGroup3";
	rename -uid "1B33288E-4C61-623F-A8F9-60811DF2ABCD";
createNode shadingEngine -n "polySurface99SG1";
	rename -uid "4B603464-4233-32EE-F9C8-01B615C5F59F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "53C1DAB5-432A-402E-A106-1DB4629A8898";
createNode phong -n "blinn5";
	rename -uid "2D48011B-4AEC-5C0D-858E-AD8DB253D07A";
	setAttr ".rfl" 0.024390200152993202;
	setAttr ".cp" 10.485555648803711;
createNode shadingEngine -n "polySurface33SG2";
	rename -uid "9A0F241A-4E9A-AB92-49EF-73A8E3728BEB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "0FF65E4B-4443-67CC-FE07-518420F59B26";
createNode lambert -n "lambert7";
	rename -uid "DEBA6D1A-40AB-41AC-523E-2F978B81137A";
createNode shadingEngine -n "polySurface33SG3";
	rename -uid "CF19D9A4-433A-3632-4DB5-3BA9B6A32AAB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "5CDDA3FF-4B61-B6C1-5DFE-38A00BD50BEE";
createNode file -n "bag2_2";
	rename -uid "4C91A1FC-4145-79A4-28C0-86B2BA79968F";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "3B3D2CC0-4D25-E3CD-CB6E-F58D3AFFCD38";
createNode bump2d -n "bump2d5";
	rename -uid "6E8E60EC-4FAE-F8AF-3FEF-248F53F4C6D3";
	setAttr ".vc1" -type "float3" 0 0.00012000001 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "bag2_bump_2";
	rename -uid "8FCD0560-4046-DCF7-0BF8-54929DD6B6B1";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "D9E2D170-457F-AB9A-E371-A8A1FCD05CA7";
createNode file -n "bag1_color_6";
	rename -uid "919B93F9-4A5E-C6A0-BBD9-27A8495033F4";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag1_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "D2563779-4FF9-35A4-9801-28BF27514045";
createNode phong -n "phong4";
	rename -uid "2464F2E6-46CB-C8AA-BA03-3192D2DCAE83";
	setAttr ".dc" 0.64999997615814209;
	setAttr ".c" -type "float3" 0.58823532 0.46445587 0.38062283 ;
	setAttr ".rfl" 0.74796700477600098;
createNode shadingEngine -n "polySurface36SG1";
	rename -uid "04AAF253-4FD4-4FBE-88F5-11BD1116776B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "6B1163BD-4510-0E57-1AFD-8994F8555986";
createNode lambert -n "initialShadingGroup4";
	rename -uid "2FE3FCAB-4D47-19C3-67FE-0BBCF675ED15";
createNode shadingEngine -n "polySurface42SG1";
	rename -uid "1501CB5F-4B9C-623E-C3CB-F7988EC6092D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "D1837074-4F5F-CD66-19E2-87832DCD0C4A";
createNode phong -n "blinn6";
	rename -uid "236F91DF-44C6-A59E-9B34-939B05BE43FC";
	setAttr ".rfl" 0.024390200152993202;
	setAttr ".cp" 10.485555648803711;
createNode shadingEngine -n "polySurface52SG1";
	rename -uid "0F36B00E-46C1-9928-E944-C093F56A8E8F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "A756A4C5-4F1E-BC07-6AE1-2F84BBEFCADE";
createNode file -n "bag2_diaopai_2";
	rename -uid "17BB8A51-4E60-3BAD-A86E-069B4CF6493F";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_diaopai.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "4FE6E60F-4253-F879-BB57-8C8B33CDA21C";
createNode bump2d -n "bump2d6";
	rename -uid "AF4F42B1-4ABE-063A-33FB-0795478788D5";
	setAttr ".vc1" -type "float3" 0 0.00012000001 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "bag2_diaopai_bump_2";
	rename -uid "170780D8-49D7-88E2-CFD1-EA8E0CF75022";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/cadnav.com_model/Model_D0405211A76/bag2_diaopai_bump.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "6CF51F21-4543-4EB5-5F4F-BCBE90AC8D80";
createNode displayLayer -n "layer6";
	rename -uid "2C0C2C87-4394-2DED-4862-8EAD85E6660A";
	setAttr ".do" 7;
createNode displayLayer -n "old_table";
	rename -uid "EAB899A3-4075-8969-0689-AE85A89DC0B8";
	setAttr ".v" no;
	setAttr ".do" 8;
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "A3CC72A1-4CC1-4BF6-C4F1-579F77776AF0";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode phong -n "FBXASC0481FBXASC032FBXASC045FBXASC032Default";
	rename -uid "17D00E29-4AEF-735A-9589-11B6D442C225";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "arch49_006_obj_00SG";
	rename -uid "FEBA4BD4-40A9-DAD3-2A75-06A2E1D92BF4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "3C4FF44B-4673-C499-F9E1-53B726BD07D2";
createNode phong -n "FBXASC0481FBXASC032FBXASC045FBXASC032Default1";
	rename -uid "E4AB8CDB-482A-A3B4-F0B6-FF98BBD657F9";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "arch49_012_obj_00SG";
	rename -uid "BBFE64A1-401D-9B75-CD31-B499EC75419A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "AFB43EC9-41C1-8EBA-9C98-D58D4BB5A943";
createNode phong -n "FBXASC0481FBXASC032FBXASC045FBXASC032Default2";
	rename -uid "5DFF89C6-44A5-2EF2-71EE-BF8EA45E3AAE";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "arch49_006_obj_00SG1";
	rename -uid "99ECA276-450A-BB34-CBDF-10A9142A6C0B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "64958FC1-447F-A6E6-FDE0-E8B18D381927";
createNode phong -n "FBXASC0481FBXASC032FBXASC045FBXASC032Default3";
	rename -uid "736DFF23-45BB-162E-6C8E-489E5D647FB5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "arch49_006_obj_00SG2";
	rename -uid "2022C495-4708-C7CD-2A4B-B28BAEEEEFA7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "D9888350-4C01-A3FD-E300-15978B39AC64";
createNode displayLayer -n "layer7";
	rename -uid "964F5941-4D30-A9E6-F161-1593F64C46CE";
	setAttr ".do" 9;
createNode displayLayer -n "exterior";
	rename -uid "1C582B77-4FDD-2425-8A11-D7A593BCBEB8";
	setAttr ".do" 10;
createNode lambert -n "gold";
	rename -uid "4F9AEB94-4C3E-F546-AB3D-4181CE67AE98";
	setAttr ".c" -type "float3" 1 0.5758 0.0129 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "2F202E51-4CA6-7601-B396-28AA9AA33AE5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "7B9FFA4A-4308-DD15-F9B9-AF86280A583F";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "996D8ED4-46AE-124B-9DF7-70BA60EDFA0C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -519.64283649410606 72.212753792820934 ;
	setAttr ".tgi[0].vh" -type "double2" 517.26188420776418 608.73960010094459 ;
	setAttr ".tgi[0].ni[0].x" 210.4739990234375;
	setAttr ".tgi[0].ni[0].y" 469.5260009765625;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode lambert -n "b_c_lining";
	rename -uid "F16F7CFC-4B12-1AAB-0410-E99A17203D31";
createNode shadingEngine -n "lambert9SG";
	rename -uid "8F03D579-4144-74B9-6478-7A8A446FF42A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "EDFFB72D-4FAF-E030-972C-D1AA3D5955E1";
createNode lambert -n "base_case";
	rename -uid "E8FC6A4B-4094-B1CF-5255-27AA800B69FD";
createNode shadingEngine -n "lambert10SG";
	rename -uid "2EF6872A-4BC7-53FA-9F4F-A582AD41CE52";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo27";
	rename -uid "F4C911CA-46EC-A4F2-1861-40BFDAFC577C";
createNode lambert -n "banner_Ad";
	rename -uid "84CFA90A-FD4B-7818-084A-089DBE63EF98";
createNode shadingEngine -n "lambert11SG";
	rename -uid "4FAB2AB5-9E46-4E69-C86F-33BD477DB50F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "54981C4A-7446-B43A-FD70-89862E5C1BD4";
createNode file -n "file1";
	rename -uid "B6E387B1-F646-E1A7-901B-27A0B0FAFEE2";
	setAttr ".ftn" -type "string" "C:/Users/sthrg/Desktop/ad_banner_test.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "77FC8D9E-ED45-56AD-7B1E-89887A38A3B4";
createNode lambert -n "circle_table";
	rename -uid "0D891226-1E42-9853-AA29-EEABD65572FC";
createNode shadingEngine -n "lambert12SG";
	rename -uid "12C2E9C9-5447-14F0-6F05-398CF090E9B2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo29";
	rename -uid "704162F8-1A43-BAC0-6E8A-59BF294E2372";
createNode file -n "file2";
	rename -uid "A42525F6-7543-A210-11EB-A79DF6539A59";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "FFB496F1-5D4B-ED67-64D4-FEAC71F7EB3C";
select -ne :time1;
	setAttr ".o" 55;
	setAttr ".unw" 55;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 31 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 33 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 18 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "layer6.di" "design.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface88SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface89SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface92SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface92SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface99SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface33SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface33SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface36SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface42SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface52SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface88SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface89SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface92SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface92SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface99SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface33SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface33SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface36SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface42SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface52SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arch49_006_obj_00SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arch49_012_obj_00SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arch49_006_obj_00SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arch49_006_obj_00SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface88SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface89SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface92SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface92SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface99SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface33SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface33SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface36SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface42SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface52SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface88SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface89SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface92SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface92SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface99SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface33SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface33SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface36SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface42SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface52SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arch49_006_obj_00SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arch49_012_obj_00SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arch49_006_obj_00SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arch49_006_obj_00SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "layerManager.dli[4]" "layer3.id";
connectAttr "layerManager.dli[5]" "layer4.id";
connectAttr "layerManager.dli[6]" "layer5.id";
connectAttr "layerManager.dli[3]" "circle_platforms.id";
connectAttr "blinn1.oc" "polySurface88SG.ss";
connectAttr "polySurface88SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "phong1.oc" "polySurface89SG.ss";
connectAttr "polySurface89SG.msg" "materialInfo2.sg";
connectAttr "phong1.msg" "materialInfo2.m";
connectAttr "bag1_color_1.oc" "lambert2.c";
connectAttr "bump2d1.o" "lambert2.n";
connectAttr "lambert2.oc" "polySurface92SG.ss";
connectAttr "polySurface92SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "bag1_color_1.msg" "materialInfo3.t" -na;
connectAttr "bag1_color_2.oc" "lambert3.c";
connectAttr "lambert3.oc" "polySurface92SG1.ss";
connectAttr "polySurface92SG1.msg" "materialInfo4.sg";
connectAttr "lambert3.msg" "materialInfo4.m";
connectAttr "bag1_color_2.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture1.o" "bag1_color_1.uv";
connectAttr "place2dTexture1.ofu" "bag1_color_1.ofu";
connectAttr "place2dTexture1.ofv" "bag1_color_1.ofv";
connectAttr "place2dTexture1.rf" "bag1_color_1.rf";
connectAttr "place2dTexture1.reu" "bag1_color_1.reu";
connectAttr "place2dTexture1.rev" "bag1_color_1.rev";
connectAttr "place2dTexture1.vt1" "bag1_color_1.vt1";
connectAttr "place2dTexture1.vt2" "bag1_color_1.vt2";
connectAttr "place2dTexture1.vt3" "bag1_color_1.vt3";
connectAttr "place2dTexture1.vc1" "bag1_color_1.vc1";
connectAttr "place2dTexture1.ofs" "bag1_color_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_1.ws";
connectAttr "bag1_bump_1.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "bag1_bump_1.uv";
connectAttr "place2dTexture2.ofu" "bag1_bump_1.ofu";
connectAttr "place2dTexture2.ofv" "bag1_bump_1.ofv";
connectAttr "place2dTexture2.rf" "bag1_bump_1.rf";
connectAttr "place2dTexture2.reu" "bag1_bump_1.reu";
connectAttr "place2dTexture2.rev" "bag1_bump_1.rev";
connectAttr "place2dTexture2.vt1" "bag1_bump_1.vt1";
connectAttr "place2dTexture2.vt2" "bag1_bump_1.vt2";
connectAttr "place2dTexture2.vt3" "bag1_bump_1.vt3";
connectAttr "place2dTexture2.vc1" "bag1_bump_1.vc1";
connectAttr "place2dTexture2.ofs" "bag1_bump_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_bump_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_bump_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_bump_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_bump_1.ws";
connectAttr "place2dTexture3.o" "bag1_color_2.uv";
connectAttr "place2dTexture3.ofu" "bag1_color_2.ofu";
connectAttr "place2dTexture3.ofv" "bag1_color_2.ofv";
connectAttr "place2dTexture3.rf" "bag1_color_2.rf";
connectAttr "place2dTexture3.reu" "bag1_color_2.reu";
connectAttr "place2dTexture3.rev" "bag1_color_2.rev";
connectAttr "place2dTexture3.vt1" "bag1_color_2.vt1";
connectAttr "place2dTexture3.vt2" "bag1_color_2.vt2";
connectAttr "place2dTexture3.vt3" "bag1_color_2.vt3";
connectAttr "place2dTexture3.vc1" "bag1_color_2.vc1";
connectAttr "place2dTexture3.ofs" "bag1_color_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_2.ws";
connectAttr "initialShadingGroup1.oc" "polySurface99SG.ss";
connectAttr "polySurface99SG.msg" "materialInfo5.sg";
connectAttr "initialShadingGroup1.msg" "materialInfo5.m";
connectAttr "bag2_1.oc" "blinn2.c";
connectAttr "bump2d2.o" "blinn2.n";
connectAttr "blinn2.oc" "polySurface33SG.ss";
connectAttr "polySurface33SG.msg" "materialInfo6.sg";
connectAttr "blinn2.msg" "materialInfo6.m";
connectAttr "bag2_1.msg" "materialInfo6.t" -na;
connectAttr "bag1_color_3.oc" "lambert4.c";
connectAttr "lambert4.oc" "polySurface33SG1.ss";
connectAttr "polySurface33SG1.msg" "materialInfo7.sg";
connectAttr "lambert4.msg" "materialInfo7.m";
connectAttr "bag1_color_3.msg" "materialInfo7.t" -na;
connectAttr "place2dTexture4.o" "bag2_1.uv";
connectAttr "place2dTexture4.ofu" "bag2_1.ofu";
connectAttr "place2dTexture4.ofv" "bag2_1.ofv";
connectAttr "place2dTexture4.rf" "bag2_1.rf";
connectAttr "place2dTexture4.reu" "bag2_1.reu";
connectAttr "place2dTexture4.rev" "bag2_1.rev";
connectAttr "place2dTexture4.vt1" "bag2_1.vt1";
connectAttr "place2dTexture4.vt2" "bag2_1.vt2";
connectAttr "place2dTexture4.vt3" "bag2_1.vt3";
connectAttr "place2dTexture4.vc1" "bag2_1.vc1";
connectAttr "place2dTexture4.ofs" "bag2_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_1.ws";
connectAttr "bag2_bump_1.oa" "bump2d2.bv";
connectAttr "place2dTexture5.o" "bag2_bump_1.uv";
connectAttr "place2dTexture5.ofu" "bag2_bump_1.ofu";
connectAttr "place2dTexture5.ofv" "bag2_bump_1.ofv";
connectAttr "place2dTexture5.rf" "bag2_bump_1.rf";
connectAttr "place2dTexture5.reu" "bag2_bump_1.reu";
connectAttr "place2dTexture5.rev" "bag2_bump_1.rev";
connectAttr "place2dTexture5.vt1" "bag2_bump_1.vt1";
connectAttr "place2dTexture5.vt2" "bag2_bump_1.vt2";
connectAttr "place2dTexture5.vt3" "bag2_bump_1.vt3";
connectAttr "place2dTexture5.vc1" "bag2_bump_1.vc1";
connectAttr "place2dTexture5.ofs" "bag2_bump_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_bump_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_bump_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_bump_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_bump_1.ws";
connectAttr "place2dTexture6.o" "bag1_color_3.uv";
connectAttr "place2dTexture6.ofu" "bag1_color_3.ofu";
connectAttr "place2dTexture6.ofv" "bag1_color_3.ofv";
connectAttr "place2dTexture6.rf" "bag1_color_3.rf";
connectAttr "place2dTexture6.reu" "bag1_color_3.reu";
connectAttr "place2dTexture6.rev" "bag1_color_3.rev";
connectAttr "place2dTexture6.vt1" "bag1_color_3.vt1";
connectAttr "place2dTexture6.vt2" "bag1_color_3.vt2";
connectAttr "place2dTexture6.vt3" "bag1_color_3.vt3";
connectAttr "place2dTexture6.vc1" "bag1_color_3.vc1";
connectAttr "place2dTexture6.ofs" "bag1_color_3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_3.ws";
connectAttr "phong2.oc" "polySurface36SG.ss";
connectAttr "polySurface36SG.msg" "materialInfo8.sg";
connectAttr "phong2.msg" "materialInfo8.m";
connectAttr "initialShadingGroup2.oc" "polySurface42SG.ss";
connectAttr "polySurface42SG.msg" "materialInfo9.sg";
connectAttr "initialShadingGroup2.msg" "materialInfo9.m";
connectAttr "bag2_diaopai_1.oc" "blinn3.c";
connectAttr "bump2d3.o" "blinn3.n";
connectAttr "blinn3.oc" "polySurface52SG.ss";
connectAttr "polySurface52SG.msg" "materialInfo10.sg";
connectAttr "blinn3.msg" "materialInfo10.m";
connectAttr "bag2_diaopai_1.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture7.o" "bag2_diaopai_1.uv";
connectAttr "place2dTexture7.ofu" "bag2_diaopai_1.ofu";
connectAttr "place2dTexture7.ofv" "bag2_diaopai_1.ofv";
connectAttr "place2dTexture7.rf" "bag2_diaopai_1.rf";
connectAttr "place2dTexture7.reu" "bag2_diaopai_1.reu";
connectAttr "place2dTexture7.rev" "bag2_diaopai_1.rev";
connectAttr "place2dTexture7.vt1" "bag2_diaopai_1.vt1";
connectAttr "place2dTexture7.vt2" "bag2_diaopai_1.vt2";
connectAttr "place2dTexture7.vt3" "bag2_diaopai_1.vt3";
connectAttr "place2dTexture7.vc1" "bag2_diaopai_1.vc1";
connectAttr "place2dTexture7.ofs" "bag2_diaopai_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_diaopai_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_diaopai_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_diaopai_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_diaopai_1.ws";
connectAttr "bag2_diaopai_bump_1.oa" "bump2d3.bv";
connectAttr "place2dTexture8.o" "bag2_diaopai_bump_1.uv";
connectAttr "place2dTexture8.ofu" "bag2_diaopai_bump_1.ofu";
connectAttr "place2dTexture8.ofv" "bag2_diaopai_bump_1.ofv";
connectAttr "place2dTexture8.rf" "bag2_diaopai_bump_1.rf";
connectAttr "place2dTexture8.reu" "bag2_diaopai_bump_1.reu";
connectAttr "place2dTexture8.rev" "bag2_diaopai_bump_1.rev";
connectAttr "place2dTexture8.vt1" "bag2_diaopai_bump_1.vt1";
connectAttr "place2dTexture8.vt2" "bag2_diaopai_bump_1.vt2";
connectAttr "place2dTexture8.vt3" "bag2_diaopai_bump_1.vt3";
connectAttr "place2dTexture8.vc1" "bag2_diaopai_bump_1.vc1";
connectAttr "place2dTexture8.ofs" "bag2_diaopai_bump_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_diaopai_bump_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_diaopai_bump_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_diaopai_bump_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_diaopai_bump_1.ws";
connectAttr "blinn4.oc" "polySurface88SG1.ss";
connectAttr "polySurface88SG1.msg" "materialInfo11.sg";
connectAttr "blinn4.msg" "materialInfo11.m";
connectAttr "phong3.oc" "polySurface89SG1.ss";
connectAttr "polySurface89SG1.msg" "materialInfo12.sg";
connectAttr "phong3.msg" "materialInfo12.m";
connectAttr "bag1_color_4.oc" "lambert5.c";
connectAttr "bump2d4.o" "lambert5.n";
connectAttr "lambert5.oc" "polySurface92SG2.ss";
connectAttr "polySurface92SG2.msg" "materialInfo13.sg";
connectAttr "lambert5.msg" "materialInfo13.m";
connectAttr "bag1_color_4.msg" "materialInfo13.t" -na;
connectAttr "bag1_color_5.oc" "lambert6.c";
connectAttr "lambert6.oc" "polySurface92SG3.ss";
connectAttr "polySurface92SG3.msg" "materialInfo14.sg";
connectAttr "lambert6.msg" "materialInfo14.m";
connectAttr "bag1_color_5.msg" "materialInfo14.t" -na;
connectAttr "place2dTexture9.o" "bag1_color_4.uv";
connectAttr "place2dTexture9.ofu" "bag1_color_4.ofu";
connectAttr "place2dTexture9.ofv" "bag1_color_4.ofv";
connectAttr "place2dTexture9.rf" "bag1_color_4.rf";
connectAttr "place2dTexture9.reu" "bag1_color_4.reu";
connectAttr "place2dTexture9.rev" "bag1_color_4.rev";
connectAttr "place2dTexture9.vt1" "bag1_color_4.vt1";
connectAttr "place2dTexture9.vt2" "bag1_color_4.vt2";
connectAttr "place2dTexture9.vt3" "bag1_color_4.vt3";
connectAttr "place2dTexture9.vc1" "bag1_color_4.vc1";
connectAttr "place2dTexture9.ofs" "bag1_color_4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_4.ws";
connectAttr "bag1_bump_2.oa" "bump2d4.bv";
connectAttr "place2dTexture10.o" "bag1_bump_2.uv";
connectAttr "place2dTexture10.ofu" "bag1_bump_2.ofu";
connectAttr "place2dTexture10.ofv" "bag1_bump_2.ofv";
connectAttr "place2dTexture10.rf" "bag1_bump_2.rf";
connectAttr "place2dTexture10.reu" "bag1_bump_2.reu";
connectAttr "place2dTexture10.rev" "bag1_bump_2.rev";
connectAttr "place2dTexture10.vt1" "bag1_bump_2.vt1";
connectAttr "place2dTexture10.vt2" "bag1_bump_2.vt2";
connectAttr "place2dTexture10.vt3" "bag1_bump_2.vt3";
connectAttr "place2dTexture10.vc1" "bag1_bump_2.vc1";
connectAttr "place2dTexture10.ofs" "bag1_bump_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_bump_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_bump_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_bump_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_bump_2.ws";
connectAttr "place2dTexture11.o" "bag1_color_5.uv";
connectAttr "place2dTexture11.ofu" "bag1_color_5.ofu";
connectAttr "place2dTexture11.ofv" "bag1_color_5.ofv";
connectAttr "place2dTexture11.rf" "bag1_color_5.rf";
connectAttr "place2dTexture11.reu" "bag1_color_5.reu";
connectAttr "place2dTexture11.rev" "bag1_color_5.rev";
connectAttr "place2dTexture11.vt1" "bag1_color_5.vt1";
connectAttr "place2dTexture11.vt2" "bag1_color_5.vt2";
connectAttr "place2dTexture11.vt3" "bag1_color_5.vt3";
connectAttr "place2dTexture11.vc1" "bag1_color_5.vc1";
connectAttr "place2dTexture11.ofs" "bag1_color_5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_5.ws";
connectAttr "initialShadingGroup3.oc" "polySurface99SG1.ss";
connectAttr "polySurface99SG1.msg" "materialInfo15.sg";
connectAttr "initialShadingGroup3.msg" "materialInfo15.m";
connectAttr "bag2_2.oc" "blinn5.c";
connectAttr "bump2d5.o" "blinn5.n";
connectAttr "blinn5.oc" "polySurface33SG2.ss";
connectAttr "polySurface33SG2.msg" "materialInfo16.sg";
connectAttr "blinn5.msg" "materialInfo16.m";
connectAttr "bag2_2.msg" "materialInfo16.t" -na;
connectAttr "bag1_color_6.oc" "lambert7.c";
connectAttr "lambert7.oc" "polySurface33SG3.ss";
connectAttr "polySurface33SG3.msg" "materialInfo17.sg";
connectAttr "lambert7.msg" "materialInfo17.m";
connectAttr "bag1_color_6.msg" "materialInfo17.t" -na;
connectAttr "place2dTexture12.o" "bag2_2.uv";
connectAttr "place2dTexture12.ofu" "bag2_2.ofu";
connectAttr "place2dTexture12.ofv" "bag2_2.ofv";
connectAttr "place2dTexture12.rf" "bag2_2.rf";
connectAttr "place2dTexture12.reu" "bag2_2.reu";
connectAttr "place2dTexture12.rev" "bag2_2.rev";
connectAttr "place2dTexture12.vt1" "bag2_2.vt1";
connectAttr "place2dTexture12.vt2" "bag2_2.vt2";
connectAttr "place2dTexture12.vt3" "bag2_2.vt3";
connectAttr "place2dTexture12.vc1" "bag2_2.vc1";
connectAttr "place2dTexture12.ofs" "bag2_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_2.ws";
connectAttr "bag2_bump_2.oa" "bump2d5.bv";
connectAttr "place2dTexture13.o" "bag2_bump_2.uv";
connectAttr "place2dTexture13.ofu" "bag2_bump_2.ofu";
connectAttr "place2dTexture13.ofv" "bag2_bump_2.ofv";
connectAttr "place2dTexture13.rf" "bag2_bump_2.rf";
connectAttr "place2dTexture13.reu" "bag2_bump_2.reu";
connectAttr "place2dTexture13.rev" "bag2_bump_2.rev";
connectAttr "place2dTexture13.vt1" "bag2_bump_2.vt1";
connectAttr "place2dTexture13.vt2" "bag2_bump_2.vt2";
connectAttr "place2dTexture13.vt3" "bag2_bump_2.vt3";
connectAttr "place2dTexture13.vc1" "bag2_bump_2.vc1";
connectAttr "place2dTexture13.ofs" "bag2_bump_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_bump_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_bump_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_bump_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_bump_2.ws";
connectAttr "place2dTexture14.o" "bag1_color_6.uv";
connectAttr "place2dTexture14.ofu" "bag1_color_6.ofu";
connectAttr "place2dTexture14.ofv" "bag1_color_6.ofv";
connectAttr "place2dTexture14.rf" "bag1_color_6.rf";
connectAttr "place2dTexture14.reu" "bag1_color_6.reu";
connectAttr "place2dTexture14.rev" "bag1_color_6.rev";
connectAttr "place2dTexture14.vt1" "bag1_color_6.vt1";
connectAttr "place2dTexture14.vt2" "bag1_color_6.vt2";
connectAttr "place2dTexture14.vt3" "bag1_color_6.vt3";
connectAttr "place2dTexture14.vc1" "bag1_color_6.vc1";
connectAttr "place2dTexture14.ofs" "bag1_color_6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag1_color_6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag1_color_6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag1_color_6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag1_color_6.ws";
connectAttr "phong4.oc" "polySurface36SG1.ss";
connectAttr "polySurface36SG1.msg" "materialInfo18.sg";
connectAttr "phong4.msg" "materialInfo18.m";
connectAttr "initialShadingGroup4.oc" "polySurface42SG1.ss";
connectAttr "polySurface42SG1.msg" "materialInfo19.sg";
connectAttr "initialShadingGroup4.msg" "materialInfo19.m";
connectAttr "bag2_diaopai_2.oc" "blinn6.c";
connectAttr "bump2d6.o" "blinn6.n";
connectAttr "blinn6.oc" "polySurface52SG1.ss";
connectAttr "polySurface52SG1.msg" "materialInfo20.sg";
connectAttr "blinn6.msg" "materialInfo20.m";
connectAttr "bag2_diaopai_2.msg" "materialInfo20.t" -na;
connectAttr "place2dTexture15.o" "bag2_diaopai_2.uv";
connectAttr "place2dTexture15.ofu" "bag2_diaopai_2.ofu";
connectAttr "place2dTexture15.ofv" "bag2_diaopai_2.ofv";
connectAttr "place2dTexture15.rf" "bag2_diaopai_2.rf";
connectAttr "place2dTexture15.reu" "bag2_diaopai_2.reu";
connectAttr "place2dTexture15.rev" "bag2_diaopai_2.rev";
connectAttr "place2dTexture15.vt1" "bag2_diaopai_2.vt1";
connectAttr "place2dTexture15.vt2" "bag2_diaopai_2.vt2";
connectAttr "place2dTexture15.vt3" "bag2_diaopai_2.vt3";
connectAttr "place2dTexture15.vc1" "bag2_diaopai_2.vc1";
connectAttr "place2dTexture15.ofs" "bag2_diaopai_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_diaopai_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_diaopai_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_diaopai_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_diaopai_2.ws";
connectAttr "bag2_diaopai_bump_2.oa" "bump2d6.bv";
connectAttr "place2dTexture16.o" "bag2_diaopai_bump_2.uv";
connectAttr "place2dTexture16.ofu" "bag2_diaopai_bump_2.ofu";
connectAttr "place2dTexture16.ofv" "bag2_diaopai_bump_2.ofv";
connectAttr "place2dTexture16.rf" "bag2_diaopai_bump_2.rf";
connectAttr "place2dTexture16.reu" "bag2_diaopai_bump_2.reu";
connectAttr "place2dTexture16.rev" "bag2_diaopai_bump_2.rev";
connectAttr "place2dTexture16.vt1" "bag2_diaopai_bump_2.vt1";
connectAttr "place2dTexture16.vt2" "bag2_diaopai_bump_2.vt2";
connectAttr "place2dTexture16.vt3" "bag2_diaopai_bump_2.vt3";
connectAttr "place2dTexture16.vc1" "bag2_diaopai_bump_2.vc1";
connectAttr "place2dTexture16.ofs" "bag2_diaopai_bump_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "bag2_diaopai_bump_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bag2_diaopai_bump_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bag2_diaopai_bump_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bag2_diaopai_bump_2.ws";
connectAttr "layerManager.dli[7]" "layer6.id";
connectAttr "layerManager.dli[8]" "old_table.id";
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default.oc" "arch49_006_obj_00SG.ss"
		;
connectAttr "arch49_006_obj_00SG.msg" "materialInfo21.sg";
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default.msg" "materialInfo21.m"
		;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default1.oc" "arch49_012_obj_00SG.ss"
		;
connectAttr "arch49_012_obj_00SG.msg" "materialInfo22.sg";
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default1.msg" "materialInfo22.m"
		;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default2.oc" "arch49_006_obj_00SG1.ss"
		;
connectAttr "arch49_006_obj_00SG1.msg" "materialInfo23.sg";
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default2.msg" "materialInfo23.m"
		;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default3.oc" "arch49_006_obj_00SG2.ss"
		;
connectAttr "arch49_006_obj_00SG2.msg" "materialInfo24.sg";
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default3.msg" "materialInfo24.m"
		;
connectAttr "layerManager.dli[9]" "layer7.id";
connectAttr "layerManager.dli[10]" "exterior.id";
connectAttr "gold.oc" "lambert8SG.ss";
connectAttr "lambert8SG.msg" "materialInfo25.sg";
connectAttr "gold.msg" "materialInfo25.m";
connectAttr ":lambert1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "b_c_lining.oc" "lambert9SG.ss";
connectAttr "lambert9SG.msg" "materialInfo26.sg";
connectAttr "b_c_lining.msg" "materialInfo26.m";
connectAttr "base_case.oc" "lambert10SG.ss";
connectAttr "lambert10SG.msg" "materialInfo27.sg";
connectAttr "base_case.msg" "materialInfo27.m";
connectAttr "file1.oc" "banner_Ad.c";
connectAttr "file1.ot" "banner_Ad.it";
connectAttr "banner_Ad.oc" "lambert11SG.ss";
connectAttr "lambert11SG.msg" "materialInfo28.sg";
connectAttr "banner_Ad.msg" "materialInfo28.m";
connectAttr "file1.msg" "materialInfo28.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture17.c" "file1.c";
connectAttr "place2dTexture17.tf" "file1.tf";
connectAttr "place2dTexture17.rf" "file1.rf";
connectAttr "place2dTexture17.mu" "file1.mu";
connectAttr "place2dTexture17.mv" "file1.mv";
connectAttr "place2dTexture17.s" "file1.s";
connectAttr "place2dTexture17.wu" "file1.wu";
connectAttr "place2dTexture17.wv" "file1.wv";
connectAttr "place2dTexture17.re" "file1.re";
connectAttr "place2dTexture17.of" "file1.of";
connectAttr "place2dTexture17.r" "file1.ro";
connectAttr "place2dTexture17.n" "file1.n";
connectAttr "place2dTexture17.vt1" "file1.vt1";
connectAttr "place2dTexture17.vt2" "file1.vt2";
connectAttr "place2dTexture17.vt3" "file1.vt3";
connectAttr "place2dTexture17.vc1" "file1.vc1";
connectAttr "place2dTexture17.o" "file1.uv";
connectAttr "place2dTexture17.ofs" "file1.fs";
connectAttr "file2.oc" "circle_table.c";
connectAttr "file2.ot" "circle_table.it";
connectAttr "circle_table.oc" "lambert12SG.ss";
connectAttr "lambert12SG.msg" "materialInfo29.sg";
connectAttr "circle_table.msg" "materialInfo29.m";
connectAttr "file2.msg" "materialInfo29.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture18.c" "file2.c";
connectAttr "place2dTexture18.tf" "file2.tf";
connectAttr "place2dTexture18.rf" "file2.rf";
connectAttr "place2dTexture18.mu" "file2.mu";
connectAttr "place2dTexture18.mv" "file2.mv";
connectAttr "place2dTexture18.s" "file2.s";
connectAttr "place2dTexture18.wu" "file2.wu";
connectAttr "place2dTexture18.wv" "file2.wv";
connectAttr "place2dTexture18.re" "file2.re";
connectAttr "place2dTexture18.of" "file2.of";
connectAttr "place2dTexture18.r" "file2.ro";
connectAttr "place2dTexture18.n" "file2.n";
connectAttr "place2dTexture18.vt1" "file2.vt1";
connectAttr "place2dTexture18.vt2" "file2.vt2";
connectAttr "place2dTexture18.vt3" "file2.vt3";
connectAttr "place2dTexture18.vc1" "file2.vc1";
connectAttr "place2dTexture18.o" "file2.uv";
connectAttr "place2dTexture18.ofs" "file2.fs";
connectAttr "polySurface88SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface89SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface92SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface92SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface99SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface33SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface33SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface36SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface42SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface52SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface88SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface89SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface92SG2.pa" ":renderPartition.st" -na;
connectAttr "polySurface92SG3.pa" ":renderPartition.st" -na;
connectAttr "polySurface99SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface33SG2.pa" ":renderPartition.st" -na;
connectAttr "polySurface33SG3.pa" ":renderPartition.st" -na;
connectAttr "polySurface36SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface42SG1.pa" ":renderPartition.st" -na;
connectAttr "polySurface52SG1.pa" ":renderPartition.st" -na;
connectAttr "arch49_006_obj_00SG.pa" ":renderPartition.st" -na;
connectAttr "arch49_012_obj_00SG.pa" ":renderPartition.st" -na;
connectAttr "arch49_006_obj_00SG1.pa" ":renderPartition.st" -na;
connectAttr "arch49_006_obj_00SG2.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "initialShadingGroup1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "initialShadingGroup2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "phong3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "initialShadingGroup3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "phong4.msg" ":defaultShaderList1.s" -na;
connectAttr "initialShadingGroup4.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FBXASC0481FBXASC032FBXASC045FBXASC032Default3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "gold.msg" ":defaultShaderList1.s" -na;
connectAttr "b_c_lining.msg" ":defaultShaderList1.s" -na;
connectAttr "base_case.msg" ":defaultShaderList1.s" -na;
connectAttr "banner_Ad.msg" ":defaultShaderList1.s" -na;
connectAttr "circle_table.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bag1_color_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_bump_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_color_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_bump_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_color_3.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_diaopai_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_diaopai_bump_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_color_4.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_bump_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_color_5.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_bump_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag1_color_6.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_diaopai_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "bag2_diaopai_bump_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "outer_water_circleShape.iog" ":initialShadingGroup.dsm" -na;
// End of outer_Water_circle.ma
