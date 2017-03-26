//Maya ASCII 2016 scene
//Name: lilOrphanDabby.ma
//Last modified: Sat, Feb 18, 2017 12:59:03 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "C:/Users/Briey/Documents/maya/projects/Orphan's Creed/scenes/dabstill.mb";
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "12F15A12-4513-EA06-B72D-B7A8EE35306A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.16009163618187142 1.5454958286887683 -8.8131977472138026 ;
	setAttr ".r" -type "double3" -4.5383525821492077 -184.19999999998606 359.99999999999642 ;
	setAttr ".rp" -type "double3" 5.3290705182007514e-015 -5.3734794391857577e-014 1.1368683772161603e-013 ;
	setAttr ".rpt" -type "double3" -1.6080453408237276e-014 3.0451280300173946e-014 
		-2.3652473382908325e-013 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "92C1C84F-4F31-D37E-B2C8-CDA656F1940D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 8.478427839644624;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.7573807990439434 2.7127945817455398e-015 12.217340667481917 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9C6B3F0B-4486-E0B2-F8B1-F38C400A6BC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C67D4230-4AE3-5B26-C36A-5DBC69609C7D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.063394568003524;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "34E84BAE-4EDB-EF49-766B-45B7389CFBE0";
	setAttr ".t" -type "double3" 0.028746820226887904 0.54435512326107283 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F69A5B68-4F7A-26F2-63A6-889877B73455";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.7670632455227393;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "02AEFEAE-4D27-81C6-ABB8-09AA9076AC75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 1.7053054121906677 -0.63807709699915638 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E79F1C71-4172-F777-884D-FE952EA2F401";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.887621532009927;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "6239A553-485B-AD81-23B9-AB83C85D1BBA";
	setAttr ".t" -type "double3" 0 1.8783068783068777 0 ;
	setAttr ".s" -type "double3" 0.57350880689110828 0.57350880689110828 0.57350880689110828 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "32BC710A-477D-004C-54C6-E9A43BCC0EB4";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/Briey/Pictures/7795.png";
	setAttr ".cov" -type "short2" 750 650 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.5;
	setAttr ".h" 6.5;
	setAttr ".cs" -type "string" "sRGB";
createNode joint -n "HIP";
	rename -uid "E8798320-4031-37FA-C8EB-00860E5901FF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.042927816515447748 1.1233546137490733 0.20908672920069005 ;
	setAttr ".r" -type "double3" -20.340433937429921 -3.4633196483114574e-016 -6.9737279453139219e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 -0 0 -0 0.99977282744915219 -0.021314161825597554 0
		 0 0.021314161825597554 0.99977282744915219 0 0.043862506586105243 1.3168659766354311 0.28026438959706718 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_UPR_LEG" -p "HIP";
	rename -uid "33ADEA97-48B4-6547-182A-AFB9438C80B0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.27179118732664598 -0.017935970966817427 -0.055180390663681383 ;
	setAttr ".r" -type "double3" -5.727005123824779 5.1309683389457907 56.600978231877718 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 8.1301023541559978 -90.000000000000014 ;
	setAttr ".bps" -type "matrix" -0.062448093035848196 -0.82995323236898144 -0.55432649923710631 0
		 -0.098252191134387115 0.55782491750139551 -0.82412248382861952 0 0.99320025302729242 0.002998915610835868 -0.11637982596516101 0
		 -0.22792868074054073 1.2977579564526849 0.2254788245911756 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_MID_LEG" -p "L_UPR_LEG";
	rename -uid "BFECCDC7-465B-3BD5-6816-0D9038986B81";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.79462156969816689 -0.068665085425525671 -0.0042399603801031175 ;
	setAttr ".r" -type "double3" -0.73917386186718614 -1.4323779800934755 65.187847925273772 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -19.819471529595216 ;
	setAttr ".bps" -type "matrix" 0.024002554392112081 -0.95959467962061817 0.28036035423443356 0
		 0.11682403011110468 0.28121208164885853 0.95250822102663013 0 -0.99286254001813024 0.009890196080917903 0.11885352603195069 0
		 -0.27501591707819995 0.59994340527548407 -0.15791908175357935 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_ANK" -p "L_MID_LEG";
	rename -uid "59E15FE4-4F0B-74C6-A42B-2B9CD6C9BC81";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.53354299271843231 0.056452473946840644 0.0072903513481208182 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -77.939874682572281 ;
	setAttr ".bps" -type "matrix" -0.10449224131745467 -0.26810555845955159 -0.95770599926467359 0
		 -0.043294653613820913 0.96329100153956371 -0.26494531383167286 0 0.99358288253819793 0.01377881983321427 -0.112263973077251 0
		 -0.26285283361585327 0.10390560883116495 0.046303150179653446 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_TOE" -p "L_ANK";
	rename -uid "51654F20-4221-2689-2D90-E792E9F4BE95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.14796918811061285 1.0408340855860843e-016 1.9861890614982498e-019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 28.791945562037881 ;
	setAttr ".bps" -type "matrix" -0.11242634958178119 0.22898946216763894 -0.96691475432733531 0
		 0.012384322621808913 0.97333137745588949 0.22906911230678745 0 0.99358288253819793 0.01377881983321427 -0.112263973077251 0
		 -0.27831446572745527 0.064234247017962751 -0.09540782898020353 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_END" -p "L_TOE";
	rename -uid "DD10C616-4696-2EE1-8839-8BA9921F29DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.18164953624992924 -0.03697335337892646 -1.0068147570624964e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0424510691709301 -89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 0.9935828825381976 0.013778819833214495 -0.11226397307725194 0
		 0.002454813193475337 0.98969119539775996 0.14319675849801144 0 0.11307974805097189 -0.14255343516084257 0.98330640631726407 0
		 -0.29919454992791306 0.069842751653361221 -0.27951689893449411 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "L_ANK_orientConstraint1" -p "L_ANK";
	rename -uid "74F58B92-479E-1119-B153-ECA950C66295";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_LEG_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 9.4527988889880028 -97.409977947070232 43.062107762773351 ;
	setAttr ".o" -type "double3" 67.036408519887644 106.72321196289155 68.707002848486823 ;
	setAttr ".rsrr" -type "double3" -0.0048457843356571606 -0.0042276010868381479 0.30844502516194239 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "L_MID_LEG";
	rename -uid "04060C1A-4BA4-2030-503E-F797546A0816";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_UPR_LEG2" -p "HIP";
	rename -uid "D6919CA0-4DA1-07BE-C4C3-05B81CA99D45";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.271791 -0.017938983120353136 -0.055180390121830222 ;
	setAttr ".r" -type "double3" -7.4495509080509086 0.19201564203603155 56.50264717913219 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 -8.1301023541560227 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 0.0067275771123753714 0.83237963280602734 0.55416503552272245 0
		 -0.12195072889717812 -0.54935815095966833 0.82663997102464204 0 0.99251335478553837 -0.073142114160566554 0.097813453616967458 0
		 0.31565350658610525 1.2977549449949768 0.22547888933443158 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_MID_LEG1" -p "R_UPR_LEG2";
	rename -uid "2A68C2C7-4F94-4212-99A6-4085CF05A741";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.79461882232333658 0.068664685564290284 0.004240007735662743 ;
	setAttr ".r" -type "double3" -0.73802733985690583 -1.430177566388209 65.084758836546385 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258172 0 -19.819471529595212 ;
	setAttr ".bps" -type "matrix" 0.086346604369112151 0.95612169494720822 -0.27995636868126716 0
		 0.079004600827873139 -0.28669236514877278 -0.9547595303600962 0 -0.9931276539105901 0.060322402278758083 -0.10029292508131986 0
		 0.3061422030319586 0.59829879362105087 -0.15769537508013518 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_ANK1" -p "R_MID_LEG1";
	rename -uid "5CEC0EE7-4CD9-296C-7C52-A7B0863306F8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.53354239100872891 -0.056452501726537305 -0.0072905851009530953 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999817171167 0 -77.939874682572309 ;
	setAttr ".bps" -type "matrix" -0.10449031052223842 0.26813220921445963 0.95769874876640615 0
		 -0.043301963966729848 -0.96328351952705271 0.26497132094662279 0 0.99358276702225012 -0.013783301104864823 0.11226444533806072 0
		 0.26285310359368291 0.10391205403483783 0.046302973385599494 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_TOE1" -p "R_ANK1";
	rename -uid "490F8C7C-4AA0-E3FD-A412-A2B0E88AE2F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.14796926116754658 3.1605011251156778e-007 -2.1833191254927442e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.4787915988669358e-023 -1.9752179289200997e-006 
		28.791945562037807 ;
	setAttr ".bps" -type "matrix" -0.11242814411825373 -0.22896250303831889 0.96692092986580525 0
		 0.012376986085874606 -0.97333765622761703 -0.22904282827619643 0 0.99358277089810487 -0.01378329321159861 0.11226441200437422 0
		 0.27831442226215286 0.064236424997220931 -0.095406921597324751 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_END1" -p "R_TOE1";
	rename -uid "B8486994-4794-5CCF-B295-C7841F2561EC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.18164960159641716 0.036973431776693967 -1.9249164179280243e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0424510691706947 -89.999998907226413 0 ;
	setAttr ".bps" -type "matrix" 0.99358276875381946 -0.013783297578485301 0.11226443044597088 0
		 0.0024473456567907187 -0.98969508030599485 -0.14317003358715302 0 0.11308090968298534 0.1425260282403647 -0.98331024561899882 0
		 0.29919437824372658 0.069839741679599734 -0.27951624427785748 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_ANK1_orientConstraint1" -p "R_ANK1";
	rename -uid "F4A578D9-4785-713C-E52A-3D96DBD51401";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_LEG_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -34.464151173851207 -83.819071670602355 -92.827143873725845 ;
	setAttr ".o" -type "double3" 67.038342135358434 -73.275344396280843 111.29071209599299 ;
	setAttr ".rsrr" -type "double3" -0.0050669893495352393 -0.004649728094802413 0.30966437377412487 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "R_MID_LEG1";
	rename -uid "6ADE5CD1-4D19-8905-35F0-B5A4B6BFD739";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "SPINE_ONE" -p "HIP";
	rename -uid "C44AA0AB-463B-B21D-7EFB-5D88DA3AE93B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.34524410200933442 0.044392821576607386 ;
	setAttr ".r" -type "double3" -5.4170343447573081e-016 8.7111242439344401e-015 -1.9520554303265691 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000014 -5.1397573789906268 90 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-016 0.99475559455702411 0.10228053137084107 0
		 1.6653345369377348e-016 0.10228053137084102 -0.99475559455702411 0 -1 1.617629272224234e-016 -2.2554368346713325e-016 0
		 0.043862506586105243 1.6629778444444256 0.3172885376835976 1;
	setAttr ".radi" 0.5;
createNode joint -n "Collar" -p "SPINE_ONE";
	rename -uid "FABD741C-412D-BB90-4641-40B752EE72BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.57883099977219865 0.026105812586281224 4.3474911314757677e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 25.396219553513792 ;
	setAttr ".bps" -type "matrix" 1.7171562910484354e-016 0.94249160465391812 -0.33422982385909633 0
		 -2.2529019019492948e-016 0.33422982385909639 0.94249160465391801 0 1 -1.2083157882556079e-016 3.4096561615340063e-016 0
		 0.043862506586105306 2.241443336154048 0.35052277679355287 1;
	setAttr ".radi" 0.5;
createNode joint -n "NECK" -p "Collar";
	rename -uid "03B02F49-4330-7389-FA65-AF833766CFF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 22.957091511918474 ;
	setAttr ".bps" -type "matrix" 7.0242713147790389e-017 0.99820719623761511 0.0598530983278171 0
		 3.9688750754862024e-016 0.059853098327817045 -0.998207196237615 0 -1 1.2816146935418209e-016 -4.6321074092922554e-016 0
		 0.04386250658610534 2.471760973286147 0.26272195750382821 1;
	setAttr ".radi" 0.5;
createNode joint -n "HEAD" -p "NECK";
	rename -uid "58486898-446B-704D-88C4-3C9474F48A24";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93176006395773037 2.7061686225238191e-016 -3.7903070505771069e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 87.299370662604659 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 3.2177660447549644e-016 3.7896759481175172e-016 0
		 -4.1073534608998912e-016 0.99991866860891221 0.012753672701641447 0 -3.9313705181413435e-016 -0.012753672701641391 0.99991866860891221 0
		 0.043862506586105444 3.4018505742955738 0.31849068422982313 1;
	setAttr ".radi" 0.55615510862469475;
createNode orientConstraint -n "NECK_orientConstraint1" -p "NECK";
	rename -uid "0E88BC89-437A-C118-1E39-78959FAD0735";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -83.476057995685551 57.989548790314402 -35.200901332104181 ;
	setAttr ".o" -type "double3" 21.704546668760443 -80.790527413543359 -21.961168303371181 ;
	setAttr ".rsrr" -type "double3" -2.0077251426738451e-014 5.7647553601526259e-015 
		9.5416640443905487e-015 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "NECK_pointConstraint1" -p "NECK";
	rename -uid "489CB277-4161-8B9D-3F2F-F1817945F06A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.85796206881682158 -0.36342524026004674 -3.7903070505771143e-017 ;
	setAttr ".rst" -type "double3" 0.24641809176661955 -0.005772511771996669 -1.917505025609869e-017 ;
	setAttr -k on ".w0";
createNode joint -n "L_UPL_ALM" -p "Collar";
	rename -uid "F3489A0B-48B1-AD8E-1F1C-398192A47277";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.01219610970241209 -0.13158344026421248 -0.18300900000000003 ;
	setAttr ".r" -type "double3" 17.689097423362195 -1.9149834395414702 35.466323569140954 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 110.25646217452316 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 0.99999249070909113 0.0038535847802594328 -0.00041037759398290829 0
		 0.0038535825656940926 -0.99999257490399918 -6.1869868824824444e-006 0 -0.00041039838896823281 4.6055164810710425e-006 -0.99999991577597214 0
		 -0.13914649341389471 2.208958957095728 0.22243018543544882 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_MID_ALM" -p "L_UPL_ALM";
	rename -uid "9A0274C8-40EA-AA11-F294-7D9F062AF7A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.52681899999999993 -4.4408920985006262e-016 -1.7994197105885117e-016 ;
	setAttr ".r" -type "double3" -3.4014790280636525e-015 9.0564113120014606e-017 9.9620937978259683 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.5343414997006404 ;
	setAttr ".bps" -type "matrix" 0.99964647936566575 -0.026584730270443405 -0.00041037577564647076 0
		 -0.026584729921362876 -0.99964656358897008 6.3064421381822422e-006 0 -0.00041039838896823281 4.6055164810710425e-006 -0.99999991577597214 0
		 -0.66596153737676733 2.206928815415377 0.22264638014913349 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_WLIST" -p "L_MID_ALM";
	rename -uid "CFCB5469-45F0-B87A-5FD6-D992DBA9C4E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.47987407859072373 -8.3898479319444164e-007 -1.6384924410288285e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.3764963264667898 ;
	setAttr ".bps" -type "matrix" 0.99079493005563535 -0.050781852679908535 -0.12548549722754698 0
		 -0.050379403223161749 -0.99870976937166078 0.0063806185030940753 0 -0.12564761162444235 7.2969262603821486e-016 -0.9920749355230547 0
		 -1.145665948274643 2.2196869770467544 0.22284330884105694 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_WLIST_END" -p "L_WLIST";
	rename -uid "880FA4AC-437B-A685-76FA-7683BE0FF2D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.22546211589249787 -0.0014024254981790385 -7.688630823700516e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.9108378261673717 ;
	setAttr ".bps" -type "matrix" 0.99207493552305481 -2.4980018054066022e-016 -0.12564761162444246 0
		 -4.649058915617843e-016 -0.99999999999999989 -6.9562411386669964e-016 0 -0.12564761162444235 7.2969262603821486e-016 -0.9920749355230547 0
		 -1.3689820162608828 2.2325369770467551 0.25112658621771905 1;
	setAttr ".radi" 0.66805794180650646;
createNode orientConstraint -n "L_WLIST_orientConstraint1" -p "L_WLIST";
	rename -uid "FA28A739-4C74-0771-7B98-8C97A7FCAB4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_ARM_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -16.777698014646106 195.56819437154144 134.65249403248956 ;
	setAttr ".o" -type "double3" -180 0 -2.9108378261673948 ;
	setAttr ".rsrr" -type "double3" 0.00052680127925815927 0.013423942065683538 0.0036750617568741765 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "L_MID_ALM";
	rename -uid "8790DFC4-418A-C6A0-54AD-C88EDDC61724";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_UPR_ARM" -p "Collar";
	rename -uid "D160D9FB-43ED-0B93-2425-C2807F7E82CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.026245986074735821 -0.14521589229207515 0.18300899999999984 ;
	setAttr ".r" -type "double3" 40.799189180076119 50.821685476698896 10.943902464472959 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -69.743537825476849 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 0.97749729219802106 0.031176876278364983 -0.20863136420744696 0
		 -0.031768508228365328 0.99949512073078617 0.00051528661504944865 0 0.20854209558379619 0.0061242159396026367 0.97799421693006139 0
		 0.22687150658610519 2.2089631306098196 0.22243020874871183 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_MID_ARM" -p "R_UPR_ARM";
	rename -uid "2D3769B3-414F-7E70-40F5-679A3AC5E5F3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.58021629021408649 0.0033957863834918559 0.035087650762050324 ;
	setAttr ".r" -type "double3" -0.00021867874531847378 65.499007644799619 22.668210846440292 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182698257383e-006 0 1.5343414997004059 ;
	setAttr ".bps" -type "matrix" 0.97749762266735674 0.03116647373681946 -0.20863137011120439 0
		 -0.031758330245929153 0.99949544528807888 0.00051313582566239562 0 0.20854209680459421 0.0061241949019618536 0.97799421680148302 0
		 0.74183618197464818 2.2253827808359072 0.11251916031459529 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_WRIST" -p "R_MID_ARM";
	rename -uid "DD2DC0DB-411A-A54C-64A7-8BB21ED6C214";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.47987428902114848 1.602309705361904e-006 -5.0238667495842645e-010 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9094762996796429e-006 0 1.3764963264667898 ;
	setAttr ".bps" -type "matrix" 0.98851349713153602 0.15113261060567676 -5.4214672862151758e-007 0
		 -0.15113261058910693 0.98851349695578083 -1.8782305053317849e-005 0 -2.3026994372954412e-006 1.8648498102873633e-005 0.99999999982346555 0
		 1.2109121076805593 2.2403403717598356 0.012402330245844237 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_WRIST_END" -p "R_WRIST";
	rename -uid "10ADBF8E-4157-B096-9B8B-929C72E50B95";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.22546211589251586 0.0014024254953053372 -2.016735297518181e-010 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.5234113312883424e-006 0 -2.9108378268976569 ;
	setAttr ".bps" -type "matrix" 0.99491288070836026 0.10073906789534198 4.1235301413892683e-007 0
		 -0.10073906787000977 0.99491288053481819 -1.8724107634743507e-005 0 -2.2965044753584052e-006 1.8587315807306494e-005 0.99999999982461885 0
		 1.4335725001058841 2.2758013664579315 0.01240218146983868 1;
	setAttr ".radi" 0.66805794180650646;
createNode orientConstraint -n "L_WLIST_orientConstraint2" -p "R_WRIST";
	rename -uid "FC6E0B76-4F87-8400-2836-96A50DE01519";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_ARM_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-016 8.8817841970012523e-016 4.9763185651190145e-021 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".lr" -type "double3" 179.9998444289233 0.013433374029113029 -2.9071628443605002 ;
	setAttr ".cpim" -type "matrix" 0.99964314358094419 -0.026711992095483712 -0.0002344566043119097 -0
		 -0.026711992193187355 -0.99964317106940703 2.7152274350759847e-006 0 -0.00023444547254612705 3.5485444950205987e-006 -0.99999997251136441 -0
		 0.77200912703303515 2.3175758377659412 -0.0002852744648939607 1;
	setAttr ".cjo" -type "double3" -2.3478847918663307e-016 -1.9544900546271226e-014 
		1.3764963264667898 ;
	setAttr ".o" -type "double3" -180 0 -2.9108378261673948 ;
	setAttr ".rsrr" -type "double3" 9.0531732471216485e-018 3.5632149789594355e-016 
		2.815076677148021e-035 ;
createNode orientConstraint -n "R_WRIST_orientConstraint1" -p "R_WRIST";
	rename -uid "F6914242-4ACF-2166-680C-F7AA96A514D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_ARM_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 37.36614395437995 37.556549627235441 -14.529017226831332 ;
	setAttr ".o" -type "double3" -0.0010761468091062074 3.1062719457215952e-005 7.4927777434359415 ;
	setAttr ".rsrr" -type "double3" 0.00052680127928348363 0.013423942065680528 0.0036750617568888032 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "R_MID_ARM";
	rename -uid "2DDCB09C-4BAE-871A-15E0-E09A7D0025D2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "SPINE_ONE";
	rename -uid "292A2F8A-4F28-4B2B-E3A6-B694ECBDE3DE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "L_LEG__IK";
	rename -uid "F4057616-4B2C-BD3E-16D9-94905B5995E1";
	setAttr ".r" -type "double3" 83.537928518422277 -3.6893309481747942 -88.793742064592507 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "L_LEG__IK_pointConstraint1" -p "L_LEG__IK";
	rename -uid "B3273AB1-4F52-3C70-53FA-D6B64136CE3C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_LEG_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.26285287111463784 0.10390432696723673 0.046302957795031199 ;
	setAttr -k on ".w0";
createNode ikHandle -n "R_LEG_IK";
	rename -uid "A339C41F-4255-12BE-9E31-7DA0848E0D9E";
	setAttr ".r" -type "double3" -96.462467101635085 3.6921234674201719 88.793471866122189 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "R_LEG_IK_pointConstraint1" -p "R_LEG_IK";
	rename -uid "28F75BF9-476D-F18C-3D77-358589223CBB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_LEG_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.26285304544445276 0.10391073925235261 0.046302776058666714 ;
	setAttr -k on ".w0";
createNode ikHandle -n "L_ARM_IK";
	rename -uid "09E76893-468D-713B-4950-20A14268D651";
	setAttr ".r" -type "double3" 179.99979610207728 0.01343272741453873 -1.53314596716123 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "L_ARM_IK_pointConstraint1" -p "L_ARM_IK";
	rename -uid "4176B4AD-4005-D23F-D54A-D7AB82AF6B84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_ARM_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.1895300000000009 2.3501900000000004 4.3603100000000032e-016 ;
	setAttr -k on ".w0";
createNode ikHandle -n "R_ARM_IK";
	rename -uid "30DE0F73-41BE-1272-81E4-16AB840478D1";
	setAttr ".r" -type "double3" -0.00020399030577261153 -0.013432726255043917 1.5386894085408056 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "R_ARM_IK_pointConstraint1" -p "R_ARM_IK";
	rename -uid "35EF2360-44D6-B002-4594-44B117470224";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_ARM_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1854939460754399 2.3501899999999996 4.3603100000000012e-016 ;
	setAttr -k on ".w0";
createNode ikHandle -n "SPINE_IK";
	rename -uid "AA401FC5-4F67-12DF-C9A8-FEBCF6630734";
	setAttr ".t" -type "double3" 0.042927816515447748 2.0199438906205991 -0.027360312026015576 ;
	setAttr ".r" -type "double3" -90.000000000000028 13.248621128112728 90 ;
	setAttr ".roc" yes;
createNode transform -n "SPIKE_IK_CURVE";
	rename -uid "DFBC1401-41B9-2228-5F34-0AA9D0C3F6DF";
	setAttr ".rp" -type "double3" -6.1629758220391547e-033 1.4473689831199672 0.057421080121814884 ;
	setAttr ".sp" -type "double3" -6.1629758220391547e-033 1.4473689831199672 0.057421080121814884 ;
createNode nurbsCurve -n "SPIKE_IK_CURVEShape" -p "SPIKE_IK_CURVE";
	rename -uid "4C3097AE-406E-4E4D-31A0-498DBABA37AC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 0.92750590041301495 0.92750590041301495 0.92750590041301495
		4
		-6.1629758220391547e-033 1.4473689831199672 0.057421080121814884
		-1.2325951644078309e-032 1.7550436184961209 0.096979449922541774
		1.2852630066278421e-016 2.0616395323880652 0.11779511912412172
		1.2852630066278421e-016 2.371763233544173 0.12767363465853426
		;
createNode pointConstraint -n "SPIKE_IK_CURVE_pointConstraint1" -p "SPIKE_IK_CURVE";
	rename -uid "8B03123F-4FD7-9031-D3FF-C3B30C72558A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.1629758220391534e-033 -1.4410694859634532e-013 
		-5.7037707890117417e-015 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "SPIKE_IK_CURVE_orientConstraint1" -p "SPIKE_IK_CURVE";
	rename -uid "9B5A4DF0-40C5-720E-1D8A-A59303C42909";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HIP_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -19.119129937315453 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "MAIN_CTRL";
	rename -uid "7780526F-4DC5-6A87-97A2-3197210ADC51";
createNode nurbsCurve -n "MAIN_CTRLShape" -p "MAIN_CTRL";
	rename -uid "50FB126B-4D2C-822C-3BE3-2B9F493D203A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.9526672284153466 0 -0.97758603687167955
		0.013090871978469476 0 -3.049912005321576
		-2.0033198513063732 0 -1.013590430543557
		-0.99867504012618202 0 -1.0111926181937303
		-0.99669197227399486 0 0.98468599088885789
		1.0126142797590165 0 1.0065105194862252
		0.97022263529882391 0 -1.0212803745251975
		1.9931033641524909 0 -0.99642223433238541
		;
createNode transform -n "L_LEG_CTRL" -p "MAIN_CTRL";
	rename -uid "8C65FEFF-4A0E-D867-F18F-569F57CB4A4B";
	setAttr ".s" -type "double3" 0.32931508372240298 0.49261868069068848 0.49261868069068848 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.26285286866648483 0.10390396409372647 0.046302969803315698 ;
	setAttr ".sp" -type "double3" -0.79818047110182599 0.21092168885687668 0.093993532154313456 ;
	setAttr ".spt" -type "double3" 0.53532760243534117 -0.10701772476315022 -0.047690562350997751 ;
createNode nurbsCurve -n "L_LEG_CTRLShape" -p "L_LEG_CTRL";
	rename -uid "C8A1520D-4344-5744-1716-EBA8F3D8F2EF";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_LEG_CTRL" -p "MAIN_CTRL";
	rename -uid "5450E080-4A36-F48E-A39B-F59202E79712";
	setAttr ".s" -type "double3" 0.34466153589808474 0.49370058333788752 0.49370058333788752 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0.26285304179276764 0.10391019796749212 0.046302793971026886 ;
	setAttr ".sp" -type "double3" 0.76264106787504282 0.21047209882751183 0.093787197207618758 ;
	setAttr ".spt" -type "double3" -0.49978802608227507 -0.10656190086001974 -0.047484403236591886 ;
createNode nurbsCurve -n "R_LEG_CTRLShape" -p "R_LEG_CTRL";
	rename -uid "E853AE15-49FF-2E85-F634-0E94B7BDC892";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 -0.5 -0.25 0 0.25 0.5 0.75 1 1.25 1.5
		7
		2.2821631086115515 0.21047076974594978 0.092196814406575248
		0.76264095746213056 0.21045156131910639 -1.4054176385127302
		-0.75688097309571367 0.21047338433746918 0.092196923453048155
		0.76264118021691274 0.21049299513435246 1.6191837373033056
		2.2821631086115515 0.21047076974594978 0.092196814406575248
		0.76264095746213056 0.21045156131910639 -1.4054176385127302
		-0.75688097309571367 0.21047338433746918 0.092196923453048155
		;
createNode transform -n "HIP_CTRL" -p "MAIN_CTRL";
	rename -uid "8F3C19BD-41A2-E93A-2B7E-77B3F1399D82";
	setAttr ".s" -type "double3" 0.66190150574702378 -0.24441925174805357 0.4528875699731188 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -1.368455531567204e-048 1.4473689831198233 0.057421080121809173 ;
	setAttr ".sp" -type "double3" -2.0674609737029705e-048 -5.9216652238661034 0.126788818967183 ;
	setAttr ".spt" -type "double3" 6.9900544213576628e-049 7.3690342069859263 -0.069367738845373797 ;
createNode nurbsCurve -n "HIP_CTRLShape" -p "HIP_CTRL";
	rename -uid "0C32DC15-4551-7AC4-F4E8-E5BB042C5F99";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "CHEST_CTRL" -p "HIP_CTRL";
	rename -uid "258B2CB7-434C-0856-FC64-D6BF0EE3A2CA";
	setAttr ".t" -type "double3" 6.8860283265569492e-064 -4.5422895974232434e-015 -7.6607246080071119e-017 ;
	setAttr ".s" -type "double3" 0.61855147241083497 0.61855147241083464 1.0183716149844038 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -2.0674609737029705e-048 -7.3377233507675133 0.20854012004336361 ;
	setAttr ".sp" -type "double3" -3.3424234941110706e-048 -11.86275302549743 0.20477801715492369 ;
	setAttr ".spt" -type "double3" 1.2749625204081003e-048 4.5250296747299119 0.0037621028884398853 ;
createNode nurbsCurve -n "CHEST_CTRLShape" -p "CHEST_CTRL";
	rename -uid "B2F859B3-4D98-638F-2B44-87AF90AA3887";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 -11.86275302549743 -0.5788336077363001
		-1.2643170607829326e-016 -11.86275302549743 -0.9034161703994642
		-0.78361162489122427 -11.86275302549743 -0.57883360773630055
		-1.1081941875543879 -11.86275302549743 0.20477801715492336
		-0.78361162489122449 -11.86275302549743 0.98838964204614776
		-3.3392053635905195e-016 -11.86275302549743 1.3129722047093118
		0.78361162489122382 -11.86275302549743 0.9883896420461481
		1.1081941875543879 -11.86275302549743 0.20477801715492427
		0.78361162489122504 -11.86275302549743 -0.5788336077363001
		-1.2643170607829326e-016 -11.86275302549743 -0.9034161703994642
		-0.78361162489122427 -11.86275302549743 -0.57883360773630055
		;
createNode transform -n "L_ARM_CTRL" -p "CHEST_CTRL";
	rename -uid "ABBB4615-4865-E3A0-33AA-539CAD81D449";
	setAttr ".s" -type "double3" 0.56618460781390167 1.5332607466989114 -0.50260937579202913 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -2.9054016935402975 15.545035520482593 -9.4541106302491329e-016 ;
	setAttr ".rpt" -type "double3" 0 -31.090071040965185 3.7945399253289183e-015 ;
	setAttr ".sp" -type "double3" -5.1315448237958341 10.138546593559401 1.8810056249649191e-015 ;
	setAttr ".spt" -type "double3" 2.2261431302555326 5.4064889269231919 -2.826416687989833e-015 ;
createNode nurbsCurve -n "L_ARM_CTRLShape" -p "L_ARM_CTRL";
	rename -uid "63DBC61C-4F30-205F-26AE-08A1D74A5FA4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.1315448237958288 10.922158218450624 -0.78361162489122216
		-5.1315448237958297 10.138546593559399 -1.1081941875543866
		-5.1315448237958288 9.3549349686681733 -0.7836116248912226
		-5.1315448237958288 9.0303524060050098 1.4432899320127035e-015
		-5.1315448237958297 9.3549349686681733 0.78361162489122593
		-5.1315448237958297 10.138546593559399 1.1081941875543899
		-5.1315448237958297 10.922158218450623 0.78361162489122627
		-5.1315448237958288 11.246740781113788 2.3314683517128287e-015
		-5.1315448237958288 10.922158218450624 -0.78361162489122216
		-5.1315448237958297 10.138546593559399 -1.1081941875543866
		-5.1315448237958288 9.3549349686681733 -0.7836116248912226
		;
createNode transform -n "R_ARM_CTRL" -p "CHEST_CTRL";
	rename -uid "809DB2D1-4364-6302-FA9F-73B4CB99C0A5";
	setAttr ".s" -type "double3" 0.56618460781390167 1.5332607466989114 -0.50260937579202913 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.8955437177787462 15.545035520482584 -9.454110630249129e-016 ;
	setAttr ".rpt" -type "double3" 0 -31.090071040965167 3.7945399253289167e-015 ;
	setAttr ".sp" -type "double3" 5.1141335843776208 10.138546593559399 1.8810056249649183e-015 ;
	setAttr ".spt" -type "double3" -2.2185898665988746 5.4064889269231902 -2.8264166879898314e-015 ;
createNode nurbsCurve -n "R_ARM_CTRLShape" -p "R_ARM_CTRL";
	rename -uid "D84FD249-4A01-7CB5-4CD7-C2894A0D69E5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1141335843776199 9.354934968668168 -0.78361162489122194
		5.1141335843776199 10.138546593559393 -1.1081941875543861
		5.1141335843776199 10.922158218450617 -0.78361162489122238
		5.114133584377619 11.246740781113781 1.5598786742411953e-015
		5.1141335843776199 10.922158218450617 0.78361162489122593
		5.1141335843776199 10.138546593559393 1.1081941875543899
		5.1141335843776199 9.3549349686681698 0.78361162489122627
		5.1141335843776199 9.0303524060050062 2.4762188848929761e-015
		5.1141335843776199 9.354934968668168 -0.78361162489122194
		5.1141335843776199 10.138546593559393 -1.1081941875543861
		5.1141335843776199 10.922158218450617 -0.78361162489122238
		;
createNode transform -n "HEAD_CTRL";
	rename -uid "1E9D4202-4514-A6B4-2922-B58A4DD4FDF3";
createNode nurbsCurve -n "HEAD_CTRLShape" -p "HEAD_CTRL";
	rename -uid "9CE4BE6B-4736-8DEB-D87B-BA8E2406375D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "polySurface3";
	rename -uid "8CAB8C4E-4A07-7709-4212-BFA9E8F7FE5A";
	setAttr ".t" -type "double3" 0 0 0.019356896598695883 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "boy" -p "polySurface3";
	rename -uid "0A96D833-4248-C1CA-F690-958B50FBAB39";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.84946778416633606 0.39428222924470901 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface3ShapeOrig" -p "polySurface3";
	rename -uid "3B35005D-47A5-84B9-54BB-9B83A7BBA065";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1422 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.15827715 0.73915708 0.17617929
		 0.73901135 0.16140288 0.75203347 0.12560765 0.75339824 0.19182372 0.73904973 0.20896953
		 0.75203025 0.20938146 0.73914742 0.24386215 0.75337481 0.21933275 0.74015474 0.26017255
		 0.75470638 0.21757734 0.74139065 0.21088476 0.036894023 0.24221583 0.052225351 0.25959772
		 0.052813411 0.19846418 0.036218941 0.20349301 0.052125633 0.16534577 0.036395073
		 0.15688567 0.052156389 0.15206015 0.037027001 0.11970826 0.052270293 0.1495261 0.74127442
		 0.10335235 0.052837849 0.14781645 0.7401883 0.1083189 0.75475937 0.14852621 0.78248322
		 0.094300598 0.78285718 0.2234717 0.78248382 0.2761032 0.78284711 0.29813653 0.78289306
		 0.27242196 0.081317306 0.29862064 0.081091404 0.21015356 0.080886662 0.14476226 0.080888331
		 0.088416494 0.081321716 0.064770214 0.081100941 0.070828497 0.78291601 0.1412262
		 0.82589972 0.077742875 0.82324713 0.23137298 0.82599568 0.29314131 0.82334757 0.3184377
		 0.81805074 0.28938797 0.11974579 0.31882724 0.11554086 0.21410008 0.11935222 0.13746716
		 0.11933553 0.070906512 0.11969793 0.044624247 0.11548615 0.050858349 0.81796277 0.13921279
		 0.86794603 0.070629433 0.86550546 0.23349339 0.86836636 0.30045736 0.86583322 0.3258388
		 0.8625766 0.29460904 0.15785021 0.32583934 0.15821123 0.21514042 0.15605724 0.13580152
		 0.15602124 0.065713935 0.15774405 0.037433535 0.15807647 0.017493814 0.82620722 0.021199822
		 0.82651824 0.0077017844 0.86593002 0.0034855902 0.86524135 0.14170566 0.90172148
		 0.073922195 0.19497287 0.23080111 0.90212429 0.29180783 0.19533384 0.32027832 0.19435048
		 0.28816128 0.18743813 0.3228091 0.19256604 0.21367005 0.18496752 0.13867649 0.1849398
		 0.072583489 0.18730253 0.04102277 0.19236153 0.02091378 0.89314181 0.016783893 0.89225304
		 0.14827907 0.24160469 0.09649048 0.23887688 0.21860881 0.24172777 0.26914492 0.2391308
		 0.2933985 0.23650157 0.26806173 0.23042285 0.29570529 0.23486418 0.20893371 0.22698116
		 0.14710645 0.2270472 0.093663402 0.230286 0.068357967 0.23462671 0.04406587 0.19403636
		 0.070994623 0.23614955 0.15660854 0.26172811 0.11680799 0.25917906 0.20992328 0.26179028
		 0.24863912 0.25937533 0.26767218 0.25688338 0.24917467 0.25127017 0.26966029 0.25527984
		 0.20526668 0.24820161 0.1553134 0.24818575 0.11356077 0.25113308 0.094504111 0.25507385
		 0.096742921 0.25659645 0.16838075 0.27164847 0.14639324 0.27043891 0.19721381 0.27168447
		 0.21858335 0.27054244 0.23576589 0.26784122 0.21961942 0.2657966 0.23008724 0.26853013
		 0.1980179 0.26348597 0.16781272 0.26345444 0.14438425 0.26571047 0.13418818 0.26841223
		 0.12868302 0.267676 0.18152799 0.045154214 0.18230379 0.2733981 0.044003725 0.86232603
		 0.36180717 0.86620814 0.34808087 0.82664418 0.42631561 0.82628793 0.44059843 0.86542147
		 0.34867013 0.89349425 0.35289824 0.8924793 0.93743497 0.78644937 0.94008607 0.79023594
		 0.83636642 0.79842728 0.83203918 0.79551643 0.92993265 0.82732874 0.83510619 0.82596737
		 0.91867501 0.86082309 0.91536039 0.85801607 0.82616752 0.84897214 0.83051652 0.85052019
		 0.92377675 0.82420379 0.82602608 0.82324725 0.69928235 0.8167308 0.69392139 0.81480628
		 0.70148236 0.83308989 0.69360441 0.84607095 0.69884878 0.84728903 0.69064903 0.83095008
		 0.67715657 0.80780202 0.68250382 0.8097623 0.6286459 0.82616752 0.6238718 0.82518727
		 0.62135983 0.824516 0.62126088 0.82418054 0.62031758 0.82392842 0.6137343 0.82219929
		 0.64249903 0.81565672 0.6844812 0.82992762 0.62878537 0.83489591 0.68165594 0.84779793
		 0.67637891 0.8466261 0.65529627 0.84439033 0.61466599 0.84011847 0.61963916 0.84119123
		 0.62016642 0.84153277 0.62345564 0.84224194 0.62891835 0.8432073 0.64456892 0.83816439
		 0.59489238 0.81946689 0.59922564 0.82031459 0.59897709 0.8263945 0.59444118 0.83145005
		 0.5987401 0.83219546 0.58413625 0.816392 0.58348322 0.82868904 0.67642498 0.83604032
		 0.59466147 0.82559925 0.58701754 0.82948583 0.58736038 0.81721681 0.59044361 0.83026618
		 0.58719826 0.82952625 0.58767867 0.82361668 0.5881815 0.81742948 0.59096706 0.81815046
		 0.5906992 0.8243503 0.59371257 0.82906526 0.59067917 0.8283518 0.59093404 0.82245523
		 0.59120131 0.81627566 0.59414625 0.81705922 0.59392428 0.82320338 0.62043202 0.83287543
		 0.62074935 0.83321804 0.62365866 0.83391649 0.62800992 0.82543749 0.63699079 0.8250671
		 0.63663924 0.81291991 0.62749088 0.81361264 0.61971283 0.87143302 0.71944845 0.877518
		 0.7161386 0.88053334 0.61813885 0.87525809 0.71814036 0.90760344 0.63089961 0.91076118
		 0.64393026 0.94337994 0.72163892 0.93232971 0.72498298 0.93066841 0.64624137 0.94043034
		 0.63456786 0.90850919 0.72377402 0.9055993 0.85756403 0.90297586 0.85298389 0.90488321
		 0.8503558 0.92082483 0.85030395 0.9351781 0.85472208 0.93397492 0.85761112 0.91933626
		 0.87502408 0.8978861 0.90794909 0.90968364 0.93509364 0.91937333 0.92934501 0.92100459
		 0.92852068 0.92123586 0.92857373 0.92169029 0.92637926 0.92230076 0.92207086 0.92302722
		 0.87039012 0.89978486 0.92092037 0.93165261 0.8674264 0.91950148 0.86706221 0.93749875
		 0.91982478 0.93986589 0.92470109 0.93918747 0.92755401 0.93855804 0.92786121 0.93810505
		 0.93218184 0.93711215 0.89211553 0.93666071 0.87148851 0.93639904 0.90337431 0.93184978
		 0.95583737 0.92023057 0.95188689 0.92080373 0.9513787 0.92683214 0.95089376 0.93258446
		 0.95480013 0.93211037 0.96429014 0.92953032 0.96518958 0.91733342 0.87253147 0.92600554
		 0.95530653 0.92631012 0.96118557 0.93026286 0.96234941 0.91810101 0.95817637 0.93095678
		 0.96102643 0.9302991 0.96131885 0.92443484 0.95866156 0.92509109 0.95916986 0.91894406
		 0.96162498 0.9182952 0.95570302 0.92977697 0.95836842 0.9291659 0.95885158 0.92331737
		 0.95621824 0.92396396 0.95675814 0.91787106;
	setAttr ".uvst[0].uvsp[250:499]" 0.9593581 0.91718823 0.92818367 0.92985839
		 0.92805237 0.93031615 0.9255203 0.93094391 0.92051613 0.92070848 0.92246848 0.90907234
		 0.91330016 0.90699524 0.91149747 0.91897303 0.49213314 0.075291991 0.5146659 0.077427983
		 0.51958531 0.09519124 0.49948147 0.10079086 0.5312928 0.076269686 0.53183311 0.09449935
		 0.5734334 0.064998031 0.57714969 0.063905239 0.57379323 0.11764163 0.56981796 0.11853659
		 0.58638841 0.057917058 0.59371132 0.1245386 0.37713325 0.38975087 0.37443736 0.44081667
		 0.39742753 0.39659312 0.39636746 0.44768718 0.42265347 0.39670673 0.42359146 0.44780013
		 0.44379213 0.390053 0.44642898 0.44111452 0.45387521 0.37892371 0.4568738 0.42990831
		 0.47175866 0.069362044 0.48547301 0.12548244 0.51013184 0.066678762 0.52507865 0.04313463
		 0.54489172 0.065831363 0.52485037 0.7691713 0.50765586 0.76489097 0.096840307 0.33707976
		 0.07907851 0.34128171 0.48563239 0.76470417 0.11957325 0.3368625 0.47065657 0.76808459
		 0.46764481 0.7687701 0.46669295 0.77900767 0.4698002 0.77834445 0.46072206 0.77539867
		 0.45956674 0.78543591 0.46714982 0.78191358 0.24103075 0.53132331 0.48411456 0.78587061
		 0.25856048 0.53522581 0.50525349 0.78599536 0.28038231 0.53541541 0.52292454 0.78219032
		 0.29860675 0.53175318 0.53053844 0.77579129 0.073184893 0.34775639 0.056577615 0.50840056
		 0.18708555 0.33852351 0.18659298 0.34685737 0.21835248 0.34694844 0.51549202 0.92609292
		 0.18713759 0.33764076 0.22930862 0.33978355 0.4935084 0.24643612 0.49717027 0.24787776
		 0.4956899 0.30044973 0.4917872 0.29908246 0.53860837 0.26361352 0.55503029 0.26536745
		 0.54967856 0.28301233 0.53742224 0.28088024 0.57959831 0.26598856 0.56742454 0.290903
		 0.5980522 0.26206693 0.60587269 0.25867271 0.5959276 0.32692406 0.57957172 0.31515101
		 0.5018084 0.44490933 0.49891993 0.4944945 0.5234462 0.45177355 0.5222702 0.50139707
		 0.54871821 0.4518975 0.54950964 0.50152278 0.56859028 0.44524091 0.57095301 0.49483252
		 0.57651055 0.43408608 0.57901776 0.48359349 0.52795637 0.25135577 0.54755044 0.23144257
		 0.56264281 0.25616872 0.51461619 0.91585702 0.51153278 0.91515052 0.49619943 0.91166472
		 0.47414362 0.91169959 0.26786959 0.33650744 0.24510629 0.33644295 0.45731941 0.91586715
		 0.28526133 0.34059572 0.45226094 0.92245901 0.08910042 0.5248087 0.46052307 0.92891967
		 0.097581238 0.53109968 0.47861332 0.93284762 0.11621994 0.53488183 0.49978632 0.93286109
		 0.13807142 0.53483558 0.51639438 0.92901427 0.15524325 0.53105497 0.52219582 0.9225378
		 0.1935169 0.53278208 0.19380625 0.5376749 0.094642445 0.33779699 0.073757604 0.34314775
		 0.12149714 0.33714753 0.28182724 0.54159307 0.25627914 0.54183006 0.30323082 0.53701913
		 0.067015335 0.35138118 0.18739636 0.33324355 0.24371321 0.3367421 0.18743162 0.33657092
		 0.27056432 0.33721143 0.2909705 0.34242624 0.082723111 0.52839398 0.092928261 0.53634179
		 0.11485279 0.54106027 0.14047879 0.54145229 0.19382457 0.54169917 0.095560178 0.35294294
		 0.069249555 0.35968822 0.12529127 0.35185713 0.28016213 0.56241977 0.25221029 0.56327188
		 0.30675179 0.55729461 0.061118975 0.36997664 0.2404487 0.35148817 0.19493689 0.35131752
		 0.27013344 0.35238063 0.29581404 0.35896432 0.076431543 0.54698181 0.089539498 0.55662477
		 0.11673093 0.56191146 0.14482829 0.56292689 0.18734385 0.56370091 0.097648516 0.37723851
		 0.07244806 0.38499326 0.12676232 0.37592757 0.27688882 0.59176731 0.24751054 0.59364438
		 0.30202138 0.58419251 0.06093426 0.39663857 0.23948441 0.3755855 0.19529139 0.37538815
		 0.26851773 0.37671942 0.2933619 0.38433111 0.072895378 0.57365966 0.094478488 0.58358419
		 0.12020615 0.59131265 0.15028536 0.59337449 0.18748097 0.59199142 0.16963501 0.35137784
		 0.16978119 0.37547022 0.17288809 0.36413085 0.18717067 0.36405545 0.17288868 0.36411649
		 0.1728888 0.36411351 0.18717192 0.36403555 0.18717174 0.36403894 0.20701754 0.55030298
		 0.19297965 0.55021107 0.19350033 0.55853891 0.20729029 0.5586127 0.19350015 0.55853581
		 0.20729035 0.55861211 0.21086514 0.56373024 0.21088606 0.59194601 0.17301355 0.33664501
		 0.17299204 0.33331662 0.17282526 0.33860016 0.1728531 0.33771718 0.2070629 0.52470046
		 0.20731592 0.53285909 0.20746678 0.53775585 0.20747396 0.54178011 0.49631196 0.37071434
		 0.49940869 0.3709659 0.511917 0.82934546 0.5149855 0.83016127 0.56762481 0.55481404
		 0.52250993 0.83780754 0.56181765 0.5623939 0.51670372 0.84521234 0.54525739 0.566921
		 0.50013459 0.84963346 0.5241549 0.56683844 0.47901946 0.84956336 0.50615013 0.56215185
		 0.46099967 0.84499931 0.55756021 0.39134592 0.45280066 0.83754623 0.54564297 0.37969777
		 0.45788246 0.82996428 0.53008223 0.37379119 0.47467613 0.82522929 0.51336467 0.37077773
		 0.49665701 0.82529789 0.52601868 0.18754572 0.54285246 0.18639529 0.48557201 0.67613494
		 0.50750995 0.67623907 0.51002258 0.19162089 0.52465498 0.68111891 0.44641879 0.49955496
		 0.53034604 0.68876034 0.43885937 0.50712383 0.52277815 0.6961686 0.42126307 0.51166284
		 0.50517035 0.70060557 0.40019909 0.51157796 0.4840948 0.7005136 0.3832958 0.5069201
		 0.46718189 0.69594914 0.57427698 0.19611883 0.46077293 0.6884762 0.55972028 0.18814039
		 0.46766391 0.68086725 0.47258967 0.6757226 0.4706625 0.68007344 0.51768392 0.25757557
		 0.51756233 0.28134787 0.55432034 0.072389066 0.54993755 0.09791255 0.53577191 0.36144635
		 0.55602062 0.37053674 0.51355809 0.35722959 0.49466997 0.35777345 0.49085444 0.35800266
		 0.58244854 0.54777032 0.57399702 0.55900705 0.55052322 0.56565762 0.52074355 0.56552982
		 0.49516767 0.55865645 0.57564926 0.38597661 0.52237791 0.17534012 0.54487067 0.17356336
		 0.50107384 0.18193287 0.46076629 0.49409351 0.44975534 0.50527215 0.4247776 0.51191902;
	setAttr ".uvst[0].uvsp[500:749]" 0.3950496 0.51180971 0.37106368 0.50497746
		 0.59010732 0.18656093 0.56702465 0.17723602 0.5633176 0.17651445 0.52135509 0.30444282
		 0.54733837 0.3092415 0.51678234 0.12240207 0.54293716 0.12033904 0.29451323 0.42884386
		 0.27042103 0.42220819 0.24027868 0.42005384 0.19626431 0.41932362 0.16872568 0.41940141
		 0.12548284 0.42036653 0.095722631 0.42265671 0.071556315 0.4293915 0.066394016 0.43920064
		 0.30268639 0.62495756 0.27959001 0.63047957 0.25040281 0.63252103 0.21186388 0.63313138
		 0.18661647 0.63314009 0.14739108 0.63225865 0.11731887 0.63006794 0.093038917 0.62443709
		 0.078950703 0.61641026 0.28292125 0.48592979 0.26845104 0.47017306 0.23601513 0.46630043
		 0.19248433 0.46478909 0.17312871 0.46483272 0.13033722 0.46653807 0.09828271 0.47061193
		 0.084334746 0.48621655 0.084636286 0.49706036 0.28901231 0.67989248 0.269528 0.68385994
		 0.24255924 0.68562323 0.20770818 0.68623543 0.18985353 0.6862449 0.15430278 0.68548179
		 0.12597495 0.68364823 0.10546675 0.67971349 0.09561643 0.67468584 0.93317616 0.41427714
		 0.91968745 0.400599 0.89069206 0.39729095 0.85170883 0.39618081 0.82613927 0.39640135
		 0.78783727 0.39816892 0.75926578 0.4020099 0.74635017 0.41571343 0.74647701 0.42545462
		 0.9397307 0.064265624 0.92235547 0.067602172 0.89864671 0.069802031 0.86684602 0.070105389
		 0.84279686 0.070088133 0.81089735 0.071033373 0.78538126 0.066540226 0.76697886 0.063015923
		 0.75790906 0.05853267 0.8958829 0.49814862 0.91092324 0.5093382 0.91706687 0.61445725
		 0.89903134 0.59859341 0.8762871 0.49130404 0.87803435 0.58590013 0.84803295 0.48996603
		 0.85179031 0.57690287 0.82483083 0.49006182 0.82736766 0.57711065 0.79578733 0.49155051
		 0.80234975 0.58618212 0.77513218 0.49816406 0.78318787 0.59854692 0.75653994 0.50931793
		 0.76647234 0.61195785 0.94239563 0.15525626 0.76792705 0.6176455 0.92662936 0.15423353
		 0.91547412 0.24447173 0.91423494 0.15129913 0.90453815 0.23719394 0.89509523 0.14866526
		 0.89104843 0.23157191 0.86654508 0.14832924 0.86594909 0.22599745 0.84089679 0.14813845
		 0.84035176 0.22581664 0.81142473 0.14813076 0.81435525 0.23129329 0.79124516 0.15076317
		 0.79892218 0.237535 0.77510983 0.15436946 0.78460807 0.24658573 0.93030804 0.52036875
		 0.91344565 0.62008142 0.89431572 0.66892791 0.91545457 0.68939674 0.88688046 0.69362658
		 0.88130027 0.69005781 0.87841213 0.65965915 0.87337983 0.68748391 0.85411894 0.65124798
		 0.85499245 0.68345827 0.82767171 0.65163958 0.82705975 0.68379599 0.80409986 0.65947628
		 0.80819184 0.68819189 0.78833199 0.66794503 0.80004823 0.69073254 0.7657156 0.68851954
		 0.7934159 0.69290084 0.92584068 0.34143656 0.89964151 0.3447414 0.90601289 0.31680346
		 0.89312685 0.34267104 0.89620006 0.30868918 0.88837552 0.34070337 0.88866234 0.30555052
		 0.88264513 0.33889776 0.86538595 0.29899681 0.86497116 0.3346414 0.83965123 0.2988379
		 0.83210671 0.33443314 0.81611443 0.30506015 0.82129055 0.33842522 0.8068223 0.30909026
		 0.81500673 0.3404392 0.79447824 0.31830299 0.80955851 0.34261876 0.91329253 0.70711589
		 0.8875919 0.70976669 0.87805855 0.68818736 0.88335437 0.69126463 0.87068403 0.68565184
		 0.8535797 0.68168062 0.82760644 0.68200308 0.81006008 0.68632561 0.80248165 0.68882245
		 0.79630375 0.69095165 0.89666569 0.34002364 0.89063418 0.3400203 0.88618541 0.3391912
		 0.88090336 0.33783352 0.86442965 0.33362532 0.83378589 0.33343154 0.82370508 0.33725441
		 0.81785166 0.33938712 0.81276476 0.34028155 0.8840633 0.70521581 0.91797274 0.65690666
		 0.89841264 0.63824815 0.8784216 0.62625337 0.85314745 0.61710912 0.82800686 0.61748207
		 0.80389053 0.62629682 0.78539145 0.63726532 0.76504219 0.65516931 0.76682436 0.66380405
		 0.91061383 0.28154701 0.90024674 0.27390885 0.88980722 0.26959127 0.86568516 0.26358652
		 0.84007192 0.26341712 0.81536019 0.26920491 0.80304837 0.27427155 0.78969574 0.28332907
		 0.77933532 0.30020934 0.7396149 0.62468737 0.62450516 0.87624896 0.72385085 0.66235822
		 0.71426386 0.6978693 0.65487289 0.94215494 0.63815302 0.91222721 0.93220568 0.63026541
		 0.93036908 0.78722209 0.94325137 0.66779375 0.95936364 0.69863653 0.91043121 0.86271745
		 0.9156062 0.82546121 0.89515817 0.39421833 0.92634839 0.39773083 0.85316724 0.39304709
		 0.82561773 0.39328587 0.78436029 0.39516836 0.75362325 0.39925578 0.739811 0.41351458
		 0.95209605 0.058247909 0.94560736 0.06299518 0.9269169 0.06657739 0.90096021 0.068064317
		 0.86721098 0.068460271 0.84172428 0.068287835 0.80728042 0.067314819 0.78004247 0.065430745
		 0.76023912 0.061638847 0.94176853 0.42244905 0.94075429 0.41195625 0.92258173 0.82885784
		 0.95561361 0.70156705 0.7280798 0.66480094 0.6521821 0.94521552 0.64236736 0.90975708
		 0.71155441 0.69482672 0.95020348 0.66435385 0.90666163 0.85981017 0.93520212 0.62621868
		 0.93339175 0.79125065 0.74149573 0.62874579 0.62636054 0.8721776 0.27688301 0.49152672
		 0.26347804 0.47775972 0.10170925 0.67917687 0.11080974 0.68360358 0.12923875 0.6870119
		 0.15463805 0.68858755 0.18678163 0.6892724 0.21057037 0.68928158 0.242061 0.68872833
		 0.2662515 0.68720436 0.28360957 0.68375671 0.090069607 0.50152129 0.090004608 0.49177706
		 0.10301016 0.47815233 0.13161276 0.47449189 0.16993479 0.47296709 0.19551168 0.47290891
		 0.23449691 0.47426677 0.32477725 0.72076786 0.32428038 0.71895558 0.32018098 0.71921158
		 0.31512719 0.7170139 0.30928552 0.71497798 0.29922724 0.71095586 0.26857507 0.71095508
		 0.2520709 0.71505964 0.24672115 0.71681362 0.24228936 0.71873766 0.23622644 0.72075784
		 0.23716456 0.7191909 0.24335739 0.71710044 0.25095353 0.71465117 0.26853138 0.71043909
		 0.29451278 0.71028143 0.31159577 0.7143622 0.3189559 0.71694511 0.55663615 0.18809414;
	setAttr ".uvst[0].uvsp[750:999]" 0.48758146 0.67512465 0.13502084 0.34011054
		 0.13812809 0.34077376 0.061877452 0.5102843 0.51231366 0.92540884 0.22613029 0.34046763
		 0.50947011 0.82584721 0.51228243 0.82599753 0.46955341 0.67584413 0.46157426 0.68004423
		 0.46717933 0.68186414 0.48408249 0.68652195 0.50514656 0.68660688 0.52274287 0.68206787
		 0.52988267 0.67920226 0.52227867 0.67717272 0.50680661 0.67551225 0.47589421 0.82462752
		 0.49559045 0.82510692 0.46059716 0.82510501 0.45495492 0.8263213 0.4611091 0.82864481
		 0.47911388 0.83333135 0.50021636 0.83341396 0.51677656 0.82888681 0.52028859 0.8273806
		 0.51723897 0.93891442 0.52326977 0.9325738 0.50006706 0.9426949 0.47821558 0.94274127
		 0.45957687 0.93895918 0.45109606 0.93266809 0.45636091 0.92622107 0.47375274 0.92213273
		 0.49651599 0.92206824 0.53163618 0.7859903 0.52574253 0.77951568 0.52380121 0.79222119
		 0.50557673 0.79588354 0.4837549 0.79569393 0.46622518 0.79179138 0.23437232 0.52496773
		 0.05475121 0.51671231 0.48524779 0.77509642 0.5079807 0.77531368 0.28401017 0.49692005
		 0.27791739 0.50141102 0.29499033 0.6748262 0.28955701 0.67928708 0.30067593 0.43864447
		 0.3132326 0.61696637 0.30673122 0.39589375 0.31869236 0.57440436 0.17260908 0.37253714
		 0.18664695 0.37244529 0.19303362 0.52462322 0.17256372 0.34693462 0.16127412 0.52471429
		 0.30319506 0.36921597 0.31850764 0.54774249 0.29690349 0.3506282 0.31261128 0.52914703
		 0.29052621 0.3470428 0.30644172 0.52552229 0.14525427 0.34720188 0.48764616 0.48316684
		 0.48323077 0.54734391 0.46988019 0.30196992 0.4676064 0.36542627 0.49796438 0.55450988
		 0.48104265 0.37724498 0.53363758 0.43307668 0.48418963 0.23914805 0.49095371 0.43366441
		 0.36556897 0.42951676 0.36172479 0.49371013 0.46570736 0.13395506 0.48184913 0.19590563
		 0.37689018 0.49929586 0.49783143 0.20203173 0.41118267 0.37872329 0.46392652 0.064642727
		 0.36847851 0.37852165 0.91284662 0.66582894 0.77888936 0.34149629 0.92535764 0.29818445
		 0.76634121 0.70705616 0.75041342 0.056829497 0.76187384 0.15474914 0.93427283 0.4241522
		 0.7400859 0.42386746 0.74978626 0.52087581 0.94570488 0.059835091 0.77873629 0.25446188
		 0.92425483 0.25202596 0.80459011 0.34414709 0.8081187 0.33959621 0.79254043 0.710361
		 0.79551625 0.70564324 0.15475118 0.74505162 0.26388192 0.73894203 0.1690315 0.74456787
		 0.14132005 0.75262076 0.14306569 0.7456975 0.18461132 0.74441725 0.28179276 0.73836297
		 0.20011657 0.744587 0.18524939 0.75183737 0.21417308 0.74506426 0.29955333 0.73895067
		 0.22552729 0.74568927 0.22867322 0.75261003 0.23292565 0.74630201 0.31335902 0.74011832
		 0.23728889 0.74680758 0.25403816 0.75412261 0.2328866 0.044495463 0.31532496 0.74051017
		 0.22581425 0.043991804 0.25363928 0.052534223 0.23913884 0.7470957 0.21493796 0.043814063
		 0.20616542 0.037146926 0.20010537 0.043818593 0.22485405 0.052121639 0.1811641 0.043861747
		 0.28238404 0.73881239 0.16225363 0.043912053 0.18007173 0.052139997 0.14751349 0.043937802
		 0.25733277 0.73945969 0.13670541 0.044089913 0.1362303 0.0521667 0.12959117 0.044519544
		 0.24778816 0.7404961 0.12861602 0.74706262 0.10892222 0.052566409 0.12820815 0.7471025
		 0.24576442 0.74076909 0.13057965 0.74684227 0.10515124 0.75501829 0.1285134 0.76553279
		 0.15442154 0.76501042 0.11763009 0.78267467 0.10869032 0.76619571 0.18575385 0.76483327
		 0.2169016 0.76500177 0.18611443 0.78242034 0.2422561 0.76551652 0.2613461 0.76617014
		 0.25367492 0.78267145 0.27370036 0.76675504 0.28095978 0.7672112 0.29013544 0.78287476
		 0.27337208 0.065259874 0.25835872 0.065044761 0.29008326 0.081270337 0.28095183 0.065396786
		 0.23491691 0.064879477 0.20699456 0.064775109 0.24387191 0.081122816 0.17853972 0.064742923
		 0.15066104 0.064782381 0.17698734 0.08080852 0.1244672 0.064893305 0.10298134 0.06506449
		 0.11386741 0.081125915 0.089226551 0.065284789 0.082297035 0.065428615 0.072523169
		 0.081276238 0.083959341 0.76752138 0.08784762 0.76726025 0.066412762 0.78305852 0.1099689
		 0.80293357 0.14415553 0.80343676 0.10487391 0.82481086 0.084425434 0.80214965 0.18632087
		 0.8036142 0.22823876 0.80345857 0.186423 0.82630748 0.26168305 0.8029623 0.28625768
		 0.80217761 0.26698482 0.8249259 0.3015666 0.80115682 0.31018877 0.80032313 0.30972505
		 0.82150996 0.30177104 0.099163234 0.2825844 0.099910378 0.30989754 0.11871481 0.31069601
		 0.098293483 0.2504645 0.099886835 0.21251355 0.099579334 0.25482878 0.11974347 0.17583381
		 0.099474728 0.1403718 0.099572659 0.17508195 0.11921626 0.10607409 0.099873066 0.077905573
		 0.099891186 0.10094846 0.11970955 0.0608311 0.099142253 0.052764453 0.098271847 0.052721977
		 0.11866021 0.054291815 0.80007637 0.058924153 0.80029762 0.044883654 0.81783462 0.1016892
		 0.84680808 0.13965487 0.84790105 0.10044733 0.86685026 0.072930977 0.84532344 0.18647063
		 0.84839267 0.23304462 0.84816474 0.18646932 0.86851579 0.27028495 0.84709883 0.29808593
		 0.84554237 0.27156144 0.86730433 0.31634206 0.84384269 0.32982576 0.84207141 0.31996495
		 0.86445636 0.31592488 0.13970107 0.29337448 0.13974541 0.31881607 0.15901184 0.33161265
		 0.13939416 0.25709885 0.13926464 0.21493866 0.13870382 0.25757769 0.15680349 0.17473464
		 0.13850808 0.13602595 0.13867694 0.17471574 0.15579671 0.098351739 0.13920999 0.066877194
		 0.13966686 0.09789557 0.15673041 0.046767451 0.13960737 0.032340109 0.13928974 0.043972634
		 0.15888232 0.10118088 0.88286263 0.13967121 0.88454002 0.10494076 0.89959049 0.071477935
		 0.88092005 0.18642455 0.88532281 0.23295903 0.88500124 0.18635535 0.90262455 0.27079254
		 0.88336557 0.29962122 0.88129091 0.26695412 0.90004534 0.31914097 0.87965214 0.33400631
		 0.87823141 0.31037265 0.1933887 0.31753403 0.17353678 0.29315674 0.17200077 0.3113592
		 0.18908;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.33580571 0.17519683 0.25656831 0.17071307
		 0.21481653 0.16983509 0.25341126 0.18598652 0.17494924 0.1695286 0.13654731 0.16979271
		 0.17549835 0.18462276 0.099191584 0.17062694 0.067313023 0.17187572 0.10298482 0.18590617
		 0.045342624 0.17338353 0.028326301 0.17502081 0.051632695 0.18890947 0.11010549 0.21962857
		 0.14331913 0.22137779 0.11914016 0.24041933 0.084425114 0.21752226 0.18360814 0.22208089
		 0.22370689 0.22163963 0.18353333 0.2420488 0.25634974 0.21995556 0.28126466 0.21783328
		 0.24721135 0.24061739 0.29817963 0.21607727 0.30836916 0.21478683 0.28421342 0.23768103
		 0.29957196 0.21144557 0.27876616 0.20940256 0.2861115 0.23282516 0.31073052 0.21318531
		 0.24744715 0.20761716 0.21140409 0.20638412 0.24071731 0.22837114 0.17642631 0.20599812
		 0.14260224 0.206411 0.17756641 0.22656429 0.1100203 0.20757467 0.082434334 0.20926511
		 0.11804485 0.22835654 0.063598119 0.21125871 0.053240292 0.21295941 0.077243917 0.23262918
		 0.051089466 0.2137714 0.034222499 0.18746185 0.055977404 0.21444929 0.066577099 0.23551905
		 0.12649275 0.25295293 0.15233576 0.25404537 0.13431342 0.26062644 0.10629456 0.25149643
		 0.18346423 0.2544328 0.21442221 0.25411695 0.18334395 0.26211524 0.2397538 0.25309968
		 0.25927401 0.2517193 0.23175022 0.26075572 0.272798 0.25031406 0.2811079 0.24913603
		 0.26040441 0.25801277 0.27491704 0.24541038 0.25913805 0.24302769 0.26251394 0.25342536
		 0.2832998 0.24745089 0.23526315 0.2410146 0.20717391 0.23965448 0.22918759 0.24944556
		 0.17875196 0.23923063 0.15097111 0.23968917 0.18012591 0.24778855 0.12480522 0.24097615
		 0.10306848 0.24288744 0.1323773 0.24937254 0.088575073 0.24521881 0.080821954 0.24722058
		 0.10110707 0.25325155 0.079306059 0.2481429 0.083306052 0.24880266 0.093239881 0.25594574
		 0.14475234 0.26683676 0.16221671 0.267681 0.15570889 0.27110732 0.1310014 0.26572287
		 0.18311557 0.26797867 0.20388818 0.26773107 0.18285486 0.27180409 0.22097382 0.26693904
		 0.23422737 0.26587558 0.209638 0.27117968 0.24350373 0.26481354 0.2492661 0.26393706
		 0.2269332 0.26971424 0.24542759 0.26109391 0.23535101 0.25920361 0.22721048 0.26718736
		 0.25093314 0.26268524 0.22059354 0.25756174 0.202354 0.25641984 0.21082908 0.26425856
		 0.18183127 0.25602943 0.16125052 0.25638592 0.18311323 0.26293617 0.14283691 0.25748497
		 0.1280515 0.25908679 0.15405662 0.26419586 0.11835534 0.26095146 0.11327627 0.26251936
		 0.13675056 0.26708215 0.11234211 0.26323044 0.11513644 0.26371825 0.13234892 0.26884067
		 0.17106962 0.040849984 0.16711876 0.041677058 0.17726824 0.041398168 0.18134421 0.040603936
		 0.18545792 0.041425109 0.19154945 0.040879905 0.19542088 0.041697979 0.20285918 0.040945172
		 0.31680512 0.74080646 0.19976717 0.042158484 0.20160414 0.041381359 0.19765683 0.041607618
		 0.19725165 0.040668964 0.19016972 0.041379452 0.18187928 0.040678561 0.17343992 0.041476786
		 0.166226 0.040819645 0.16545835 0.041700006 0.16101934 0.041386843 0.16258624 0.04210031
		 0.15929116 0.040903449 0.24955338 0.74014348 0.16508242 0.27296114 0.1743212 0.27337486
		 0.16050196 0.27263778 0.18263759 0.27337241 0.19079706 0.27339596 0.19995618 0.27300793
		 0.20425168 0.27269828 0.21553001 0.27171278 0.2320268 0.26898044 0.21009156 0.27167749
		 0.2114152 0.27047688 0.20393215 0.27001756 0.20124233 0.26843113 0.19184044 0.26857656
		 0.18321705 0.26749182 0.17403033 0.26855594 0.16390902 0.26838762 0.16040266 0.26996636
		 0.15272334 0.27040726 0.15428951 0.27160776 0.1489965 0.27162039 0.13769679 0.26957875
		 0.13527034 0.74633414 0.11487249 0.75416523 0.095613167 0.76679498 0.079412252 0.78289318
		 0.068189606 0.80112982 0.060209811 0.82141447 0.053737462 0.84365666 0.03932631 0.84189874
		 0.050215468 0.86418843 0.051086694 0.87934184 0.035351336 0.87794578 0.054528639
		 0.19306225 0.066735841 0.21574771 0.080703862 0.23736119 0.092100613 0.25001675 0.10444172
		 0.25775492 0.12124281 0.26461625 0.23953772 0.74711078 0.26323682 0.75497913 0.28476518
		 0.76747829 0.30247116 0.78304088 0.31470311 0.80009979 0.32419795 0.81790686 0.31310785
		 0.21406096 0.32989916 0.18771869 0.29768169 0.23582613 0.28498596 0.24843717 0.2710686
		 0.25620246 0.25197759 0.2634303 0.31522074 0.72941887 0.88070643 0.689726 0.32161814
		 0.71795034 0.3173846 0.73007125 0.31312948 0.72772455 0.31222323 0.7239604 0.87437129
		 0.68691957 0.31527585 0.71565366 0.30748475 0.72628915 0.30000192 0.7262603 0.86213183
		 0.68366623 0.30305427 0.71232182 0.29096943 0.72535956 0.28158191 0.72507262 0.8405931
		 0.68184185 0.2815221 0.71036029 0.27215043 0.72540188 0.26298612 0.72634959 0.81883323
		 0.68416435 0.25974247 0.71254516 0.25532997 0.72641683 0.25042278 0.72410458 0.80627084
		 0.68757403 0.24715546 0.7158758 0.24946362 0.72782272 0.24711686 0.72952402 0.7993927
		 0.68988705 0.24026097 0.71814567 0.24464592 0.73017132 0.24331418 0.73072743 0.79591
		 0.69829744 0.2366955 0.7199744 0.24340609 0.7308892 0.24520615 0.73035353 0.89364994
		 0.34002197 0.2392579 0.71974778 0.24710183 0.72863567 0.24748059 0.72525066 0.88840979
		 0.33960575 0.24450526 0.71777564 0.25045329 0.7275719 0.25418022 0.72802258 0.88354439
		 0.33851236 0.24939603 0.71593666 0.2581158 0.72627717 0.26171452 0.72201031 0.87266648
		 0.33572942 0.26032299 0.71300733 0.26948994 0.72460198 0.28317273 0.7254262 0.84910774
		 0.33352843 0.28390115 0.7109555 0.29643977 0.72451586 0.30296794 0.7219038 0.82874548
		 0.33534297 0.30425638 0.71296692 0.3053748 0.72614962 0.20844696 0.025788307 0.82077837
		 0.33832076 0.31220636 0.71599591 0.21206836 0.025435328 0.21489997 0.023253441 0.81530821
		 0.33983433 0.31765407 0.71811271 0.31583968 0.72876835 0.31725538 0.73047036 0.81044173
		 0.33993888;
	setAttr ".uvst[0].uvsp[1250:1421]" 0.32247913 0.71998972 0.31849748 0.73096567
		 0.31850871 0.73070979 0.88370883 0.69824022 0.32452881 0.71986175 0.28095183 0.065396786
		 0.25959772 0.052813411 0.25363928 0.052534223 0.31069601 0.098293483 0.29862064 0.081091404
		 0.33161265 0.13939416 0.31882724 0.11554086 0.33580571 0.17519683 0.32583934 0.15821123
		 0.28126466 0.21783328 0.29180783 0.19533384 0.31037265 0.1933887 0.04102277 0.19236153
		 0.034222499 0.18746185 0.2328866 0.044495463 0.22581425 0.043991804 0.21493796 0.043814063
		 0.20010537 0.043818593 0.1811641 0.043861747 0.16225363 0.043912053 0.14751349 0.043937802
		 0.13670541 0.044089913 0.12959117 0.044519544 0.10892222 0.052566409 0.10335235 0.052837849
		 0.082297035 0.065428615 0.064770214 0.081100941 0.052764453 0.098271847 0.044624247
		 0.11548615 0.032340109 0.13928974 0.037433535 0.15807647 0.3228091 0.19256604 0.028326301
		 0.17502081 0.11010549 0.21962857 0.14331913 0.22137779 0.084425114 0.21752226 0.18360814
		 0.22208089 0.22370689 0.22163963 0.25634974 0.21995556 0.32027832 0.19435048 0.04406587
		 0.19403636 0.054528639 0.19306225 0.073922195 0.19497287 0.32989916 0.18771869 0.30444595
		 0.20441699 0.057319686 0.19824904 0.33257157 0.88986951 0.39996856 0.89471686 0.057201013
		 0.89521307 0.076594576 0.89712369 0.036894873 0.88961267 0.046738237 0.89618719 0.22637928
		 0.92379045 0.25902212 0.92210639 0.28393704 0.9199841 0.1459915 0.92352861 0.18628052
		 0.92423171 0.087097496 0.91967309 0.11277787 0.92177939 0.030998677 0.87717164 0.043695152
		 0.89451236 0.41296518 0.87734765 0.31304502 0.89553952 0.32295072 0.8965013 0.035012484
		 0.84144056 0.040105909 0.86022729 0.40877211 0.84154499 0.40299881 0.86036205 0.05543682
		 0.80042267 0.047296613 0.81763697 0.31336838 0.8004443 0.32149965 0.81769168 0.084969416
		 0.76757944 0.067442596 0.78325176 0.28362423 0.76754761 0.30129302 0.78324223 0.13670541
		 0.044089913 0.13226354 0.74667037 0.1115946 0.75471723 0.10602473 0.75498867 0.20010537
		 0.043818593 0.1811641 0.043861747 0.22581425 0.043991804 0.21493796 0.043814063 0.25631166
		 0.75468504 0.2328866 0.044495463 0.2944802 0.89748466 0.26227009 0.75496423 0.21543202
		 0.026617527 0.31530762 0.72540426 0.31247604 0.72758615 0.31129241 0.73904485 0.30885464
		 0.72793913 0.30657309 0.73929775 0.32548147 0.89471686 0.14914572 0.037992656 0.1518181
		 0.74014348 0.15560479 0.037006259 0.25601244 0.73915708 0.21639748 0.038655639 0.21906984
		 0.74080646 0.31531262 0.74139065 0.21490498 0.039239824 0.39598671 0.81769168 0.14535676
		 0.038618267 0.14802913 0.74076909 0.24555174 0.7401883 0.14514408 0.038037479 0.12959117
		 0.044519544 0.1473805 0.038345277 0.15005288 0.7404961 0.1473805 0.038345277 0.24726139
		 0.74127442 0.14685373 0.039123595 0.15692511 0.037308872 0.15692511 0.037308872 0.25246781
		 0.73917782 0.15206015 0.037027001 0.18197636 0.036661565 0.18197636 0.036661565 0.26575345
		 0.73854589 0.16534577 0.036395073 0.29887185 0.73836976 0.19846418 0.036218941 0.23555899
		 0.74664629 0.21491729 0.038359344 0.21491729 0.038359344 0.21758968 0.74051017 0.21295138
		 0.037967503 0.21562374 0.74011832 0.31706804 0.74015474 0.21666037 0.038003922 0.19914566
		 0.036799848 0.20181805 0.73895067 0.30711675 0.73914742 0.2067091 0.036996603 0.1813851
		 0.036212146 0.18405747 0.73836297 0.28955901 0.73904973 0.18915136 0.036898911 0.16347426
		 0.036791205 0.16614664 0.73894203 0.27391458 0.73901135 0.17350692 0.036860526 0.36611134
		 0.86542147 0.42738533 0.8924793 0.35182852 0.82628793 0.17935023 0.86842996 0.17727859
		 0.84829617 0.17510323 0.82620537 0.186423 0.82631391 0.19906437 0.8262198 0.196558
		 0.84834325 0.19442409 0.86849046 0.18646933 0.86844665 0.17727859 0.84829617 0.17510323
		 0.82620537 0.186423 0.82631391 0.19906437 0.8262198 0.196558 0.84834325 0.19442409
		 0.86849046 0.18646933 0.86844665 0.17935023 0.86842996 0.10892222 0.052566409 0.10892222
		 0.052566409 0.3228091 0.19256604 0.3228091 0.19256604;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1151 ".vt";
	setAttr ".vt[0:165]"  0.13485928 2.43499494 0.20010415 0.071284257 2.43477321 0.1905061
		 0.015993845 2.43492842 0.19050889 -0.046640255 2.43502784 0.199873 -0.078787498 2.44059706 0.27939862
		 -0.066188499 2.43059492 0.32954729 -0.021277361 2.42780089 0.33965293 0.099501096 2.42846608 0.33751348
		 0.14791684 2.43109798 0.32658523 0.16650397 2.44004583 0.28118119 0.24965012 2.48688984 0.12614459
		 0.12415352 2.48377895 0.044044022 -0.039994948 2.48381782 0.043853093 -0.16485958 2.4869256 0.12464166
		 -0.23868786 2.48956323 0.27202827 0.3228865 2.48952079 0.27270466 0.35746771 2.58994961 0.062892914
		 0.16868903 2.589077 -0.08454372 -0.084969029 2.58908629 -0.084803827 -0.27291757 2.58993554 0.060508687
		 -0.37612018 2.59077716 0.27912885 0.46156123 2.59078813 0.27765542 0.41349745 2.72847629 0.040163089
		 0.1933028 2.73410082 -0.11299137 -0.10976659 2.73435402 -0.11296055 -0.32891792 2.72857141 0.037490953
		 -0.46489093 2.71359396 0.25526711 0.5484491 2.71380782 0.25502115 0.43861035 2.87331557 0.04802138
		 0.2002442 2.87450647 -0.090668894 -0.11713357 2.87581706 -0.089174069 -0.35438731 2.87389588 0.045042459
		 -0.5197928 2.88188267 0.25516719 0.60240859 2.89015269 0.24706474 0.42135215 2.98212361 0.061384175
		 0.1929905 2.98624682 -0.072279163 -0.10816644 2.98869634 -0.072189219 -0.34827548 2.98664308 0.054122631
		 -0.5024308 2.97373939 0.256484 0.5825786 2.9702096 0.26260039 0.041895214 2.46239996 0.2579115
		 0.17231427 2.43791628 0.22407554 0.31314591 2.489851 0.21743323 0.44567096 2.58978128 0.20105167
		 0.52983534 2.71355391 0.20549873 0.58633518 2.88350058 0.20750621 0.56346154 2.97009993 0.21352133
		 -0.082952514 2.43791747 0.22272687 -0.22770287 2.48983312 0.21438608 -0.3603068 2.58972859 0.196367
		 -0.44347838 2.71353436 0.1983441 -0.49779698 2.88211226 0.19654942 -0.48367962 2.97319865 0.19952598
		 0.63824993 2.74420524 0.24734174 0.62095773 2.74424553 0.19858192 0.66939378 2.88301802 0.19924788
		 0.6889447 2.88310409 0.24945094 0.62624443 2.98027444 0.2058574 0.64467973 2.98006582 0.2540848
		 -0.5344308 2.74356461 0.19249317 -0.58055562 2.88166094 0.18982905 -0.55437505 2.74359226 0.24832994
		 -0.60325718 2.88166094 0.24834344 -0.54374623 2.98108339 0.19187869 -0.56264788 2.98086333 0.24839775
		 -0.64224041 2.11297226 0.27912185 -0.64226156 2.11255193 0.16453794 -0.66235894 2.3010366 0.2919746
		 -0.66238892 2.30155945 0.17988323 -1.18921566 2.15599394 0.27774182 -1.20107007 2.15553832 0.15952292
		 -1.18673611 2.2930181 0.2873227 -1.19670677 2.29296589 0.20452423 -1.39099693 2.21440697 0.3269394
		 -1.40442944 2.21511292 0.13463107 -1.38524342 2.27702761 0.35088199 -1.40210485 2.27572227 0.15208903
		 -1.52451098 2.19797468 0.3674739 -1.56948864 2.19784021 0.18013182 -1.49389863 2.2394855 0.35888669
		 -1.56997335 2.24185205 0.18362202 -1.13611722 2.2904563 0.1993812 -1.13588774 2.29004359 0.2842485
		 -1.13084722 2.18006015 0.27368647 -1.13603795 2.17976213 0.18729332 -1.39908242 2.27626777 0.20489155
		 -1.56473756 2.24181318 0.22645944 -1.5651449 2.19847631 0.2230643 -1.39749765 2.21498418 0.21936414
		 -1.50887251 2.24010491 0.21843614 -1.58896518 2.19736695 0.22638135 -1.3954879 2.21683359 0.24282363
		 -1.39984274 2.2767415 0.24782886 -1.50702906 2.2318697 0.27365053 -1.58488762 2.19861746 0.26807764
		 -1.39824116 2.21630883 0.25749925 -1.39511895 2.27705884 0.29392073 -1.50599349 2.22983289 0.29944268
		 -1.53342986 2.1980648 0.32920215 -1.39728534 2.21483135 0.28200164 -1.50442958 2.23992467 0.25736693
		 -1.55381691 2.18964672 0.27883494 -1.50086212 2.24029851 0.32513735 -1.54897714 2.19025397 0.31900448
		 -1.26781023 2.28805423 0.19301628 -1.31296599 2.18912959 0.16694926 -1.19865525 2.25536942 0.16268037
		 -1.30580854 2.26720715 0.19330077 -1.32226288 2.22710013 0.10488342 -1.35608351 2.227777 0.12932414
		 -1.3248471 2.18475842 0.10248759 -1.3578254 2.18598127 0.12324562 -0.26805767 2.080697775 0.15086681
		 -0.2677826 2.081857204 0.28736183 -0.34432358 2.33760309 0.30328763 -0.34522599 2.33390975 0.17162669
		 0.37769654 2.078903437 0.13630761 0.39474228 2.082019567 0.26686028 0.74654728 2.14682245 0.17028703
		 0.72249091 2.14324832 0.063307323 0.47344467 2.33928084 0.2627748 0.75103647 2.32005334 0.21089414
		 0.45458305 2.33249235 0.1370337 0.732342 2.32574701 0.089133695 1.22031212 2.20097995 0.063669488
		 1.20542514 2.20022035 -0.021677049 1.22248864 2.31095982 0.072724752 1.20450711 2.31083465 -0.010376636
		 1.26917946 2.18033338 -0.05924201 1.2813853 2.17845273 0.050767563 1.46940815 2.26332641 0.10031312
		 1.47331035 2.26418304 0.052929975 1.47327447 2.26421976 0.019392589 1.46892369 2.26374269 0.0017359154
		 1.4689244 2.2637248 -0.010805631 1.46873569 2.26337934 -0.097216591 1.38143146 2.22690368 -0.06261231
		 1.28075647 2.31508613 0.058485497 1.4639343 2.32367754 0.11428083 1.26300454 2.31658173 -0.016359171
		 1.32972097 2.32033873 -0.03327357 1.46263945 2.32468796 -0.07405179 1.46273029 2.32477307 -0.034277234
		 1.46711898 2.32514358 0.014572598 1.46718979 2.325001 0.058494218 1.36920166 2.30397296 -0.03705186
		 1.61532855 2.25524211 0.069109887 1.61186945 2.25327587 0.1050358 1.57696772 2.29678011 0.10792858
		 1.58045733 2.29837394 0.071382999 1.57988977 2.25460148 -0.079482511 1.57560503 2.29781413 -0.079766266
		 1.2616545 2.28053164 -0.053867791 1.57570314 2.29776478 -0.037205528 1.57989359 2.25449753 -0.040979691
		 1.5759331 2.29800987 0.0058676419 1.57585537 2.29804969 -0.034019276 1.65641463 2.25435209 -0.031669743
		 1.65639138 2.25362086 -0.00010108395 1.58140647 2.28989935 0.05913835 1.58111501 2.29067755 0.023037156
		 1.6346693 2.24746418 0.021472737 1.63494599 2.2460134 0.054376088 1.41448557 2.26852179 -0.10740719
		 1.3783232 2.26388001 -0.12709367 1.38472402 2.22182846 -0.12965028;
	setAttr ".vt[166:331]" 1.42089677 2.22731733 -0.11127024 0.43230921 0.0054373099 -0.098114848
		 0.31837839 0.0050267493 -0.15444411 0.20251946 0.0048333514 -0.15428454 0.10135393 0.0048119454 -0.097377688
		 0.10530787 0.0051436196 -0.0054505039 0.13837716 0.0059649535 0.086627088 0.2164063 0.006167172 0.14306952
		 0.31282222 0.0058965767 0.14298718 0.39087179 0.0050961343 0.084999114 0.42390692 0.0046852673 -0.0066706948
		 0.40572202 0.79682767 -0.087083578 0.34170267 0.8176356 -0.12990175 0.26219216 0.81897593 -0.13277575
		 0.19776897 0.8012346 -0.092087477 0.17293452 0.77131474 -0.023407297 0.19751048 0.74293071 0.042963304
		 0.2613022 0.72083938 0.087684564 0.34081027 0.7195164 0.088162206 0.40524799 0.73670805 0.045652796
		 0.4299376 0.76521218 -0.019970886 0.26261848 0.0037410103 2.7336051e-005 0.40941274 0.83007467 -0.068230905
		 0.34329623 0.85114986 -0.11050501 0.26079568 0.85252094 -0.11184522 0.19440411 0.83455044 -0.072013311
		 0.16863552 0.80354148 -0.0040843566 0.19353147 0.77122444 0.064695634 0.25994089 0.75154227 0.10613485
		 0.34199744 0.7493034 0.10808349 0.40862367 0.76740605 0.066373855 0.4344072 0.7982406 -0.0013516445
		 0.17538825 0.84409708 -0.091482356 -0.1531029 0.83518833 -0.12597856 -0.12709574 0.81523335 -0.046203978
		 -0.21854921 0.84794128 -0.15671392 -0.10562009 0.0026322471 -0.095489569 -0.20709585 0.0043730447 -0.1539961
		 -0.32325444 0.00494208 -0.1543832 -0.43657768 0.0053482247 -0.097704098 -0.42817128 0.0047171069 -0.005556698
		 -0.39506495 0.0059242812 0.086105637 -0.31693673 0.0072713424 0.14385687 -0.22051942 0.0073528714 0.14381786
		 -0.14257164 0.0069275373 0.087602623 -0.10954262 0.0046201991 -0.0042048194 -0.1606116 0.80414474 -0.16053684
		 -0.22421947 0.81126928 -0.19634619 -0.30289152 0.81450444 -0.18615021 -0.36671206 0.80831385 -0.13566321
		 -0.39127678 0.79388547 -0.063688479 -0.36717573 0.78052032 0.0024913531 -0.3027547 0.76605189 0.048016004
		 -0.22322404 0.76338905 0.047277693 -0.15889518 0.77303046 0.0017964281 -0.13514884 0.79130179 -0.079570219
		 -0.26881883 0.0046362192 -0.011101903 -0.29982054 0.8520174 -0.1456072 -0.36546078 0.84049702 -0.091838293
		 -0.39110121 0.81698978 -0.022274278 -0.366211 0.79187441 0.044800222 -0.29869056 0.75840801 0.1020434
		 -0.21704763 0.76170701 0.094549656 -0.15110455 0.78507805 0.041970719 0.42798173 0.85114574 -0.082063586
		 0.3503024 0.87767816 -0.13573186 0.25322762 0.88093418 -0.14075033 0.25209996 0.74823332 0.14653315
		 0.34850666 0.74767786 0.14381079 0.42685893 0.77093267 0.09091901 0.45730957 0.81070167 0.0034724788
		 -0.20883015 0.87262273 -0.17234235 -0.30506256 0.87693739 -0.1607357 -0.38239709 0.86085731 -0.095051475
		 -0.41265783 0.82705176 -0.007034414 -0.38346061 0.79066354 0.078900918 -0.30491599 0.7551353 0.14033827
		 -0.2078439 0.7522406 0.1461504 0.4438616 0.9235087 -0.074561775 0.34660986 0.95546991 -0.14149109
		 0.2398854 0.95879179 -0.14723144 0.23767105 0.78980869 0.21794704 0.34390742 0.79347098 0.20771906
		 0.44174394 0.82079512 0.14645806 0.47986823 0.87188911 0.035327062 -0.18607011 0.95331955 -0.15575239
		 -0.29397213 0.95634288 -0.15581886 -0.39196929 0.93430078 -0.079916522 -0.43045026 0.88625854 0.034447376
		 -0.39286223 0.8336488 0.14508784 -0.29513818 0.79941565 0.20557648 -0.18896778 0.79700494 0.20770745
		 -0.014914088 0.93802118 -0.12598534 0.0035491835 0.86981839 -0.1390305 0.0035499448 0.85522091 -0.14215589
		 0.00045155775 0.82973766 -0.093170099 0.0023503979 0.78973556 0.034979198 0.001568877 0.75711602 0.12599279
		 0.00051942468 0.73806626 0.16810614 0.00027229561 0.74972612 0.17230824 -0.023952037 0.81116128 0.20691785
		 0.079379603 0.95874637 -0.15010718 0.067140162 0.88359272 -0.14294405 0.067025192 0.8694455 -0.14496115
		 0.067219935 0.84461337 -0.091504514 0.065436728 0.80371881 -0.0054066512 0.064286754 0.76350361 0.080938391
		 0.064227372 0.73797369 0.13573384 0.064954221 0.74773914 0.14711079 0.077148445 0.78845412 0.22218582
		 0.065425314 0.92742121 -0.051367529 0.010564212 0.92053914 -0.041132767 0.066189542 0.92884427 -0.052771494
		 0.011661718 0.919159 -0.036207289 0.06358014 0.88561815 0.035394702 0.008537624 0.87523031 0.072264902
		 0.0086725568 0.8396849 0.15220508 0.061835364 0.84115571 0.1289008 0.0094949054 0.83995116 0.14731398
		 0.062515661 0.84159142 0.12928413 -0.37295899 1.027525544 -0.042757522 -0.27488077 1.044800639 -0.11127801
		 -0.17078371 1.038820863 -0.11885989 -0.011303811 1.035858393 -0.1202264 0.081927165 1.050650954 -0.13139385
		 0.23602165 1.052925587 -0.12974435 0.33955076 1.049349666 -0.12086225 0.43282506 1.013128638 -0.033998121
		 0.48196229 0.95860744 0.093152098 0.425823 0.90604365 0.20461965 0.33316749 0.89334047 0.26484269
		 0.22181168 0.88360268 0.29093304 0.079025947 0.86155391 0.29936683 -0.015472029 0.87434918 0.30170932
		 -0.16035086 0.88578457 0.29246566 -0.27444655 0.89802414 0.26696789 -0.36788794 0.91467738 0.20760429
		 -0.4368695 0.9755823 0.078126006 -0.23115678 0.43119475 -0.20314154 -0.1664345 0.43969816 -0.15803038
		 -0.14139111 0.45521724 -0.086050399 -0.16557142 0.47051752 -0.014527441 -0.22971559 0.47916633 0.029449921
		 -0.30932012 0.478264 0.029130476 -0.37379745 0.46982113 -0.014032457 -0.39879426 0.4548538 -0.085329495
		 -0.3746587 0.44005015 -0.15730728 -0.3106977 0.4316465 -0.20290472 0.24629693 0.43218088 -0.19995685
		 0.32553825 0.42778531 -0.20158853 0.39092386 0.43403232 -0.16108988 0.41685355 0.44524267 -0.088843554
		 0.39425251 0.45881736 -0.017746313 0.33097419 0.47051463 0.027761783 0.25200924 0.47465423 0.025199139
		 0.18673018 0.47348514 -0.015398779 0.16082688 0.46289507 -0.084860936 0.18338953 0.44632193 -0.15536849
		 -0.11877227 0.0033771526 -0.10507483 -0.1774084 0.43839735 -0.16637293 -0.17131241 0.80511481 -0.16627507
		 -0.16414751 0.83715534 -0.1312663 0.00091230485 0.83475375 -0.10500716 0.011071317 0.9211095 -0.042059522
		 0.066564053 0.92902792 -0.052899398 0.067323469 0.84897786 -0.10109007;
	setAttr ".vt[332:497]" 0.20553435 0.83754963 -0.078705728 0.2084825 0.80402344 -0.098494411
		 0.19403408 0.4439218 -0.16286308 0.11450044 0.0056826547 -0.10694678 -0.41909111 0.40953577 -0.18364833
		 -0.32803273 0.40135118 -0.25103241 -0.21484104 0.40043601 -0.25341234 -0.13829209 0.40742049 -0.20101345
		 -0.12267112 0.40842962 -0.1889002 -0.086853355 0.42827538 -0.082578629 -0.12120862 0.45033893 0.024863727
		 -0.21252556 0.46314511 0.090564623 -0.32608378 0.46018642 0.089773446 -0.41800767 0.44861701 0.025124894
		 -0.45351413 0.42895827 -0.078000583 0.22455217 0.40363678 -0.24872357 0.33739135 0.39700803 -0.2496241
		 0.43025172 0.40811262 -0.18757877 0.46722037 0.42324427 -0.081270404 0.43499285 0.44191718 0.024135541
		 0.3450239 0.45904309 0.091497287 0.2318569 0.46314043 0.087028772 0.13877983 0.45946851 0.020312883
		 0.10149612 0.44364339 -0.085428409 0.13502261 0.42265609 -0.18468733 0.15019636 0.41909957 -0.19529144
		 -0.32168776 0.19427958 -0.16834748 -0.21077269 0.19107462 -0.17028411 -0.11040941 0.19002619 -0.12060452
		 -0.096242808 0.18764512 -0.11032335 -0.099525377 0.19366382 -0.013442948 -0.13277268 0.19964708 0.088671573
		 -0.21697275 0.20073026 0.14828628 -0.320768 0.20079 0.14825182 -0.40485209 0.19842233 0.087210014
		 -0.43875638 0.19514276 -0.012073535 -0.4464356 0.1969282 -0.10848977 0.20610027 0.20267309 -0.1673363
		 0.31689441 0.20382671 -0.16722129 0.44214571 0.20435387 -0.10722561 0.43458924 0.20175688 -0.0089666229
		 0.40107605 0.20277445 0.089440197 0.31721473 0.20418227 0.15020208 0.21307907 0.20383352 0.15042108
		 0.12949228 0.20638354 0.088424429 0.095521457 0.20311384 -0.0084231179 0.091630243 0.19924366 -0.10770102
		 0.10584645 0.20369154 -0.11681642 0.39141572 0.00587116 -0.24439725 0.30516988 0.0059252777 -0.31822386
		 0.30512339 0.13559081 -0.32975587 0.39637685 0.13550627 -0.25154892 0.23589095 0.005873166 -0.31819299
		 0.23586793 0.13547863 -0.32974622 0.15541868 0.005556317 -0.25358036 0.15074188 0.1351162 -0.26166102
		 -0.23735988 0.005850696 -0.31818202 -0.30650076 0.0059191096 -0.31820911 -0.3065055 0.13272348 -0.32957014
		 -0.23738441 0.13279234 -0.32955238 -0.39357743 0.0057605361 -0.24428114 -0.39861101 0.1326575 -0.25141922
		 -0.15768051 0.0049474491 -0.25334173 -0.15321133 0.13073151 -0.26154745 -0.36632401 1.15094876 0.050038498
		 -0.27282387 1.16114378 -0.029584002 -0.16479735 1.15913665 -0.054350164 -0.0084945373 1.16595936 -0.060619563
		 0.090417124 1.17980635 -0.063786171 0.24329211 1.17195332 -0.052460577 0.34903768 1.16485214 -0.028811699
		 0.43873376 1.13363898 0.063960299 0.46416107 1.10149276 0.18396553 0.43044779 1.066471457 0.28510976
		 0.34589991 1.041603684 0.34633082 0.23582314 1.032510757 0.3763203 0.088467389 1.019236565 0.3888002
		 -0.013055253 1.044404149 0.36297917 -0.16200586 1.030343056 0.37609541 -0.2746118 1.045201659 0.34516424
		 -0.35995638 1.071039319 0.28038543 -0.40140185 1.1110338 0.17617804 -0.31817564 1.31859016 0.099746756
		 -0.25994223 1.28739965 0.016746154 -0.14501218 1.28732789 -0.034259152 0.0099579571 1.28103137 -0.025276363
		 0.078535274 1.28909779 -0.033884253 0.22828127 1.29840994 -0.018268468 0.34126398 1.29219532 0.029884141
		 0.39417475 1.31192505 0.12167308 0.39868253 1.31078923 0.24679439 0.38099724 1.30891907 0.30781868
		 0.31111988 1.31164277 0.36754304 0.20993312 1.30359352 0.40826809 0.078665636 1.31038463 0.42603919
		 0.0081706652 1.31782877 0.41743112 -0.12515932 1.31449413 0.40007058 -0.22993451 1.31183326 0.35993081
		 -0.30564722 1.32307315 0.2553817 -0.33380046 1.32262182 0.20672958 -0.1080446 2.36324835 0.19727056
		 -0.088448144 2.35689974 0.17914093 -0.061948791 2.34833384 0.16557527 -0.0012786125 2.33447719 0.15440185
		 0.090533935 2.33505082 0.15435921 0.15275645 2.34943128 0.16547588 0.17976445 2.35745525 0.17959343
		 0.20195407 2.36404514 0.19830151 0.20630886 2.3661983 0.27863002 0.18477386 2.35705853 0.32094654
		 0.16878068 2.34903979 0.34377572 0.14927214 2.34209752 0.35556239 0.088717066 2.32637048 0.37072334
		 -0.023748089 2.32642961 0.3708238 -0.06009518 2.34186268 0.35650524 -0.080964059 2.34987712 0.3440896
		 -0.098401211 2.35893798 0.32029101 -0.11328454 2.36635971 0.2789557 -0.24427067 1.30535567 0.023771644
		 -0.14101906 1.30059826 -0.020133231 -0.0010351628 1.29257464 -0.0041121356 0.090323351 1.29735756 -0.022680178
		 0.2246739 1.30701458 -0.0047376254 0.32503524 1.3048104 0.048335023 0.37405962 1.32750821 0.12842302
		 0.37861833 1.33078802 0.24409179 0.36119759 1.32863581 0.29282591 0.29894128 1.33357561 0.34667054
		 0.20878167 1.33729637 0.3810499 0.09017925 1.3363322 0.40022188 -0.002867755 1.33775067 0.3938956
		 -0.1229342 1.33593416 0.37865543 -0.21665873 1.33431411 0.3430334 -0.28319684 1.34027886 0.26565742
		 -0.3108772 1.34020317 0.20700938 -0.29707664 1.33453238 0.10548958 -0.37492076 0.50182676 -0.17058805
		 -0.31084508 0.49340224 -0.21544814 -0.23137924 0.4934372 -0.21649759 -0.17768729 0.49998909 -0.18017115
		 -0.16680327 0.50132817 -0.17269337 -0.14175762 0.51514256 -0.099974394 -0.16588385 0.52964294 -0.027528303
		 -0.23002969 0.53743047 0.016621621 -0.30997676 0.53154981 0.013343303 -0.37422854 0.52772892 -0.027887415
		 -0.39911467 0.51516819 -0.098689415 0.25023159 0.48638842 -0.21269804 0.32939568 0.47977102 -0.21208183
		 0.3949143 0.48527566 -0.1703338 0.42118269 0.49691251 -0.099354558 0.39824933 0.50426024 -0.033737272
		 0.33434224 0.50463784 0.0049356874 0.25544748 0.51293826 0.0071855281 0.19016984 0.5212689 -0.029145958
		 0.16400632 0.50963581 -0.10488182 0.18715455 0.49977595 -0.1720854 0.19794163 0.49780595 -0.17882888
		 -1.13603151 2.24016905 0.14496963 -0.65325183 2.2156539 0.10182966 -0.3111212 2.21861434 0.104115
		 0.42058647 2.21318388 0.11784924 0.7203036 2.24149704 0.03669038 1.19932985 2.26039362 -0.044842485
		 1.46576333 2.29500031 0.0059874183 1.65423357 2.27645183 -0.033867575;
	setAttr ".vt[498:663]" 1.65429056 2.27577329 0.00082418509 1.47012007 2.29542351 0.016984917
		 1.63246608 2.26953411 0.022082228 1.63281739 2.26813102 0.055748824 1.47018361 2.29530191 0.055747859
		 1.6131413 2.27725935 0.070039548 1.60974371 2.27532935 0.10587513 1.46649623 2.29428053 0.10766529
		 1.28539109 2.24850178 0.077389278 1.22530544 2.25745273 0.092321455 0.75077289 2.22363687 0.24245816
		 0.4425799 2.21434808 0.29788136 -0.30843022 2.21251702 0.35353121 -0.65254027 2.20924115 0.33230254
		 -1.13439858 2.23639536 0.31951177 -1.18385875 2.22613192 0.32047769 -1.38549507 2.24731922 0.34421021
		 -1.531533 2.21679807 0.34883621 -1.53343415 2.22011781 0.32972464 -1.39308321 2.24832129 0.29777652
		 -1.55168355 2.21025991 0.30750164 -1.55363286 2.21201158 0.28068843 -1.39788282 2.24835157 0.25916046
		 -1.58543742 2.21969438 0.26220441 -1.589221 2.22084212 0.23192757 -1.3973484 2.2461288 0.22482368
		 -0.27852488 1.67870402 0.10234212 -0.21196963 1.64577806 0.052314624 -0.22703975 2.044043541 0.12285206
		 -0.17920984 1.9988246 0.07717599 -0.12630118 1.62612247 0.010546707 -0.10766916 1.96077681 0.042278454
		 -0.0056730416 1.62274468 -0.0033770702 -0.0079259612 1.93117011 0.030523246 0.090514377 1.6227169 -0.0031990646
		 0.086842649 1.93097317 0.030856332 0.20907862 1.62661958 0.01412503 0.18387653 1.95912504 0.042424671
		 0.28812116 1.6441412 0.053431321 0.25262538 1.99458325 0.077741235 0.35704303 1.67736828 0.13673282
		 0.3048071 2.03290391 0.1211796 0.3689191 1.67818403 0.27679551 0.31548467 2.033310413 0.32554111
		 0.31538472 1.66752374 0.33699438 0.27524275 1.99879313 0.37533966 0.27671793 1.64919615 0.38618276
		 0.23527011 1.96603179 0.42989483 0.19734465 1.63499451 0.41262534 0.18540871 1.942909 0.45087925
		 0.090511777 1.63235176 0.42397878 0.09031149 1.92141879 0.46126086 -0.0056257308 1.63281071 0.42364928
		 -0.0053987172 1.92138457 0.46143749 -0.11541146 1.63220227 0.4164696 -0.10192441 1.94375265 0.45183688
		 -0.18936248 1.64962196 0.38885388 -0.15834457 1.96995389 0.43060103 -0.24582708 1.6716888 0.3388806
		 -0.20825656 2.0098667145 0.37634167 -0.28950953 1.68548596 0.26726636 -0.22713788 2.043880701 0.3310591
		 -0.22365768 2.36081576 0.15801771 -0.14683074 2.27477765 0.13480949 -0.12078688 2.370152 0.19516395
		 -0.099683397 2.36387539 0.17538176 -0.091915861 2.24384522 0.10949523 -0.071251281 2.35509706 0.16100518
		 -0.005648932 2.21403909 0.094511196 -0.0061007207 2.34102225 0.14908828 0.090413272 2.21581078 0.095154315
		 0.092553467 2.3416338 0.14899057 0.17477934 2.24397659 0.11112771 0.15918712 2.35612106 0.16110456
		 0.22880009 2.27329612 0.13741307 0.18804589 2.36423683 0.17630172 0.30810416 2.35927773 0.15723211
		 0.21174788 2.37093353 0.19636452 0.31687942 2.35982847 0.34782732 0.21692595 2.37317133 0.28252566
		 0.24286315 2.26557827 0.39253122 0.19379793 2.36392355 0.32796565 0.20556134 2.23283648 0.43825823
		 0.17661455 2.35580182 0.35248935 0.17747474 2.22069502 0.44805628 0.15566474 2.3487668 0.36515617
		 0.090592131 2.19600105 0.45967597 0.090602182 2.33283877 0.38143906 -0.0055506094 2.19609332 0.45962581
		 -0.030217972 2.33289862 0.3815476 -0.09279386 2.22070265 0.44904742 -0.069265269 2.34853172 0.36616534
		 -0.12670678 2.23661041 0.43867522 -0.091684178 2.3566494 0.35282817 -0.16988736 2.27375674 0.39465082
		 -0.11041307 2.36581993 0.3272754 -0.22364227 2.36138034 0.3535074 -0.12640329 2.37333393 0.28287697
		 -0.22715546 2.21737528 0.092078917 -0.16154903 2.14935279 0.10054301 -0.099084787 2.11517072 0.057289559
		 -0.0066790432 2.085479021 0.036318958 0.088887408 2.086424112 0.036485013 0.17925444 2.11460638 0.057649348
		 0.23943844 2.14676857 0.10156255 0.30785784 2.21164513 0.13292845 0.32529423 2.20284104 0.35093731
		 0.26320592 2.13584924 0.38668948 0.21997377 2.10259128 0.44184944 0.18097727 2.085101843 0.45993996
		 0.090492748 2.061964273 0.47318101 -0.005673544 2.062048912 0.47314686 -0.097453982 2.08557725 0.46067932
		 -0.14227332 2.10649157 0.44180402 -0.18881683 2.14506936 0.38808474 -0.22710346 2.20675015 0.40287727
		 0.39992839 2.08374548 0.12757759 0.41873872 2.087171316 0.26754725 0.44596696 2.21999192 0.1074378
		 0.50352979 2.34857035 0.26275817 0.48215309 2.34249115 0.12614723 0.47029591 2.22188663 0.30025873
		 -0.29234794 2.084839106 0.29000363 -0.29240429 2.084273577 0.14706953 -0.33604902 2.21751142 0.36297047
		 -0.37557831 2.34047556 0.16755231 -0.37232134 2.34421682 0.31145498 -0.33893991 2.22368765 0.095025204
		 -0.26645732 1.29958069 0.015621419 -0.15646482 1.29328644 -0.041094389 -0.0065016868 1.2853092 -0.028371941
		 0.092222422 1.2889297 -0.041168548 0.23631157 1.29697788 -0.019660426 0.34451261 1.29829741 0.033671748
		 0.39719242 1.32317507 0.12127235 0.40207091 1.32184148 0.24574278 0.38189128 1.31934488 0.31224501
		 0.31589043 1.3261447 0.36067474 0.21909498 1.32841849 0.39701653 0.091729082 1.3290782 0.41740689
		 -0.0072914427 1.33077419 0.41190282 -0.1361862 1.32858074 0.39652839 -0.23706965 1.3280189 0.35604584
		 -0.3088145 1.33376968 0.26977819 -0.34017161 1.33706534 0.18952022 -0.32441264 1.32999516 0.090384677
		 0.1470741 2.45737195 0.13944785 0.10683546 2.43456006 0.18908469 0.096955538 2.45611501 0.12169157
		 0.19410796 2.4851265 0.078790687 0.18849154 2.45900989 0.1649275 0.042807128 2.45577741 0.11571013
		 0.043558992 2.43270016 0.18306331 -0.011331737 2.45624208 0.12155218 0.04201242 2.48333597 0.032474648
		 -0.061181754 2.45749235 0.13905831 -0.019354418 2.43463469 0.18898322 -0.10217954 2.45908022 0.16405518
		 -0.10968198 2.48516965 0.078104012 -0.12976168 2.4605577 0.19236943 -0.069210105 2.43812799 0.21124956
		 -0.14675204 2.46164274 0.22078046 -0.20338987 2.48860049 0.17292045 -0.14520751 2.45852995 0.31764704
		 -0.079892673 2.43663168 0.30567813 -0.12158769 2.45568347 0.35925615;
	setAttr ".vt[664:829]" -0.22080128 2.48741055 0.32983178 -0.15595196 2.46120954 0.2758252
		 -0.082939044 2.45433807 0.38837528 -0.049437791 2.43119431 0.34042567 -0.028931558 2.45394874 0.40535662
		 0.040764794 2.45397067 0.41055226 0.038729507 2.4292047 0.34647295 0.110542 2.45428085 0.404239
		 0.16477039 2.45477128 0.38666552 0.13029791 2.43180346 0.33784866 0.20412518 2.45600033 0.35773626
		 0.22928101 2.45853043 0.31734759 0.16479102 2.43651628 0.30526116 0.24164875 2.46095657 0.27695239
		 0.30447459 2.48742175 0.32975686 0.24263318 2.46187043 0.24801038 0.1717087 2.43922544 0.24882965
		 0.23385191 2.46161413 0.22289525 0.32516995 2.49024367 0.24255154 0.23813485 2.53052378 0.022792313
		 0.14851026 2.52933645 -0.029022673 0.27507666 2.58955336 -0.020126412 0.3081702 2.53201151 0.09077356
		 0.041815773 2.52894068 -0.046294253 -0.064788938 2.52933812 -0.029254088 0.041805413 2.58892393 -0.10600809
		 -0.154146 2.53053021 0.021866372 -0.22376053 2.53201389 0.088767715 -0.19102596 2.58955693 -0.021216044
		 -0.27113765 2.53328657 0.15315047 -0.3005811 2.53425908 0.20536722 -0.32719618 2.58982301 0.13612385
		 -0.31507739 2.53465104 0.27341461 0.39859298 2.53467202 0.27403092 0.40073675 2.53488541 0.23822881
		 0.38567984 2.53430247 0.20930181 0.4631227 2.59019399 0.23492306 0.30081388 2.65819788 -0.041528951
		 0.18345582 2.65930295 -0.10958423 0.31778437 2.73190188 -0.046730362 0.39063147 2.65633488 0.046488296
		 0.041769736 2.65969396 -0.13223702 -0.099790588 2.65934587 -0.1098306 0.0416926 2.73496342 -0.13489549
		 -0.21677394 2.65823293 -0.042704713 -0.30636588 2.65628076 0.043939997 -0.2338969 2.73213887 -0.047707301
		 -0.36575663 2.65341592 0.12490504 -0.40180019 2.65104795 0.19002855 -0.39304999 2.72390532 0.11926097
		 -0.42103469 2.65224433 0.27947465 0.50456703 2.6522572 0.28028873 0.50597703 2.65060329 0.23244943
		 0.48738143 2.65107512 0.19528063 0.53913593 2.71368074 0.23026414 0.32869667 2.80609608 -0.041031204
		 0.19865917 2.80755019 -0.10359906 0.33301982 2.87369728 -0.031682491 0.42995852 2.80398202 0.041994344
		 -0.11540996 2.80834746 -0.10282008 0.041454818 2.87544203 -0.10939717 -0.24490173 2.80685544 -0.04133169
		 -0.34538618 2.80432892 0.039590526 -0.24931194 2.8749454 -0.031307679 -0.41530734 2.80113101 0.1189582
		 -0.46994683 2.79759765 0.1975484 -0.42878127 2.87279296 0.12114172 -0.4920024 2.79762745 0.25526711
		 0.57629603 2.79803967 0.25601661 0.33056542 2.92760563 -0.025919313 0.19875847 2.92982078 -0.083457984
		 0.31818387 2.98396325 -0.016733566 0.43664783 2.92647481 0.052952684 0.041619707 2.93128729 -0.10161638
		 -0.11535026 2.93125439 -0.081787266 0.041839205 2.98917699 -0.091521002 -0.24780293 2.92934752 -0.025534282
		 -0.35659674 2.92828727 0.048347402 -0.23893143 2.98712158 -0.01757727 -0.43129838 2.9271059 0.12272465
		 -0.48927185 2.92653298 0.19770895 -0.42276618 2.9867003 0.12768942 -0.5097416 2.92662501 0.2554968
		 0.5956288 2.93000984 0.25544155 0.30207807 3.046845198 0.0098884171 0.19347595 3.042331457 -0.056216042
		 0.40795147 3.058820963 0.08290679 0.042695533 3.063471794 -0.048661094 -0.093293428 3.063453436 -0.043559294
		 -0.2185175 3.065320492 -0.0025105127 -0.33202687 3.069505215 0.068316616 0.57307434 2.97019362 0.23808207
		 0.079682127 2.44812417 0.22011158 0.093712829 2.45076919 0.23025075 0.057566967 2.44997907 0.22406948
		 0.043137595 2.44728518 0.21936141 0.02843692 2.45008397 0.22407721 0.0068296343 2.44825387 0.22010249
		 -0.0072132796 2.45088387 0.22998269 -0.034207024 2.44786859 0.24080008 -0.082938999 2.43948889 0.24721086
		 -0.024007604 2.45139718 0.26782346 -0.03138186 2.44791818 0.29060918 -0.017354228 2.4485085 0.29633215
		 -0.016143797 2.44478893 0.30706748 0.0097184759 2.44755912 0.30063102 0.03977171 2.44486904 0.30651587
		 0.070595503 2.44794631 0.29933447 0.096732967 2.44542122 0.3046822 0.09962029 2.44888568 0.29459226
		 0.11561253 2.447896 0.2902317 0.10997464 2.45112109 0.26868966 0.12175514 2.44764018 0.24179596
		 0.15788436 2.43811822 0.21215469 0.21659805 2.46054077 0.19397551 0.28864342 2.4885993 0.1754941
		 0.35602143 2.53332448 0.1565171 0.41240948 2.58985734 0.14017342 0.4510603 2.65345049 0.12939505
		 0.47844172 2.72387671 0.12401935 0.50131106 2.80125427 0.12427191 0.55720663 2.79804325 0.20565297
		 0.51529723 2.87338638 0.12839556 0.51391774 2.92679524 0.1324556 0.57489878 2.92681789 0.21044447
		 0.49590415 2.98217177 0.13958752 -0.15597446 2.46205354 0.24606769 -0.24022864 2.49026227 0.24048421
		 -0.31639457 2.53484273 0.23577051 -0.37869442 2.59016204 0.23197566 -0.42135051 2.65058684 0.22914867
		 -0.45418465 2.71356416 0.2268056 -0.4932355 2.97365546 0.2279876 -0.075843789 2.40014458 0.20054625
		 -0.098235659 2.36011004 0.18813479 -0.08409939 2.40187407 0.21619657 -0.068115324 2.39452386 0.19179018
		 -0.06464643 2.38155866 0.18307164 -0.075228736 2.35253787 0.1725143 -0.047815815 2.38987064 0.18352403
		 -0.021203483 2.38993359 0.1813737 -0.031635497 2.34136987 0.16005954 0.010849772 2.38684416 0.17890121
		 0.044155434 2.38592362 0.17794095 0.044608727 2.33474684 0.15441535 0.077603608 2.38709116 0.17868291
		 0.11015203 2.39036679 0.18111995 0.12166325 2.34225655 0.15988591 0.13731474 2.39048314 0.18323795
		 0.15472369 2.38225698 0.18285313 0.16627347 2.35344815 0.17252468 0.15817071 2.39509273 0.19163282
		 0.16656893 2.40078473 0.20057282 0.19088185 2.36075568 0.18893522 0.1754802 2.40249133 0.21650435
		 0.18047592 2.4033742 0.24625096 0.2041447 2.36512423 0.23845994 0.18038084 2.40273619 0.27893192
		 0.17402762 2.39988303 0.3036592 0.19553992 2.36162949 0.29978624 0.1672681 2.39300585 0.32083577
		 0.16595368 2.38029623 0.33086264 0.1767748 2.35305047 0.33235928 0.15516326 2.38852882 0.33548939
		 0.1416024 2.38999462 0.33944276 0.15902661 2.34556866 0.3496691;
	setAttr ".vt[830:995]" 0.12723519 2.38341069 0.34446669 0.11400855 2.36750841 0.35227996
		 0.11898757 2.33423686 0.36313733 0.085598387 2.37698126 0.35123491 0.035614189 2.37999654 0.35136938
		 0.032480996 2.32640195 0.37077019 -0.012875799 2.37667632 0.35228008 -0.03680291 2.36714268 0.35356465
		 -0.041921385 2.33414602 0.36366507 -0.045324087 2.38296223 0.34622702 -0.057832163 2.38970685 0.34147567
		 -0.070529737 2.34587002 0.35029715 -0.070879966 2.38861299 0.3374072 -0.081021845 2.38091993 0.33211252
		 -0.089683235 2.35440874 0.3321878 -0.082508586 2.39354944 0.32206202 -0.086911097 2.40039778 0.30388322
		 -0.10584257 2.36264801 0.29962477 -0.090403646 2.40314054 0.27804786 -0.089171439 2.40334368 0.24524428
		 -0.11064443 2.36450028 0.2387078 -0.23509212 2.46237564 0.26364312 -0.36004865 2.51555228 0.40083537
		 -0.2139966 2.45983672 0.33181679 -0.35057154 2.51395702 0.50449407 -0.17541485 2.41754699 0.407969
		 -0.288618 2.47239447 0.58270794 -0.10267214 2.41595268 0.46633688 -0.25514051 2.48629165 0.49107754
		 -0.010670587 2.41522455 0.50373864 -0.09338282 2.42165661 0.56903368 0.043753717 2.41502666 0.51606888
		 0.027240841 2.46932292 0.59508866 0.095948592 2.45034838 0.484826 0.19236863 2.44982886 0.59416819
		 0.18609515 2.4511044 0.44725302 0.33251822 2.45438838 0.52022523 0.26091385 2.44962859 0.38899803
		 0.32619739 2.50438404 0.43296945 0.30304468 2.47781372 0.3154611 0.4070152 2.53192997 0.33621684
		 -0.38793346 2.54225326 0.43643579 -0.43437213 2.614748 0.29047906 -0.39879322 2.54278445 0.54489398
		 -0.39193735 2.61945176 0.42916477 -0.4172709 2.54271722 0.5797922 -0.33840641 2.62376523 0.48749596
		 -0.20301755 2.54639506 0.54605901 -0.22059391 2.62454915 0.61229038 -0.081353888 2.5560081 0.60334736
		 -0.055109531 2.62381339 0.69030082 0.043271761 2.54007602 0.75997084 0.030239332 2.6235683 0.71460271
		 0.22179005 2.53630662 0.57934272 0.17133205 2.6237855 0.69034046 0.4180145 2.53656888 0.60232651
		 0.32154712 2.6240983 0.6689291 0.4345217 2.54274225 0.49146661 0.44333348 2.62376523 0.5641669
		 0.51474595 2.50704169 0.38557926 0.51110965 2.61947489 0.39149776 -0.56890726 2.68710399 0.24840154
		 -0.54000795 2.7862134 0.24479853 -0.49825391 2.70321059 0.41313592 -0.48853412 2.79280734 0.40502182
		 -0.46627524 2.65259576 0.64113128 -0.40370893 2.79900384 0.61089402 -0.25587785 2.69275308 0.72792912
		 -0.25234044 2.80498385 0.74046642 -0.13528815 2.71076822 0.81761652 -0.067133844 2.80273581 0.76548344
		 0.033259712 2.69706988 0.81798452 0.01673793 2.80490851 0.79534227 0.20349374 2.69489169 0.82221913
		 0.18883799 2.81282878 0.76286495 0.30898461 2.69820929 0.75821412 0.33343881 2.8085115 0.71567476
		 0.46829501 2.64381313 0.65566182 0.44321105 2.78354597 0.64522713 0.54611844 2.70321941 0.40786928
		 0.61521751 2.73508835 0.47106466 -0.57207781 2.8853538 0.24478464 -0.55906719 2.93667555 0.24457522
		 -0.4998593 2.8753705 0.4061518 -0.56715065 2.91732502 0.41684237 -0.40838397 2.86227417 0.59144646
		 -0.40193114 2.95154881 0.6440208 -0.25423035 2.86792016 0.72420311 -0.2997489 2.95306969 0.87125027
		 -0.069336861 2.8841958 0.77574837 -0.068330571 2.94669247 0.77124071 0.014947623 2.88668537 0.80371058
		 0.026699007 2.93571973 0.86001885 0.1919433 2.891289 0.78033751 0.18837591 2.94927549 0.77865177
		 0.36559522 2.89227486 0.72578007 0.38620093 2.93223047 0.81382167 0.50046796 2.87533069 0.61434972
		 0.49737212 2.93107605 0.57091439 0.58618176 2.8761673 0.410456 0.63914585 2.90989828 0.4112179
		 -0.39291596 2.95609212 -0.036813866 -0.32373884 3.12509704 0.030772066 -0.43525028 2.86222887 0.097544841
		 -0.45408806 3.11014771 0.11123271 -0.54981667 2.99103522 0.24511205 -0.48967275 3.12119174 0.28103921
		 -0.46954635 3.013901711 0.40960181 -0.42697629 3.12286854 0.39954278 -0.37818429 3.016639233 0.64731413
		 -0.33264148 3.12382078 0.58699906 -0.235525 3.01833725 0.77309054 -0.20595288 3.11916852 0.69657969
		 -0.06268426 3.0093655586 0.74379665 -0.054837339 3.11301255 0.7001645 0.010329522 3.010735035 0.76374668
		 0.0035388318 3.1116116 0.716308 0.17980407 3.012491941 0.75065458 0.15973736 3.11386633 0.70551288
		 0.34194082 3.013147831 0.66183394 0.3101126 3.11100078 0.6308282 0.47832686 2.99383426 0.53688192
		 0.43644091 3.093227148 0.51495326 0.56088561 3.0033628941 0.40811098 0.51276559 3.096697807 0.39951071
		 0.62928468 2.98886752 0.25135666 0.54750746 3.096884251 0.28690124 0.61834717 2.98898697 0.22278279
		 0.55368036 3.096369743 0.23166092 0.40231708 3.18788123 -0.024517598 0.36684838 3.29486346 -0.032916892
		 0.31762624 3.28083348 -0.20628951 0.27939579 3.30904651 -0.12022012 0.17852364 3.28402829 -0.30536398
		 0.13680597 3.30463338 -0.18658333 0.072447322 3.25998664 -0.23352812 0.086800843 3.29423451 -0.1958134
		 -0.033533081 3.21213698 -0.12842022 -0.014963038 3.27951384 -0.12304185 -0.15518329 3.2213428 -0.20690893
		 -0.12239538 3.29492903 -0.16372965 -0.27691749 3.18726635 -0.06534753 -0.22693352 3.2799778 -0.0068379291
		 -0.41085988 3.20626497 0.12882143 -0.34749761 3.26566529 0.1418402 -0.43513235 3.21268392 0.28275755
		 -0.37952214 3.26330733 0.27944955 -0.37310347 3.212291 0.38553014 -0.32747382 3.26209068 0.37093061
		 -0.28428358 3.21508813 0.51463658 -0.24628808 3.26557517 0.4818866 -0.17547891 3.2206924 0.60631871
		 -0.15015544 3.2755127 0.55899328 -0.046443887 3.21979976 0.65256518 -0.037924767 3.27644277 0.60000819
		 -0.0043925941 3.21844125 0.67053115 0.0093448497 3.27544093 0.6153183 0.13495672 3.22144485 0.65929979
		 0.11579251 3.27661514 0.60378724 0.27021465 3.21294427 0.59943503 0.23760134 3.26836777 0.55387896
		 0.38546503 3.19264078 0.49941397 0.34195772 3.2468729 0.47052991 0.45558476 3.18258572 0.38730472
		 0.40666375 3.23401117 0.37324551 0.48878899 3.18270636 0.28649682;
	setAttr ".vt[996:1150]" 0.43896306 3.2354331 0.28394556 0.50303346 3.18488765 0.23859102
		 0.45308903 3.2374444 0.24153931 0.27042374 3.28737998 0.048389852 0.21366587 3.31124067 0.13096727
		 0.20457862 3.32190299 -0.065372191 0.15760657 3.3258872 0.075114205 0.10656817 3.33225155 -0.13789323
		 0.088861987 3.33215189 0.027418932 0.05276449 3.31986642 -0.11415224 0.058921117 3.33164597 0.017020663
		 -0.00051598641 3.31352997 -0.078655578 0.022091225 3.33138466 0.025029799 -0.076555625 3.29793692 -0.10183886
		 -0.042388178 3.34536433 0.026036492 -0.17408927 3.30359864 0.014573773 -0.12099193 3.33027673 0.094945215
		 -0.27221906 3.29853702 0.15131076 -0.18478709 3.3185339 0.17229402 -0.31264269 3.29372764 0.27537057
		 -0.2209297 3.31536126 0.26972041 -0.27215558 3.29041243 0.35412991 -0.19205289 3.31312442 0.32958898
		 -0.20366262 3.29490781 0.44567201 -0.1432042 3.31922674 0.39672279 -0.12117125 3.3043704 0.50918818
		 -0.081749409 3.32637334 0.44586092 -0.026407555 3.30634379 0.54529673 -0.0089942887 3.32732582 0.47454378
		 0.032666545 3.30510759 0.55765241 0.049118131 3.32598233 0.48379067 0.097247191 3.30477881 0.54587138
		 0.073278598 3.32510638 0.47275308 0.20347059 3.29822159 0.50504911 0.15733643 3.32128978 0.44154897
		 0.29322779 3.28059649 0.43665999 0.22615997 3.31227994 0.39051497 0.34989089 3.26822996 0.35430554
		 0.27095407 3.30275011 0.32734236 0.38162559 3.26885843 0.27844957 0.29418692 3.30081749 0.26970047
		 0.3911607 3.2724297 0.24055663 0.30026492 3.30293202 0.24143375 0.15365127 3.33845258 0.17268001
		 0.09504199 3.34921622 0.21028148 0.11907671 3.34819221 0.13581102 0.080043666 3.35532665 0.17971857
		 0.06927307 3.35395312 0.11085027 0.0426009 3.35589457 0.17381692 0.063124798 3.35242772 0.096665859
		 0.063863948 3.3597486 0.15582864 0.048054267 3.35238576 0.10995425 0.071513981 3.35758734 0.17460963
		 -0.0067116395 3.34682059 0.13226727 0.033435188 3.35413861 0.17846988 -0.05252248 3.34013891 0.16828007
		 0.011034291 3.34857655 0.20861506 -0.099124506 3.33399868 0.1991557 -0.044353396 3.3409121 0.22629969
		 -0.11906765 3.3304584 0.26021853 -0.022939056 3.33970428 0.25319588 -0.10570483 3.32943559 0.30293444
		 -0.032651454 3.33709025 0.28314331 -0.072209984 3.33426809 0.3474347 -0.0018822552 3.33840561 0.3039721
		 -0.036848322 3.33764291 0.38402572 0.0070060641 3.34033442 0.33520153 0.014898568 3.33859539 0.40116853
		 0.046160404 3.341887 0.33608517 0.073050484 3.33886409 0.41157633 0.074228913 3.34247088 0.35401395
		 0.047836524 3.33833885 0.40002379 0.025985876 3.34163213 0.33665502 0.1091048 3.336061 0.38056448
		 0.069063678 3.34086895 0.33379543 0.15360241 3.33188033 0.34373724 0.086467564 3.34118319 0.30387631
		 0.18904446 3.32870984 0.30228552 0.12074838 3.34100962 0.28420156 0.20100527 3.32924199 0.26218733
		 0.11590301 3.34347773 0.25537771 0.20917457 3.32863045 0.23934086 0.13984454 3.34347177 0.2298793
		 0.50081605 3.18713737 0.20582983 0.47820836 3.19011712 0.14679876 0.54435247 3.094967604 0.19485423
		 0.51882732 3.095057964 0.13103974 0.3794663 3.27585673 0.21117339 0.34434548 3.28240371 0.15940799
		 0.44809759 3.24009013 0.21056055 0.41725889 3.24520516 0.15234184 0.22487092 3.32128716 0.22176528
		 0.18693797 3.33113289 0.20447345 0.28835359 3.30563545 0.21929325 0.2600604 3.31011128 0.18043923
		 -0.44905397 3.20804048 0.19317134 -0.46063372 3.21004891 0.23141113 -0.50089008 3.11390185 0.18146323
		 -0.51433581 3.11594152 0.22380465 -0.30653802 3.29657364 0.20849757 -0.32216668 3.29503036 0.237342
		 -0.38490593 3.26477814 0.20290291 -0.39927995 3.2625494 0.23567876 -0.14698748 3.32697177 0.2161482
		 -0.12815034 3.3314631 0.23508859 -0.21471934 3.31843925 0.21594535 -0.22680132 3.31792593 0.24044666
		 -0.10313927 2.38292313 0.36744365 -0.13099658 2.3862803 0.31836972 0.0061397813 2.38087726 0.42181474
		 -0.062555134 2.41739655 0.41630289 0.074459948 2.38122606 0.42057624 0.024785396 2.41716576 0.43528756
		 0.18475233 2.3832953 0.36565399 0.14734776 2.43052363 0.40944391 0.21446814 2.38626575 0.31804428
		 0.32247514 2.44830346 0.26669738 0.41454238 2.52325392 0.2642968 0.55347621 2.54230571 0.27113515
		 0.53908914 2.61475229 0.27432287 0.59068686 2.68710399 0.2447985 0.62319475 2.78645062 0.24516203
		 0.65758407 2.88686037 0.24713622 0.64334899 2.93785381 0.24912125 0.19393884 3.12398553 -0.1506031
		 0.32748464 3.1238277 -0.084520884 0.39789683 3.11126685 -0.018232625 -0.069973513 3.10551405 -0.12526818
		 0.068685576 3.13465476 -0.18404721 -0.20795678 3.13013458 -0.14305191 -0.52758563 3.024169683 0.14693831
		 0.6224969 2.97819209 0.18883446 0.054765888 3.34766984 0.25440866 0.50475311 2.83146167 0.080853879
		 0.47166485 2.97070074 0.023159491 -0.53900915 2.99114609 0.21163984 -0.46349773 2.96508789 0.029729804
		 0.53011882 2.97573876 0.044180471 0.065376192 2.87530112 -0.10657588 0.072384298 2.80826545 -0.11990292
		 0.079663947 2.73474741 -0.12940943 0.041692551 2.73498464 -0.13489227 -0.00090353173 2.73479152 -0.12872601
		 0.0075401859 2.8084197 -0.11932287 0.014627445 2.87550545 -0.10597623 0.041455086 2.87521172 -0.10944697
		 0.076766625 2.81480169 -0.15365811 0.084257647 2.75260568 -0.19600762 0.041358761 2.75406098 -0.19900273
		 0.041253306 2.81591415 -0.15590845 -0.0055554109 2.74980044 -0.19159836 0.0030681717 2.81259489 -0.14996214
		 0.010562956 2.86773562 -0.1076679 0.041457713 2.86990404 -0.11221467 0.069764979 2.86949992 -0.1108034;
	setAttr -s 2292 ".ed";
	setAttr ".ed[0:165]"  0 645 0 1 650 0 2 654 0 3 658 0 4 662 0 5 667 0 6 670 0
		 7 673 0 8 676 0 9 680 0 10 647 1 11 652 1 12 656 1 13 660 1 14 664 0 15 682 1 16 685 1
		 17 689 1 18 692 1 19 695 1 21 700 1 22 703 1 23 1136 1 24 710 1 25 713 1 27 718 0
		 28 721 1 29 1134 1 30 727 1 31 730 1 34 735 1 35 739 1 36 742 1 37 745 0 39 755 0
		 0 648 1 1 646 1 2 651 1 3 655 1 4 665 1 5 663 1 6 668 1 7 671 1 8 674 1 9 677 1 10 686 1
		 11 684 1 12 688 1 13 691 1 14 696 0 15 697 0 16 704 1 17 702 1 18 706 1 19 709 1
		 20 714 0 21 715 0 22 722 1 23 720 1 24 723 1 25 726 1 26 731 0 27 732 0 28 736 1
		 29 734 1 30 738 1 31 741 1 32 746 0 33 747 0 34 750 0 35 749 1 36 752 1 37 754 0
		 40 757 1 40 758 1 40 760 1 40 762 1 40 765 1 40 767 1 40 769 1 40 771 1 40 773 1
		 40 775 1 41 777 0 42 779 1 41 681 1 43 781 1 42 699 1 44 783 1 43 717 1 45 786 1
		 44 785 0 46 789 0 45 788 0 47 764 0 48 791 1 47 659 1 49 793 1 48 694 1 50 795 0
		 49 712 1 50 729 0 52 796 0 51 744 0 27 53 1 44 54 1 53 54 1 45 55 1 54 55 1 33 56 1
		 56 55 1 53 56 1 46 57 1 55 57 1 39 58 1 58 57 1 56 58 1 50 59 1 51 60 1 59 60 1 26 61 1
		 59 61 1 32 62 1 61 62 1 60 62 1 52 63 1 60 63 1 38 64 1 62 64 1 63 64 1 113 65 1
		 112 66 1 65 66 1 114 67 1 65 511 1 115 68 1 67 68 1 66 491 1 65 83 1 66 84 1 69 70 1
		 67 82 1 69 513 1 68 81 1 71 72 1 70 106 1 69 73 1 70 105 1 73 99 1 71 75 1 73 514 1
		 72 104 1 75 96 1 74 76 1 73 77 1 74 78 1 77 98 1 75 79 1 77 515 1 76 80 1 78 80 1
		 81 72 1 82 71 1 81 82 1 83 69 1 82 512 1;
	setAttr ".ed[166:331]" 84 70 1 83 84 1 84 490 1 85 76 1 86 80 1 87 78 1 88 74 1
		 85 86 1 86 87 1 87 88 1 91 88 1 85 89 1 89 522 1 90 91 1 92 85 1 100 89 1 94 90 1
		 95 91 1 92 100 1 93 519 1 94 95 1 96 92 1 97 93 1 99 95 1 96 97 1 97 518 1 103 99 1
		 92 93 1 100 521 1 101 95 1 103 101 1 102 516 1 79 102 1 96 102 1 98 99 1 88 85 1
		 91 523 1 95 520 1 99 517 1 104 76 1 105 74 1 104 107 1 106 72 1 107 105 1 106 107 1
		 106 108 1 107 109 1 108 109 1 70 110 1 110 108 1 105 111 1 110 111 1 109 111 1 113 112 1
		 113 510 1 114 115 1 112 492 1 117 116 1 117 118 1 118 119 1 116 119 1 117 509 1 120 121 1
		 118 508 1 120 122 1 122 123 1 121 123 1 116 493 1 119 494 1 118 124 1 124 125 1 119 125 1
		 121 126 1 126 507 1 123 127 1 127 126 1 125 495 1 129 128 1 129 130 1 130 131 1 131 132 1
		 132 133 1 133 134 1 134 135 1 136 135 1 128 136 1 129 506 1 137 138 1 130 505 1 137 139 1
		 139 140 1 140 141 1 142 141 1 143 142 1 144 143 1 138 144 1 140 145 1 145 136 1 135 141 1
		 146 131 1 130 147 1 147 146 1 138 148 1 147 504 1 144 149 1 148 149 1 135 150 1 150 151 1
		 141 151 1 127 139 1 126 137 1 124 129 1 125 128 1 128 152 1 152 139 1 149 503 1 142 153 1
		 153 151 1 154 150 1 153 154 1 154 134 1 143 155 1 142 156 1 155 156 1 156 497 1 158 157 1
		 155 498 1 157 133 1 158 132 1 144 159 1 143 160 1 159 160 1 160 500 1 162 161 1 159 501 1
		 161 132 1 162 131 1 134 142 1 133 496 1 132 499 1 131 502 1 152 145 1 164 163 1 165 164 1
		 165 166 1 163 166 1 152 164 1 145 163 1 128 165 1 136 166 1 167 168 1 168 169 1 169 335 1
		 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1 176 167 1 177 178 1 178 179 1
		 179 333 1 180 181 1 181 182 1 182 183 1;
	setAttr ".ed[332:497]" 183 184 1 184 185 1 185 186 1 186 177 1 167 371 1 170 378 1
		 171 377 1 172 376 1 173 375 1 174 374 1 175 373 1 176 372 1 187 167 1 187 168 1 187 169 1
		 187 170 1 187 171 1 187 172 1 187 173 1 187 174 1 187 175 1 187 176 1 177 188 1 178 189 1
		 188 189 1 179 190 1 189 190 1 180 191 1 190 332 1 181 192 1 191 192 0 182 193 1 192 193 1
		 183 194 1 193 194 1 184 195 1 194 195 1 185 196 1 195 196 1 186 197 1 196 197 1 197 188 1
		 191 198 0 198 192 0 191 270 1 192 271 1 199 200 1 190 269 1 201 327 1 202 324 1 203 204 1
		 204 205 1 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 202 1 212 326 1
		 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1 220 221 1 221 212 1
		 202 361 1 205 368 1 206 367 1 207 366 1 208 365 1 209 364 1 210 363 1 211 362 1 222 202 1
		 222 203 1 222 204 1 222 205 1 222 206 1 222 207 1 222 208 1 222 209 1 222 210 1 222 211 1
		 212 199 1 213 201 1 214 223 1 201 223 1 215 224 1 223 224 1 216 225 1 224 225 1 217 226 1
		 225 226 1 218 227 1 226 227 1 219 228 1 227 228 1 220 229 1 228 229 1 221 200 1 229 200 1
		 228 264 1 229 263 1 188 230 1 189 231 1 230 231 1 190 232 1 231 232 1 194 233 1 195 234 1
		 233 234 1 196 235 1 234 235 1 197 236 1 235 236 1 236 230 1 201 237 1 232 268 1 223 238 1
		 237 238 1 224 239 1 238 239 1 225 240 1 239 240 1 226 241 1 240 241 1 227 242 1 241 242 1
		 228 243 1 242 243 1 243 265 1 230 244 1 231 245 1 244 245 1 232 246 1 245 246 1 233 247 1
		 234 248 1 247 248 1 235 249 1 248 249 1 236 250 1 249 250 1 250 244 1 237 251 1 246 267 1
		 238 252 1 251 252 1 239 253 1 252 253 1 240 254 1 253 254 1 241 255 1 254 255 1 242 256 1
		 255 256 1 243 257 1 256 257 1 257 266 1 244 293 1 245 292 1 246 291 1;
	setAttr ".ed[498:663]" 247 297 1 248 296 1 249 295 1 250 294 1 251 288 1 252 287 1
		 253 286 1 254 303 1 255 302 1 256 301 1 257 300 1 258 251 1 259 237 1 258 259 1 260 201 1
		 259 260 1 261 199 1 260 328 1 262 200 1 261 262 1 262 263 1 263 264 1 264 265 1 266 275 1
		 265 266 1 266 299 1 267 258 1 267 268 1 268 269 1 269 331 1 270 271 1 272 193 1 271 272 1
		 273 194 1 272 273 1 274 233 1 273 274 1 275 247 1 274 275 1 275 298 1 269 276 1 260 277 1
		 276 277 1 258 277 1 267 276 1 270 278 1 276 330 1 261 279 1 278 279 1 277 329 1 271 280 1
		 278 280 1 262 281 1 280 281 1 279 281 1 263 282 1 281 282 1 272 283 1 280 283 1 282 283 1
		 264 284 1 282 284 1 273 285 1 283 285 1 284 285 1 284 266 1 285 275 1 286 287 1 287 288 1
		 289 258 1 288 289 1 290 267 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1
		 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 302 1 302 303 1 303 286 1
		 304 470 1 305 472 1 304 325 1 306 473 1 305 306 1 307 474 1 306 307 1 308 475 1 307 308 1
		 309 476 1 308 309 1 310 477 1 309 310 1 311 478 1 310 311 1 312 468 1 311 312 1 313 469 1
		 312 313 1 313 304 1 314 479 1 315 480 1 314 315 1 316 481 1 315 316 1 317 482 1 316 317 1
		 318 483 1 317 318 1 319 484 1 318 319 1 320 485 1 319 320 1 321 486 1 320 321 1 322 487 1
		 321 322 1 323 488 1 322 323 1 323 334 1 324 203 1 325 305 1 324 360 1 326 213 1 325 471 1
		 327 199 1 326 327 1 328 261 1 327 328 1 329 279 1 328 329 1 330 278 1 329 330 1 331 270 1
		 330 331 1 332 191 1 331 332 1 333 180 1 332 333 1 334 314 1 333 489 1 335 170 1 334 357 1
		 336 312 1 337 313 1 336 337 1 338 304 1 337 338 1 339 325 1 338 339 1 340 305 1 339 340 1
		 341 306 1 340 341 1 342 307 1 341 342 1 343 308 1 342 343 1 344 309 1;
	setAttr ".ed[664:829]" 343 344 1 345 310 1 344 345 1 346 311 1 345 346 1 346 336 1
		 347 314 1 348 315 1 347 348 1 349 316 1 348 349 1 350 317 1 349 350 1 351 318 1 350 351 1
		 352 319 1 351 352 1 353 320 1 352 353 1 354 321 1 353 354 1 355 322 1 354 355 1 356 323 1
		 355 356 1 357 379 1 356 357 1 357 347 1 358 337 1 359 338 1 358 359 1 360 339 1 359 360 1
		 361 340 1 360 361 1 362 341 1 361 362 1 363 342 1 362 363 1 364 343 1 363 364 1 365 344 1
		 364 365 1 366 345 1 365 366 1 367 346 1 366 367 1 368 336 1 367 368 1 368 358 1 369 347 1
		 370 348 1 369 370 1 371 349 1 370 371 1 372 350 1 371 372 1 373 351 1 372 373 1 374 352 1
		 373 374 1 375 353 1 374 375 1 376 354 1 375 376 1 377 355 1 376 377 1 378 356 1 377 378 1
		 379 335 1 378 379 1 379 369 1 167 380 1 168 381 1 380 381 1 370 382 1 381 382 1 371 383 1
		 382 383 1 380 383 1 169 384 1 381 384 1 369 385 1 384 385 1 385 382 1 335 386 1 384 386 1
		 379 387 1 387 386 1 387 385 1 203 388 1 204 389 1 388 389 1 358 390 1 389 390 1 359 391 1
		 390 391 1 388 391 1 205 392 1 389 392 1 368 393 1 392 393 1 393 390 1 324 394 1 394 388 1
		 360 395 1 391 395 1 394 395 1 286 396 1 287 397 1 396 397 1 288 398 1 397 398 1 289 399 1
		 398 399 1 290 400 1 399 400 1 291 401 1 400 401 1 292 402 1 401 402 1 293 403 1 402 403 1
		 294 404 1 403 404 1 295 405 1 404 405 1 296 406 1 405 406 1 297 407 1 406 407 1 298 408 1
		 407 408 1 299 409 1 408 409 1 300 410 1 409 410 1 301 411 1 410 411 1 302 412 1 411 412 1
		 303 413 1 412 413 1 413 396 1 396 414 1 397 415 1 414 415 1 398 416 1 415 416 1 399 417 1
		 416 417 1 400 418 1 417 418 1 401 419 1 418 419 1 402 420 1 419 420 1 403 421 1 420 421 1
		 404 422 1 421 422 1 405 423 1 422 423 1 406 424 1 423 424 1 407 425 1;
	setAttr ".ed[830:995]" 424 425 1 408 426 1 425 426 1 409 427 1 426 427 1 410 428 1
		 427 428 1 411 429 1 428 429 1 412 430 1 429 430 1 413 431 1 430 431 1 431 414 1 414 467 1
		 415 450 1 416 451 1 417 452 1 418 453 1 419 454 1 420 455 1 421 456 1 422 457 1 423 458 1
		 424 459 1 425 460 1 426 461 1 427 462 1 428 463 1 429 464 1 430 465 1 431 466 1 432 798 0
		 433 802 0 434 805 0 435 808 0 436 811 0 437 814 0 438 817 0 439 820 0 440 823 0 441 826 0
		 442 829 0 443 832 0 444 835 0 445 838 0 446 841 0 447 844 0 448 847 0 449 850 0 432 799 1
		 433 800 1 434 803 1 435 806 1 436 809 1 437 812 1 438 815 1 439 818 1 440 821 1 441 824 1
		 442 827 1 443 830 1 444 833 1 445 836 1 446 839 1 447 842 1 448 845 1 449 848 1 450 451 1
		 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1 457 458 1 458 459 1 459 460 1
		 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1 467 450 1 468 215 1
		 469 214 1 468 469 1 470 213 1 469 470 1 471 326 1 470 471 1 472 212 1 471 472 1 473 221 1
		 472 473 1 474 220 1 473 474 1 475 219 1 474 475 1 476 218 1 475 476 1 477 217 1 476 477 1
		 478 216 1 477 478 1 478 468 1 479 179 1 480 178 1 479 480 1 481 177 1 480 481 1 482 186 1
		 481 482 1 483 185 1 482 483 1 484 184 1 483 484 1 485 183 1 484 485 1 486 182 1 485 486 1
		 487 181 1 486 487 1 488 180 1 487 488 1 489 334 1 488 489 1 489 479 1 490 81 1 491 68 1
		 490 491 1 492 115 1 491 492 1 493 122 1 494 123 1 493 494 1 495 127 1 494 495 1 496 142 1
		 497 157 1 496 497 1 498 158 1 497 498 1 499 143 1 498 499 1 500 161 1 499 500 1 501 162 1
		 500 501 1 502 144 1 501 502 1 503 146 1 502 503 1 504 148 1 503 504 1 505 138 1 504 505 1
		 506 137 1 505 506 1 507 124 1 506 507 1 508 121 1 507 508 1 509 120 1;
	setAttr ".ed[996:1161]" 508 509 1 510 114 1 511 67 1 510 511 1 512 83 1 511 512 1
		 513 71 1 512 513 1 514 75 1 513 514 1 515 79 1 514 515 1 516 98 1 515 516 1 517 96 1
		 516 517 1 518 103 1 517 518 1 519 101 1 518 519 1 520 92 1 519 520 1 521 94 1 520 521 1
		 522 90 1 521 522 1 523 85 1 522 523 1 524 525 1 524 526 1 526 527 1 525 527 1 525 528 1
		 527 529 1 528 529 1 528 530 1 529 531 1 530 531 1 530 532 1 531 533 1 532 533 1 532 534 1
		 533 535 1 534 535 1 534 536 1 535 537 1 536 537 1 536 538 1 537 539 1 538 539 1 538 540 1
		 539 541 1 540 541 1 540 542 1 541 543 1 542 543 1 542 544 1 543 545 1 544 545 1 544 546 1
		 545 547 1 546 547 1 546 548 1 547 549 1 548 549 1 548 550 1 549 551 1 550 551 1 550 552 1
		 551 553 1 552 553 1 552 554 1 553 555 1 554 555 1 554 556 1 555 557 1 556 557 1 556 558 1
		 557 559 1 558 559 1 558 524 1 559 526 1 560 561 1 432 562 1 560 562 1 433 563 1 562 563 1
		 561 563 1 561 564 1 434 565 1 563 565 1 564 565 1 564 566 1 435 567 1 565 567 1 566 567 1
		 566 568 1 436 569 1 567 569 1 568 569 1 568 570 1 437 571 1 569 571 1 570 571 1 570 572 1
		 438 573 1 571 573 1 572 573 1 572 574 1 439 575 1 573 575 1 574 575 1 574 576 1 440 577 1
		 575 577 1 576 577 1 576 578 1 441 579 1 577 579 1 578 579 1 578 580 1 442 581 1 579 581 1
		 580 581 1 580 582 1 443 583 1 581 583 1 582 583 1 582 584 1 444 585 1 583 585 1 584 585 1
		 584 586 1 445 587 1 585 587 1 586 587 1 586 588 1 446 589 1 587 589 1 588 589 1 588 590 1
		 447 591 1 589 591 1 590 591 1 590 592 1 448 593 1 591 593 1 592 593 1 592 594 1 449 595 1
		 593 595 1 594 595 1 594 560 1 595 562 1 526 596 1 596 597 1 527 597 1 597 598 1 529 598 1
		 598 599 1 531 599 1 599 600 1 533 600 1 600 601 1 535 601 1 601 602 1;
	setAttr ".ed[1162:1327]" 537 602 1 602 603 1 539 603 1 541 604 1 604 605 1 543 605 1
		 605 606 1 545 606 1 606 607 1 547 607 1 607 608 1 549 608 1 608 609 1 551 609 1 609 610 1
		 553 610 1 610 611 1 555 611 1 611 612 1 557 612 1 612 613 1 559 613 1 116 614 1 539 614 1
		 117 615 1 615 614 1 541 615 1 493 616 1 603 616 1 614 616 1 120 617 1 576 617 1 122 618 1
		 617 618 1 574 618 1 509 619 1 615 619 1 619 604 1 113 620 1 559 620 1 112 621 1 620 621 1
		 526 621 1 510 622 1 613 622 1 620 622 1 115 623 1 560 623 1 114 624 1 624 623 1 594 624 1
		 492 625 1 621 625 1 625 596 1 450 626 1 451 627 1 626 627 1 626 525 1 627 528 1 452 628 1
		 627 628 1 628 530 1 453 629 1 628 629 1 629 532 1 454 630 1 629 630 1 630 534 1 455 631 1
		 630 631 1 631 536 1 456 632 1 631 632 1 632 538 1 457 633 1 632 633 1 633 540 1 458 634 1
		 633 634 1 634 542 1 459 635 1 634 635 1 635 544 1 460 636 1 635 636 1 636 546 1 461 637 1
		 636 637 1 637 548 1 462 638 1 637 638 1 638 550 1 463 639 1 638 639 1 639 552 1 464 640 1
		 639 640 1 640 554 1 465 641 1 640 641 1 641 556 1 466 642 1 641 642 1 642 558 1 467 643 1
		 642 643 1 643 524 1 643 626 1 596 560 1 625 623 1 597 561 1 598 564 1 599 566 1 600 568 1
		 601 570 1 602 572 1 603 574 1 616 618 1 604 576 1 619 617 1 605 578 1 606 580 1 607 582 1
		 608 584 1 609 586 1 610 588 1 611 590 1 612 592 1 613 594 1 622 624 1 645 1 0 646 11 1
		 647 11 1 648 10 1 645 644 1 646 644 1 647 644 1 648 644 1 650 2 0 651 12 1 652 12 1
		 650 649 1 651 649 1 652 649 1 646 649 1 654 3 0 655 13 1 656 13 1 654 653 1 655 653 1
		 656 653 1 651 653 1 658 47 0 659 48 1 660 48 1 658 657 1 659 657 1 660 657 1 655 657 1
		 662 5 0 665 14 1 662 661 1 663 661 0 664 661 0 665 661 1 667 6 0;
	setAttr ".ed[1328:1493]" 667 666 1 668 666 0 663 666 0 670 7 0 670 669 1 671 669 0
		 668 669 0 673 8 0 673 672 1 674 672 0 671 672 0 676 9 0 677 15 1 678 15 0 676 675 1
		 677 675 1 678 675 0 674 675 0 680 41 0 681 42 1 682 42 1 680 679 1 681 679 1 682 679 1
		 677 679 1 684 17 1 685 17 1 686 16 1 647 683 1 684 683 1 685 683 1 686 683 1 688 18 1
		 689 18 1 652 687 1 688 687 1 689 687 1 684 687 1 691 19 1 692 19 1 656 690 1 691 690 1
		 692 690 1 688 690 1 694 49 1 695 49 1 660 693 1 694 693 1 695 693 1 691 693 1 696 20 0
		 697 21 0 699 43 1 700 43 1 682 698 1 699 698 1 700 698 1 697 698 1 702 23 1 703 23 1
		 704 22 1 685 701 1 702 701 1 703 701 1 704 701 1 706 24 1 707 1138 1 689 705 1 706 705 1
		 707 705 1 702 705 1 709 25 1 710 25 1 692 708 1 709 708 1 710 708 1 706 708 1 712 50 1
		 713 50 1 695 711 1 712 711 1 713 711 1 709 711 1 714 26 0 715 27 0 717 44 1 718 44 0
		 700 716 1 717 716 1 718 716 1 715 716 1 720 29 1 721 29 1 722 28 1 703 719 1 720 719 1
		 721 719 1 722 719 1 723 30 1 724 1140 1 707 1137 1 723 1139 1 724 1141 1 720 1135 1
		 726 31 1 727 31 1 710 725 1 726 725 1 727 725 1 723 725 1 729 51 0 730 51 1 713 728 1
		 729 728 1 730 728 1 726 728 1 731 32 0 732 33 0 734 35 1 735 35 1 736 34 1 721 733 1
		 734 733 1 735 733 1 736 733 1 738 36 1 739 36 1 724 737 1 738 737 1 739 737 1 734 737 1
		 741 37 1 742 37 1 727 740 1 741 740 1 742 740 1 738 740 1 744 52 0 745 52 0 730 743 1
		 744 743 1 745 743 1 741 743 1 746 38 0 747 39 0 735 748 1 749 748 0 750 748 0 739 751 1
		 752 751 0 749 751 0 742 753 1 754 753 0 752 753 0 755 46 0 757 0 1 758 1 1 645 756 1
		 757 756 1 758 756 1 760 2 1 650 759 1 758 759 1 760 759 1 762 3 1 654 761 1;
	setAttr ".ed[1494:1659]" 760 761 1 762 761 1 764 4 0 765 4 1 764 763 1 658 763 1
		 762 763 1 765 763 1 767 5 1 662 766 1 765 766 1 767 766 1 769 6 1 667 768 1 767 768 1
		 769 768 1 771 7 1 670 770 1 769 770 1 771 770 1 773 8 1 673 772 1 771 772 1 773 772 1
		 775 9 1 676 774 1 773 774 1 775 774 1 777 0 0 777 776 1 680 776 1 775 776 1 757 776 1
		 779 10 1 777 778 1 648 778 1 779 778 1 681 778 1 781 16 1 699 780 1 779 780 1 686 780 1
		 781 780 1 783 22 1 717 782 1 781 782 1 704 782 1 783 782 1 785 45 0 786 28 1 785 784 1
		 783 784 1 722 784 1 786 784 1 788 46 0 789 34 0 788 787 1 786 787 1 736 787 1 789 787 1
		 791 14 1 764 790 1 665 790 1 791 790 1 659 790 1 793 20 1 694 792 1 791 792 1 696 792 1
		 793 792 1 795 26 0 712 794 1 793 794 1 714 794 1 795 794 1 796 38 0 798 433 0 799 47 1
		 800 3 1 798 797 1 799 797 1 658 797 1 800 797 1 802 434 0 803 3 1 802 801 1 800 801 1
		 803 801 1 805 435 0 806 2 1 805 804 1 803 804 1 654 804 1 806 804 1 808 436 0 809 1 1
		 808 807 1 806 807 1 650 807 1 809 807 1 811 437 0 812 0 1 811 810 1 809 810 1 645 810 1
		 812 810 1 814 438 0 815 0 1 814 813 1 812 813 1 815 813 1 817 439 0 818 41 1 817 816 1
		 815 816 1 777 816 1 818 816 1 820 440 0 821 9 1 820 819 1 818 819 1 680 819 1 821 819 1
		 823 441 0 824 8 1 823 822 1 821 822 1 676 822 1 824 822 1 826 442 0 827 8 1 826 825 1
		 824 825 1 827 825 1 829 443 0 830 7 1 829 828 1 827 828 1 673 828 1 830 828 1 832 444 0
		 833 7 1 832 831 1 830 831 1 833 831 1 835 445 0 836 6 1 835 834 1 833 834 1 670 834 1
		 836 834 1 838 446 0 839 6 1 838 837 1 836 837 1 839 837 1 841 447 0 842 5 1 841 840 1
		 839 840 1 667 840 1 842 840 1 844 448 0 845 5 1 844 843 1 842 843 1;
	setAttr ".ed[1660:1825]" 845 843 1 847 449 0 848 4 1 847 846 1 845 846 1 662 846 1
		 848 846 1 850 432 0 850 849 1 848 849 1 764 849 1 799 849 1 14 851 0 696 852 0 851 852 0
		 664 853 0 851 853 0 853 854 1 852 854 1 855 856 1 855 857 1 857 858 1 856 858 1 859 860 1
		 859 861 1 861 862 1 860 862 1 863 864 1 863 865 1 865 866 1 864 866 1 867 868 1 678 869 0
		 867 869 1 869 870 1 868 870 1 20 871 0 714 872 0 871 872 0 871 873 1 873 874 1 872 874 1
		 875 876 1 875 877 1 877 878 1 876 878 1 879 880 1 879 881 1 881 882 1 880 882 1 883 884 1
		 883 885 1 885 886 1 884 886 1 887 888 1 887 889 1 889 890 1 888 890 1 26 891 0 731 892 0
		 891 892 0 891 893 1 893 894 1 892 894 1 895 896 1 895 897 1 897 898 1 896 898 1 899 900 1
		 899 901 1 901 902 1 900 902 1 903 904 1 903 905 1 905 906 1 904 906 1 907 908 1 907 909 1
		 909 910 1 908 910 1 32 911 0 746 912 0 911 912 0 911 913 1 913 914 1 912 914 1 915 916 1
		 915 917 1 917 918 1 916 918 1 919 920 1 919 921 1 921 922 1 920 922 1 923 924 1 923 925 1
		 925 926 1 924 926 1 927 928 1 927 929 1 929 930 1 928 930 1 37 931 0 754 932 0 931 932 0
		 745 933 0 931 933 0 933 1132 1 932 934 1 38 935 0 935 936 1 935 937 1 937 938 1 936 938 1
		 939 940 1 939 941 1 941 942 1 940 942 1 943 944 1 943 945 1 945 946 1 944 946 1 947 948 1
		 947 949 1 949 950 1 948 950 1 951 952 1 951 953 1 953 954 1 952 954 1 39 955 0 955 956 1
		 755 957 0 955 957 0 957 958 1 956 958 1 959 960 1 959 961 1 961 962 1 960 962 1 963 964 1
		 963 965 1 965 966 1 964 966 1 967 968 1 967 969 1 969 970 1 968 970 1 971 972 1 971 973 1
		 973 974 1 972 974 1 975 976 1 975 977 1 977 978 1 976 978 1 979 980 1 979 981 1 981 982 1
		 980 982 1 983 984 1 983 985 1 985 986 1 984 986 1 987 988 1 987 989 1;
	setAttr ".ed[1826:1991]" 989 990 1 988 990 1 991 992 1 991 993 1 993 994 1 992 994 1
		 995 996 1 995 997 1 997 998 1 996 998 1 999 1000 1 999 1001 1 1001 1002 1 1000 1002 1
		 1003 1004 1 1003 1005 1 1005 1006 1 1004 1006 1 1007 1008 1 1007 1009 1 1009 1010 1
		 1008 1010 1 1011 1012 1 1011 1013 1 1013 1014 1 1012 1014 1 1015 1016 1 1015 1017 1
		 1017 1018 1 1016 1018 1 1019 1020 1 1019 1021 1 1021 1022 1 1020 1022 1 1023 1024 1
		 1023 1025 1 1025 1026 1 1024 1026 1 1027 1028 1 1027 1029 1 1029 1030 1 1028 1030 1
		 1031 1032 1 1031 1033 1 1033 1034 1 1032 1034 1 1035 1036 1 1035 1037 1 1037 1038 1
		 1036 1038 1 1039 1040 1 1039 1041 1 1041 1042 1 1040 1042 1 1043 1044 1 1043 1045 1
		 1045 1046 1 1044 1046 1 1047 1048 1 1047 1049 1 1049 1050 1 1048 1050 1 1051 1052 1
		 1051 1053 1 1053 1054 1 1052 1054 1 1055 1056 1 1055 1057 1 1057 1058 1 1056 1058 1
		 1059 1060 1 1059 1061 1 1061 1062 1 1060 1062 1 1063 1064 1 1063 1065 1 1065 1066 1
		 1064 1066 1 1067 1068 1 1067 1069 1 1069 1070 1 1068 1070 1 1071 1072 1 1071 1073 1
		 1073 1074 1 1072 1074 1 1075 1076 1 1075 1077 1 1077 1078 1 1076 1078 1 1079 1080 1
		 1081 1079 1 1081 1082 1 1080 1082 1 1083 1084 1 1085 1083 1 1085 1086 1 1084 1086 1
		 1087 1088 1 1089 1087 1 1089 1090 1 1088 1090 1 1091 1092 1 1093 1091 1 1093 1094 1
		 1092 1094 1 1095 1096 1 1097 1095 1 1097 1098 1 1096 1098 1 1099 1100 1 1101 1099 1
		 1101 1102 1 1100 1102 1 663 1103 0 1103 855 1 853 855 1 661 1104 0 853 1104 0 1103 1104 0
		 668 1105 0 1105 859 1 857 859 1 666 1106 0 857 1106 1 1105 1106 0 1103 1106 0 671 1107 0
		 1107 863 1 861 863 1 669 1108 0 861 1108 1 1107 1108 0 1105 1108 0 674 1109 0 1109 867 1
		 865 867 1 672 1110 0 865 1110 1 1109 1110 0 1107 1110 0 675 1111 0 1109 1111 0 869 1111 0
		 856 854 1 856 875 1 873 875 1 873 854 1 852 871 0 860 858 1 860 879 1 877 879 1 877 858 1
		 864 862 1 864 883 1 881 883 1 881 862 1 868 866 1 868 887 1 885 887 1 885 866 1 15 1112 0
		 869 1112 0 697 1113 0 1112 1113 0 1113 870 1;
	setAttr ".ed[1992:2157]" 21 1114 0 1113 1114 0 889 1114 1 889 870 1 876 874 1
		 876 895 1 893 895 1 893 874 1 872 891 0 880 878 1 880 899 1 897 899 1 897 878 1 884 882 1
		 884 903 1 901 903 1 901 882 1 888 886 1 888 907 1 905 907 1 905 886 1 715 1115 0
		 1114 1115 0 1115 890 1 27 1116 0 1115 1116 0 909 1116 1 909 890 1 896 894 1 896 915 1
		 913 915 1 913 894 1 892 911 0 900 898 1 900 919 1 917 919 1 917 898 1 904 902 1 904 923 1
		 921 923 1 921 902 1 908 906 1 908 927 1 925 927 1 925 906 1 732 1117 0 1116 1117 0
		 1117 910 1 33 1118 0 1117 1118 0 929 1118 1 929 910 1 916 914 1 916 939 1 937 939 1
		 937 914 1 912 935 0 920 918 1 920 943 1 941 943 1 941 918 1 924 922 1 924 947 1 945 947 1
		 945 922 1 928 926 1 928 951 1 949 951 1 949 926 1 747 1119 0 1118 1119 0 1119 930 1
		 1119 955 0 953 955 1 953 930 1 749 1120 0 1120 963 1 961 963 1 748 1121 0 961 1121 1
		 1120 1121 0 750 1122 0 1122 959 1 1122 1121 0 752 1123 0 1123 967 1 965 967 1 751 1124 0
		 965 1124 1 1123 1124 0 1120 1124 0 932 971 1 969 971 1 753 1125 0 969 1125 1 932 1125 0
		 1123 1125 0 52 1126 0 933 1126 0 1126 1093 1 1093 934 1 973 1091 1 973 934 1 940 938 1
		 940 979 1 977 979 1 977 938 1 936 975 1 944 942 1 944 983 1 981 983 1 981 942 1 948 946 1
		 948 987 1 985 987 1 985 946 1 952 950 1 952 991 1 989 991 1 989 950 1 956 954 1 956 995 1
		 993 995 1 993 954 1 46 1127 0 957 1127 0 1127 1081 1 1081 958 1 997 1079 1 997 958 1
		 964 962 1 964 1003 1 1001 1003 1 1001 962 1 960 999 1 968 966 1 968 1007 1 1005 1007 1
		 1005 966 1 972 970 1 972 1011 1 1009 1011 1 1009 970 1 1091 1097 1 1097 974 1 1013 1095 1
		 1013 974 1 980 978 1 980 1019 1 1017 1019 1 1017 978 1 976 1015 1 984 982 1 984 1023 1
		 1021 1023 1 1021 982 1 988 986 1 988 1027 1 1025 1027 1 1025 986 1 992 990 1 992 1031 1
		 1029 1031 1 1029 990 1 996 994 1 996 1035 1;
	setAttr ".ed[2158:2291]" 1033 1035 1 1033 994 1 1079 1085 1 1085 998 1 1037 1083 1
		 1037 998 1 1004 1002 1 1004 1043 1 1041 1043 1 1041 1002 1 1000 1039 1 1008 1006 1
		 1008 1047 1 1045 1047 1 1045 1006 1 1012 1010 1 1012 1051 1 1049 1051 1 1049 1010 1
		 1095 1101 1 1101 1014 1 1053 1099 1 1053 1014 1 1020 1018 1 1020 1059 1 1057 1059 1
		 1057 1018 1 1016 1055 1 1024 1022 1 1024 1063 1 1061 1063 1 1061 1022 1 1028 1026 1
		 1028 1067 1 1065 1067 1 1065 1026 1 1032 1030 1 1032 1071 1 1069 1071 1 1069 1030 1
		 1036 1034 1 1036 1075 1 1073 1075 1 1073 1034 1 1083 1089 1 1089 1038 1 1077 1087 1
		 1077 1038 1 1044 1042 1 1044 1128 1 1040 1128 1 1048 1046 1 1048 1128 1 1052 1050 1
		 1052 1128 1 1100 1054 1 1100 1055 1 1056 1054 1 1056 1128 1 1060 1058 1 1060 1128 1
		 1064 1062 1 1064 1128 1 1068 1066 1 1068 1128 1 1072 1070 1 1072 1128 1 1076 1074 1
		 1076 1128 1 1088 1078 1 1088 1039 1 1040 1078 1 789 1129 0 1127 1129 0 1129 1133 1
		 34 1130 0 1129 1130 0 1130 1122 0 1122 1082 1 1080 959 1 1080 1086 1 960 1086 1 1084 999 1
		 1084 1090 1 1000 1090 1 796 1131 0 1126 1131 0 1131 1094 1 1131 935 0 936 1094 1
		 1092 975 1 1092 1098 1 976 1098 1 1096 1015 1 1096 1102 1 1016 1102 1 1132 934 1
		 931 1132 1 1132 1126 1 1133 1082 1 1130 1133 1 1133 1127 1 1134 724 1 1136 707 1
		 1138 24 1 1140 30 1 1134 1135 0 1135 1136 0 1136 1137 0 1137 1138 0 1138 1139 0 1139 1140 0
		 1140 1141 0 1141 1134 0 1135 1142 1 1136 1143 0 1142 1143 0 1137 1144 1 1143 1144 0
		 1144 1145 1 1142 1145 1 1138 1146 0 1144 1146 0 1139 1147 1 1146 1147 0 1147 1145 1
		 1140 1148 0 1147 1148 0 1141 1149 1 1148 1149 0 1149 1145 1 1134 1150 0 1149 1150 0
		 1150 1142 0;
	setAttr -s 1144 -ch 4607 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -36 0 1296 -1300
		mu 0 4 853 0 1396 849
		f 4 -37 1 1303 -1307
		mu 0 4 851 1 1392 854
		f 4 -38 2 1310 -1314
		mu 0 4 856 4 1388 858
		f 4 -39 3 1317 -1321
		mu 0 4 860 6 1384 862
		f 4 -40 4 1323 -1327
		mu 0 4 870 10 1382 1379
		f 4 -41 5 1328 -1331
		mu 0 4 1337 11 872 1338
		f 4 -42 6 1332 -1335
		mu 0 4 1335 14 1374 1336
		f 4 -43 7 1336 -1339
		mu 0 4 877 16 1370 879
		f 4 -44 8 1342 -1346
		mu 0 4 1331 18 1366 1363
		f 4 -45 9 1349 -1353
		mu 0 4 885 20 1360 887
		f 4 -46 10 1356 -1360
		mu 0 4 894 3 852 891
		f 4 -47 11 1362 -1366
		mu 0 4 892 2 857 895
		f 4 -48 12 1368 -1372
		mu 0 4 896 5 861 898
		f 4 -49 13 1374 -1378
		mu 0 4 899 7 865 901
		f 4 -1675 1676 1677 -1679
		mu 0 4 1255 1256 1257 904
		f 4 -1680 1680 1681 -1683
		mu 0 4 905 12 874 908
		f 4 -1684 1684 1685 -1687
		mu 0 4 909 15 878 911
		f 4 -1688 1688 1689 -1691
		mu 0 4 912 17 882 914
		f 4 -1692 1693 1694 -1696
		mu 0 4 915 19 886 917
		f 4 -51 15 1382 -1386
		mu 0 4 1327 1334 890 920
		f 4 -52 16 1389 -1393
		mu 0 4 926 25 893 923
		f 4 -53 17 1395 -1399
		mu 0 4 924 24 897 927
		f 4 -54 18 1401 -1405
		mu 0 4 928 26 900 930
		f 4 -55 19 1407 -1411
		mu 0 4 931 27 903 933
		f 4 -1699 1699 1700 -1702
		mu 0 4 1258 1259 906 936
		f 4 -1703 1703 1704 -1706
		mu 0 4 937 29 910 940
		f 4 -1707 1707 1708 -1710
		mu 0 4 941 31 913 943
		f 4 -1711 1711 1712 -1714
		mu 0 4 944 32 916 946
		f 4 -1715 1715 1716 -1718
		mu 0 4 947 33 919 949
		f 4 -57 20 1415 -1419
		mu 0 4 1323 1328 922 952
		f 4 -58 21 1422 -1426
		mu 0 4 958 37 925 955
		f 4 2274 2276 2277 -2279
		mu 0 4 1410 1411 1412 959
		f 4 -60 23 1434 -1438
		mu 0 4 960 38 932 962
		f 4 -61 24 1440 -1444
		mu 0 4 963 39 935 965
		f 4 -1721 1721 1722 -1724
		mu 0 4 1260 1261 938 968
		f 4 -1725 1725 1726 -1728
		mu 0 4 969 41 942 972
		f 4 -1729 1729 1730 -1732
		mu 0 4 973 43 945 975
		f 4 -1733 1733 1734 -1736
		mu 0 4 976 44 948 978
		f 4 -1737 1737 1738 -1740
		mu 0 4 979 45 951 981
		f 4 106 108 -111 -112
		mu 0 4 59 60 61 62
		f 4 -64 26 1449 -1453
		mu 0 4 987 49 957 984
		f 5 -65 27 2260 1455 -1459
		mu 0 5 985 48 1402 961 988
		f 4 -66 28 1461 -1465
		mu 0 4 989 50 964 991
		f 4 -67 29 1467 -1471
		mu 0 4 992 51 967 994
		f 4 -1743 1743 1744 -1746
		mu 0 4 1262 1263 970 997
		f 4 -1747 1747 1748 -1750
		mu 0 4 998 53 974 1001
		f 4 -1751 1751 1752 -1754
		mu 0 4 1002 55 977 1004
		f 4 -1755 1755 1756 -1758
		mu 0 4 1005 56 980 1007
		f 4 -1759 1759 1760 -1762
		mu 0 4 1008 57 983 1010
		f 4 110 113 -116 -117
		mu 0 4 62 61 74 75
		f 4 -70 30 1473 -1476
		mu 0 4 1312 1304 986 1313
		f 4 -71 31 1476 -1479
		mu 0 4 1310 63 990 1311
		f 4 -72 32 1479 -1482
		mu 0 4 1307 65 993 1308
		f 4 -1765 2255 2254 -1769
		mu 0 4 1264 1265 1299 1023
		f 4 -1771 1771 1772 -1774
		mu 0 4 1029 69 999 1026
		f 4 -1775 1775 1776 -1778
		mu 0 4 1027 68 1003 1030
		f 4 -1779 1779 1780 -1782
		mu 0 4 1031 70 1006 1033
		f 4 -1783 1783 1784 -1786
		mu 0 4 1034 71 1009 1036
		f 4 -1787 1787 1788 -1790
		mu 0 4 1037 72 1012 1039
		f 4 -1792 1793 1794 -1796
		mu 0 4 1040 1267 1268 1042
		f 4 -1797 1797 1798 -1800
		mu 0 4 1049 77 1015 1046
		f 4 -1801 1801 1802 -1804
		mu 0 4 1047 76 1019 1050
		f 4 -1805 1805 1806 -1808
		mu 0 4 1051 78 1022 1053
		f 4 -1809 1809 1810 -1812
		mu 0 4 1054 79 1025 1056
		f 4 -1813 1813 1814 -1816
		mu 0 4 1062 82 1028 1059
		f 4 -1817 1817 1818 -1820
		mu 0 4 1060 81 1032 1063
		f 4 -1821 1821 1822 -1824
		mu 0 4 1064 83 1035 1066
		f 4 -1825 1825 1826 -1828
		mu 0 4 1067 84 1038 1069
		f 4 -1829 1829 1830 -1832
		mu 0 4 1070 85 1041 1072
		f 4 -1833 1833 1834 -1836
		mu 0 4 1073 86 1045 1075
		f 4 -1837 1837 1838 -1840
		mu 0 4 1081 90 1048 1078
		f 4 -1841 1841 1842 -1844
		mu 0 4 1079 89 1052 1082
		f 4 -1845 1845 1846 -1848
		mu 0 4 1083 91 1055 1085
		f 4 -1849 1849 1850 -1852
		mu 0 4 1086 92 1058 1088
		f 4 -1853 1853 1854 -1856
		mu 0 4 1094 95 1061 1091
		f 4 -1857 1857 1858 -1860
		mu 0 4 1092 94 1065 1095
		f 4 -1861 1861 1862 -1864
		mu 0 4 1096 96 1068 1098
		f 4 -1865 1865 1866 -1868
		mu 0 4 1099 97 1071 1101
		f 4 -1869 1869 1870 -1872
		mu 0 4 1102 98 1074 1104
		f 4 -1873 1873 1874 -1876
		mu 0 4 1105 99 1077 1107
		f 4 1484 -1293 1485 -1488
		mu 0 4 1112 1398 1395 1110
		f 4 1488 -1301 1489 -1492
		mu 0 4 1114 1394 1391 1113
		f 4 1492 -1308 1493 -1496
		mu 0 4 1116 1390 1387 1115
		f 4 1497 -1497 1498 -1502
		mu 0 4 1119 1357 1354 1117
		f 4 1502 -1322 1503 -1506
		mu 0 4 1121 11 1380 1120
		f 4 1506 -1328 1507 -1510
		mu 0 4 1123 1378 872 1122
		f 4 1510 -1332 1511 -1514
		mu 0 4 1125 1376 1373 1124
		f 4 1514 -1336 1515 -1518
		mu 0 4 1127 1372 1369 1126
		f 4 1518 -1340 1519 -1522
		mu 0 4 1129 1368 1364 1128
		f 4 1483 -1523 1523 -1527
		mu 0 4 1111 1352 1350 1130
		f 4 -1877 1877 1878 -1880
		mu 0 4 1134 102 1080 1132
		f 4 -1881 1881 1882 -1884
		mu 0 4 1133 101 1084 1135
		f 4 -1885 1885 1886 -1888
		mu 0 4 1136 103 1087 1137
		f 4 -1889 1889 1890 -1892
		mu 0 4 1138 104 1090 1139
		f 4 -1893 1893 1894 -1896
		mu 0 4 1141 107 1093 1142
		f 4 -1897 1897 1898 -1900
		mu 0 4 1143 106 1097 1144
		f 4 -1901 1901 1902 -1904
		mu 0 4 1145 108 1100 1146
		f 4 -1905 1905 1906 -1908
		mu 0 4 1147 109 1103 1148
		f 4 -1909 1909 1910 -1912
		mu 0 4 1149 110 1106 1150
		f 4 -1913 1913 1914 -1916
		mu 0 4 1151 111 1109 1152
		f 4 -86 83 1528 -1532
		mu 0 4 889 22 1351 1154
		f 4 -87 -1381 1533 -1537
		mu 0 4 1157 35 921 1156
		f 4 -89 -1414 1538 -1542
		mu 0 4 1159 47 953 1158
		f 4 -91 -1543 1544 -1548
		mu 0 4 1162 115 1161 1160
		f 4 -93 -1549 1550 -1554
		mu 0 4 1303 1306 1164 1163
		f 4 -1917 -1918 1918 -1920
		mu 0 4 1167 88 1044 1166
		f 4 -1921 -1922 1922 -1924
		mu 0 4 1169 100 1076 1168
		f 4 -1925 -1926 1926 -1928
		mu 0 4 1153 112 1108 1170
		f 4 -97 94 1555 -1559
		mu 0 4 864 8 1355 1171
		f 4 -98 -1373 1560 -1564
		mu 0 4 1174 28 902 1173
		f 4 -100 -1406 1565 -1569
		mu 0 4 1176 40 934 1175
		f 4 -120 121 123 -125
		mu 0 4 116 117 1401 1399
		f 4 -127 124 128 -130
		mu 0 4 120 116 1399 121
		f 4 -1929 -1930 1930 -1932
		mu 0 4 1179 80 1024 1177
		f 4 -1933 -1934 1934 -1936
		mu 0 4 1181 93 1057 1180
		f 4 -1937 -1938 1938 -1940
		mu 0 4 1140 105 1089 1182
		f 5 25 1414 105 -107 -105
		mu 0 5 1324 954 47 60 59
		f 5 91 1542 107 -109 -106
		mu 0 5 47 1161 115 61 60
		f 5 -1446 -63 104 111 -110
		mu 0 5 1320 1319 1324 59 62
		f 5 93 1548 112 -114 -108
		mu 0 5 115 1164 1306 74 61
		f 5 -1483 -35 114 115 -113
		mu 0 5 1306 1305 1315 75 74
		f 5 -1473 -69 109 116 -115
		mu 0 5 1315 1314 1320 62 75
		f 5 -1439 -102 117 119 -119
		mu 0 5 52 966 40 117 116
		f 5 99 1564 120 -122 -118
		mu 0 5 40 1176 1326 1401 117
		f 5 61 1444 122 -124 -121
		mu 0 5 1358 1321 1322 119 118
		f 5 -1466 -104 118 126 -126
		mu 0 5 1318 995 52 116 120
		f 5 67 1471 127 -129 -123
		mu 0 5 1322 1316 1302 1400 119
		f 5 -1570 -103 125 129 -128
		mu 0 5 1349 1301 1318 120 121
		f 4 -220 130 132 -132
		mu 0 4 122 123 124 125
		f 4 220 999 -135 -131
		mu 0 4 123 126 127 124
		f 4 221 135 -137 -134
		mu 0 4 128 129 130 131
		f 4 -223 131 137 964
		mu 0 4 132 122 125 133
		f 4 -133 138 167 -140
		mu 0 4 125 124 134 135
		f 4 134 1001 1000 -139
		mu 0 4 124 127 136 134
		f 4 136 143 163 -142
		mu 0 4 131 130 137 138
		f 4 -138 139 168 962
		mu 0 4 133 125 135 139
		f 9 -141 146 148 189 183 176 172 -207 -148
		mu 0 9 140 141 142 143 144 145 146 147 148
		f 4 142 1005 -151 -147
		mu 0 4 141 149 150 142
		f 8 144 151 205 -170 -181 -188 -153 -150
		mu 0 8 151 152 153 154 155 156 157 158
		f 5 207 209 206 153 -206
		mu 0 5 153 159 148 147 154
		f 4 200 -149 154 156
		mu 0 4 160 143 142 161
		f 4 150 1007 -159 -155
		mu 0 4 142 150 162 161
		f 4 152 199 -199 -158
		mu 0 4 158 157 163 164
		f 4 -154 155 160 -160
		mu 0 4 154 147 165 166
		f 4 -164 161 -145 -163
		mu 0 4 138 137 152 151
		f 4 -1001 1003 -143 -165
		mu 0 4 134 136 149 141
		f 4 -168 164 140 -167
		mu 0 4 135 134 141 140
		f 6 -961 -169 166 145 208 -162
		mu 0 6 137 139 135 140 167 152
		f 4 1008 -157 158 1009
		mu 0 4 168 160 161 162
		f 4 -174 169 159 -171
		mu 0 4 169 155 154 166
		f 4 -172 -175 170 -161
		mu 0 4 165 170 169 166
		f 4 -173 -176 171 -156
		mu 0 4 147 146 170 165
		f 4 -185 180 177 -182
		mu 0 4 171 156 155 172
		f 4 1020 -183 -1019 1021
		mu 0 4 173 174 175 176
		f 4 179 -184 -187 182
		mu 0 4 174 145 144 175
		f 4 -191 187 193 -189
		mu 0 4 177 157 156 178
		f 4 1014 -197 -1013 1015
		mu 0 4 179 180 181 182
		f 4 195 -190 -193 196
		mu 0 4 180 144 143 181
		f 4 175 201 173 174
		mu 0 4 170 146 155 169
		f 4 -180 -1021 1023 -203
		mu 0 4 145 174 173 183
		f 4 -177 202 1022 -202
		mu 0 4 146 145 183 155
		f 4 186 203 1019 1018
		mu 0 4 175 144 184 176
		f 4 -196 -1015 1017 -204
		mu 0 4 144 180 179 184
		f 4 192 204 1013 1012
		mu 0 4 181 143 185 182
		f 4 -201 -1009 1011 -205
		mu 0 4 143 160 168 185
		f 4 -209 210 -208 -152
		mu 0 4 152 167 159 153
		f 4 -214 -216 217 -219
		mu 0 4 186 187 188 189
		f 4 -211 211 213 -213
		mu 0 4 159 167 187 186
		f 4 -146 214 215 -212
		mu 0 4 167 140 188 187
		f 4 147 216 -218 -215
		mu 0 4 140 148 189 188
		f 4 -210 212 218 -217
		mu 0 4 148 159 186 189
		f 4 226 -226 -225 223
		mu 0 4 190 191 192 193
		f 4 224 229 996 -228
		mu 0 4 193 192 194 195
		f 4 228 232 -232 -231
		mu 0 4 196 197 198 199
		f 4 967 -235 -227 233
		mu 0 4 200 201 191 190
		f 4 237 -237 -236 225
		mu 0 4 191 202 203 192
		f 4 235 -992 994 -230
		mu 0 4 192 203 204 194
		f 4 238 -242 -241 -233
		mu 0 4 197 205 206 198
		f 4 969 -243 -238 234
		mu 0 4 201 207 202 191
		f 9 251 250 -250 -249 -248 -247 -246 -245 243
		mu 0 9 208 209 210 211 212 213 214 215 216
		f 4 244 254 990 -253
		mu 0 4 216 215 217 218
		f 8 253 261 260 259 258 -258 -257 -256
		mu 0 8 219 220 221 222 223 224 225 226
		f 5 257 -265 -251 -264 -263
		mu 0 5 225 224 210 209 227
		f 4 -268 -267 245 -266
		mu 0 4 228 229 215 214
		f 4 266 269 988 -255
		mu 0 4 215 229 230 217
		f 4 268 271 -271 -262
		mu 0 4 220 231 232 221
		f 4 274 -274 -273 264
		mu 0 4 224 233 234 210
		f 4 276 255 -276 241
		mu 0 4 205 219 226 206
		f 4 277 252 992 991
		mu 0 4 203 216 218 204
		f 4 278 -244 -278 236
		mu 0 4 202 208 216 203
		f 6 275 -281 -280 -279 242 968
		mu 0 6 206 226 235 208 202 207
		f 4 986 -270 267 -984
		mu 0 4 236 230 229 228
		f 4 283 -275 -259 282
		mu 0 4 237 233 224 223
		f 4 273 -284 285 284
		mu 0 4 234 233 237 238
		f 4 272 -285 286 249
		mu 0 4 210 234 238 211
		f 4 289 -289 -260 287
		mu 0 4 239 240 223 222
		f 4 974 973 291 -972
		mu 0 4 241 242 243 244
		f 4 -292 294 247 -294
		mu 0 4 244 243 213 212
		f 4 297 -297 -261 295
		mu 0 4 245 246 222 221
		f 4 980 979 299 -978
		mu 0 4 247 248 249 250
		f 4 -300 302 246 -302
		mu 0 4 250 249 214 213
		f 4 -286 -283 -304 -287
		mu 0 4 238 237 223 211
		f 4 304 972 971 293
		mu 0 4 212 251 241 244
		f 4 303 -971 -305 248
		mu 0 4 211 223 251 212
		f 4 -974 976 -306 -295
		mu 0 4 243 242 252 213
		f 4 305 978 977 301
		mu 0 4 213 252 247 250
		f 4 -980 982 -307 -303
		mu 0 4 249 248 253 214
		f 4 306 984 983 265
		mu 0 4 214 253 236 228
		f 4 256 262 -308 280
		mu 0 4 226 225 227 235
		f 4 311 -311 309 308
		mu 0 4 254 255 256 257
		f 4 313 -309 -313 307
		mu 0 4 227 254 257 235
		f 4 312 -310 -315 279
		mu 0 4 235 257 256 208
		f 4 314 310 -316 -252
		mu 0 4 208 256 255 209
		f 4 315 -312 -314 263
		mu 0 4 209 255 254 227
		f 4 738 740 742 -744
		mu 0 4 258 259 260 261
		f 4 745 747 748 -741
		mu 0 4 259 262 263 260
		f 4 646 337 734 733
		mu 0 4 264 265 266 267
		f 4 319 338 732 -338
		mu 0 4 265 268 269 266
		f 4 320 339 730 -339
		mu 0 4 832 270 271 824
		f 4 321 340 728 -340
		mu 0 4 270 272 273 271
		f 4 322 341 726 -341
		mu 0 4 272 274 275 273
		f 4 323 342 724 -342
		mu 0 4 274 276 277 275
		f 4 324 343 722 -343
		mu 0 4 276 278 279 277
		f 4 325 336 720 -344
		mu 0 4 831 280 281 826
		f 3 -317 -345 345
		mu 0 3 282 280 283
		f 3 -318 -346 346
		mu 0 3 284 282 283
		f 4 -647 -319 -347 347
		mu 0 4 265 264 284 283
		f 3 -320 -348 348
		mu 0 3 268 265 283
		f 3 -321 -349 349
		mu 0 3 270 832 830
		f 3 -322 -350 350
		mu 0 3 272 270 830
		f 3 -323 -351 351
		mu 0 3 274 272 830
		f 3 -324 -352 352
		mu 0 3 276 274 830
		f 3 -325 -353 353
		mu 0 3 278 276 830
		f 3 -326 -354 344
		mu 0 3 280 831 283
		f 4 326 355 -357 -355
		mu 0 4 285 286 794 786
		f 4 327 357 -359 -356
		mu 0 4 286 289 793 794
		f 4 642 359 -641 643
		mu 0 4 291 292 293 294
		f 4 329 361 -363 -360
		mu 0 4 292 295 296 293
		f 4 330 363 -365 -362
		mu 0 4 295 297 790 296
		f 4 331 365 -367 -364
		mu 0 4 297 299 789 790
		f 4 332 367 -369 -366
		mu 0 4 299 301 788 789
		f 4 333 369 -371 -368
		mu 0 4 301 303 787 788
		f 4 334 371 -373 -370
		mu 0 4 303 305 785 787
		f 4 335 354 -374 -372
		mu 0 4 305 285 786 785
		f 3 362 -376 -375
		mu 0 3 753 792 307
		f 4 517 516 -379 -515
		mu 0 4 308 309 310 755
		f 4 632 514 -631 633
		mu 0 4 312 308 755 313
		f 4 381 627 698 -402
		mu 0 4 314 315 316 317
		f 4 756 758 760 -762
		mu 0 4 318 319 320 321
		f 4 763 765 766 -759
		mu 0 4 319 322 323 320
		f 4 384 403 712 -403
		mu 0 4 324 325 326 327
		f 4 385 404 710 -404
		mu 0 4 823 328 329 815
		f 4 386 405 708 -405
		mu 0 4 328 330 331 329
		f 4 387 406 706 -406
		mu 0 4 330 332 333 331
		f 4 388 407 704 -407
		mu 0 4 332 334 335 333
		f 4 389 408 702 -408
		mu 0 4 334 336 337 335
		f 4 390 401 700 -409
		mu 0 4 822 314 317 817
		f 4 -626 -382 -410 410
		mu 0 4 338 315 314 339
		f 3 -383 -411 411
		mu 0 3 340 338 339
		f 3 -384 -412 412
		mu 0 3 324 340 339
		f 3 -385 -413 413
		mu 0 3 325 324 339
		f 3 -386 -414 414
		mu 0 3 328 823 821
		f 3 -387 -415 415
		mu 0 3 330 328 821
		f 3 -388 -416 416
		mu 0 3 332 330 821
		f 3 -389 -417 417
		mu 0 3 334 332 821
		f 3 -390 -418 418
		mu 0 3 336 334 821
		f 3 -391 -419 409
		mu 0 3 314 822 339
		f 4 391 631 630 -420
		mu 0 4 341 342 754 311
		f 4 392 421 -423 -421
		mu 0 4 343 344 783 784
		f 4 393 423 -425 -422
		mu 0 4 344 347 782 783
		f 4 394 425 -427 -424
		mu 0 4 347 349 781 782
		f 4 395 427 -429 -426
		mu 0 4 349 351 780 781
		f 4 396 429 -431 -428
		mu 0 4 351 353 779 780
		f 4 397 431 -433 -430
		mu 0 4 353 355 778 779
		f 4 398 433 -435 -432
		mu 0 4 355 357 776 778
		f 4 399 435 -437 -434
		mu 0 4 357 359 777 776
		f 4 400 419 378 -436
		mu 0 4 359 341 311 777
		f 4 434 438 519 -438
		mu 0 4 356 358 360 361
		f 4 436 -517 518 -439
		mu 0 4 358 807 805 360
		f 4 356 440 -442 -440
		mu 0 4 288 287 362 363
		f 4 358 442 -444 -441
		mu 0 4 287 290 364 362
		f 4 368 445 -447 -445
		mu 0 4 300 302 365 366
		f 4 370 447 -449 -446
		mu 0 4 302 304 367 365
		f 4 372 449 -451 -448
		mu 0 4 304 813 811 367
		f 4 373 439 -452 -450
		mu 0 4 306 288 363 368
		f 4 512 452 -511 513
		mu 0 4 369 346 370 371
		f 4 422 454 -456 -453
		mu 0 4 346 345 372 370
		f 4 424 456 -458 -455
		mu 0 4 345 348 373 372
		f 4 426 458 -460 -457
		mu 0 4 348 812 810 373
		f 4 428 460 -462 -459
		mu 0 4 350 352 375 374
		f 4 430 462 -464 -461
		mu 0 4 352 354 376 375
		f 4 432 464 -466 -463
		mu 0 4 354 356 377 376
		f 4 437 520 -467 -465
		mu 0 4 356 361 378 377
		f 4 441 468 -470 -468
		mu 0 4 363 362 379 380
		f 4 443 470 -472 -469
		mu 0 4 362 364 381 379
		f 4 446 473 -475 -473
		mu 0 4 366 365 382 383
		f 4 448 475 -477 -474
		mu 0 4 365 367 384 382
		f 4 450 477 -479 -476
		mu 0 4 367 811 809 384
		f 4 451 467 -480 -478
		mu 0 4 368 363 380 385
		f 4 510 480 -510 511
		mu 0 4 371 370 386 387
		f 4 455 482 -484 -481
		mu 0 4 370 372 388 386
		f 4 457 484 -486 -483
		mu 0 4 372 373 389 388
		f 4 459 486 -488 -485
		mu 0 4 373 810 808 389
		f 4 461 488 -490 -487
		mu 0 4 374 375 391 390
		f 4 463 490 -492 -489
		mu 0 4 375 376 392 391
		f 4 465 492 -494 -491
		mu 0 4 376 377 393 392
		f 4 466 522 -495 -493
		mu 0 4 377 378 394 393
		f 4 469 496 573 -496
		mu 0 4 380 379 395 396
		f 4 471 497 572 -497
		mu 0 4 379 381 397 395
		f 4 474 499 577 -499
		mu 0 4 383 382 398 399
		f 4 476 500 576 -500
		mu 0 4 382 384 400 398
		f 4 478 501 575 -501
		mu 0 4 384 809 802 400
		f 4 479 495 574 -502
		mu 0 4 385 380 396 401
		f 4 509 502 568 567
		mu 0 4 387 386 402 403
		f 4 483 503 566 -503
		mu 0 4 386 388 404 402
		f 4 485 504 565 -504
		mu 0 4 388 389 405 404
		f 4 487 505 584 -505
		mu 0 4 389 808 801 405
		f 4 489 506 583 -506
		mu 0 4 390 391 407 406
		f 4 491 507 582 -507
		mu 0 4 391 392 408 407
		f 4 493 508 581 -508
		mu 0 4 392 393 409 408
		f 4 494 523 580 -509
		mu 0 4 393 394 410 409
		f 4 524 -568 570 569
		mu 0 4 411 387 403 412
		f 4 540 -542 -525 542
		mu 0 4 413 414 387 411
		f 4 636 546 -635 637
		mu 0 4 415 416 417 418
		f 4 549 551 -553 -547
		mu 0 4 416 803 804 417
		f 4 -555 -552 556 -558
		mu 0 4 421 420 419 422
		f 4 -560 557 561 -563
		mu 0 4 423 421 422 424
		f 4 -564 562 564 -522
		mu 0 4 394 423 424 425
		f 4 -524 521 537 579
		mu 0 4 410 394 425 426
		f 4 481 -570 571 -498
		mu 0 4 381 411 412 397
		f 4 453 -526 -482 -471
		mu 0 4 364 427 411 381
		f 4 379 -527 -454 -443
		mu 0 4 290 428 427 364
		f 4 640 376 -639 641
		mu 0 4 751 752 429 430
		f 4 362 377 -529 -377
		mu 0 4 752 814 806 429
		f 4 -531 -378 364 -530
		mu 0 4 432 431 791 298
		f 4 -533 529 366 -532
		mu 0 4 433 432 298 300
		f 4 -535 531 444 -534
		mu 0 4 434 433 300 366
		f 4 -537 533 472 -536
		mu 0 4 425 434 366 383
		f 4 -538 535 498 578
		mu 0 4 426 425 383 399
		f 4 -514 -512 541 -540
		mu 0 4 369 371 387 414
		f 4 526 538 -543 525
		mu 0 4 427 428 413 411
		f 4 638 543 -637 639
		mu 0 4 430 429 416 415
		f 4 -633 635 634 -546
		mu 0 4 308 312 418 417
		f 4 528 548 -550 -544
		mu 0 4 429 806 803 416
		f 4 -518 545 552 -551
		mu 0 4 309 308 417 804
		f 4 -519 550 554 -554
		mu 0 4 360 805 420 421
		f 4 530 555 -557 -549
		mu 0 4 431 432 422 419
		f 4 -520 553 559 -559
		mu 0 4 361 360 421 423
		f 4 532 560 -562 -556
		mu 0 4 432 433 424 422
		f 4 -521 558 563 -523
		mu 0 4 378 361 423 394
		f 4 534 536 -565 -561
		mu 0 4 433 434 425 424
		f 4 -627 629 924 -587
		mu 0 4 757 756 437 438
		f 4 -590 586 926 -589
		mu 0 4 775 757 438 440
		f 4 -592 588 928 -591
		mu 0 4 774 775 440 442
		f 4 -594 590 930 -593
		mu 0 4 773 774 442 444
		f 4 -596 592 932 -595
		mu 0 4 772 773 444 446
		f 4 -598 594 934 -597
		mu 0 4 771 772 446 448
		f 4 -600 596 936 -599
		mu 0 4 770 771 448 450
		f 4 -602 598 937 -601
		mu 0 4 769 770 450 452
		f 4 -604 600 918 -603
		mu 0 4 767 769 452 454
		f 4 -605 602 920 -586
		mu 0 4 768 767 454 456
		f 4 -608 605 940 -607
		mu 0 4 766 750 459 460
		f 4 -610 606 942 -609
		mu 0 4 765 766 460 462
		f 4 -612 608 944 -611
		mu 0 4 764 765 462 464
		f 4 -614 610 946 -613
		mu 0 4 763 764 464 466
		f 4 -616 612 948 -615
		mu 0 4 762 763 466 468
		f 4 -618 614 950 -617
		mu 0 4 761 762 468 470
		f 4 -620 616 952 -619
		mu 0 4 760 761 470 472
		f 4 -622 618 954 -621
		mu 0 4 759 760 472 474
		f 4 -624 620 956 -623
		mu 0 4 758 759 474 476
		f 4 -625 622 958 957
		mu 0 4 477 758 476 478
		f 4 768 761 770 -772
		mu 0 4 479 318 321 480
		f 4 -630 -588 585 922
		mu 0 4 437 756 768 456
		f 4 -632 628 420 380
		mu 0 4 754 342 343 784
		f 4 515 -634 -381 -513
		mu 0 4 369 312 313 346
		f 4 -636 -516 539 547
		mu 0 4 418 312 369 414
		f 4 544 -638 -548 -541
		mu 0 4 413 415 418 414
		f 4 527 -640 -545 -539
		mu 0 4 428 430 415 413
		f 4 360 -642 -528 -380
		mu 0 4 290 751 430 428
		f 4 328 -644 -361 -358
		mu 0 4 289 291 294 793
		f 4 -645 -958 959 -606
		mu 0 4 750 477 478 459
		f 4 750 -753 753 -748
		mu 0 4 262 481 482 263
		f 4 -651 648 603 -650
		mu 0 4 483 484 451 453
		f 4 -653 649 604 -652
		mu 0 4 485 483 453 455
		f 4 -655 651 587 -654
		mu 0 4 486 485 455 436
		f 4 -657 653 626 -656
		mu 0 4 487 486 436 435
		f 4 -659 655 589 -658
		mu 0 4 818 487 435 820
		f 4 -661 657 591 -660
		mu 0 4 489 488 439 441
		f 4 -663 659 593 -662
		mu 0 4 490 489 441 443
		f 4 -665 661 595 -664
		mu 0 4 491 490 443 445
		f 4 -667 663 597 -666
		mu 0 4 492 491 445 447
		f 4 -669 665 599 -668
		mu 0 4 816 492 447 819
		f 4 -670 667 601 -649
		mu 0 4 484 493 449 451
		f 4 -673 670 607 -672
		mu 0 4 494 495 458 457
		f 4 -675 671 609 -674
		mu 0 4 496 494 457 461
		f 4 -677 673 611 -676
		mu 0 4 827 496 461 829
		f 4 -679 675 613 -678
		mu 0 4 498 497 463 465
		f 4 -681 677 615 -680
		mu 0 4 499 498 465 467
		f 4 -683 679 617 -682
		mu 0 4 500 499 467 469
		f 4 -685 681 619 -684
		mu 0 4 501 500 469 471
		f 4 -687 683 621 -686
		mu 0 4 825 501 471 828
		f 4 -689 685 623 -688
		mu 0 4 503 502 473 475
		f 4 -691 687 624 647
		mu 0 4 504 503 475 749
		f 4 -692 -648 644 -671
		mu 0 4 495 504 749 458
		f 4 -695 692 652 -694
		mu 0 4 505 506 483 485
		f 4 -697 693 654 -696
		mu 0 4 316 505 485 486
		f 4 -699 695 656 -698
		mu 0 4 317 316 486 487
		f 4 -701 697 658 -700
		mu 0 4 817 317 487 818
		f 4 -703 699 660 -702
		mu 0 4 335 337 488 489
		f 4 -705 701 662 -704
		mu 0 4 333 335 489 490
		f 4 -707 703 664 -706
		mu 0 4 331 333 490 491
		f 4 -709 705 666 -708
		mu 0 4 329 331 491 492
		f 4 -711 707 668 -710
		mu 0 4 815 329 492 816
		f 4 -713 709 669 -712
		mu 0 4 327 326 493 484
		f 4 -714 711 650 -693
		mu 0 4 506 327 484 483
		f 4 -717 714 672 -716
		mu 0 4 507 508 495 494
		f 4 -719 715 674 -718
		mu 0 4 281 507 494 496
		f 4 -721 717 676 -720
		mu 0 4 826 281 496 827
		f 4 -723 719 678 -722
		mu 0 4 277 279 497 498
		f 4 -725 721 680 -724
		mu 0 4 275 277 498 499
		f 4 -727 723 682 -726
		mu 0 4 273 275 499 500
		f 4 -729 725 684 -728
		mu 0 4 271 273 500 501
		f 4 -731 727 686 -730
		mu 0 4 824 271 501 825
		f 4 -733 729 688 -732
		mu 0 4 266 269 502 503
		f 4 -735 731 690 689
		mu 0 4 267 266 503 504
		f 4 -736 -690 691 -715
		mu 0 4 508 267 504 495
		f 4 316 737 -739 -737
		mu 0 4 280 282 259 258
		f 4 718 741 -743 -740
		mu 0 4 507 281 261 260
		f 4 -337 736 743 -742
		mu 0 4 281 280 258 261
		f 4 317 744 -746 -738
		mu 0 4 282 284 262 259
		f 4 716 739 -749 -747
		mu 0 4 508 507 260 263
		f 4 318 749 -751 -745
		mu 0 4 284 264 481 262
		f 4 -734 751 752 -750
		mu 0 4 264 267 482 481
		f 4 735 746 -754 -752
		mu 0 4 267 508 263 482
		f 4 382 755 -757 -755
		mu 0 4 338 340 319 318
		f 4 694 759 -761 -758
		mu 0 4 506 505 321 320
		f 4 383 762 -764 -756
		mu 0 4 340 324 322 319
		f 4 402 764 -766 -763
		mu 0 4 324 327 323 322
		f 4 713 757 -767 -765
		mu 0 4 327 506 320 323
		f 4 625 754 -769 -768
		mu 0 4 315 338 318 479
		f 4 696 769 -771 -760
		mu 0 4 505 316 480 321
		f 4 -628 767 771 -770
		mu 0 4 316 315 479 480
		f 4 -566 772 774 -774
		mu 0 4 404 405 509 510
		f 4 -567 773 776 -776
		mu 0 4 402 404 510 511
		f 4 -569 775 778 -778
		mu 0 4 403 402 511 512
		f 4 -571 777 780 -780
		mu 0 4 412 403 512 513
		f 4 -572 779 782 -782
		mu 0 4 397 412 513 514
		f 4 -573 781 784 -784
		mu 0 4 395 397 514 515
		f 4 -574 783 786 -786
		mu 0 4 396 395 515 516
		f 4 -575 785 788 -788
		mu 0 4 401 396 516 517
		f 4 -576 787 790 -790
		mu 0 4 400 802 800 518
		f 4 -577 789 792 -792
		mu 0 4 398 400 518 519
		f 4 -578 791 794 -794
		mu 0 4 399 398 519 520
		f 4 -579 793 796 -796
		mu 0 4 426 399 520 521
		f 4 -580 795 798 -798
		mu 0 4 410 426 521 522
		f 4 -581 797 800 -800
		mu 0 4 409 410 522 523
		f 4 -582 799 802 -802
		mu 0 4 408 409 523 524
		f 4 -583 801 804 -804
		mu 0 4 407 408 524 525
		f 4 -584 803 806 -806
		mu 0 4 406 407 525 526
		f 4 -585 805 807 -773
		mu 0 4 405 801 799 509
		f 4 -775 808 810 -810
		mu 0 4 510 509 527 528
		f 4 -777 809 812 -812
		mu 0 4 511 510 528 529
		f 4 -779 811 814 -814
		mu 0 4 512 511 529 530
		f 4 -781 813 816 -816
		mu 0 4 513 512 530 531
		f 4 -783 815 818 -818
		mu 0 4 514 513 531 532
		f 4 -785 817 820 -820
		mu 0 4 515 514 532 533
		f 4 -787 819 822 -822
		mu 0 4 516 515 533 534
		f 4 -789 821 824 -824
		mu 0 4 517 516 534 535
		f 4 -791 823 826 -826
		mu 0 4 518 800 797 536
		f 4 -793 825 828 -828
		mu 0 4 519 518 536 537
		f 4 -795 827 830 -830
		mu 0 4 520 519 537 538
		f 4 -797 829 832 -832
		mu 0 4 521 520 538 539
		f 4 -799 831 834 -834
		mu 0 4 522 521 539 540
		f 4 -801 833 836 -836
		mu 0 4 523 522 540 541
		f 4 -803 835 838 -838
		mu 0 4 524 523 541 542
		f 4 -805 837 840 -840
		mu 0 4 525 524 542 543
		f 4 -807 839 842 -842
		mu 0 4 526 525 543 544
		f 4 -808 841 843 -809
		mu 0 4 509 799 795 527
		f 4 -811 844 915 -846
		mu 0 4 528 527 713 714
		f 4 -813 845 898 -847
		mu 0 4 529 528 714 730
		f 4 -815 846 899 -848
		mu 0 4 530 529 730 729
		f 4 -817 847 900 -849
		mu 0 4 531 530 729 728
		f 4 -819 848 901 -850
		mu 0 4 532 531 728 727
		f 4 -821 849 902 -851
		mu 0 4 533 532 727 726
		f 4 -823 850 903 -852
		mu 0 4 534 533 726 725
		f 4 -825 851 904 -853
		mu 0 4 535 534 725 724
		f 4 -827 852 905 -854
		mu 0 4 536 797 798 723
		f 4 -829 853 906 -855
		mu 0 4 537 536 723 722
		f 4 -831 854 907 -856
		mu 0 4 538 537 722 721
		f 4 -833 855 908 -857
		mu 0 4 539 538 721 720
		f 4 -835 856 909 -858
		mu 0 4 540 539 720 719
		f 4 -837 857 910 -859
		mu 0 4 541 540 719 718
		f 4 -839 858 911 -860
		mu 0 4 542 541 718 717
		f 4 -841 859 912 -861
		mu 0 4 543 542 717 716
		f 4 -843 860 913 -862
		mu 0 4 544 543 716 715
		f 4 -844 861 914 -845
		mu 0 4 527 795 796 713
		f 4 -1025 1025 1026 -1028
		mu 0 4 563 564 565 566
		f 4 -1029 1027 1029 -1031
		mu 0 4 567 563 566 568
		f 4 -1032 1030 1032 -1034
		mu 0 4 569 567 568 570
		f 4 -1035 1033 1035 -1037
		mu 0 4 571 569 570 572;
	setAttr ".fc[500:999]"
		f 4 -1038 1036 1038 -1040
		mu 0 4 573 571 572 574
		f 4 -1041 1039 1041 -1043
		mu 0 4 575 573 574 576
		f 4 -1044 1042 1044 -1046
		mu 0 4 577 575 576 578
		f 4 -1047 1045 1047 -1049
		mu 0 4 841 577 578 580
		f 4 -1050 1048 1050 -1052
		mu 0 4 581 579 844 582
		f 4 -1053 1051 1053 -1055
		mu 0 4 583 581 582 584
		f 4 -1056 1054 1056 -1058
		mu 0 4 585 583 584 586
		f 4 -1059 1057 1059 -1061
		mu 0 4 587 585 586 588
		f 4 -1062 1060 1062 -1064
		mu 0 4 589 587 588 590
		f 4 -1065 1063 1065 -1067
		mu 0 4 591 589 590 592
		f 4 -1068 1066 1068 -1070
		mu 0 4 593 591 592 594
		f 4 -1071 1069 1071 -1073
		mu 0 4 595 593 594 596
		f 4 -1074 1072 1074 -1076
		mu 0 4 838 595 596 843
		f 4 -1077 1075 1077 -1026
		mu 0 4 564 597 598 565
		f 4 -1079 1080 1082 -1084
		mu 0 4 599 600 601 602
		f 4 -1085 1083 1086 -1088
		mu 0 4 603 599 602 604
		f 4 -1089 1087 1090 -1092
		mu 0 4 605 603 604 606
		f 4 -1093 1091 1094 -1096
		mu 0 4 607 605 606 608
		f 4 -1097 1095 1098 -1100
		mu 0 4 609 607 608 610
		f 4 -1101 1099 1102 -1104
		mu 0 4 611 609 610 612
		f 4 -1105 1103 1106 -1108
		mu 0 4 613 611 612 614
		f 4 -1109 1107 1110 -1112
		mu 0 4 836 613 614 847
		f 4 -1113 1111 1114 -1116
		mu 0 4 617 615 616 618
		f 4 -1117 1115 1118 -1120
		mu 0 4 619 617 618 620
		f 4 -1121 1119 1122 -1124
		mu 0 4 621 619 620 622
		f 4 -1125 1123 1126 -1128
		mu 0 4 623 621 622 624
		f 4 -1129 1127 1130 -1132
		mu 0 4 625 623 624 626
		f 4 -1133 1131 1134 -1136
		mu 0 4 627 625 626 628
		f 4 -1137 1135 1138 -1140
		mu 0 4 629 627 628 630
		f 4 -1141 1139 1142 -1144
		mu 0 4 631 629 630 632
		f 4 -1145 1143 1146 -1148
		mu 0 4 834 631 632 845
		f 4 -1149 1147 1149 -1081
		mu 0 4 600 633 634 601
		f 4 -882 -1571 1573 -1577
		mu 0 4 1187 748 1185 1183
		f 4 -883 -1578 1579 -1582
		mu 0 4 1191 747 1190 1188
		f 4 -884 -1583 1584 -1588
		mu 0 4 1195 746 1194 1192
		f 4 -885 -1589 1590 -1594
		mu 0 4 1199 745 1198 1196
		f 4 -886 -1595 1596 -1600
		mu 0 4 1203 744 1202 1200
		f 4 -887 -1601 1602 -1605
		mu 0 4 1207 743 1206 1204
		f 4 -888 -1606 1607 -1611
		mu 0 4 1211 742 1210 1208
		f 4 -889 -1612 1613 -1617
		mu 0 4 1215 741 1214 1212
		f 4 -890 -1618 1619 -1623
		mu 0 4 1219 740 1218 1216
		f 4 -891 -1624 1625 -1628
		mu 0 4 1223 739 1222 1220
		f 4 -892 -1629 1630 -1634
		mu 0 4 1227 738 1226 1224
		f 4 -893 -1635 1636 -1639
		mu 0 4 1231 737 1230 1228
		f 4 -894 -1640 1641 -1645
		mu 0 4 1235 736 1234 1232
		f 4 -895 -1646 1647 -1650
		mu 0 4 1239 735 1238 1236
		f 4 -896 -1651 1652 -1656
		mu 0 4 1345 734 1242 1347
		f 4 -897 -1657 1658 -1661
		mu 0 4 1247 733 1246 1344
		f 4 -898 -1662 1663 -1667
		mu 0 4 1251 731 1250 1248
		f 4 -881 -1668 1668 -1672
		mu 0 4 1186 732 1254 1252
		f 4 -1027 1150 1151 -1153
		mu 0 4 566 565 653 654
		f 4 -1030 1152 1153 -1155
		mu 0 4 568 566 654 655
		f 4 -1033 1154 1155 -1157
		mu 0 4 570 568 655 656
		f 4 -1036 1156 1157 -1159
		mu 0 4 572 570 656 657
		f 4 -1039 1158 1159 -1161
		mu 0 4 574 572 657 658
		f 4 -1042 1160 1161 -1163
		mu 0 4 576 574 658 659
		f 4 -1045 1162 1163 -1165
		mu 0 4 578 576 659 660
		f 4 -1051 1165 1166 -1168
		mu 0 4 582 844 835 662
		f 4 -1054 1167 1168 -1170
		mu 0 4 584 582 662 663
		f 4 -1057 1169 1170 -1172
		mu 0 4 586 584 663 664
		f 4 -1060 1171 1172 -1174
		mu 0 4 588 586 664 665
		f 4 -1063 1173 1174 -1176
		mu 0 4 590 588 665 666
		f 4 -1066 1175 1176 -1178
		mu 0 4 592 590 666 667
		f 4 -1069 1177 1178 -1180
		mu 0 4 594 592 667 668
		f 4 -1072 1179 1180 -1182
		mu 0 4 596 594 668 669
		f 4 -1075 1181 1182 -1184
		mu 0 4 843 596 669 670
		f 4 -1048 1185 -1188 -1189
		mu 0 4 580 578 671 711
		f 4 1164 1190 -1192 -1186
		mu 0 4 578 660 673 671
		f 4 1108 1193 1195 -1197
		mu 0 4 613 836 674 706
		f 4 -1166 1188 1198 1199
		mu 0 4 661 580 711 703
		f 4 -1078 1201 1203 -1205
		mu 0 4 565 598 677 709
		f 4 1183 1206 -1208 -1202
		mu 0 4 598 833 679 677
		f 4 1148 1209 -1212 -1213
		mu 0 4 633 600 680 702
		f 4 -1151 1204 1214 1215
		mu 0 4 653 565 709 707
		f 4 -1219 1219 1028 -1221
		mu 0 4 683 684 563 567
		f 4 -1223 1220 1031 -1224
		mu 0 4 685 683 567 569
		f 4 -1226 1223 1034 -1227
		mu 0 4 686 685 569 571
		f 4 -1229 1226 1037 -1230
		mu 0 4 687 686 571 573
		f 4 -1232 1229 1040 -1233
		mu 0 4 688 687 573 575
		f 4 -1235 1232 1043 -1236
		mu 0 4 689 688 575 577
		f 4 -1238 1235 1046 -1239
		mu 0 4 840 689 577 841
		f 4 -1241 1238 1049 -1242
		mu 0 4 691 690 579 581
		f 4 -1244 1241 1052 -1245
		mu 0 4 692 691 581 583
		f 4 -1247 1244 1055 -1248
		mu 0 4 693 692 583 585
		f 4 -1250 1247 1058 -1251
		mu 0 4 694 693 585 587
		f 4 -1253 1250 1061 -1254
		mu 0 4 695 694 587 589
		f 4 -1256 1253 1064 -1257
		mu 0 4 696 695 589 591
		f 4 -1259 1256 1067 -1260
		mu 0 4 697 696 591 593
		f 4 -1262 1259 1070 -1263
		mu 0 4 698 697 593 595
		f 4 -1265 1262 1073 -1266
		mu 0 4 837 698 595 838
		f 4 -1268 1265 1076 -1269
		mu 0 4 700 699 597 564
		f 4 -1270 1268 1024 -1220
		mu 0 4 684 700 564 563
		f 4 -919 916 -394 -918
		mu 0 4 454 452 347 344
		f 4 -921 917 -393 -920
		mu 0 4 456 454 344 343
		f 4 -922 -923 919 -629
		mu 0 4 342 437 456 343
		f 4 -925 921 -392 -924
		mu 0 4 438 437 342 341
		f 4 -927 923 -401 -926
		mu 0 4 440 438 341 359
		f 4 -929 925 -400 -928
		mu 0 4 442 440 359 357
		f 4 -931 927 -399 -930
		mu 0 4 444 442 357 355
		f 4 -933 929 -398 -932
		mu 0 4 446 444 355 353
		f 4 -935 931 -397 -934
		mu 0 4 448 446 353 351
		f 4 -937 933 -396 -936
		mu 0 4 450 448 351 349
		f 4 -938 935 -395 -917
		mu 0 4 452 450 349 347
		f 4 -941 938 -328 -940
		mu 0 4 460 459 289 286
		f 4 -943 939 -327 -942
		mu 0 4 462 460 286 285
		f 4 -945 941 -336 -944
		mu 0 4 464 462 285 305
		f 4 -947 943 -335 -946
		mu 0 4 466 464 305 303
		f 4 -949 945 -334 -948
		mu 0 4 468 466 303 301
		f 4 -951 947 -333 -950
		mu 0 4 470 468 301 299
		f 4 -953 949 -332 -952
		mu 0 4 472 470 299 297
		f 4 -955 951 -331 -954
		mu 0 4 474 472 297 295
		f 4 -957 953 -330 -956
		mu 0 4 476 474 295 292
		f 4 -959 955 -643 645
		mu 0 4 478 476 292 291
		f 4 -960 -646 -329 -939
		mu 0 4 459 478 291 289
		f 4 -962 -963 960 -144
		mu 0 4 130 133 139 137
		f 4 -964 -965 961 -136
		mu 0 4 129 132 133 130
		f 4 -1271 -1216 1271 -1210
		mu 0 4 600 653 707 680
		f 4 -1152 1270 1078 -1273
		mu 0 4 654 653 600 599
		f 4 -1154 1272 1084 -1274
		mu 0 4 655 654 599 603
		f 4 -1156 1273 1088 -1275
		mu 0 4 656 655 603 605
		f 4 -1158 1274 1092 -1276
		mu 0 4 657 656 605 607
		f 4 -1160 1275 1096 -1277
		mu 0 4 658 657 607 609
		f 4 -1162 1276 1100 -1278
		mu 0 4 659 658 609 611
		f 4 -1164 1277 1104 -1279
		mu 0 4 660 659 611 613
		f 4 -1191 1278 1196 -1280
		mu 0 4 673 660 613 706
		f 4 231 -967 -968 965
		mu 0 4 199 198 201 200
		f 4 240 -969 -970 966
		mu 0 4 198 206 207 201
		f 4 970 288 290 -973
		mu 0 4 251 223 240 241
		f 4 -290 292 -975 -291
		mu 0 4 240 239 242 241
		f 4 -977 -293 -288 -976
		mu 0 4 252 242 239 222
		f 4 -979 975 296 298
		mu 0 4 247 252 222 246
		f 4 -298 300 -981 -299
		mu 0 4 246 245 248 247
		f 4 -983 -301 -296 -982
		mu 0 4 253 248 245 221
		f 4 -985 981 270 281
		mu 0 4 236 253 221 232
		f 4 -272 -986 -987 -282
		mu 0 4 232 231 230 236
		f 4 -989 985 -269 -988
		mu 0 4 217 230 231 220
		f 4 -991 987 -254 -990
		mu 0 4 218 217 220 219
		f 4 -993 989 -277 239
		mu 0 4 204 218 219 205
		f 4 -995 -240 -239 -994
		mu 0 4 194 204 205 197
		f 4 -997 993 -229 -996
		mu 0 4 195 194 197 196
		f 4 -1281 -1200 1281 -1194
		mu 0 4 836 661 703 674
		f 4 -1167 1280 1112 -1283
		mu 0 4 662 835 615 617
		f 4 -1169 1282 1116 -1284
		mu 0 4 663 662 617 619
		f 4 -1171 1283 1120 -1285
		mu 0 4 664 663 619 621
		f 4 -1173 1284 1124 -1286
		mu 0 4 665 664 621 623
		f 4 -1175 1285 1128 -1287
		mu 0 4 666 665 623 625
		f 4 -1177 1286 1132 -1288
		mu 0 4 667 666 625 627
		f 4 -1179 1287 1136 -1289
		mu 0 4 668 667 627 629
		f 4 -1181 1288 1140 -1290
		mu 0 4 669 668 629 631
		f 4 -1183 1289 1144 -1291
		mu 0 4 670 669 631 834
		f 4 -1207 1290 1212 -1292
		mu 0 4 679 833 633 702
		f 4 -1000 997 133 -999
		mu 0 4 127 126 128 131
		f 4 -1002 998 141 165
		mu 0 4 136 127 131 138
		f 4 -1004 -166 162 -1003
		mu 0 4 149 136 138 151
		f 4 -1006 1002 149 -1005
		mu 0 4 150 149 151 158
		f 4 -1008 1004 157 -1007
		mu 0 4 162 150 158 164
		f 4 197 -1010 1006 198
		mu 0 4 163 168 162 164
		f 4 -1012 -198 -200 -1011
		mu 0 4 185 168 163 157
		f 4 -1014 1010 190 191
		mu 0 4 182 185 157 177
		f 4 185 -1016 -192 188
		mu 0 4 178 179 182 177
		f 4 -1018 -186 -194 -1017
		mu 0 4 184 179 178 156
		f 4 -1020 1016 184 194
		mu 0 4 176 184 156 171
		f 4 178 -1022 -195 181
		mu 0 4 172 173 176 171
		f 4 -1024 -179 -178 -1023
		mu 0 4 183 173 172 155
		f 5 862 1570 1081 -1083 -1080
		mu 0 5 636 1184 635 602 601
		f 5 863 1577 1085 -1087 -1082
		mu 0 5 635 1189 637 604 602
		f 5 864 1582 1089 -1091 -1086
		mu 0 5 637 1193 638 606 604
		f 5 865 1588 1093 -1095 -1090
		mu 0 5 638 1197 639 608 606
		f 5 866 1594 1097 -1099 -1094
		mu 0 5 639 1201 640 610 608
		f 5 867 1600 1101 -1103 -1098
		mu 0 5 640 1205 641 612 610
		f 5 868 1605 1105 -1107 -1102
		mu 0 5 641 1209 642 614 612
		f 5 869 1611 1109 -1111 -1106
		mu 0 5 642 1213 848 847 614
		f 5 870 1617 1113 -1115 -1110
		mu 0 5 643 1217 644 618 616
		f 5 871 1623 1117 -1119 -1114
		mu 0 5 644 1221 645 620 618
		f 5 872 1628 1121 -1123 -1118
		mu 0 5 645 1225 646 622 620
		f 5 873 1634 1125 -1127 -1122
		mu 0 5 646 1229 647 624 622
		f 5 874 1639 1129 -1131 -1126
		mu 0 5 647 1233 648 626 624
		f 5 875 1645 1133 -1135 -1130
		mu 0 5 648 1237 649 628 626
		f 5 876 1650 1137 -1139 -1134
		mu 0 5 649 1241 650 630 628
		f 5 877 1656 1141 -1143 -1138
		mu 0 5 650 1245 651 632 630
		f 5 878 1661 1145 -1147 -1142
		mu 0 5 651 1249 846 845 632
		f 5 879 1667 1079 -1150 -1146
		mu 0 5 652 1253 636 601 634
		f 4 -224 1186 1187 -1185
		mu 0 4 190 193 672 712
		f 4 -234 1184 1191 -1190
		mu 0 4 200 190 712 705
		f 4 230 1194 -1196 -1193
		mu 0 4 196 199 675 704
		f 4 227 1197 -1199 -1187
		mu 0 4 193 195 676 672
		f 4 219 1202 -1204 -1201
		mu 0 4 123 122 678 710
		f 4 -221 1200 1207 -1206
		mu 0 4 126 123 710 701
		f 4 -222 1210 1211 -1209
		mu 0 4 129 128 681 708
		f 4 222 1213 -1215 -1203
		mu 0 4 122 132 682 678
		f 4 -899 1216 1218 -1218
		mu 0 4 547 546 684 683
		f 4 -900 1217 1222 -1222
		mu 0 4 548 547 683 685
		f 4 -901 1221 1225 -1225
		mu 0 4 549 548 685 686
		f 4 -902 1224 1228 -1228
		mu 0 4 550 549 686 687
		f 4 -903 1227 1231 -1231
		mu 0 4 551 550 687 688
		f 4 -904 1230 1234 -1234
		mu 0 4 552 551 688 689
		f 4 -905 1233 1237 -1237
		mu 0 4 553 552 689 840
		f 4 -906 1236 1240 -1240
		mu 0 4 554 842 690 691
		f 4 -907 1239 1243 -1243
		mu 0 4 555 554 691 692
		f 4 -908 1242 1246 -1246
		mu 0 4 556 555 692 693
		f 4 -909 1245 1249 -1249
		mu 0 4 557 556 693 694
		f 4 -910 1248 1252 -1252
		mu 0 4 558 557 694 695
		f 4 -911 1251 1255 -1255
		mu 0 4 559 558 695 696
		f 4 -912 1254 1258 -1258
		mu 0 4 560 559 696 697
		f 4 -913 1257 1261 -1261
		mu 0 4 561 560 697 698
		f 4 -914 1260 1264 -1264
		mu 0 4 562 561 698 837
		f 4 -915 1263 1267 -1267
		mu 0 4 545 839 699 700
		f 4 -916 1266 1269 -1217
		mu 0 4 546 545 700 684
		f 4 963 1208 -1272 -1214
		mu 0 4 132 129 708 682
		f 4 -966 1189 1279 -1195
		mu 0 4 199 200 705 675
		f 4 995 1192 -1282 -1198
		mu 0 4 195 196 704 676
		f 4 -998 1205 1291 -1211
		mu 0 4 128 126 701 681
		f 4 1292 36 1297 -1297
		mu 0 4 1396 1 851 849
		f 4 1293 -1295 1298 -1298
		mu 0 4 851 2 852 849
		f 4 -11 -1296 1299 -1299
		mu 0 4 852 3 853 849
		f 4 1300 37 1304 -1304
		mu 0 4 1392 4 856 854
		f 4 1301 -1303 1305 -1305
		mu 0 4 856 5 857 854
		f 4 -12 -1294 1306 -1306
		mu 0 4 857 2 851 854
		f 4 1307 38 1311 -1311
		mu 0 4 1388 6 860 858
		f 4 1308 -1310 1312 -1312
		mu 0 4 860 7 861 858
		f 4 -13 -1302 1313 -1313
		mu 0 4 861 5 856 858
		f 4 1314 96 1318 -1318
		mu 0 4 1384 8 864 862
		f 4 1315 -1317 1319 -1319
		mu 0 4 864 9 865 862
		f 4 -14 -1309 1320 -1320
		mu 0 4 865 7 860 862
		f 4 1321 40 1324 -1324
		mu 0 4 1381 11 1337 1340
		f 4 1941 -1943 1944 -1946
		mu 0 4 1270 12 1257 1269
		f 4 -15 -1323 1326 -1326
		mu 0 4 1339 1342 870 1379
		f 4 1327 41 1329 -1329
		mu 0 4 872 14 1335 1338
		f 4 1947 -1949 1950 -1952
		mu 0 4 1272 15 874 1271
		f 4 -1681 -1942 1952 -1951
		mu 0 4 874 12 1270 1271
		f 4 1331 42 1333 -1333
		mu 0 4 1374 16 877 1336
		f 4 1954 -1956 1957 -1959
		mu 0 4 1274 17 878 1273
		f 4 -1685 -1948 1959 -1958
		mu 0 4 878 15 1272 1273
		f 4 1335 43 1337 -1337
		mu 0 4 1370 18 1331 879
		f 4 1961 -1963 1964 -1966
		mu 0 4 1276 19 882 1275
		f 4 -1689 -1955 1966 -1965
		mu 0 4 882 17 1274 1275
		f 4 1339 44 1343 -1343
		mu 0 4 1365 20 885 1332
		f 4 1340 -1342 1344 -1344
		mu 0 4 885 1334 1333 1332
		f 4 -1694 -1962 1968 -1970
		mu 0 4 1278 19 1276 1277
		f 4 1346 85 1350 -1350
		mu 0 4 1360 22 889 887
		f 4 1347 -1349 1351 -1351
		mu 0 4 889 23 890 887
		f 4 -16 -1341 1352 -1352
		mu 0 4 890 1334 885 887
		f 4 1294 46 1357 -1357
		mu 0 4 852 2 892 891
		f 4 1353 -1355 1358 -1358
		mu 0 4 892 24 893 891
		f 4 -17 -1356 1359 -1359
		mu 0 4 893 25 894 891
		f 4 1302 47 1363 -1363
		mu 0 4 857 5 896 895
		f 4 1360 -1362 1364 -1364
		mu 0 4 896 26 897 895
		f 4 -18 -1354 1365 -1365
		mu 0 4 897 24 892 895
		f 4 1309 48 1369 -1369
		mu 0 4 861 7 899 898
		f 4 1366 -1368 1370 -1370
		mu 0 4 899 27 900 898
		f 4 -19 -1361 1371 -1371
		mu 0 4 900 26 896 898
		f 4 1316 98 1375 -1375
		mu 0 4 865 9 902 901
		f 4 1372 -1374 1376 -1376
		mu 0 4 902 28 903 901
		f 4 -20 -1367 1377 -1377
		mu 0 4 903 27 899 901
		f 4 1942 1679 1970 -1678
		mu 0 4 1257 12 905 904
		f 4 1971 -1973 1973 -1971
		mu 0 4 905 29 906 904
		f 4 -1700 -1975 1678 -1974
		mu 0 4 906 1259 1255 904
		f 4 1948 1683 1975 -1682
		mu 0 4 874 15 909 908
		f 4 1976 -1978 1978 -1976
		mu 0 4 909 31 910 908
		f 4 -1704 -1972 1682 -1979
		mu 0 4 910 29 905 908
		f 4 1955 1687 1979 -1686
		mu 0 4 878 17 912 911
		f 4 1980 -1982 1982 -1980
		mu 0 4 912 32 913 911
		f 4 -1708 -1977 1686 -1983
		mu 0 4 913 31 909 911
		f 4 1962 1691 1983 -1690
		mu 0 4 882 19 915 914
		f 4 1984 -1986 1986 -1984
		mu 0 4 915 33 916 914
		f 4 -1712 -1981 1690 -1987
		mu 0 4 916 32 912 914
		f 4 1988 1990 1991 -1695
		mu 0 4 1278 1279 1280 917
		f 4 1993 -1995 1995 -1992
		mu 0 4 1280 1281 919 917
		f 4 -1716 -1985 1695 -1996
		mu 0 4 919 33 915 917
		f 4 1348 87 1383 -1383
		mu 0 4 890 23 921 920
		f 4 1380 -1382 1384 -1384
		mu 0 4 921 35 922 920
		f 4 -21 -1380 1385 -1385
		mu 0 4 922 1328 1327 920
		f 4 1354 52 1390 -1390
		mu 0 4 893 24 924 923
		f 4 1386 -1388 1391 -1391
		mu 0 4 924 36 925 923
		f 4 -22 -1389 1392 -1392
		mu 0 4 925 37 926 923
		f 4 1361 53 1396 -1396
		mu 0 4 897 26 928 927
		f 5 1393 -2263 -1395 1397 -1397
		mu 0 5 928 38 1406 929 927
		f 5 -2262 -23 -1387 1398 -1398
		mu 0 5 929 1404 36 924 927
		f 4 1367 54 1402 -1402
		mu 0 4 900 27 931 930
		f 4 1399 -1401 1403 -1403
		mu 0 4 931 39 932 930
		f 4 -24 -1394 1404 -1404
		mu 0 4 932 38 928 930
		f 4 1373 100 1408 -1408
		mu 0 4 903 28 934 933
		f 4 1405 -1407 1409 -1409
		mu 0 4 934 40 935 933
		f 4 -25 -1400 1410 -1410
		mu 0 4 935 39 931 933
		f 4 1972 1702 1996 -1701
		mu 0 4 906 29 937 936
		f 4 1997 -1999 1999 -1997
		mu 0 4 937 41 938 936
		f 4 -1722 -2001 1701 -2000
		mu 0 4 938 1261 1258 936
		f 4 1977 1706 2001 -1705
		mu 0 4 910 31 941 940
		f 4 2002 -2004 2004 -2002
		mu 0 4 941 43 942 940
		f 4 -1726 -1998 1705 -2005
		mu 0 4 942 41 937 940
		f 4 1981 1710 2005 -1709
		mu 0 4 913 32 944 943
		f 4 2006 -2008 2008 -2006
		mu 0 4 944 44 945 943
		f 4 -1730 -2003 1709 -2009
		mu 0 4 945 43 941 943
		f 4 1985 1714 2009 -1713
		mu 0 4 916 33 947 946
		f 4 2010 -2012 2012 -2010
		mu 0 4 947 45 948 946
		f 4 -1734 -2007 1713 -2013
		mu 0 4 948 44 944 946
		f 4 1994 2014 2015 -1717
		mu 0 4 919 1281 1282 949
		f 4 2017 -2019 2019 -2016
		mu 0 4 1282 1283 951 949
		f 4 -1738 -2011 1717 -2020
		mu 0 4 951 45 947 949
		f 4 1381 89 1416 -1416
		mu 0 4 922 35 953 952
		f 4 1413 -1415 1417 -1417
		mu 0 4 953 47 954 952
		f 4 -26 -1413 1418 -1418
		mu 0 4 954 1324 1323 952
		f 4 1387 58 1423 -1423
		mu 0 4 925 36 956 955
		f 4 1419 -1421 1424 -1424
		mu 0 4 956 48 957 955
		f 4 -27 -1422 1425 -1425
		mu 0 4 957 49 958 955
		f 4 2280 2282 2283 -2278
		mu 0 4 1412 1413 1414 959
		f 4 2285 2287 2288 -2284
		mu 0 4 1414 1415 1416 959
		f 4 2290 2291 2278 -2289
		mu 0 4 1416 1417 1410 959
		f 4 1400 60 1435 -1435
		mu 0 4 932 39 963 962
		f 4 1432 -1434 1436 -1436
		mu 0 4 963 51 964 962
		f 4 -29 -1427 1437 -1437
		mu 0 4 964 50 960 962
		f 4 1406 101 1441 -1441
		mu 0 4 935 40 966 965
		f 4 1438 -1440 1442 -1442
		mu 0 4 966 52 967 965
		f 4 -30 -1433 1443 -1443
		mu 0 4 967 51 963 965
		f 4 1998 1724 2020 -1723
		mu 0 4 938 41 969 968
		f 4 2021 -2023 2023 -2021
		mu 0 4 969 53 970 968
		f 4 -1744 -2025 1723 -2024
		mu 0 4 970 1263 1260 968
		f 4 2003 1728 2025 -1727
		mu 0 4 942 43 973 972
		f 4 2026 -2028 2028 -2026
		mu 0 4 973 55 974 972
		f 4 -1748 -2022 1727 -2029
		mu 0 4 974 53 969 972
		f 4 2007 1732 2029 -1731
		mu 0 4 945 44 976 975
		f 4 2030 -2032 2032 -2030
		mu 0 4 976 56 977 975
		f 4 -1752 -2027 1731 -2033
		mu 0 4 977 55 973 975
		f 4 2011 1736 2033 -1735
		mu 0 4 948 45 979 978
		f 4 2034 -2036 2036 -2034
		mu 0 4 979 57 980 978
		f 4 -1756 -2031 1735 -2037
		mu 0 4 980 56 976 978
		f 4 2018 2038 2039 -1739
		mu 0 4 951 1283 1284 981
		f 4 2041 -2043 2043 -2040
		mu 0 4 1284 1285 983 981
		f 4 -1760 -2035 1739 -2044
		mu 0 4 983 57 979 981
		f 4 1420 64 1450 -1450
		mu 0 4 957 48 985 984
		f 4 1446 -1448 1451 -1451
		mu 0 4 985 63 986 984
		f 4 -31 -1449 1452 -1452
		mu 0 4 986 1304 987 984
		f 5 1427 2263 65 1456 -1456
		mu 0 5 961 1408 50 989 988
		f 4 1453 -1455 1457 -1457
		mu 0 4 989 65 990 988
		f 4 -32 -1447 1458 -1458
		mu 0 4 990 63 985 988
		f 4 1433 66 1462 -1462
		mu 0 4 964 51 992 991
		f 4 1459 -1461 1463 -1463
		mu 0 4 992 1341 993 991
		f 4 -33 -1454 1464 -1464
		mu 0 4 993 65 989 991
		f 4 1439 103 1468 -1468
		mu 0 4 967 52 995 994
		f 4 1465 -1467 1469 -1469
		mu 0 4 995 1318 1317 994
		f 4 -34 -1460 1470 -1470
		mu 0 4 1317 1341 992 994
		f 4 2022 1746 2044 -1745
		mu 0 4 970 53 998 997
		f 4 2045 -2047 2047 -2045
		mu 0 4 998 68 999 997
		f 4 -1772 -2049 1745 -2048
		mu 0 4 999 1286 1262 997
		f 4 2027 1750 2049 -1749
		mu 0 4 974 55 1002 1001
		f 4 2050 -2052 2052 -2050
		mu 0 4 1002 70 1003 1001
		f 4 -1776 -2046 1749 -2053
		mu 0 4 1003 68 998 1001
		f 4 2031 1754 2053 -1753
		mu 0 4 977 56 1005 1004
		f 4 2054 -2056 2056 -2054
		mu 0 4 1005 71 1006 1004
		f 4 -1780 -2051 1753 -2057
		mu 0 4 1006 70 1002 1004
		f 4 2035 1758 2057 -1757
		mu 0 4 980 57 1008 1007
		f 4 2058 -2060 2060 -2058
		mu 0 4 1008 72 1009 1007
		f 4 -1784 -2055 1757 -2061
		mu 0 4 1009 71 1005 1007
		f 4 2042 2062 2063 -1761
		mu 0 4 983 1285 1287 1010
		f 4 2064 -2066 2066 -2064
		mu 0 4 1287 1267 1012 1010
		f 4 -1788 -2059 1761 -2067
		mu 0 4 1012 72 1008 1010
		f 4 1447 70 1474 -1474
		mu 0 4 986 63 1310 1313
		f 4 2068 -2070 2071 -2073
		mu 0 4 1289 76 1015 1288
		f 4 -1798 -2075 2075 -2072
		mu 0 4 1015 77 1290 1288
		f 4 1454 71 1477 -1477
		mu 0 4 990 65 1307 1311
		f 4 2077 -2079 2080 -2082
		mu 0 4 1292 78 1019 1291
		f 4 -1802 -2069 2082 -2081
		mu 0 4 1019 76 1289 1291
		f 4 1460 72 1480 -1480
		mu 0 4 993 1341 1309 1308
		f 4 2083 -2085 2086 -2088
		mu 0 4 1264 79 1022 1293
		f 4 -1806 -2078 2088 -2087
		mu 0 4 1022 78 1292 1293
		f 4 2256 2091 2092 -2255
		mu 0 4 1299 1294 1024 1023
		f 4 1929 -2094 2094 -2093
		mu 0 4 1024 80 1025 1023
		f 4 -1810 -2084 1768 -2095
		mu 0 4 1025 79 1264 1023
		f 4 2046 1774 2095 -1773
		mu 0 4 999 68 1027 1026
		f 4 2096 -2098 2098 -2096
		mu 0 4 1027 81 1028 1026
		f 4 -1814 -2100 1773 -2099
		mu 0 4 1028 82 1029 1026
		f 4 2051 1778 2100 -1777
		mu 0 4 1003 70 1031 1030
		f 4 2101 -2103 2103 -2101
		mu 0 4 1031 83 1032 1030
		f 4 -1818 -2097 1777 -2104
		mu 0 4 1032 81 1027 1030
		f 4 2055 1782 2104 -1781
		mu 0 4 1006 71 1034 1033
		f 4 2105 -2107 2107 -2105
		mu 0 4 1034 84 1035 1033
		f 4 -1822 -2102 1781 -2108
		mu 0 4 1035 83 1031 1033
		f 4 2059 1786 2108 -1785
		mu 0 4 1009 72 1037 1036
		f 4 2109 -2111 2111 -2109
		mu 0 4 1037 85 1038 1036
		f 4 -1826 -2106 1785 -2112
		mu 0 4 1038 84 1034 1036
		f 4 2065 1791 2112 -1789
		mu 0 4 1012 1267 1040 1039
		f 4 2113 -2115 2115 -2113
		mu 0 4 1040 86 1041 1039
		f 4 -1830 -2110 1789 -2116
		mu 0 4 1041 85 1037 1039
		f 4 2117 2118 2119 -1795
		mu 0 4 1268 1295 1044 1042
		f 4 1917 -2121 2121 -2120
		mu 0 4 1044 88 1045 1042
		f 4 -1834 -2114 1795 -2122
		mu 0 4 1045 86 1040 1042
		f 4 2069 1800 2122 -1799
		mu 0 4 1015 76 1047 1046
		f 4 2123 -2125 2125 -2123
		mu 0 4 1047 89 1048 1046
		f 4 -1838 -2127 1799 -2126
		mu 0 4 1048 90 1049 1046
		f 4 2078 1804 2127 -1803
		mu 0 4 1019 78 1051 1050
		f 4 2128 -2130 2130 -2128
		mu 0 4 1051 91 1052 1050
		f 4 -1842 -2124 1803 -2131
		mu 0 4 1052 89 1047 1050
		f 4 2084 1808 2131 -1807
		mu 0 4 1022 79 1054 1053
		f 4 2132 -2134 2134 -2132
		mu 0 4 1054 92 1055 1053
		f 4 -1846 -2129 1807 -2135
		mu 0 4 1055 91 1051 1053
		f 4 2093 2135 2136 -1811
		mu 0 4 1025 80 1057 1056
		f 4 1933 -2138 2138 -2137
		mu 0 4 1057 93 1058 1056
		f 4 -1850 -2133 1811 -2139
		mu 0 4 1058 92 1054 1056
		f 4 2097 1816 2139 -1815
		mu 0 4 1028 81 1060 1059
		f 4 2140 -2142 2142 -2140
		mu 0 4 1060 94 1061 1059
		f 4 -1854 -2144 1815 -2143
		mu 0 4 1061 95 1062 1059
		f 4 2102 1820 2144 -1819
		mu 0 4 1032 83 1064 1063
		f 4 2145 -2147 2147 -2145
		mu 0 4 1064 96 1065 1063
		f 4 -1858 -2141 1819 -2148
		mu 0 4 1065 94 1060 1063
		f 4 2106 1824 2148 -1823
		mu 0 4 1035 84 1067 1066
		f 4 2149 -2151 2151 -2149
		mu 0 4 1067 97 1068 1066
		f 4 -1862 -2146 1823 -2152
		mu 0 4 1068 96 1064 1066
		f 4 2110 1828 2152 -1827
		mu 0 4 1038 85 1070 1069
		f 4 2153 -2155 2155 -2153
		mu 0 4 1070 98 1071 1069
		f 4 -1866 -2150 1827 -2156
		mu 0 4 1071 97 1067 1069
		f 4 2114 1832 2156 -1831
		mu 0 4 1041 86 1073 1072
		f 4 2157 -2159 2159 -2157
		mu 0 4 1073 99 1074 1072
		f 4 -1870 -2154 1831 -2160
		mu 0 4 1074 98 1070 1072
		f 4 2120 2160 2161 -1835
		mu 0 4 1045 88 1076 1075
		f 4 1921 -2163 2163 -2162
		mu 0 4 1076 100 1077 1075
		f 4 -1874 -2158 1835 -2164
		mu 0 4 1077 99 1073 1075
		f 4 2124 1840 2164 -1839
		mu 0 4 1048 89 1079 1078
		f 4 2165 -2167 2167 -2165
		mu 0 4 1079 101 1080 1078
		f 4 -1878 -2169 1839 -2168
		mu 0 4 1080 102 1081 1078
		f 4 2129 1844 2169 -1843
		mu 0 4 1052 91 1083 1082
		f 4 2170 -2172 2172 -2170
		mu 0 4 1083 103 1084 1082
		f 4 -1882 -2166 1843 -2173
		mu 0 4 1084 101 1079 1082
		f 4 2133 1848 2173 -1847
		mu 0 4 1055 92 1086 1085
		f 4 2174 -2176 2176 -2174
		mu 0 4 1086 104 1087 1085
		f 4 -1886 -2171 1847 -2177
		mu 0 4 1087 103 1083 1085
		f 4 2137 2177 2178 -1851
		mu 0 4 1058 93 1089 1088
		f 4 1937 -2180 2180 -2179
		mu 0 4 1089 105 1090 1088
		f 4 -1890 -2175 1851 -2181
		mu 0 4 1090 104 1086 1088
		f 4 2141 1856 2181 -1855
		mu 0 4 1061 94 1092 1091
		f 4 2182 -2184 2184 -2182
		mu 0 4 1092 106 1093 1091
		f 4 -1894 -2186 1855 -2185
		mu 0 4 1093 107 1094 1091
		f 4 2146 1860 2186 -1859
		mu 0 4 1065 96 1096 1095
		f 4 2187 -2189 2189 -2187
		mu 0 4 1096 108 1097 1095
		f 4 -1898 -2183 1859 -2190
		mu 0 4 1097 106 1092 1095
		f 4 2150 1864 2190 -1863
		mu 0 4 1068 97 1099 1098
		f 4 2191 -2193 2193 -2191
		mu 0 4 1099 109 1100 1098
		f 4 -1902 -2188 1863 -2194
		mu 0 4 1100 108 1096 1098
		f 4 2154 1868 2194 -1867
		mu 0 4 1071 98 1102 1101
		f 4 2195 -2197 2197 -2195
		mu 0 4 1102 110 1103 1101
		f 4 -1906 -2192 1867 -2198
		mu 0 4 1103 109 1099 1101
		f 4 2158 1872 2198 -1871
		mu 0 4 1074 99 1105 1104
		f 4 2199 -2201 2201 -2199
		mu 0 4 1105 111 1106 1104
		f 4 -1910 -2196 1871 -2202
		mu 0 4 1106 110 1102 1104
		f 4 2162 2202 2203 -1875
		mu 0 4 1077 100 1108 1107
		f 4 1925 -2205 2205 -2204
		mu 0 4 1108 112 1109 1107
		f 4 -1914 -2200 1875 -2206
		mu 0 4 1109 111 1105 1107
		f 4 -1 -1484 1486 -1486
		mu 0 4 1395 1352 1111 1110
		f 4 -74 74 1487 -1487
		mu 0 4 1111 113 1112 1110
		f 4 -2 -1485 1490 -1490
		mu 0 4 1391 1398 1112 1113
		f 4 -75 75 1491 -1491
		mu 0 4 1112 113 1114 1113
		f 4 -3 -1489 1494 -1494
		mu 0 4 1387 1394 1114 1115
		f 4 -76 76 1495 -1495
		mu 0 4 1114 113 1116 1115
		f 4 -95 -1315 1499 -1499
		mu 0 4 1354 1386 1383 1117
		f 4 -4 -1493 1500 -1500
		mu 0 4 1383 1390 1116 1117
		f 4 -77 77 1501 -1501
		mu 0 4 1116 113 1119 1117
		f 4 -5 -1498 1504 -1504
		mu 0 4 1380 1357 1119 1120
		f 4 -78 78 1505 -1505
		mu 0 4 1119 113 1121 1120
		f 4 -6 -1503 1508 -1508
		mu 0 4 872 11 1121 1122
		f 4 -79 79 1509 -1509
		mu 0 4 1121 113 1123 1122
		f 4 -7 -1507 1512 -1512
		mu 0 4 1373 1378 1123 1124
		f 4 -80 80 1513 -1513
		mu 0 4 1123 113 1125 1124
		f 4 -8 -1511 1516 -1516
		mu 0 4 1369 1376 1125 1126
		f 4 -81 81 1517 -1517
		mu 0 4 1125 113 1127 1126
		f 4 -9 -1515 1520 -1520
		mu 0 4 1364 1372 1127 1128
		f 4 -82 82 1521 -1521
		mu 0 4 1127 113 1129 1128
		f 4 -84 -1347 1524 -1524
		mu 0 4 1350 1362 1359 1130
		f 4 -10 -1519 1525 -1525
		mu 0 4 1359 1368 1129 1130
		f 4 -83 73 1526 -1526
		mu 0 4 1129 113 1111 1130
		f 4 2166 1880 2206 -1879
		mu 0 4 1080 101 1133 1132
		f 4 2207 -2209 1879 -2207
		mu 0 4 1133 114 1134 1132
		f 4 2171 1884 2209 -1883
		mu 0 4 1084 103 1136 1135
		f 4 2210 -2208 1883 -2210
		mu 0 4 1136 114 1133 1135
		f 4 2175 1888 2211 -1887
		mu 0 4 1087 104 1138 1137
		f 4 2212 -2211 1887 -2212
		mu 0 4 1138 114 1136 1137
		f 4 2179 1936 2213 -1891
		mu 0 4 1090 105 1140 1139
		f 4 2214 1892 2215 -2214
		mu 0 4 1140 107 1141 1139
		f 4 2216 -2213 1891 -2216
		mu 0 4 1141 114 1138 1139
		f 4 2183 1896 2217 -1895
		mu 0 4 1093 106 1143 1142
		f 4 2218 -2217 1895 -2218
		mu 0 4 1143 114 1141 1142
		f 4 2188 1900 2219 -1899
		mu 0 4 1097 108 1145 1144
		f 4 2220 -2219 1899 -2220
		mu 0 4 1145 114 1143 1144
		f 4 2192 1904 2221 -1903
		mu 0 4 1100 109 1147 1146
		f 4 2222 -2221 1903 -2222
		mu 0 4 1147 114 1145 1146
		f 4 2196 1908 2223 -1907
		mu 0 4 1103 110 1149 1148
		f 4 2224 -2223 1907 -2224
		mu 0 4 1149 114 1147 1148
		f 4 2200 1912 2225 -1911
		mu 0 4 1106 111 1151 1150
		f 4 2226 -2225 1911 -2226
		mu 0 4 1151 114 1149 1150
		f 4 2204 1924 2227 -1915
		mu 0 4 1109 112 1153 1152
		f 4 2228 1876 2229 -2228
		mu 0 4 1153 102 1134 1152
		f 4 2208 -2227 1915 -2230
		mu 0 4 1134 114 1151 1152
		f 4 1522 35 1529 -1529
		mu 0 4 1351 0 853 1154
		f 4 1295 -1528 1530 -1530
		mu 0 4 853 3 1155 1154
		f 4 -85 -1348 1531 -1531
		mu 0 4 1155 23 889 1154
		f 4 -88 84 1534 -1534
		mu 0 4 921 23 1155 1156
		f 4 1527 45 1535 -1535
		mu 0 4 1155 3 894 1156
		f 4 1355 -1533 1536 -1536
		mu 0 4 894 25 1157 1156
		f 4 -90 86 1539 -1539
		mu 0 4 953 35 1157 1158
		f 4 1532 51 1540 -1540
		mu 0 4 1157 25 926 1158
		f 4 1388 -1538 1541 -1541
		mu 0 4 926 37 1159 1158
		f 4 -92 88 1545 -1545
		mu 0 4 1161 47 1159 1160;
	setAttr ".fc[1000:1143]"
		f 4 1537 57 1546 -1546
		mu 0 4 1159 37 958 1160
		f 4 1421 -1544 1547 -1547
		mu 0 4 958 49 1162 1160
		f 4 -94 90 1551 -1551
		mu 0 4 1164 115 1162 1163
		f 4 1543 63 1552 -1552
		mu 0 4 1162 49 987 1163
		f 4 1448 -1550 1553 -1553
		mu 0 4 987 1304 1303 1163
		f 3 2259 2231 2232
		mu 0 3 1300 1295 1296
		f 3 2234 2258 -2233
		mu 0 3 1296 1297 1300
		f 4 2074 -2238 1919 -2237
		mu 0 4 1290 77 1167 1166
		f 4 -2161 1916 2238 -1923
		mu 0 4 1076 88 1167 1168
		f 4 2237 1796 2239 -2239
		mu 0 4 1167 77 1049 1168
		f 4 2126 -2241 1923 -2240
		mu 0 4 1049 90 1169 1168
		f 4 -2203 1920 2241 -1927
		mu 0 4 1108 100 1169 1170
		f 4 2240 1836 2242 -2242
		mu 0 4 1169 90 1081 1170
		f 4 2168 -2229 1927 -2243
		mu 0 4 1081 102 1153 1170
		f 4 1496 39 1556 -1556
		mu 0 4 1355 10 870 1171
		f 4 1322 -1555 1557 -1557
		mu 0 4 870 1342 1172 1171
		f 4 -96 -1316 1558 -1558
		mu 0 4 1172 9 864 1171
		f 4 -99 95 1561 -1561
		mu 0 4 902 9 1172 1173
		f 4 1554 49 1562 -1562
		mu 0 4 1172 1342 1329 1173
		f 4 1378 -1560 1563 -1563
		mu 0 4 1329 1330 1174 1173
		f 4 -101 97 1566 -1566
		mu 0 4 934 28 1174 1175
		f 4 1559 55 1567 -1567
		mu 0 4 1174 1330 1325 1175
		f 4 1411 -1565 1568 -1568
		mu 0 4 1325 1326 1176 1175
		f 4 -2092 2244 2245 -1931
		mu 0 4 1024 1294 1298 1177
		f 4 2246 1770 2247 -2246
		mu 0 4 1298 1286 1029 1177
		f 4 2099 -2249 1931 -2248
		mu 0 4 1029 82 1179 1177
		f 4 -2136 1928 2249 -1935
		mu 0 4 1057 80 1179 1180
		f 4 2248 1812 2250 -2250
		mu 0 4 1179 82 1062 1180
		f 4 2143 -2252 1935 -2251
		mu 0 4 1062 95 1181 1180
		f 4 -2178 1932 2252 -1939
		mu 0 4 1089 93 1181 1182
		f 4 2251 1852 2253 -2253
		mu 0 4 1181 95 1094 1182
		f 4 2185 -2215 1939 -2254
		mu 0 4 1094 107 1140 1182
		f 4 -863 880 1574 -1574
		mu 0 4 1185 732 1186 1183
		f 4 1571 -1315 1575 -1575
		mu 0 4 1186 1385 863 1183
		f 4 -4 -1573 1576 -1576
		mu 0 4 863 1389 1187 1183
		f 4 -864 881 1580 -1580
		mu 0 4 1190 748 1187 1188
		f 4 1572 -1579 1581 -1581
		mu 0 4 1187 1389 1191 1188
		f 4 -865 882 1585 -1585
		mu 0 4 1194 747 1191 1192
		f 4 1578 -1308 1586 -1586
		mu 0 4 1191 1389 859 1192
		f 4 -3 -1584 1587 -1587
		mu 0 4 859 1393 1195 1192
		f 4 -866 883 1591 -1591
		mu 0 4 1198 746 1195 1196
		f 4 1583 -1301 1592 -1592
		mu 0 4 1195 1393 855 1196
		f 4 -2 -1590 1593 -1593
		mu 0 4 855 1397 1199 1196
		f 4 -867 884 1597 -1597
		mu 0 4 1202 745 1199 1200
		f 4 1589 -1293 1598 -1598
		mu 0 4 1199 1397 850 1200
		f 4 -1 -1596 1599 -1599
		mu 0 4 850 1353 1203 1200
		f 4 -868 885 1603 -1603
		mu 0 4 1206 744 1203 1204
		f 4 1595 -1602 1604 -1604
		mu 0 4 1203 1353 1207 1204
		f 4 -869 886 1608 -1608
		mu 0 4 1210 743 1207 1208
		f 4 1601 -1523 1609 -1609
		mu 0 4 1207 1353 1131 1208
		f 4 -84 -1607 1610 -1610
		mu 0 4 1131 1361 1211 1208
		f 4 -870 887 1614 -1614
		mu 0 4 1214 742 1211 1212
		f 4 1606 -1347 1615 -1615
		mu 0 4 1211 1361 888 1212
		f 4 -10 -1613 1616 -1616
		mu 0 4 888 1367 1215 1212
		f 4 -871 888 1620 -1620
		mu 0 4 1218 741 1215 1216
		f 4 1612 -1340 1621 -1621
		mu 0 4 1215 1367 884 1216
		f 4 -9 -1619 1622 -1622
		mu 0 4 884 1371 1219 1216
		f 4 -872 889 1626 -1626
		mu 0 4 1222 740 1219 1220
		f 4 1618 -1625 1627 -1627
		mu 0 4 1219 1371 1223 1220
		f 4 -873 890 1631 -1631
		mu 0 4 1226 739 1223 1224
		f 4 1624 -1336 1632 -1632
		mu 0 4 1223 1371 880 1224
		f 4 -8 -1630 1633 -1633
		mu 0 4 880 1375 1227 1224
		f 4 -874 891 1637 -1637
		mu 0 4 1230 738 1227 1228
		f 4 1629 -1636 1638 -1638
		mu 0 4 1227 1375 1231 1228
		f 4 -875 892 1642 -1642
		mu 0 4 1234 737 1231 1232
		f 4 1635 -1332 1643 -1643
		mu 0 4 1231 1375 876 1232
		f 4 -7 -1641 1644 -1644
		mu 0 4 876 1377 1235 1232
		f 4 -876 893 1648 -1648
		mu 0 4 1238 736 1235 1236
		f 4 1640 -1647 1649 -1649
		mu 0 4 1235 1377 1239 1236
		f 4 -877 894 1653 -1653
		mu 0 4 1242 735 1239 1347
		f 4 1646 -1328 1654 -1654
		mu 0 4 1239 1377 1348 1347
		f 4 -6 -1652 1655 -1655
		mu 0 4 872 11 1243 1240
		f 4 -878 895 1659 -1659
		mu 0 4 1246 734 1345 1344
		f 4 1651 -1658 1660 -1660
		mu 0 4 1243 11 1343 1244
		f 4 -879 896 1664 -1664
		mu 0 4 1250 733 1247 1248
		f 4 1657 -1322 1665 -1665
		mu 0 4 1247 1346 867 1248
		f 4 -5 -1663 1666 -1666
		mu 0 4 867 1356 1251 1248
		f 4 -880 897 1669 -1669
		mu 0 4 1254 731 1251 1252
		f 4 1662 -1497 1670 -1670
		mu 0 4 1251 1356 1118 1252
		f 4 -95 -1572 1671 -1671
		mu 0 4 1118 1385 1186 1252
		f 4 -50 1672 1674 -1674
		mu 0 4 907 13 1256 1255
		f 4 14 1675 -1677 -1673
		mu 0 4 13 869 1257 1256
		f 4 -56 1696 1698 -1698
		mu 0 4 939 30 1259 1258
		f 4 -62 1718 1720 -1720
		mu 0 4 971 42 1261 1260
		f 4 -68 1740 1742 -1742
		mu 0 4 1000 54 1263 1262
		f 4 -73 1762 1764 -1764
		mu 0 4 1021 66 1265 1264
		f 4 33 1765 -1767 -1763
		mu 0 4 66 996 1266 1265
		f 4 34 1792 -1794 -1791
		mu 0 4 73 1043 1268 1267
		f 4 1325 1943 -1945 -1676
		mu 0 4 869 866 1269 1257
		f 4 -1325 1940 1945 -1944
		mu 0 4 866 868 1270 1269
		f 4 -1330 1946 1951 -1950
		mu 0 4 871 873 1272 1271
		f 4 1330 1949 -1953 -1941
		mu 0 4 868 871 1271 1270
		f 4 -1334 1953 1958 -1957
		mu 0 4 875 877 1274 1273
		f 4 1334 1956 -1960 -1947
		mu 0 4 873 875 1273 1272
		f 4 -1338 1960 1965 -1964
		mu 0 4 879 881 1276 1275
		f 4 1338 1963 -1967 -1954
		mu 0 4 877 879 1275 1274
		f 4 1345 1967 -1969 -1961
		mu 0 4 881 883 1277 1276
		f 4 -1345 1692 1969 -1968
		mu 0 4 883 1418 1278 1277
		f 4 -1379 1673 1974 -1697
		mu 0 4 30 907 1255 1259
		f 4 1341 1987 -1989 -1693
		mu 0 4 1419 21 1279 1278
		f 4 50 1989 -1991 -1988
		mu 0 4 21 918 1280 1279
		f 4 1379 1992 -1994 -1990
		mu 0 4 918 34 1281 1280
		f 4 -1412 1697 2000 -1719
		mu 0 4 42 939 1258 1261
		f 4 56 2013 -2015 -1993
		mu 0 4 34 950 1282 1281
		f 4 1412 2016 -2018 -2014
		mu 0 4 950 46 1283 1282
		f 4 -1445 1719 2024 -1741
		mu 0 4 54 971 1260 1263
		f 4 62 2037 -2039 -2017
		mu 0 4 46 982 1284 1283
		f 4 1445 2040 -2042 -2038
		mu 0 4 982 58 1285 1284
		f 4 -1472 1741 2048 -1770
		mu 0 4 1420 1000 1262 1286
		f 4 68 2061 -2063 -2041
		mu 0 4 58 1011 1287 1285
		f 4 1472 1790 -2065 -2062
		mu 0 4 1011 73 1267 1287
		f 4 -1475 2067 2072 -2071
		mu 0 4 1013 1014 1289 1288
		f 4 1475 2070 -2076 -2074
		mu 0 4 1016 1013 1288 1290
		f 4 -1478 2076 2081 -2080
		mu 0 4 1017 1018 1292 1291
		f 4 1478 2079 -2083 -2068
		mu 0 4 1014 1017 1291 1289
		f 4 -1481 1763 2087 -2086
		mu 0 4 1020 1021 1264 1293
		f 4 1481 2085 -2089 -2077
		mu 0 4 1018 1020 1293 1292
		f 4 1466 2089 -2091 -1766
		mu 0 4 996 67 1294 1266
		f 4 1482 2116 -2118 -1793
		mu 0 4 1043 87 1295 1268
		f 4 92 2230 -2232 -2117
		mu 0 4 87 1165 1296 1295
		f 4 1549 2233 -2235 -2231
		mu 0 4 1165 64 1297 1296
		f 4 69 2073 -2236 -2234
		mu 0 4 64 1016 1290 1297
		f 4 102 2243 -2245 -2090
		mu 0 4 67 1178 1298 1294
		f 4 1569 1769 -2247 -2244
		mu 0 4 1178 1421 1286 1298
		f 3 -2256 1766 1767
		mu 0 3 1299 1265 1266
		f 3 2090 -2257 -1768
		mu 0 3 1266 1294 1299
		f 4 -2259 2235 2236 -2258
		mu 0 4 1300 1297 1290 1166
		f 4 -2119 -2260 2257 -1919
		mu 0 4 1044 1295 1300 1166
		f 4 -2265 -28 -1420 1431
		mu 0 4 1403 1402 48 956
		f 4 -59 22 -2266 -1432
		mu 0 4 956 36 1404 1403
		f 3 -2267 2261 1428
		mu 0 3 1405 1404 929
		f 3 1394 -2268 -1429
		mu 0 3 929 1406 1405
		f 4 -2269 2262 59 1429
		mu 0 4 1407 1406 38 960
		f 4 1426 -2264 -2270 -1430
		mu 0 4 960 50 1408 1407
		f 3 -2271 -1428 1430
		mu 0 3 1409 1408 961
		f 3 -2261 -2272 -1431
		mu 0 3 961 1402 1409
		f 4 2265 2273 -2275 -2273
		mu 0 4 1403 1404 1411 1410
		f 4 2266 2275 -2277 -2274
		mu 0 4 1404 1405 1412 1411
		f 4 2267 2279 -2281 -2276
		mu 0 4 1405 1406 1413 1412
		f 4 2268 2281 -2283 -2280
		mu 0 4 1406 1407 1414 1413
		f 4 2269 2284 -2286 -2282
		mu 0 4 1407 1408 1415 1414
		f 4 2270 2286 -2288 -2285
		mu 0 4 1408 1409 1416 1415
		f 4 2271 2289 -2291 -2287
		mu 0 4 1409 1402 1417 1416
		f 4 2264 2272 -2292 -2290
		mu 0 4 1402 1403 1410 1417;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode transform -n "bottom";
	rename -uid "750C1E44-43A6-FE7D-CCA9-AFA4924C3D5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -100.1 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "8CF4AD4B-4BB1-22EA-CF6D-D686B993E4F2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4864D8A4-441B-39CA-3277-EC921E370550";
	setAttr -s 21 ".lnk";
	setAttr -s 21 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "33838369-4D3E-DFA9-3DB0-4FA121E28891";
	setAttr ".cdl" 2;
	setAttr -s 9 ".dli[1:8]"  1 8 2 3 4 5 6 7;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "4C4BCB38-4197-0356-F8F3-7AA035EEAB58";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DFD0AA43-42EE-F346-20FD-10BE33824D15";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E8BA005A-4B64-3770-C0ED-BC980DCA1CDA";
	setAttr ".g" yes;
createNode displayLayer -n "Reference";
	rename -uid "A4E6FD81-49F5-C30F-C523-F6A38CBEDB7C";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "04546AA8-419D-FD94-B77E-E8A44AE67DC4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"flat\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1026\n                -height 713\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1026\n            -height 713\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1026\\n    -height 713\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1026\\n    -height 713\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0E7A637D-4E53-4BBB-323C-D2AF7455F043";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId5";
	rename -uid "4CB069C9-4BFD-5456-1C41-EA899793E38F";
	setAttr ".ihi" 0;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "E381084F-463A-85AA-1D88-F8B612EAED1E";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "B6FC970E-4E7D-22B6-390B-58B8B4125338";
createNode lambert -n "lambert2";
	rename -uid "3AA64718-47F7-9AF0-BB6A-7D898BA6A7AD";
	setAttr ".c" -type "float3" 0.7604 0.7008 0.7008 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "AC1197BB-4BDB-259B-A0E9-FD930AF9E683";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "066F286A-4F47-7B19-827A-ABB738D86162";
createNode displayLayer -n "Geom";
	rename -uid "96D556BD-498D-6743-7BCE-FCB0D411B3B2";
	setAttr ".do" 2;
createNode lambert -n "lambert3";
	rename -uid "95715BCA-451E-CB76-82AB-2A85A498D669";
	setAttr ".c" -type "float3" 0.8017 0 0 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "C713B9EA-43BC-5103-3B45-B8AFA6F1E4F4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0AD5BB2A-415F-482F-00BD-50BEC480F9D7";
createNode lambert -n "lambert4";
	rename -uid "77AC340E-4EE4-FE44-9A72-0AB1BAB373B3";
	setAttr ".c" -type "float3" 0.95670003 0.685 0.56919998 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "B607A5BB-44B2-BF76-712C-0B87BB7B26C8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "41933E3C-477C-E0D6-CEFA-81B315CD673B";
createNode lambert -n "lambert5";
	rename -uid "C8EAB5DF-474C-2853-BC44-5186DC083F04";
	setAttr ".c" -type "float3" 1 0.78829998 0.75940001 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "AE8F2B28-4674-70CE-BF33-5DA522EF3D14";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "588310B2-45EC-35E8-84EB-B38412C3E22A";
createNode lambert -n "lambert6";
	rename -uid "51B73014-4374-07A1-FB72-C28FAA112D04";
	setAttr ".c" -type "float3" 1 0.71030748 0.67084765 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "9D35F266-492B-74A3-4B13-F49579E1294D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "4229DBD5-4E71-D3BF-8B6E-BE862DCF45EC";
createNode lambert -n "lambert7";
	rename -uid "5024DA7D-406A-0507-0439-14B7216D77D6";
	setAttr ".c" -type "float3" 1 0.66659999 0.66659999 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "BD1FB20A-479C-F98E-0704-D1AA19ECE809";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "E3F05B39-4700-0737-A4A2-9DA4BA5FCEFC";
createNode shadingEngine -n "lambert8SG";
	rename -uid "B41CB5B7-489F-B1CA-F66B-67813C427109";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "5480BA90-480F-9867-B3EA-889CC2AB1CC1";
createNode lambert -n "lambert9";
	rename -uid "9AB043F4-48D9-6BE3-6FC2-DCA64E7DB9FB";
	setAttr ".c" -type "float3" 0.83789998 0.66060001 0.63639998 ;
createNode groupId -n "groupId16";
	rename -uid "1CABBCBB-4CA1-9CD2-FB09-C99E7A7FB7CE";
	setAttr ".ihi" 0;
createNode displayLayer -n "layer1";
	rename -uid "1F85EF90-495A-E958-52D2-83B1937494FD";
	setAttr ".do" 3;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "49DDA9F2-4690-E549-B865-93892C3D672D";
	setAttr ".txf" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 1 0 -1.1817010849070002 0.31226821198534555 0.13915682347836283 1;
createNode rebuildCurve -n "rebuildCurve2";
	rename -uid "7B8B3B5D-4994-0384-183E-E48BCBF21346";
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode rebuildCurve -n "rebuildCurve1";
	rename -uid "635C9764-43AD-7071-008B-17A9727C0672";
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "614C439A-4F5D-7BCD-2FCD-999AD980ECC3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "607E5836-42F8-E7BE-9D36-92B891292AB9";
	setAttr ".txf" -type "matrix" 0.99993704654165916 0.0054789698461246766 0.005123062686101524 0
		 -0.012426765077908008 0.99985871663609538 0.014612866599803927 0 -0.011283012562399388 -0.014675609765794777 0.99986385794317767 0
		 0.38889681353424432 -0.092785688976084746 -0.043653551218768537 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "AAAB6B7D-4F6B-E9D7-66D5-92B92B00265E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "50320AF1-44FF-2676-ACE2-29A63C7C5221";
	setAttr ".txf" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999989 0 -2.0674609737029705e-048 -5.9216652238661034 0.126788818967183 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "7525777A-4505-9421-5D4D-178C5C99D369";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode displayLayer -n "layer2";
	rename -uid "6C02D352-4EAB-81D6-6B22-2CBC6A555334";
	setAttr ".v" no;
	setAttr ".do" 4;
createNode displayLayer -n "layer3";
	rename -uid "1D9D2491-4DC2-64B3-BEB7-23A839F27451";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode displayLayer -n "layer4";
	rename -uid "B341B017-4F4D-102D-FA76-D29BBD67BA82";
	setAttr ".v" no;
	setAttr ".do" 6;
createNode lambert -n "lambert10";
	rename -uid "FE58832E-45E4-4647-92DF-5591B8DF06EE";
	setAttr ".c" -type "float3" 0.78399998 0.25166398 0.33356366 ;
createNode shadingEngine -n "lambert10SG";
	rename -uid "14F9AC78-4A19-4E78-A215-AD9B54FA298B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "08F44E3F-4828-5BA0-708B-5388DD45E4A2";
createNode groupId -n "groupId34";
	rename -uid "DE99FC28-4F65-0F77-4282-6FB382FBCA13";
	setAttr ".ihi" 0;
createNode lambert -n "lambert11";
	rename -uid "4DCBBD95-4039-5FEF-55AF-3393AADBC2C7";
	setAttr ".c" -type "float3" 1 0.52939999 0.60189998 ;
createNode shadingEngine -n "lambert11SG";
	rename -uid "EE538051-464F-0C08-D32A-F29C100ED253";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "0F815072-4164-B429-A5FF-90B5B92F4230";
createNode lambert -n "lambert12";
	rename -uid "34523AE9-4293-D2A3-F279-58978DE0D33C";
createNode shadingEngine -n "lambert12SG";
	rename -uid "C2E83D34-424A-AAED-8D98-5F99DB6AB194";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "52213B64-4D78-2CDA-AAB0-3EA4BC00D67E";
createNode file -n "file1";
	rename -uid "F87F86E3-46AA-A15C-4998-0282E31B7DCE";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "3375868C-41DB-8E33-6F65-13AD2506D1F2";
createNode lambert -n "lambert13";
	rename -uid "37C01186-4C2B-A6A8-76A7-929545B6EF4E";
createNode shadingEngine -n "lambert13SG";
	rename -uid "F5E84340-4CD9-ABE3-0F98-BEAD4CA7A599";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "47235481-4EC7-A5B3-8C64-139FA283B2D6";
createNode lambert -n "lambert14";
	rename -uid "BA47EB2E-4FB6-10C6-604D-3C88B90D3181";
createNode shadingEngine -n "lambert14SG";
	rename -uid "EF443881-4A58-4A5C-E051-B2ABD39B393E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "BCBCFB5E-49A7-E392-F4DC-5F98144939DD";
createNode file -n "file2";
	rename -uid "55A69B87-4CB2-88E9-2611-749938A8E57A";
	setAttr ".ftn" -type "string" "C:/Users/Briey/Documents/maya/projects/Orphan's Creed//images/orphy.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "7A185570-4020-90D3-9492-54B25C075F60";
createNode lambert -n "lambert15";
	rename -uid "FCD36698-42A3-1AD9-629D-B89C435A661D";
createNode shadingEngine -n "lambert15SG";
	rename -uid "BAF41BDE-4D52-9BCA-FAEE-298352E680A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "1C66AEAE-48D2-A6A9-15A3-A6906F61B7BC";
createNode file -n "file3";
	rename -uid "22BF4E15-4B92-F979-5592-EBB4CF606C43";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "5AFCC8F4-4375-0B3E-2028-DF8333A86791";
createNode lambert -n "lambert16";
	rename -uid "3ACCBC86-4D2A-0115-B315-41BA7A0AF02A";
createNode shadingEngine -n "lambert16SG";
	rename -uid "02CAD0F0-4F63-83E7-1F1F-EEA5B61D6AC1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "2354837C-433D-FF57-B0DF-95915BBA2D77";
createNode file -n "file4";
	rename -uid "22905CD2-46AE-F339-A0FA-8FBFD31FF708";
	setAttr ".ftn" -type "string" "C:/Users/Briey/Documents/maya/projects/Orphan's Creed//images/orphy.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "DBF4B9F5-4144-9016-A94B-07AECAEF2509";
createNode lambert -n "lambert17";
	rename -uid "70F0C3F2-4AE9-EFD0-9076-35B68ABFBBE0";
createNode shadingEngine -n "lambert17SG";
	rename -uid "62A4571B-4B24-B55E-58BF-7382884C55F8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "AC2FC6C5-4D8F-866E-50F8-AEBCB334CDE5";
createNode lambert -n "lambert18";
	rename -uid "37D33940-4491-05D9-61DF-BC9DFDB7A4ED";
createNode shadingEngine -n "lambert18SG";
	rename -uid "F1A50C56-4E81-4095-2855-C5B1FC3D5FB1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "2AA2E0E4-4750-B973-4E31-8E8B922CCEF1";
createNode lambert -n "lambert19";
	rename -uid "8481DA39-4AE3-E6F2-E441-8CAF7654A00A";
createNode shadingEngine -n "lambert19SG";
	rename -uid "167ABFCE-4E1A-E978-04AD-259292A084A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
	rename -uid "654EEE1F-4945-1FC1-64D9-D5A543A9BBFF";
createNode file -n "file5";
	rename -uid "B5905B53-497E-CB34-86BE-878E2E52E3A2";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "12824916-444C-6993-04A1-CF982E6330FA";
createNode lambert -n "lambert20";
	rename -uid "724E17A6-4F4A-1C6B-F735-768110AE5CA6";
createNode shadingEngine -n "lambert20SG";
	rename -uid "0FCA346E-45C0-07D1-B01B-D3AB5EEBA298";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo18";
	rename -uid "E7EE951E-4A28-9CD9-E222-029903378FFA";
createNode file -n "file6";
	rename -uid "BF44909D-48D8-28E7-303E-8A8FE45DD868";
	setAttr ".ftn" -type "string" "C:/Users/Briey/Downloads/paintmeeeee_lambert17_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "E0B0B237-4F37-0F04-152D-68A6BB3AC02C";
createNode skinCluster -n "skinCluster1";
	rename -uid "C66F15E3-4691-E33D-1B37-859CF059CF92";
	setAttr -s 1151 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[11]" 0.027853760858979174;
	setAttr ".wl[0].w[12]" 0.18395080184996651;
	setAttr ".wl[0].w[13]" 0.7712515590310608;
	setAttr ".wl[0].w[15]" 0.010297901694215295;
	setAttr ".wl[0].w[19]" 0.0066459765657782555;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[11]" 0.0012448258179876632;
	setAttr ".wl[1].w[12]" 0.045433239589853402;
	setAttr ".wl[1].w[13]" 0.95295445404322676;
	setAttr ".wl[1].w[15]" 0.00035621889401227236;
	setAttr ".wl[1].w[19]" 1.1261654919964991e-005;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[11]" 0.001019063426564265;
	setAttr ".wl[2].w[12]" 0.042419612647380367;
	setAttr ".wl[2].w[13]" 0.95622425924664822;
	setAttr ".wl[2].w[15]" 0.00033663911744952202;
	setAttr ".wl[2].w[19]" 4.2556195769076295e-007;
	setAttr -s 4 ".wl[3].w";
	setAttr ".wl[3].w[11]" 0.0024316953535034871;
	setAttr ".wl[3].w[12]" 0.039087304432035785;
	setAttr ".wl[3].w[13]" 0.95835272023593487;
	setAttr ".wl[3].w[15]" 0.00012827997852582484;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[11]" 0.0067707720761140356;
	setAttr ".wl[4].w[12]" 0.16471631139185883;
	setAttr ".wl[4].w[13]" 0.82847386706788639;
	setAttr ".wl[4].w[15]" 2.7921123546548188e-005;
	setAttr ".wl[4].w[19]" 1.1128340594258825e-005;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[11]" 0.010492960242579556;
	setAttr ".wl[5].w[12]" 0.20186954766701604;
	setAttr ".wl[5].w[13]" 0.78763727243899273;
	setAttr ".wl[5].w[15]" 2.19651411725863e-007;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[11]" 0.0077960151785688818;
	setAttr ".wl[6].w[12]" 0.21189102712135882;
	setAttr ".wl[6].w[13]" 0.78031293114772438;
	setAttr ".wl[6].w[15]" 2.6552347875963278e-008;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[11]" 0.029099380715779024;
	setAttr ".wl[7].w[12]" 0.21563671131051862;
	setAttr ".wl[7].w[13]" 0.75525538428703909;
	setAttr ".wl[7].w[15]" 8.125241038214881e-006;
	setAttr ".wl[7].w[19]" 3.9844562505029246e-007;
	setAttr -s 4 ".wl[8].w";
	setAttr ".wl[8].w[11]" 0.07181150928910876;
	setAttr ".wl[8].w[12]" 0.29985808820147569;
	setAttr ".wl[8].w[13]" 0.62712127502552606;
	setAttr ".wl[8].w[15]" 0.0012091274838894606;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[11]" 0.054193279175865521;
	setAttr ".wl[9].w[12]" 0.23716443860806261;
	setAttr ".wl[9].w[13]" 0.68212395428410644;
	setAttr ".wl[9].w[15]" 0.022521621364260742;
	setAttr ".wl[9].w[19]" 0.0039967065677046776;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[12]" 0.016671723916410055;
	setAttr ".wl[10].w[13]" 0.051591820665286808;
	setAttr ".wl[10].w[14]" 0.64783618107659313;
	setAttr ".wl[10].w[15]" 0.0074998572522476901;
	setAttr ".wl[10].w[19]" 0.27640041708946228;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[12]" 0.0027041678497558;
	setAttr ".wl[11].w[13]" 0.10471143931227558;
	setAttr ".wl[11].w[14]" 0.88575884489530721;
	setAttr ".wl[11].w[15]" 0.0009598604382506583;
	setAttr ".wl[11].w[19]" 0.0058656875044107437;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[12]" 0.0025101474659407082;
	setAttr ".wl[12].w[13]" 0.024760903278751637;
	setAttr ".wl[12].w[14]" 0.97182319827477881;
	setAttr ".wl[12].w[15]" 0.00085092242807149887;
	setAttr ".wl[12].w[19]" 5.4828552457310711e-005;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[11]" 0.012933624225374987;
	setAttr ".wl[13].w[12]" 0.01131901411238358;
	setAttr ".wl[13].w[13]" 0.030029164798293401;
	setAttr ".wl[13].w[14]" 0.93790777464461206;
	setAttr ".wl[13].w[19]" 0.0078104222193360329;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[11]" 0.17344223565731492;
	setAttr ".wl[14].w[12]" 0.15636384347106519;
	setAttr ".wl[14].w[14]" 0.67019223602385247;
	setAttr ".wl[14].w[15]" 5.1805594536435962e-011;
	setAttr ".wl[14].w[16]" 1.6847959618473635e-006;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[11]" 0.0045980585288434139;
	setAttr ".wl[15].w[12]" 0.010242876867364284;
	setAttr ".wl[15].w[14]" 0.75740677732202899;
	setAttr ".wl[15].w[19]" 0.2097455322426674;
	setAttr ".wl[15].w[20]" 0.018006755039095879;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[11]" 6.5629247637163548e-007;
	setAttr ".wl[16].w[12]" 1.0707276998478035e-006;
	setAttr ".wl[16].w[14]" 0.99992704991469872;
	setAttr ".wl[16].w[19]" 7.1204234726458815e-005;
	setAttr ".wl[16].w[20]" 1.8830398573754792e-008;
	setAttr ".wl[17].w[14]"  1;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[11]" 6.7190965817064142e-009;
	setAttr ".wl[18].w[12]" 6.5425473442532401e-010;
	setAttr ".wl[18].w[14]" 0.99999991882157568;
	setAttr ".wl[18].w[15]" 9.1286695147456755e-010;
	setAttr ".wl[18].w[19]" 7.2892206048891239e-008;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[11]" 2.9880386472301615e-005;
	setAttr ".wl[19].w[12]" 2.7848383416069658e-007;
	setAttr ".wl[19].w[14]" 0.99996138443484606;
	setAttr ".wl[19].w[15]" 4.6057767377760683e-008;
	setAttr ".wl[19].w[16]" 8.4106370801191998e-006;
	setAttr ".wl[20].w[14]"  1;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[11]" 4.8552237394240005e-006;
	setAttr ".wl[21].w[12]" 2.1215558858796726e-006;
	setAttr ".wl[21].w[14]" 0.99796622009554958;
	setAttr ".wl[21].w[19]" 0.0020209540361591618;
	setAttr ".wl[21].w[20]" 5.8490886658546515e-006;
	setAttr ".wl[22].w[14]"  1;
	setAttr ".wl[23].w[14]"  1;
	setAttr ".wl[24].w[14]"  1;
	setAttr ".wl[25].w[14]"  1;
	setAttr ".wl[26].w[14]"  1;
	setAttr ".wl[27].w[14]"  1;
	setAttr ".wl[28].w[14]"  1;
	setAttr ".wl[29].w[14]"  1;
	setAttr ".wl[30].w[14]"  1;
	setAttr ".wl[31].w[14]"  1;
	setAttr -s 5 ".wl[32].w[12:16]"  0.071760075253967437 0.59540830499903541 
		0.17282254998386629 0.019201532006263733 0.14080753775686713;
	setAttr ".wl[33].w[14]"  1;
	setAttr ".wl[34].w[14]"  1;
	setAttr ".wl[35].w[14]"  1;
	setAttr ".wl[36].w[14]"  1;
	setAttr ".wl[37].w[14]"  1;
	setAttr -s 5 ".wl[38].w[12:16]"  8.6468675287534915e-005 0.00034434589706429603 
		0.99551308155059814 0.003743918407628867 0.00031218546942115731;
	setAttr -s 4 ".wl[39].w";
	setAttr ".wl[39].w[12]" 4.7634036112678434e-007;
	setAttr ".wl[39].w[14]" 0.99996791524843498;
	setAttr ".wl[39].w[19]" 2.8279498932665549e-005;
	setAttr ".wl[39].w[20]" 3.3289122711721575e-006;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[11]" 2.7213604322785861e-006;
	setAttr ".wl[40].w[12]" 0.10971668115679949;
	setAttr ".wl[40].w[13]" 0.89027565416016496;
	setAttr ".wl[40].w[15]" 4.9199430951804937e-006;
	setAttr ".wl[40].w[19]" 2.3379508107268521e-008;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[11]" 0.03244742621374546;
	setAttr ".wl[41].w[12]" 0.20035922541797652;
	setAttr ".wl[41].w[13]" 0.71516072620842386;
	setAttr ".wl[41].w[15]" 0.022537733079329766;
	setAttr ".wl[41].w[19]" 0.029494889080524445;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[12]" 0.015356226343277287;
	setAttr ".wl[42].w[13]" 0.0057391004923945249;
	setAttr ".wl[42].w[14]" 0.69354006082174047;
	setAttr ".wl[42].w[19]" 0.27771104626523607;
	setAttr ".wl[42].w[20]" 0.0076535660773515701;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[11]" 1.1049719468014743e-006;
	setAttr ".wl[43].w[12]" 8.7544932541778884e-007;
	setAttr ".wl[43].w[14]" 0.99951560212791346;
	setAttr ".wl[43].w[19]" 0.00048234985413404835;
	setAttr ".wl[43].w[20]" 6.7596680253245722e-008;
	setAttr ".wl[44].w[14]"  1;
	setAttr ".wl[45].w[14]"  1;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[12]" 3.3745150164952708e-007;
	setAttr ".wl[46].w[14]" 0.99998337162223438;
	setAttr ".wl[46].w[19]" 1.5953372250780369e-005;
	setAttr ".wl[46].w[20]" 3.3755401318558143e-007;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[11]" 0.0029610345858034743;
	setAttr ".wl[47].w[12]" 0.086838104726026641;
	setAttr ".wl[47].w[13]" 0.91019231792160471;
	setAttr ".wl[47].w[15]" 2.1221717361186165e-006;
	setAttr ".wl[47].w[19]" 6.420594829005879e-006;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[11]" 0.13259047638960236;
	setAttr ".wl[48].w[12]" 0.084051877982404974;
	setAttr ".wl[48].w[14]" 0.78266988480745636;
	setAttr ".wl[48].w[15]" 9.5282608469915431e-008;
	setAttr ".wl[48].w[16]" 0.00068766553792786746;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[11]" 0.00013662576502774347;
	setAttr ".wl[49].w[12]" 1.2792922314783513e-006;
	setAttr ".wl[49].w[14]" 0.9998485708379411;
	setAttr ".wl[49].w[15]" 9.1184548800526954e-010;
	setAttr ".wl[49].w[16]" 1.3523192954175369e-005;
	setAttr ".wl[50].w[14]"  1;
	setAttr -s 5 ".wl[51].w[12:16]"  3.3006587228878845e-006 1.4899458924333291e-006 
		0.99986386299133301 0.0001139101581747442 1.7436245876926777e-005;
	setAttr -s 5 ".wl[52].w[12:16]"  3.7404277864860169e-006 5.7312508905597948e-006 
		0.99978601932525635 0.00018604163647918938 1.8467359587417159e-005;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[11]" 2.5013368567116901e-007;
	setAttr ".wl[53].w[12]" 3.8996660206359235e-008;
	setAttr ".wl[53].w[14]" 0.99999360945198412;
	setAttr ".wl[53].w[19]" 5.8357206731170538e-006;
	setAttr ".wl[53].w[20]" 2.6569699684841908e-007;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[11]" 5.2281171426045484e-008;
	setAttr ".wl[54].w[12]" 1.253158756539728e-008;
	setAttr ".wl[54].w[14]" 0.99999742105246481;
	setAttr ".wl[54].w[19]" 2.5089348619865727e-006;
	setAttr ".wl[54].w[20]" 5.1999142769432183e-009;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[12]" 2.9224354989719724e-009;
	setAttr ".wl[55].w[13]" 2.7591255730182391e-010;
	setAttr ".wl[55].w[14]" 0.99999990115547577;
	setAttr ".wl[55].w[19]" 8.8840291504088422e-008;
	setAttr ".wl[55].w[20]" 6.8058847446650361e-009;
	setAttr ".wl[56].w[14]"  1;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[12]" 5.3559126966564702e-006;
	setAttr ".wl[57].w[13]" 1.3775724621875867e-007;
	setAttr ".wl[57].w[14]" 0.99982184806704766;
	setAttr ".wl[57].w[19]" 0.00016059786667984425;
	setAttr ".wl[57].w[20]" 1.2060396329616196e-005;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[12]" 8.6340492753906922e-006;
	setAttr ".wl[58].w[13]" 7.8818244419130944e-006;
	setAttr ".wl[58].w[14]" 0.99948584250272599;
	setAttr ".wl[58].w[19]" 0.00040442137066378175;
	setAttr ".wl[58].w[20]" 9.3220252892933786e-005;
	setAttr ".wl[59].w[14]"  1;
	setAttr -s 5 ".wl[60].w[12:16]"  0.00011487827487650023 0.0002335396101409394 
		0.99820429176193826 0.001045102602802217 0.00040218775024208339;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[11]" 0.028080108674444718;
	setAttr ".wl[61].w[12]" 0.0012176286134913043;
	setAttr ".wl[61].w[14]" 0.96704114547512166;
	setAttr ".wl[61].w[15]" 5.1485417316143867e-006;
	setAttr ".wl[61].w[16]" 0.0036559686952106862;
	setAttr -s 5 ".wl[62].w[12:16]"  0.0007239677153832 0.0012974523097883577 
		0.99522647329830949 8.7233660451602191e-005 0.0026648730160672919;
	setAttr -s 5 ".wl[63].w[12:16]"  6.9782842869662673e-005 0.00090049695465355497 
		0.99615478515625 0.0024972307025501726 0.00037770434367660955;
	setAttr -s 5 ".wl[64].w[12:16]"  0.00039779950125627542 0.0053523342136555354 
		0.97682034969329834 0.014218217710311667 0.0032112988814781817;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[11]" 0.0022456796480597452;
	setAttr ".wl[65].w[12]" 0.0070768513823764468;
	setAttr ".wl[65].w[15]" 0.94297719533103896;
	setAttr ".wl[65].w[16]" 0.047664580755422299;
	setAttr ".wl[65].w[17]" 3.5692883102456108e-005;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[11]" 0.0011124715567887734;
	setAttr ".wl[66].w[12]" 0.0022926382448635384;
	setAttr ".wl[66].w[15]" 0.95867883349243899;
	setAttr ".wl[66].w[16]" 0.037870280960815621;
	setAttr ".wl[66].w[17]" 4.5775745093123987e-005;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[11]" 0.0031814948367323002;
	setAttr ".wl[67].w[12]" 0.0071600516216415982;
	setAttr ".wl[67].w[15]" 0.96416781454231537;
	setAttr ".wl[67].w[16]" 0.023512423004997389;
	setAttr ".wl[67].w[17]" 0.0019782159943133593;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[12]" 0.0015185596993832825;
	setAttr ".wl[68].w[15]" 0.92011437789230921;
	setAttr ".wl[68].w[16]" 0.077560516339421917;
	setAttr ".wl[68].w[17]" 0.00036581148476826135;
	setAttr ".wl[68].w[18]" 0.00044073458411730826;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[12]" 0.00010284821793505477;
	setAttr ".wl[69].w[15]" 0.00020636975776831845;
	setAttr ".wl[69].w[16]" 0.9654435855304393;
	setAttr ".wl[69].w[17]" 0.032218195013888846;
	setAttr ".wl[69].w[18]" 0.0020290014799684286;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[12]" 5.0834725611047479e-005;
	setAttr ".wl[70].w[15]" 0.00032285603074387815;
	setAttr ".wl[70].w[16]" 0.78421927742510988;
	setAttr ".wl[70].w[17]" 0.21534248196730391;
	setAttr ".wl[70].w[18]" 6.4549851231276989e-005;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[12]" 0.00013930826101333233;
	setAttr ".wl[71].w[15]" 0.0014505839966161348;
	setAttr ".wl[71].w[16]" 0.86674141085304912;
	setAttr ".wl[71].w[17]" 0.12589171180654601;
	setAttr ".wl[71].w[18]" 0.0057769850827753544;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[12]" 3.7485184151636375e-005;
	setAttr ".wl[72].w[15]" 0.00056815374917800843;
	setAttr ".wl[72].w[16]" 0.7463979283445068;
	setAttr ".wl[72].w[17]" 0.25220932806757201;
	setAttr ".wl[72].w[18]" 0.00078710465459153056;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[12]" 3.2135807667498125e-005;
	setAttr ".wl[73].w[15]" 0.00024754478970206517;
	setAttr ".wl[73].w[16]" 0.014134888064811953;
	setAttr ".wl[73].w[17]" 0.82601543772266806;
	setAttr ".wl[73].w[18]" 0.15956999361515045;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[12]" 4.2792838427932509e-005;
	setAttr ".wl[74].w[15]" 0.00036456228440978557;
	setAttr ".wl[74].w[16]" 0.021448309664364097;
	setAttr ".wl[74].w[17]" 0.91244817769774922;
	setAttr ".wl[74].w[18]" 0.065696157515048981;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[12]" 9.5342188554505027e-005;
	setAttr ".wl[75].w[15]" 0.00075862842304250111;
	setAttr ".wl[75].w[16]" 0.035011645646122719;
	setAttr ".wl[75].w[17]" 0.8806863313359693;
	setAttr ".wl[75].w[18]" 0.083448052406311035;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[12]" 2.9551169330134779e-005;
	setAttr ".wl[76].w[15]" 0.00025142445392901556;
	setAttr ".wl[76].w[16]" 0.014819588264826468;
	setAttr ".wl[76].w[17]" 0.8749095471458308;
	setAttr ".wl[76].w[18]" 0.10998988896608353;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[12]" 0.00028317814563985416;
	setAttr ".wl[77].w[15]" 0.0018372408380423232;
	setAttr ".wl[77].w[16]" 0.036736594772519893;
	setAttr ".wl[77].w[17]" 0.55921542567594207;
	setAttr ".wl[77].w[18]" 0.40192756056785583;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[12]" 0.00024551510260566303;
	setAttr ".wl[78].w[15]" 0.0015406035040266043;
	setAttr ".wl[78].w[16]" 0.031509799017950424;
	setAttr ".wl[78].w[17]" 0.5293755053337913;
	setAttr ".wl[78].w[18]" 0.43732857704162598;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[12]" 0.00020156716422034085;
	setAttr ".wl[79].w[15]" 0.001381257063655672;
	setAttr ".wl[79].w[16]" 0.032820897650494722;
	setAttr ".wl[79].w[17]" 0.68952365677610927;
	setAttr ".wl[79].w[18]" 0.27607262134552002;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[12]" 0.00023001414067208228;
	setAttr ".wl[80].w[15]" 0.0014398593848926455;
	setAttr ".wl[80].w[16]" 0.029494178450272728;
	setAttr ".wl[80].w[17]" 0.52696800044573233;
	setAttr ".wl[80].w[18]" 0.44186794757843018;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[12]" 2.3513865997727172e-005;
	setAttr ".wl[81].w[15]" 0.00039053403865070053;
	setAttr ".wl[81].w[16]" 0.92037968863791197;
	setAttr ".wl[81].w[17]" 0.0790020266869252;
	setAttr ".wl[81].w[18]" 0.00020423677051439881;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[12]" 0.00012437673512175198;
	setAttr ".wl[82].w[15]" 0.0013044002112940589;
	setAttr ".wl[82].w[16]" 0.9519989348771698;
	setAttr ".wl[82].w[17]" 0.043349760262665078;
	setAttr ".wl[82].w[18]" 0.003222527913749218;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[12]" 4.2646433553668293e-005;
	setAttr ".wl[83].w[15]" 4.2797889298340009e-005;
	setAttr ".wl[83].w[16]" 0.99796451878984116;
	setAttr ".wl[83].w[17]" 0.0016448788884972584;
	setAttr ".wl[83].w[18]" 0.00030515799880959094;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[12]" 3.226282215129291e-006;
	setAttr ".wl[84].w[15]" 1.7883836061536789e-005;
	setAttr ".wl[84].w[16]" 0.94882319366228363;
	setAttr ".wl[84].w[17]" 0.051154329386918787;
	setAttr ".wl[84].w[18]" 1.3668325209437171e-006;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[12]" 4.3648424027944724e-006;
	setAttr ".wl[85].w[15]" 3.7618175226396738e-005;
	setAttr ".wl[85].w[16]" 0.0024334362823671199;
	setAttr ".wl[85].w[17]" 0.88231630508383474;
	setAttr ".wl[85].w[18]" 0.11520827561616898;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[12]" 0.00019435236555973928;
	setAttr ".wl[86].w[15]" 0.0012268031205785643;
	setAttr ".wl[86].w[16]" 0.025768818988318069;
	setAttr ".wl[86].w[17]" 0.54428013713404888;
	setAttr ".wl[86].w[18]" 0.42852988839149475;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[12]" 0.00018958480844846932;
	setAttr ".wl[87].w[15]" 0.0011984158977997555;
	setAttr ".wl[87].w[16]" 0.025093055432901013;
	setAttr ".wl[87].w[17]" 0.49724558599265622;
	setAttr ".wl[87].w[18]" 0.47627335786819458;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[12]" 5.414244606798221e-007;
	setAttr ".wl[88].w[15]" 4.1799163816925659e-006;
	setAttr ".wl[88].w[16]" 0.00033475073567539;
	setAttr ".wl[88].w[17]" 0.83520863077916463;
	setAttr ".wl[88].w[18]" 0.16445189714431763;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[12]" 7.1168722307334435e-005;
	setAttr ".wl[89].w[15]" 0.00049502923916708676;
	setAttr ".wl[89].w[16]" 0.014274508858758533;
	setAttr ".wl[89].w[17]" 0.63952641225363482;
	setAttr ".wl[89].w[18]" 0.3456328809261322;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[12]" 0.00030162161742847696;
	setAttr ".wl[90].w[15]" 0.0018346233251702742;
	setAttr ".wl[90].w[16]" 0.034174502247539457;
	setAttr ".wl[90].w[17]" 0.54076556868968362;
	setAttr ".wl[90].w[18]" 0.42292368412017822;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[12]" 4.2210571113869547e-007;
	setAttr ".wl[91].w[15]" 3.2706954972386146e-006;
	setAttr ".wl[91].w[16]" 0.00025754255477936457;
	setAttr ".wl[91].w[17]" 0.91810836333070733;
	setAttr ".wl[91].w[18]" 0.081630401313304901;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[12]" 3.4512184385596011e-006;
	setAttr ".wl[92].w[15]" 2.9547431320645697e-005;
	setAttr ".wl[92].w[16]" 0.0018028589434670418;
	setAttr ".wl[92].w[17]" 0.87791253898222466;
	setAttr ".wl[92].w[18]" 0.1202516034245491;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[12]" 7.8452205596396042e-005;
	setAttr ".wl[93].w[15]" 0.00054351735501604454;
	setAttr ".wl[93].w[16]" 0.015013530487621119;
	setAttr ".wl[93].w[17]" 0.63789408435957284;
	setAttr ".wl[93].w[18]" 0.3464704155921936;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[12]" 0.00026586745052613081;
	setAttr ".wl[94].w[15]" 0.0016192948093271809;
	setAttr ".wl[94].w[16]" 0.029891834425200312;
	setAttr ".wl[94].w[17]" 0.48411150165747302;
	setAttr ".wl[94].w[18]" 0.48411150165747324;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[12]" 1.0896747380301698e-006;
	setAttr ".wl[95].w[15]" 8.4319914459139681e-006;
	setAttr ".wl[95].w[16]" 0.00061748982605643694;
	setAttr ".wl[95].w[17]" 0.86622165100337267;
	setAttr ".wl[95].w[18]" 0.1331513375043869;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[12]" 1.4824129163568027e-005;
	setAttr ".wl[96].w[15]" 0.00012632234478031365;
	setAttr ".wl[96].w[16]" 0.006903395595224876;
	setAttr ".wl[96].w[17]" 0.87980605340507445;
	setAttr ".wl[96].w[18]" 0.11314940452575684;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[12]" 9.3810792095619901e-005;
	setAttr ".wl[97].w[15]" 0.00064641929076693567;
	setAttr ".wl[97].w[16]" 0.017088208052039301;
	setAttr ".wl[97].w[17]" 0.60635810747552599;
	setAttr ".wl[97].w[18]" 0.37581345438957214;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[12]" 0.00020679226639474149;
	setAttr ".wl[98].w[15]" 0.0013454174576604525;
	setAttr ".wl[98].w[16]" 0.028612050287969377;
	setAttr ".wl[98].w[17]" 0.55824248160708556;
	setAttr ".wl[98].w[18]" 0.41159325838088989;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[12]" 4.528671077546285e-006;
	setAttr ".wl[99].w[15]" 3.5047997880604575e-005;
	setAttr ".wl[99].w[16]" 0.0023677687079918007;
	setAttr ".wl[99].w[17]" 0.86423925737287455;
	setAttr ".wl[99].w[18]" 0.13335339725017548;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[12]" 6.3324759953934626e-005;
	setAttr ".wl[100].w[15]" 0.00044197001240346581;
	setAttr ".wl[100].w[16]" 0.012675848598530177;
	setAttr ".wl[100].w[17]" 0.60845265451309982;
	setAttr ".wl[100].w[18]" 0.37836620211601257;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[12]" 0.00020120874174892292;
	setAttr ".wl[101].w[15]" 0.0012851549903503488;
	setAttr ".wl[101].w[16]" 0.027038744391041324;
	setAttr ".wl[101].w[17]" 0.5550935923811624;
	setAttr ".wl[101].w[18]" 0.41638129949569702;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[12]" 0.00012409482254090742;
	setAttr ".wl[102].w[15]" 0.00085369827926839222;
	setAttr ".wl[102].w[16]" 0.021711077107042644;
	setAttr ".wl[102].w[17]" 0.63371735356510439;
	setAttr ".wl[102].w[18]" 0.3435937762260437;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[12]" 0.00023049136842960755;
	setAttr ".wl[103].w[15]" 0.0014667643096300512;
	setAttr ".wl[103].w[16]" 0.029513201917843322;
	setAttr ".wl[103].w[17]" 0.52851619788734283;
	setAttr ".wl[103].w[18]" 0.44027334451675415;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[12]" 6.2002393402839039e-005;
	setAttr ".wl[104].w[15]" 0.0005860536087261267;
	setAttr ".wl[104].w[16]" 0.26177549194638911;
	setAttr ".wl[104].w[17]" 0.730351990522078;
	setAttr ".wl[104].w[18]" 0.0072244615294039249;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[12]" 1.317384990279263e-005;
	setAttr ".wl[105].w[15]" 0.00012254767861754202;
	setAttr ".wl[105].w[16]" 0.027384623961270674;
	setAttr ".wl[105].w[17]" 0.93867349441785519;
	setAttr ".wl[105].w[18]" 0.033806160092353821;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[12]" 2.2841370649775995e-005;
	setAttr ".wl[106].w[15]" 0.00015881635212279557;
	setAttr ".wl[106].w[16]" 0.87760203162598149;
	setAttr ".wl[106].w[17]" 0.12199267625049169;
	setAttr ".wl[106].w[18]" 0.00022363440075423568;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[12]" 6.6714181460430773e-006;
	setAttr ".wl[107].w[15]" 6.3759910591069857e-005;
	setAttr ".wl[107].w[16]" 0.015836930149976759;
	setAttr ".wl[107].w[17]" 0.97759009634220828;
	setAttr ".wl[107].w[18]" 0.0065025421790778637;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[12]" 9.1593140395481877e-005;
	setAttr ".wl[108].w[15]" 0.00085128556509485114;
	setAttr ".wl[108].w[16]" 0.10847594322471266;
	setAttr ".wl[108].w[17]" 0.87709701486000102;
	setAttr ".wl[108].w[18]" 0.013484163209795952;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[12]" 4.1964545102744227e-005;
	setAttr ".wl[109].w[15]" 0.00039896856948332744;
	setAttr ".wl[109].w[16]" 0.037339781208062875;
	setAttr ".wl[109].w[17]" 0.92508406461326032;
	setAttr ".wl[109].w[18]" 0.037135221064090729;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[12]" 0.00012403881131005777;
	setAttr ".wl[110].w[15]" 0.0011181716293796613;
	setAttr ".wl[110].w[16]" 0.1313816977584234;
	setAttr ".wl[110].w[17]" 0.85937009184088164;
	setAttr ".wl[110].w[18]" 0.0080059999600052834;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[12]" 6.3421694374396172e-005;
	setAttr ".wl[111].w[15]" 0.00059896922855877995;
	setAttr ".wl[111].w[16]" 0.051059459563263666;
	setAttr ".wl[111].w[17]" 0.79544020250280922;
	setAttr ".wl[111].w[18]" 0.15283794701099396;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[11]" 0.031545918165619448;
	setAttr ".wl[112].w[12]" 0.19277630856543893;
	setAttr ".wl[112].w[13]" 0.0075334088603557512;
	setAttr ".wl[112].w[15]" 0.76802650365957126;
	setAttr ".wl[112].w[16]" 0.00011786074901465327;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[11]" 0.044290809197698081;
	setAttr ".wl[113].w[12]" 0.14816212073520618;
	setAttr ".wl[113].w[13]" 0.0067912058938915257;
	setAttr ".wl[113].w[15]" 0.80064280193278803;
	setAttr ".wl[113].w[16]" 0.00011306224041618407;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[11]" 0.015542023651146226;
	setAttr ".wl[114].w[12]" 0.051380365842628728;
	setAttr ".wl[114].w[13]" 0.022002298807025679;
	setAttr ".wl[114].w[15]" 0.91060445584381633;
	setAttr ".wl[114].w[16]" 0.00047085585538297892;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[11]" 0.0027747569836093248;
	setAttr ".wl[115].w[12]" 0.015695849051203376;
	setAttr ".wl[115].w[13]" 0.0043833984885193406;
	setAttr ".wl[115].w[15]" 0.9771333399515707;
	setAttr ".wl[115].w[16]" 1.2655525097216014e-005;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[11]" 0.055877643418796544;
	setAttr ".wl[116].w[12]" 0.32709954222301652;
	setAttr ".wl[116].w[13]" 0.030257146182651767;
	setAttr ".wl[116].w[19]" 0.58676550553154982;
	setAttr ".wl[116].w[20]" 1.6264398539078684e-007;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[11]" 0.068936950583983247;
	setAttr ".wl[117].w[12]" 0.31615530934070368;
	setAttr ".wl[117].w[13]" 0.029308845692294864;
	setAttr ".wl[117].w[19]" 0.58553142928840152;
	setAttr ".wl[117].w[20]" 6.7465094616636634e-005;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[11]" 0.00064061817588441491;
	setAttr ".wl[118].w[12]" 0.0014216108055039134;
	setAttr ".wl[118].w[19]" 0.32076509883535576;
	setAttr ".wl[118].w[20]" 0.67535905383341321;
	setAttr ".wl[118].w[21]" 0.0018136183498427272;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[12]" 0.00087334314977450677;
	setAttr ".wl[119].w[19]" 0.9252039829151335;
	setAttr ".wl[119].w[20]" 0.072565150305932816;
	setAttr ".wl[119].w[21]" 0.00098824081942439079;
	setAttr ".wl[119].w[22]" 0.00036928280973476846;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[11]" 0.021523824937617439;
	setAttr ".wl[120].w[12]" 0.07892506071077976;
	setAttr ".wl[120].w[13]" 0.043225648244730332;
	setAttr ".wl[120].w[19]" 0.85613288329587633;
	setAttr ".wl[120].w[20]" 0.00019258281099610031;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[12]" 0.0061892430106213281;
	setAttr ".wl[121].w[19]" 0.34571387113383739;
	setAttr ".wl[121].w[20]" 0.63574440489225037;
	setAttr ".wl[121].w[21]" 0.0078559918329119682;
	setAttr ".wl[121].w[22]" 0.0044964891303789006;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[11]" 0.011513062499263128;
	setAttr ".wl[122].w[12]" 0.066974648718450325;
	setAttr ".wl[122].w[13]" 0.027276789781401377;
	setAttr ".wl[122].w[19]" 0.89413829257095756;
	setAttr ".wl[122].w[20]" 9.7206429927609861e-005;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[12]" 0.0010724714069104979;
	setAttr ".wl[123].w[19]" 0.75139869505210777;
	setAttr ".wl[123].w[20]" 0.24581936191855197;
	setAttr ".wl[123].w[21]" 0.0011316632153466344;
	setAttr ".wl[123].w[22]" 0.00057780840708322647;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[12]" 3.1660431099781685e-005;
	setAttr ".wl[124].w[19]" 2.1783353138408223e-005;
	setAttr ".wl[124].w[20]" 0.7407848811123694;
	setAttr ".wl[124].w[21]" 0.25809144751300284;
	setAttr ".wl[124].w[22]" 0.0010702275903895497;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[12]" 2.8112644229533911e-006;
	setAttr ".wl[125].w[19]" 3.0460396016863946e-010;
	setAttr ".wl[125].w[20]" 0.84037024150790929;
	setAttr ".wl[125].w[21]" 0.15908720887845543;
	setAttr ".wl[125].w[22]" 0.00053973804460838437;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[12]" 9.2447953660516975e-005;
	setAttr ".wl[126].w[19]" 1.0421889014643928e-005;
	setAttr ".wl[126].w[20]" 0.73039161307222178;
	setAttr ".wl[126].w[21]" 0.26733767682967863;
	setAttr ".wl[126].w[22]" 0.0021678402554243803;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[12]" 2.0135163488749875e-005;
	setAttr ".wl[127].w[19]" 3.3248355676252714e-008;
	setAttr ".wl[127].w[20]" 0.82077836311522123;
	setAttr ".wl[127].w[21]" 0.17468908347339096;
	setAttr ".wl[127].w[22]" 0.0045123849995434284;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[12]" 3.2092629067480578e-005;
	setAttr ".wl[128].w[19]" 1.9649672047535299e-008;
	setAttr ".wl[128].w[20]" 0.45303349688039712;
	setAttr ".wl[128].w[21]" 0.53463554049823203;
	setAttr ".wl[128].w[22]" 0.01229885034263134;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[12]" 3.7689985823978241e-005;
	setAttr ".wl[129].w[19]" 0.00014320740312709202;
	setAttr ".wl[129].w[20]" 0.33072972781910648;
	setAttr ".wl[129].w[21]" 0.66629743432451027;
	setAttr ".wl[129].w[22]" 0.0027919404674321413;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[12]" 5.9439523675973785e-005;
	setAttr ".wl[130].w[19]" 0.00051160633129421283;
	setAttr ".wl[130].w[20]" 0.023185952931171414;
	setAttr ".wl[130].w[21]" 0.86019605099279672;
	setAttr ".wl[130].w[22]" 0.11604695022106171;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[12]" 5.6174030957131066e-006;
	setAttr ".wl[131].w[19]" 1.7646269043325447e-005;
	setAttr ".wl[131].w[20]" 0.002628308846488439;
	setAttr ".wl[131].w[21]" 0.49867421374068621;
	setAttr ".wl[131].w[22]" 0.49867421374068632;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[12]" 1.1424023682359696e-006;
	setAttr ".wl[132].w[19]" 3.5642524380818941e-006;
	setAttr ".wl[132].w[20]" 0.00058798684479082701;
	setAttr ".wl[132].w[21]" 0.49970365325020144;
	setAttr ".wl[132].w[22]" 0.49970365325020144;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[12]" 4.2968298605422213e-007;
	setAttr ".wl[133].w[19]" 1.3603117849925184e-006;
	setAttr ".wl[133].w[20]" 0.00023945884138216959;
	setAttr ".wl[133].w[21]" 0.49987937558192341;
	setAttr ".wl[133].w[22]" 0.49987937558192341;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[12]" 4.9508283316940004e-007;
	setAttr ".wl[134].w[19]" 4.2851362660459523e-006;
	setAttr ".wl[134].w[20]" 0.00027822637260709298;
	setAttr ".wl[134].w[21]" 0.63031044228562827;
	setAttr ".wl[134].w[22]" 0.36940655112266541;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[12]" 2.6811898689606285e-005;
	setAttr ".wl[135].w[19]" 1.4473678795440031e-005;
	setAttr ".wl[135].w[20]" 0.012696540712512703;
	setAttr ".wl[135].w[21]" 0.78821368437780315;
	setAttr ".wl[135].w[22]" 0.1990484893321991;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[12]" 8.3201638309830358e-006;
	setAttr ".wl[136].w[19]" 4.3711799662560225e-005;
	setAttr ".wl[136].w[20]" 0.01566493579394317;
	setAttr ".wl[136].w[21]" 0.74083806384249251;
	setAttr ".wl[136].w[22]" 0.24344496840007077;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[12]" 4.5422057200124784e-005;
	setAttr ".wl[137].w[19]" 2.0562160368210547e-005;
	setAttr ".wl[137].w[20]" 0.27277085765555403;
	setAttr ".wl[137].w[21]" 0.72572668304457699;
	setAttr ".wl[137].w[22]" 0.0014364750823006034;
	setAttr -s 5 ".wl[138].w";
	setAttr ".wl[138].w[12]" 0.00011324814104361738;
	setAttr ".wl[138].w[19]" 0.00061331896823543113;
	setAttr ".wl[138].w[20]" 0.037142461734927981;
	setAttr ".wl[138].w[21]" 0.84951540818038629;
	setAttr ".wl[138].w[22]" 0.11261556297540665;
	setAttr -s 5 ".wl[139].w";
	setAttr ".wl[139].w[12]" 2.2344957278101428e-005;
	setAttr ".wl[139].w[19]" 1.0675477158012415e-007;
	setAttr ".wl[139].w[20]" 0.38670586693366982;
	setAttr ".wl[139].w[21]" 0.59995645540290699;
	setAttr ".wl[139].w[22]" 0.013315225951373577;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[12]" 1.0591180425442635e-005;
	setAttr ".wl[140].w[19]" 4.1702141187286951e-007;
	setAttr ".wl[140].w[20]" 0.038854577023325045;
	setAttr ".wl[140].w[21]" 0.93176703865593924;
	setAttr ".wl[140].w[22]" 0.029367376118898392;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[12]" 1.8476372844090289e-005;
	setAttr ".wl[141].w[19]" 9.1060973549706636e-006;
	setAttr ".wl[141].w[20]" 0.0085956123649624204;
	setAttr ".wl[141].w[21]" 0.80738686309101648;
	setAttr ".wl[141].w[22]" 0.18398994207382202;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[12]" 4.7645754058931926e-006;
	setAttr ".wl[142].w[19]" 7.6721470509743471e-006;
	setAttr ".wl[142].w[20]" 0.0023914139237109205;
	setAttr ".wl[142].w[21]" 0.7614967273758354;
	setAttr ".wl[142].w[22]" 0.23609942197799683;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[12]" 5.8555495591267602e-006;
	setAttr ".wl[143].w[19]" 1.3516800455819468e-005;
	setAttr ".wl[143].w[20]" 0.0027458904281127123;
	setAttr ".wl[143].w[21]" 0.91129506165233809;
	setAttr ".wl[143].w[22]" 0.085939675569534302;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[12]" 2.2121337463932023e-005;
	setAttr ".wl[144].w[19]" 7.1860831048460808e-005;
	setAttr ".wl[144].w[20]" 0.0091980760782659678;
	setAttr ".wl[144].w[21]" 0.89152935932333577;
	setAttr ".wl[144].w[22]" 0.099178582429885864;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[12]" 2.7960115972894663e-006;
	setAttr ".wl[145].w[19]" 1.3903339114905907e-007;
	setAttr ".wl[145].w[20]" 0.0058404953560473897;
	setAttr ".wl[145].w[21]" 0.95601003652696936;
	setAttr ".wl[145].w[22]" 0.038146533071994781;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[12]" 0.00019746740168481239;
	setAttr ".wl[146].w[19]" 0.00073129648808389902;
	setAttr ".wl[146].w[20]" 0.026060313823062321;
	setAttr ".wl[146].w[21]" 0.48650546114358451;
	setAttr ".wl[146].w[22]" 0.48650546114358451;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[12]" 0.00026070106685901584;
	setAttr ".wl[147].w[19]" 0.0016903144397574592;
	setAttr ".wl[147].w[20]" 0.032261624398184995;
	setAttr ".wl[147].w[21]" 0.48289368004759942;
	setAttr ".wl[147].w[22]" 0.48289368004759919;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[12]" 0.00016829684218924653;
	setAttr ".wl[148].w[19]" 0.00088678067550063133;
	setAttr ".wl[148].w[20]" 0.025182862952200912;
	setAttr ".wl[148].w[21]" 0.4868810297650546;
	setAttr ".wl[148].w[22]" 0.4868810297650546;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[12]" 0.00011399653645067716;
	setAttr ".wl[149].w[19]" 0.00035924115573939924;
	setAttr ".wl[149].w[20]" 0.018435363607598034;
	setAttr ".wl[149].w[21]" 0.49386082957599003;
	setAttr ".wl[149].w[22]" 0.4872305691242218;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[12]" 9.8685699388275004e-005;
	setAttr ".wl[150].w[19]" 0.00016751572547946125;
	setAttr ".wl[150].w[20]" 0.018001811945164908;
	setAttr ".wl[150].w[21]" 0.49086599331498365;
	setAttr ".wl[150].w[22]" 0.49086599331498365;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[12]" 0.00010477637148297405;
	setAttr ".wl[151].w[19]" 0.00016562865745296194;
	setAttr ".wl[151].w[20]" 0.019001669974881997;
	setAttr ".wl[151].w[21]" 0.56541393607215562;
	setAttr ".wl[151].w[22]" 0.41531398892402649;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[12]" 1.2480767134874536e-005;
	setAttr ".wl[152].w[19]" 2.3457340586080496e-009;
	setAttr ".wl[152].w[20]" 0.39845132767842145;
	setAttr ".wl[152].w[21]" 0.59577267710395987;
	setAttr ".wl[152].w[22]" 0.0057635121047496796;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[12]" 7.1253977752101821e-005;
	setAttr ".wl[153].w[19]" 0.00038068417908419729;
	setAttr ".wl[153].w[20]" 0.013432876513185348;
	setAttr ".wl[153].w[21]" 0.5427055040097879;
	setAttr ".wl[153].w[22]" 0.44340968132019043;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[12]" 7.2938685158182833e-005;
	setAttr ".wl[154].w[19]" 0.00050216917468914185;
	setAttr ".wl[154].w[20]" 0.013813375313640604;
	setAttr ".wl[154].w[21]" 0.49280575841325602;
	setAttr ".wl[154].w[22]" 0.49280575841325602;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[12]" 6.5702775184410479e-005;
	setAttr ".wl[155].w[19]" 0.00032211466299566767;
	setAttr ".wl[155].w[20]" 0.012247352626122605;
	setAttr ".wl[155].w[21]" 0.52296972409692166;
	setAttr ".wl[155].w[22]" 0.46439510583877563;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[12]" 7.0052868313336244e-005;
	setAttr ".wl[156].w[19]" 0.00021368964005928547;
	setAttr ".wl[156].w[20]" 0.013199044498154931;
	setAttr ".wl[156].w[21]" 0.53926720441040366;
	setAttr ".wl[156].w[22]" 0.44725000858306885;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[12]" 0.00028199623781181182;
	setAttr ".wl[157].w[19]" 0.0012077502906322479;
	setAttr ".wl[157].w[20]" 0.031337864656005077;
	setAttr ".wl[157].w[21]" 0.4835861944077755;
	setAttr ".wl[157].w[22]" 0.48358619440777539;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[12]" 0.00027969981586083165;
	setAttr ".wl[158].w[19]" 0.0017021955924636783;
	setAttr ".wl[158].w[20]" 0.030857970014155665;
	setAttr ".wl[158].w[21]" 0.48358006728875996;
	setAttr ".wl[158].w[22]" 0.48358006728875996;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[12]" 0.00010646193612142995;
	setAttr ".wl[159].w[19]" 0.00052130136695454753;
	setAttr ".wl[159].w[20]" 0.017778647839783387;
	setAttr ".wl[159].w[21]" 0.52873734620043289;
	setAttr ".wl[159].w[22]" 0.45285624265670776;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[12]" 7.6913092580222081e-005;
	setAttr ".wl[160].w[19]" 0.0002389407714357306;
	setAttr ".wl[160].w[20]" 0.013672739381273426;
	setAttr ".wl[160].w[21]" 0.51502667961046933;
	setAttr ".wl[160].w[22]" 0.47098472714424133;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[12]" 0.00021148922721749006;
	setAttr ".wl[161].w[19]" 0.00085483246948570013;
	setAttr ".wl[161].w[20]" 0.026412515992179367;
	setAttr ".wl[161].w[21]" 0.48626058115555876;
	setAttr ".wl[161].w[22]" 0.48626058115555865;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[12]" 0.00024590806628535869;
	setAttr ".wl[162].w[19]" 0.0015480472565476762;
	setAttr ".wl[162].w[20]" 0.029360614255828924;
	setAttr ".wl[162].w[21]" 0.48442271521066899;
	setAttr ".wl[162].w[22]" 0.48442271521066899;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[12]" 3.5059745459732772e-005;
	setAttr ".wl[163].w[19]" 6.850659975007252e-006;
	setAttr ".wl[163].w[20]" 0.029209489153046816;
	setAttr ".wl[163].w[21]" 0.78275598295361104;
	setAttr ".wl[163].w[22]" 0.18799261748790741;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[12]" 8.210262153816983e-005;
	setAttr ".wl[164].w[19]" 6.1809293038554589e-006;
	setAttr ".wl[164].w[20]" 0.091743436613730273;
	setAttr ".wl[164].w[21]" 0.81374167771025985;
	setAttr ".wl[164].w[22]" 0.094426602125167847;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[12]" 0.0001073730887586444;
	setAttr ".wl[165].w[19]" 1.2997828176878187e-005;
	setAttr ".wl[165].w[20]" 0.10875583848369878;
	setAttr ".wl[165].w[21]" 0.77045026079561285;
	setAttr ".wl[165].w[22]" 0.1206735298037529;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[12]" 3.6335425110353986e-005;
	setAttr ".wl[166].w[19]" 0.00029500806704163551;
	setAttr ".wl[166].w[20]" 0.027782460519559911;
	setAttr ".wl[166].w[21]" 0.50088809005541368;
	setAttr ".wl[166].w[22]" 0.47099810593287439;
	setAttr -s 5 ".wl[167].w[6:10]"  0.0021955345533835992 0.10490477829264588 
		0.40680145395175976 0.40680145395175954 0.079296779250451352;
	setAttr -s 5 ".wl[168].w[6:10]"  0.00012206627582117911 0.0072476482715595238 
		0.33961078189183086 0.6295448465375828 0.023474657023205562;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[3]" 0.00090253469391426413;
	setAttr ".wl[169].w[7]" 0.023505766359365788;
	setAttr ".wl[169].w[8]" 0.4292035372556674;
	setAttr ".wl[169].w[9]" 0.50399626669955766;
	setAttr ".wl[169].w[10]" 0.042391894991494927;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[3]" 0.021186042667178138;
	setAttr ".wl[170].w[7]" 0.17202740750681011;
	setAttr ".wl[170].w[8]" 0.37513223359998898;
	setAttr ".wl[170].w[9]" 0.36729856636030567;
	setAttr ".wl[170].w[10]" 0.064355749865717196;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[3]" 0.02085641963112865;
	setAttr ".wl[171].w[7]" 0.35021221521459717;
	setAttr ".wl[171].w[8]" 0.38584626603818578;
	setAttr ".wl[171].w[9]" 0.21590320800356225;
	setAttr ".wl[171].w[10]" 0.027181891112526332;
	setAttr -s 5 ".wl[172].w";
	setAttr ".wl[172].w[2]" 0.011990151620144943;
	setAttr ".wl[172].w[3]" 0.011990151620144943;
	setAttr ".wl[172].w[7]" 0.44297524489122764;
	setAttr ".wl[172].w[8]" 0.44297524489122764;
	setAttr ".wl[172].w[9]" 0.090069206977254873;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[2]" 0.0046406929338141042;
	setAttr ".wl[173].w[7]" 0.46689718224997878;
	setAttr ".wl[173].w[8]" 0.46689718224997878;
	setAttr ".wl[173].w[9]" 0.054595182456902341;
	setAttr ".wl[173].w[10]" 0.0069697601093260588;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[2]" 0.0024187652402303233;
	setAttr ".wl[174].w[7]" 0.46485362044348633;
	setAttr ".wl[174].w[8]" 0.46485362044348633;
	setAttr ".wl[174].w[9]" 0.060238993145086787;
	setAttr ".wl[174].w[10]" 0.0076350007277102847;
	setAttr -s 5 ".wl[175].w[6:10]"  0.0020569662458003388 0.4317668389027105 
		0.43176683890271073 0.11970000881468985 0.01470934713408846;
	setAttr -s 5 ".wl[176].w[6:10]"  0.0024504557922784657 0.28096710027878213 
		0.39344888145454393 0.28852566027966819 0.034607902194727265;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[0]" 0.00076458702335394557;
	setAttr ".wl[177].w[1]" 0.00045985824536541592;
	setAttr ".wl[177].w[2]" 0.00034949044033689026;
	setAttr ".wl[177].w[6]" 0.97190351914698181;
	setAttr ".wl[177].w[7]" 0.026522545143961906;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[0]" 0.00022531523520384711;
	setAttr ".wl[178].w[1]" 0.00019737400053945175;
	setAttr ".wl[178].w[2]" 0.0001443059753726744;
	setAttr ".wl[178].w[6]" 0.99116083563102131;
	setAttr ".wl[178].w[7]" 0.0082721691578626633;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[0]" 0.00036670715454630763;
	setAttr ".wl[179].w[1]" 0.00056846356812439102;
	setAttr ".wl[179].w[2]" 0.00038511054319426743;
	setAttr ".wl[179].w[6]" 0.98980517199765627;
	setAttr ".wl[179].w[7]" 0.0088745467364788055;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[0]" 0.0013211409385685601;
	setAttr ".wl[180].w[1]" 0.003601543583703193;
	setAttr ".wl[180].w[2]" 0.002184465039884116;
	setAttr ".wl[180].w[6]" 0.97469680036016737;
	setAttr ".wl[180].w[7]" 0.018196050077676773;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[0]" 0.0035865831867985002;
	setAttr ".wl[181].w[1]" 0.01182110900319769;
	setAttr ".wl[181].w[2]" 0.0067022350398714898;
	setAttr ".wl[181].w[6]" 0.96615082901687788;
	setAttr ".wl[181].w[7]" 0.011739243753254414;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[0]" 0.005938697583118803;
	setAttr ".wl[182].w[1]" 0.014045416853688583;
	setAttr ".wl[182].w[2]" 0.0083425680216028999;
	setAttr ".wl[182].w[6]" 0.93160012393187519;
	setAttr ".wl[182].w[7]" 0.040073193609714508;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[0]" 0.0077460014051102663;
	setAttr ".wl[183].w[1]" 0.010369609630519626;
	setAttr ".wl[183].w[2]" 0.0068328326165452632;
	setAttr ".wl[183].w[6]" 0.90831453037164378;
	setAttr ".wl[183].w[7]" 0.06673702597618103;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[0]" 0.0070661695626415538;
	setAttr ".wl[184].w[1]" 0.0056017026046371538;
	setAttr ".wl[184].w[6]" 0.87147154314965969;
	setAttr ".wl[184].w[7]" 0.11016988009214401;
	setAttr ".wl[184].w[8]" 0.005690704590917541;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[0]" 0.0049191457605089689;
	setAttr ".wl[185].w[1]" 0.0028256937190239396;
	setAttr ".wl[185].w[6]" 0.89209306654660758;
	setAttr ".wl[185].w[7]" 0.096791232179174291;
	setAttr ".wl[185].w[8]" 0.0033708617946851664;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[0]" 0.0024870371808841489;
	setAttr ".wl[186].w[1]" 0.0013030770437671693;
	setAttr ".wl[186].w[6]" 0.92951015396892767;
	setAttr ".wl[186].w[7]" 0.065323003487083697;
	setAttr ".wl[186].w[8]" 0.0013767283193373313;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[2]" 0.00043629160994488789;
	setAttr ".wl[187].w[7]" 0.31019421561443117;
	setAttr ".wl[187].w[8]" 0.56235716336825559;
	setAttr ".wl[187].w[9]" 0.12303783982350826;
	setAttr ".wl[187].w[10]" 0.0039744895838602278;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[0]" 0.0011349748521800001;
	setAttr ".wl[188].w[1]" 0.00052132144506120137;
	setAttr ".wl[188].w[2]" 0.00036586619384682185;
	setAttr ".wl[188].w[6]" 0.98145828168689719;
	setAttr ".wl[188].w[7]" 0.016519555822014809;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[0]" 0.00029224234586434623;
	setAttr ".wl[189].w[1]" 0.00019620407490235592;
	setAttr ".wl[189].w[2]" 0.00013036888133669255;
	setAttr ".wl[189].w[6]" 0.99538916547670997;
	setAttr ".wl[189].w[7]" 0.0039920192211866379;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[0]" 0.00046823101831011509;
	setAttr ".wl[190].w[1]" 0.00056813699837960697;
	setAttr ".wl[190].w[2]" 0.00033930792715077679;
	setAttr ".wl[190].w[6]" 0.99491849257874099;
	setAttr ".wl[190].w[7]" 0.0037058314774185419;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[0]" 0.0019585181258669065;
	setAttr ".wl[191].w[1]" 0.0043075885355909182;
	setAttr ".wl[191].w[2]" 0.0022287591856869448;
	setAttr ".wl[191].w[6]" 0.98356037051477607;
	setAttr ".wl[191].w[7]" 0.0079447636380791664;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[0]" 0.0052979184927785632;
	setAttr ".wl[192].w[1]" 0.0143458600437197;
	setAttr ".wl[192].w[2]" 0.006864614541060369;
	setAttr ".wl[192].w[6]" 0.96759730080663531;
	setAttr ".wl[192].w[7]" 0.0058943061158061028;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.0089318632172448557;
	setAttr ".wl[193].w[1]" 0.017457016359777065;
	setAttr ".wl[193].w[2]" 0.0090287281274505967;
	setAttr ".wl[193].w[6]" 0.94600245477788447;
	setAttr ".wl[193].w[7]" 0.018579937517642975;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.010509466660567733;
	setAttr ".wl[194].w[1]" 0.011386643646787577;
	setAttr ".wl[194].w[2]" 0.0067201647238882547;
	setAttr ".wl[194].w[6]" 0.93751453296455267;
	setAttr ".wl[194].w[7]" 0.033869192004203796;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[0]" 0.0099581125280855144;
	setAttr ".wl[195].w[1]" 0.0062765672063280443;
	setAttr ".wl[195].w[6]" 0.90806290910613596;
	setAttr ".wl[195].w[7]" 0.070474691689014435;
	setAttr ".wl[195].w[8]" 0.0052277194704360846;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[0]" 0.0071533031885031018;
	setAttr ".wl[196].w[1]" 0.0032041088779536696;
	setAttr ".wl[196].w[6]" 0.91564235127941696;
	setAttr ".wl[196].w[7]" 0.070805364254873521;
	setAttr ".wl[196].w[8]" 0.0031948723992527087;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[0]" 0.0036533465233399608;
	setAttr ".wl[197].w[1]" 0.0014691210079132006;
	setAttr ".wl[197].w[6]" 0.94848797860460921;
	setAttr ".wl[197].w[7]" 0.045080604549079493;
	setAttr ".wl[197].w[8]" 0.0013089493150582187;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[0]" 0.0039182971019968288;
	setAttr ".wl[198].w[1]" 0.010483579822454533;
	setAttr ".wl[198].w[2]" 0.0052321328840169877;
	setAttr ".wl[198].w[6]" 0.97597101563198618;
	setAttr ".wl[198].w[7]" 0.004394974559545517;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[0]" 0.0023305050351749954;
	setAttr ".wl[199].w[1]" 0.94895895756959003;
	setAttr ".wl[199].w[2]" 0.047801028342403004;
	setAttr ".wl[199].w[6]" 0.00087254196401446917;
	setAttr ".wl[199].w[7]" 3.6967088817618787e-005;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[0]" 0.0032042476133600714;
	setAttr ".wl[200].w[1]" 0.95377661373112732;
	setAttr ".wl[200].w[2]" 0.041242112174212538;
	setAttr ".wl[200].w[6]" 0.0017548708720417699;
	setAttr ".wl[200].w[7]" 2.2155609258334152e-005;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[0]" 0.0012713540678954199;
	setAttr ".wl[201].w[1]" 0.96490347369359719;
	setAttr ".wl[201].w[2]" 0.033465480665163229;
	setAttr ".wl[201].w[6]" 0.00032768677856883651;
	setAttr ".wl[201].w[7]" 3.2004794775275514e-005;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[2]" 0.1710898606884107;
	setAttr ".wl[202].w[3]" 0.37861861443318751;
	setAttr ".wl[202].w[4]" 0.36976907913792406;
	setAttr ".wl[202].w[5]" 0.061486187299978436;
	setAttr ".wl[202].w[8]" 0.019036258440499242;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[2]" 0.021282837620480808;
	setAttr ".wl[203].w[3]" 0.42872959448405779;
	setAttr ".wl[203].w[4]" 0.51011970235644144;
	setAttr ".wl[203].w[5]" 0.039099085368625518;
	setAttr ".wl[203].w[8]" 0.00076878017039448904;
	setAttr -s 5 ".wl[204].w[1:5]"  0.00013641994020448307 0.0080971543292464917 
		0.34420291228787198 0.62119320549690682 0.026370307945770204;
	setAttr -s 5 ".wl[205].w[1:5]"  0.0022446249277197046 0.10883101510256564 
		0.40300020134988018 0.40300020134988018 0.082923957269954301;
	setAttr -s 5 ".wl[206].w[1:5]"  0.00249778512358282 0.28350311763565667 
		0.38976308817904987 0.28799455400792801 0.036241455053782602;
	setAttr -s 5 ".wl[207].w[1:5]"  0.0021098350791060282 0.43014526644031903 
		0.43014526644031903 0.12217455906334368 0.015425072976912297;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[2]" 0.46445286555171111;
	setAttr ".wl[208].w[3]" 0.464452865551711;
	setAttr ".wl[208].w[4]" 0.060884087884280395;
	setAttr ".wl[208].w[5]" 0.0077891159534779625;
	setAttr ".wl[208].w[7]" 0.0024210650588196133;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[2]" 0.4678230001150176;
	setAttr ".wl[209].w[3]" 0.4678230001150176;
	setAttr ".wl[209].w[4]" 0.053233287784624425;
	setAttr ".wl[209].w[5]" 0.0067612142402675443;
	setAttr ".wl[209].w[7]" 0.0043594977450728935;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[2]" 0.44612403695197755;
	setAttr ".wl[210].w[3]" 0.44612403695197755;
	setAttr ".wl[210].w[4]" 0.086243799538606516;
	setAttr ".wl[210].w[7]" 0.010754063278719179;
	setAttr ".wl[210].w[8]" 0.010754063278719179;
	setAttr -s 5 ".wl[211].w";
	setAttr ".wl[211].w[2]" 0.35334128254056935;
	setAttr ".wl[211].w[3]" 0.38955768859931744;
	setAttr ".wl[211].w[4]" 0.21259109515543401;
	setAttr ".wl[211].w[5]" 0.025800738700990391;
	setAttr ".wl[211].w[8]" 0.01870919500368879;
	setAttr -s 5 ".wl[212].w";
	setAttr ".wl[212].w[0]" 0.0019218171899608291;
	setAttr ".wl[212].w[1]" 0.9040376777730349;
	setAttr ".wl[212].w[2]" 0.092785145290445667;
	setAttr ".wl[212].w[6]" 0.0011500394961177188;
	setAttr ".wl[212].w[7]" 0.00010532025044085458;
	setAttr -s 5 ".wl[213].w";
	setAttr ".wl[213].w[0]" 0.0013895472440912894;
	setAttr ".wl[213].w[1]" 0.90038185940843929;
	setAttr ".wl[213].w[2]" 0.097460768392027816;
	setAttr ".wl[213].w[6]" 0.00062826570011084097;
	setAttr ".wl[213].w[7]" 0.00013955925533082336;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[0]" 0.0011382536672662898;
	setAttr ".wl[214].w[1]" 0.91819842192691126;
	setAttr ".wl[214].w[2]" 0.079963221524926298;
	setAttr ".wl[214].w[6]" 0.00050933642540691975;
	setAttr ".wl[214].w[7]" 0.00019076645548921078;
	setAttr -s 5 ".wl[215].w";
	setAttr ".wl[215].w[0]" 0.0014369847700584895;
	setAttr ".wl[215].w[1]" 0.92676037372185693;
	setAttr ".wl[215].w[2]" 0.070685643742276497;
	setAttr ".wl[215].w[6]" 0.00071922471370802993;
	setAttr ".wl[215].w[7]" 0.00039777305210009217;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[0]" 0.0020969024532288571;
	setAttr ".wl[216].w[1]" 0.93190814573048553;
	setAttr ".wl[216].w[2]" 0.063860857825654468;
	setAttr ".wl[216].w[3]" 0.0010440921132444712;
	setAttr ".wl[216].w[6]" 0.0010900018773865848;
	setAttr -s 5 ".wl[217].w";
	setAttr ".wl[217].w[0]" 0.002341544090554246;
	setAttr ".wl[217].w[1]" 0.94848277193350095;
	setAttr ".wl[217].w[2]" 0.046846795388897633;
	setAttr ".wl[217].w[3]" 0.0011465728444116942;
	setAttr ".wl[217].w[6]" 0.001182315742635609;
	setAttr -s 5 ".wl[218].w";
	setAttr ".wl[218].w[0]" 0.0023803737149233691;
	setAttr ".wl[218].w[1]" 0.9576229792610208;
	setAttr ".wl[218].w[2]" 0.037328233826115859;
	setAttr ".wl[218].w[3]" 0.0012043349950963355;
	setAttr ".wl[218].w[6]" 0.0014640782028436661;
	setAttr -s 5 ".wl[219].w";
	setAttr ".wl[219].w[0]" 0.0023296304906034061;
	setAttr ".wl[219].w[1]" 0.96052253647401198;
	setAttr ".wl[219].w[2]" 0.035320165757276763;
	setAttr ".wl[219].w[6]" 0.0018012738928385047;
	setAttr ".wl[219].w[7]" 2.6393385269329883e-005;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[0]" 0.0022927361888154174;
	setAttr ".wl[220].w[1]" 0.95206346952944687;
	setAttr ".wl[220].w[2]" 0.041654376001405119;
	setAttr ".wl[220].w[6]" 0.0038420580924938578;
	setAttr ".wl[220].w[7]" 0.00014736018783878535;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[0]" 0.0020404745147657387;
	setAttr ".wl[221].w[1]" 0.93964984349004399;
	setAttr ".wl[221].w[2]" 0.056782304504231697;
	setAttr ".wl[221].w[6]" 0.0014881218187949984;
	setAttr ".wl[221].w[7]" 3.9255672163562849e-005;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[2]" 0.24615418354235571;
	setAttr ".wl[222].w[3]" 0.59654811510908357;
	setAttr ".wl[222].w[4]" 0.15284434095660129;
	setAttr ".wl[222].w[5]" 0.0040870998027874523;
	setAttr ".wl[222].w[8]" 0.00036626058917209477;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[0]" 0.00095683943276062445;
	setAttr ".wl[223].w[1]" 0.97456116210593291;
	setAttr ".wl[223].w[2]" 0.024181469845227607;
	setAttr ".wl[223].w[6]" 0.00025014975822902283;
	setAttr ".wl[223].w[7]" 5.0378857849864289e-005;
	setAttr -s 5 ".wl[224].w";
	setAttr ".wl[224].w[0]" 0.0015657209364776106;
	setAttr ".wl[224].w[1]" 0.96859666758231444;
	setAttr ".wl[224].w[2]" 0.029206942845389917;
	setAttr ".wl[224].w[6]" 0.00047826150908394699;
	setAttr ".wl[224].w[7]" 0.00015240712673403323;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[0]" 0.0033042221492581287;
	setAttr ".wl[225].w[1]" 0.94990580892470999;
	setAttr ".wl[225].w[2]" 0.044334645575376933;
	setAttr ".wl[225].w[3]" 0.0011412426033253899;
	setAttr ".wl[225].w[6]" 0.0013140807473296259;
	setAttr -s 5 ".wl[226].w";
	setAttr ".wl[226].w[0]" 0.0050006230256541204;
	setAttr ".wl[226].w[1]" 0.94020098530116192;
	setAttr ".wl[226].w[2]" 0.050785416561076893;
	setAttr ".wl[226].w[3]" 0.0019324594118594943;
	setAttr ".wl[226].w[6]" 0.0020805157002476314;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[0]" 0.0086583419682414661;
	setAttr ".wl[227].w[1]" 0.90677915521997499;
	setAttr ".wl[227].w[2]" 0.075768557903647671;
	setAttr ".wl[227].w[3]" 0.0042993002066550549;
	setAttr ".wl[227].w[6]" 0.0044946447014808655;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[0]" 0.0077290579052570483;
	setAttr ".wl[228].w[1]" 0.92239924616522329;
	setAttr ".wl[228].w[2]" 0.065004932650562952;
	setAttr ".wl[228].w[6]" 0.0048186626143853486;
	setAttr ".wl[228].w[7]" 4.8100664571393281e-005;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[0]" 0.0053279472029398945;
	setAttr ".wl[229].w[1]" 0.94068103873497433;
	setAttr ".wl[229].w[2]" 0.048785489326659562;
	setAttr ".wl[229].w[6]" 0.0051742152457124203;
	setAttr ".wl[229].w[7]" 3.1309489713748917e-005;
	setAttr -s 5 ".wl[230].w";
	setAttr ".wl[230].w[0]" 0.0026793328778565856;
	setAttr ".wl[230].w[1]" 0.0010471006891520796;
	setAttr ".wl[230].w[2]" 0.00072751561062081897;
	setAttr ".wl[230].w[6]" 0.96723139703833383;
	setAttr ".wl[230].w[7]" 0.028314653784036636;
	setAttr -s 5 ".wl[231].w";
	setAttr ".wl[231].w[0]" 0.0014440007241382715;
	setAttr ".wl[231].w[1]" 0.00086765919742219394;
	setAttr ".wl[231].w[2]" 0.00056733526237971797;
	setAttr ".wl[231].w[6]" 0.98402289623386119;
	setAttr ".wl[231].w[7]" 0.01309810858219862;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[0]" 0.0021585136866824994;
	setAttr ".wl[232].w[1]" 0.0025796517591303277;
	setAttr ".wl[232].w[2]" 0.0014841304123362658;
	setAttr ".wl[232].w[6]" 0.98460387503337432;
	setAttr ".wl[232].w[7]" 0.0091738291084766388;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[0]" 0.022065612713264068;
	setAttr ".wl[233].w[1]" 0.022780020290963422;
	setAttr ".wl[233].w[2]" 0.012897856213671025;
	setAttr ".wl[233].w[6]" 0.91141415626094613;
	setAttr ".wl[233].w[7]" 0.030842354521155357;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[0]" 0.019235934726958968;
	setAttr ".wl[234].w[1]" 0.010768725056193251;
	setAttr ".wl[234].w[6]" 0.88020315964400564;
	setAttr ".wl[234].w[7]" 0.080195911228656769;
	setAttr ".wl[234].w[8]" 0.0095962693441853097;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[0]" 0.013141363395200957;
	setAttr ".wl[235].w[1]" 0.0050018408669447708;
	setAttr ".wl[235].w[6]" 0.88703808509982762;
	setAttr ".wl[235].w[7]" 0.089485390639749945;
	setAttr ".wl[235].w[8]" 0.0053333199982767265;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[0]" 0.0065617457613139571;
	setAttr ".wl[236].w[1]" 0.0022067799984590761;
	setAttr ".wl[236].w[6]" 0.93144717699205748;
	setAttr ".wl[236].w[7]" 0.057765675929391296;
	setAttr ".wl[236].w[8]" 0.0020186213187781956;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[0]" 0.0031692576571908863;
	setAttr ".wl[237].w[1]" 0.94234292200391412;
	setAttr ".wl[237].w[2]" 0.053747586902335498;
	setAttr ".wl[237].w[6]" 0.00069120856893796338;
	setAttr ".wl[237].w[7]" 4.9024867621483281e-005;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[0]" 0.0024681562373304101;
	setAttr ".wl[238].w[1]" 0.95580257533104429;
	setAttr ".wl[238].w[2]" 0.041030025440525905;
	setAttr ".wl[238].w[6]" 0.00059205383818573983;
	setAttr ".wl[238].w[7]" 0.00010718915291363373;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[0]" 0.0033151406536274593;
	setAttr ".wl[239].w[1]" 0.95388287870125577;
	setAttr ".wl[239].w[2]" 0.041464322460843521;
	setAttr ".wl[239].w[6]" 0.00096660579547288347;
	setAttr ".wl[239].w[7]" 0.00037105238880030811;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[0]" 0.0065599177376833425;
	setAttr ".wl[240].w[1]" 0.92919870540743299;
	setAttr ".wl[240].w[2]" 0.060075256815641742;
	setAttr ".wl[240].w[3]" 0.0019913747802553744;
	setAttr ".wl[240].w[6]" 0.0021747452589864942;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[0]" 0.011332326937572123;
	setAttr ".wl[241].w[1]" 0.90291025375767375;
	setAttr ".wl[241].w[2]" 0.077511255617983013;
	setAttr ".wl[241].w[3]" 0.0041970457056514903;
	setAttr ".wl[241].w[6]" 0.0040491179811196218;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[0]" 0.017703702703430187;
	setAttr ".wl[242].w[1]" 0.86192044922622402;
	setAttr ".wl[242].w[2]" 0.10376106470826502;
	setAttr ".wl[242].w[3]" 0.0085389118572376937;
	setAttr ".wl[242].w[6]" 0.008075871504843235;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[0]" 0.020602746162666552;
	setAttr ".wl[243].w[1]" 0.86109708205205426;
	setAttr ".wl[243].w[2]" 0.10704436644948284;
	setAttr ".wl[243].w[6]" 0.011167397619548177;
	setAttr ".wl[243].w[7]" 8.8407716248184443e-005;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[0]" 0.0086476384825910513;
	setAttr ".wl[244].w[1]" 0.0019818080290142557;
	setAttr ".wl[244].w[2]" 0.0011983845246201349;
	setAttr ".wl[244].w[6]" 0.96392920718453778;
	setAttr ".wl[244].w[7]" 0.024242961779236794;
	setAttr -s 5 ".wl[245].w";
	setAttr ".wl[245].w[0]" 0.0075526390928184377;
	setAttr ".wl[245].w[1]" 0.0029721915788767195;
	setAttr ".wl[245].w[2]" 0.0016316556773491612;
	setAttr ".wl[245].w[6]" 0.97320462500131322;
	setAttr ".wl[245].w[7]" 0.014638888649642467;
	setAttr -s 5 ".wl[246].w";
	setAttr ".wl[246].w[0]" 0.011313593659761891;
	setAttr ".wl[246].w[1]" 0.0096320237077956762;
	setAttr ".wl[246].w[2]" 0.0043745885563772624;
	setAttr ".wl[246].w[6]" 0.96734935828221835;
	setAttr ".wl[246].w[7]" 0.0073304357938468456;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[0]" 0.061741766358024371;
	setAttr ".wl[247].w[1]" 0.04542701870466747;
	setAttr ".wl[247].w[2]" 0.02051372835974143;
	setAttr ".wl[247].w[6]" 0.86668521551870925;
	setAttr ".wl[247].w[7]" 0.0056322710588574409;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[0]" 0.049811501947222919;
	setAttr ".wl[248].w[1]" 0.018738688111046682;
	setAttr ".wl[248].w[6]" 0.88548473293310537;
	setAttr ".wl[248].w[7]" 0.033730607479810715;
	setAttr ".wl[248].w[8]" 0.012234469528814377;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[0]" 0.034145128826241947;
	setAttr ".wl[249].w[1]" 0.0078718040282209738;
	setAttr ".wl[249].w[6]" 0.88388511068677122;
	setAttr ".wl[249].w[7]" 0.067462846636772156;
	setAttr ".wl[249].w[8]" 0.006635109821993646;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[0]" 0.01675608157743854;
	setAttr ".wl[250].w[1]" 0.0032290129340791628;
	setAttr ".wl[250].w[6]" 0.93575590969047928;
	setAttr ".wl[250].w[7]" 0.041929406039888865;
	setAttr ".wl[250].w[8]" 0.0023295897581141873;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[0]" 0.01155377187774697;
	setAttr ".wl[251].w[1]" 0.94602721254888278;
	setAttr ".wl[251].w[2]" 0.041108090047691372;
	setAttr ".wl[251].w[6]" 0.0012597284645674512;
	setAttr ".wl[251].w[7]" 5.1197061111452058e-005;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[0]" 0.0092367527245123069;
	setAttr ".wl[252].w[1]" 0.95364837310078343;
	setAttr ".wl[252].w[2]" 0.035870171018968576;
	setAttr ".wl[252].w[6]" 0.0010997822617908595;
	setAttr ".wl[252].w[7]" 0.0001449208939447999;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[0]" 0.0098534999206917918;
	setAttr ".wl[253].w[1]" 0.95631238955855036;
	setAttr ".wl[253].w[2]" 0.03137968792408935;
	setAttr ".wl[253].w[6]" 0.0017644287513695061;
	setAttr ".wl[253].w[7]" 0.0006899938452988863;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[0]" 0.017896187121064739;
	setAttr ".wl[254].w[1]" 0.9310385366188122;
	setAttr ".wl[254].w[2]" 0.045163385419284836;
	setAttr ".wl[254].w[3]" 0.0025111181909089589;
	setAttr ".wl[254].w[6]" 0.0033907726499291862;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[0]" 0.033804390739109659;
	setAttr ".wl[255].w[1]" 0.8832516356164154;
	setAttr ".wl[255].w[2]" 0.068991341538283596;
	setAttr ".wl[255].w[3]" 0.0064622156987808399;
	setAttr ".wl[255].w[6]" 0.0074904164074105339;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[0]" 0.046147675611109842;
	setAttr ".wl[256].w[1]" 0.84590860710772131;
	setAttr ".wl[256].w[2]" 0.084587063854282052;
	setAttr ".wl[256].w[3]" 0.011052648213804908;
	setAttr ".wl[256].w[6]" 0.012304005213081837;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[0]" 0.052501987675404718;
	setAttr ".wl[257].w[1]" 0.84151797040425458;
	setAttr ".wl[257].w[2]" 0.088359112327702369;
	setAttr ".wl[257].w[6]" 0.017444839704083448;
	setAttr ".wl[257].w[7]" 0.00017608988855499774;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[0]" 0.053706863966487203;
	setAttr ".wl[258].w[1]" 0.76535650828183088;
	setAttr ".wl[258].w[2]" 0.11588074115175888;
	setAttr ".wl[258].w[6]" 0.064325051058306035;
	setAttr ".wl[258].w[7]" 0.00073083554161712527;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[0]" 0.035262754991785682;
	setAttr ".wl[259].w[1]" 0.658775426942662;
	setAttr ".wl[259].w[2]" 0.17587895735267969;
	setAttr ".wl[259].w[6]" 0.12775154819989379;
	setAttr ".wl[259].w[7]" 0.0023313125129789114;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[0]" 0.03138141918850354;
	setAttr ".wl[260].w[1]" 0.64628032698802551;
	setAttr ".wl[260].w[2]" 0.19020529377390002;
	setAttr ".wl[260].w[6]" 0.12903256531259541;
	setAttr ".wl[260].w[7]" 0.0031003947369754314;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[0]" 0.02715971899315852;
	setAttr ".wl[261].w[1]" 0.66591721867397136;
	setAttr ".wl[261].w[2]" 0.17367544790082781;
	setAttr ".wl[261].w[6]" 0.13062430202393782;
	setAttr ".wl[261].w[7]" 0.0026233124081045389;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[0]" 0.036654845327736343;
	setAttr ".wl[262].w[1]" 0.61548590583772245;
	setAttr ".wl[262].w[2]" 0.14651739768051955;
	setAttr ".wl[262].w[6]" 0.19945714774602624;
	setAttr ".wl[262].w[7]" 0.0018847034079954028;
	setAttr -s 5 ".wl[263].w";
	setAttr ".wl[263].w[0]" 0.061401369268847192;
	setAttr ".wl[263].w[1]" 0.59534440809995104;
	setAttr ".wl[263].w[2]" 0.17058420199935301;
	setAttr ".wl[263].w[6]" 0.17224076043661585;
	setAttr ".wl[263].w[7]" 0.0004292601952329278;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[0]" 0.075767952763429403;
	setAttr ".wl[264].w[1]" 0.56896065122596906;
	setAttr ".wl[264].w[2]" 0.18579730589851676;
	setAttr ".wl[264].w[6]" 0.16912164208496949;
	setAttr ".wl[264].w[7]" 0.0003524480271153152;
	setAttr -s 5 ".wl[265].w";
	setAttr ".wl[265].w[0]" 0.081878638519285729;
	setAttr ".wl[265].w[1]" 0.57843878509411417;
	setAttr ".wl[265].w[2]" 0.17426761385521969;
	setAttr ".wl[265].w[6]" 0.16515059631581983;
	setAttr ".wl[265].w[7]" 0.00026436621556058526;
	setAttr -s 5 ".wl[266].w";
	setAttr ".wl[266].w[0]" 0.11975854603554043;
	setAttr ".wl[266].w[1]" 0.65085094061851212;
	setAttr ".wl[266].w[2]" 0.11558768350193516;
	setAttr ".wl[266].w[6]" 0.11374233738325075;
	setAttr ".wl[266].w[7]" 6.0492460761452094e-005;
	setAttr -s 5 ".wl[267].w";
	setAttr ".wl[267].w[0]" 0.069418719445215729;
	setAttr ".wl[267].w[1]" 0.30018751246013736;
	setAttr ".wl[267].w[2]" 0.082895738645234987;
	setAttr ".wl[267].w[6]" 0.54385481940341862;
	setAttr ".wl[267].w[7]" 0.0036432100459933281;
	setAttr -s 5 ".wl[268].w";
	setAttr ".wl[268].w[0]" 0.040613767004634718;
	setAttr ".wl[268].w[1]" 0.32763908992535551;
	setAttr ".wl[268].w[2]" 0.11467493228052995;
	setAttr ".wl[268].w[6]" 0.51077516959310376;
	setAttr ".wl[268].w[7]" 0.0062970411963760853;
	setAttr -s 5 ".wl[269].w";
	setAttr ".wl[269].w[0]" 0.036265670585052624;
	setAttr ".wl[269].w[1]" 0.32047090060227623;
	setAttr ".wl[269].w[2]" 0.12056473329972277;
	setAttr ".wl[269].w[6]" 0.51454196844482214;
	setAttr ".wl[269].w[7]" 0.0081567270681262016;
	setAttr -s 5 ".wl[270].w";
	setAttr ".wl[270].w[0]" 0.030617473205217762;
	setAttr ".wl[270].w[1]" 0.28727846103168364;
	setAttr ".wl[270].w[2]" 0.099420906311277202;
	setAttr ".wl[270].w[6]" 0.5759016302822918;
	setAttr ".wl[270].w[7]" 0.0067815291695296764;
	setAttr -s 5 ".wl[271].w";
	setAttr ".wl[271].w[0]" 0.02475082948208205;
	setAttr ".wl[271].w[1]" 0.22113663265079658;
	setAttr ".wl[271].w[2]" 0.073798657055162267;
	setAttr ".wl[271].w[6]" 0.66820911436858732;
	setAttr ".wl[271].w[7]" 0.012104766443371773;
	setAttr -s 5 ".wl[272].w";
	setAttr ".wl[272].w[0]" 0.051423391337749792;
	setAttr ".wl[272].w[1]" 0.35309774330698851;
	setAttr ".wl[272].w[2]" 0.12896572946963969;
	setAttr ".wl[272].w[6]" 0.46555593849233129;
	setAttr ".wl[272].w[7]" 0.00095719739329069853;
	setAttr -s 5 ".wl[273].w";
	setAttr ".wl[273].w[0]" 0.067817415007941848;
	setAttr ".wl[273].w[1]" 0.37010828169333454;
	setAttr ".wl[273].w[2]" 0.14902172577086295;
	setAttr ".wl[273].w[6]" 0.41229152359549559;
	setAttr ".wl[273].w[7]" 0.00076105393236503005;
	setAttr -s 5 ".wl[274].w";
	setAttr ".wl[274].w[0]" 0.076997217641771559;
	setAttr ".wl[274].w[1]" 0.37671635271285386;
	setAttr ".wl[274].w[2]" 0.14288021682574811;
	setAttr ".wl[274].w[6]" 0.40293169593520267;
	setAttr ".wl[274].w[7]" 0.00047451688442379236;
	setAttr -s 5 ".wl[275].w";
	setAttr ".wl[275].w[0]" 0.14200688879776135;
	setAttr ".wl[275].w[1]" 0.34740727316790349;
	setAttr ".wl[275].w[2]" 0.1061969107316422;
	setAttr ".wl[275].w[6]" 0.40428624947633074;
	setAttr ".wl[275].w[7]" 0.00010267782636219636;
	setAttr -s 5 ".wl[276].w";
	setAttr ".wl[276].w[0]" 0.045877631179821028;
	setAttr ".wl[276].w[1]" 0.23864498117643326;
	setAttr ".wl[276].w[2]" 0.045371779051220341;
	setAttr ".wl[276].w[6]" 0.66874689882878979;
	setAttr ".wl[276].w[7]" 0.0013587097637355328;
	setAttr -s 5 ".wl[277].w";
	setAttr ".wl[277].w[0]" 0.062472441082745821;
	setAttr ".wl[277].w[1]" 0.68047398585706709;
	setAttr ".wl[277].w[2]" 0.083944488412051987;
	setAttr ".wl[277].w[6]" 0.16776880882779033;
	setAttr ".wl[277].w[7]" 0.0053402758203446865;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[0]" 0.066386066877387143;
	setAttr ".wl[278].w[1]" 0.33990883223708906;
	setAttr ".wl[278].w[2]" 0.064834546226074347;
	setAttr ".wl[278].w[6]" 0.52743421403684554;
	setAttr ".wl[278].w[7]" 0.0014363406226038933;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[0]" 0.064207091099191524;
	setAttr ".wl[279].w[1]" 0.68643086901695727;
	setAttr ".wl[279].w[2]" 0.084278216770270156;
	setAttr ".wl[279].w[6]" 0.16411877129494201;
	setAttr ".wl[279].w[7]" 0.00096505181863903999;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[0]" 0.049753815438037155;
	setAttr ".wl[280].w[1]" 0.24492206294692126;
	setAttr ".wl[280].w[2]" 0.044545459267236978;
	setAttr ".wl[280].w[6]" 0.64985072628558793;
	setAttr ".wl[280].w[7]" 0.010927936062216759;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[0]" 0.062886996050720026;
	setAttr ".wl[281].w[1]" 0.53508018368896826;
	setAttr ".wl[281].w[2]" 0.064623598049534658;
	setAttr ".wl[281].w[6]" 0.31801781774593618;
	setAttr ".wl[281].w[7]" 0.019391404464840889;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[0]" 0.087978507229848638;
	setAttr ".wl[282].w[1]" 0.49302415997721299;
	setAttr ".wl[282].w[2]" 0.07852825309087709;
	setAttr ".wl[282].w[6]" 0.32606454720244993;
	setAttr ".wl[282].w[7]" 0.014404532499611378;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[0]" 0.074109306270847275;
	setAttr ".wl[283].w[1]" 0.28056028804044925;
	setAttr ".wl[283].w[2]" 0.05971170776568703;
	setAttr ".wl[283].w[6]" 0.58500348514771527;
	setAttr ".wl[283].w[7]" 0.00061521277530118823;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[0]" 0.10504143638518391;
	setAttr ".wl[284].w[1]" 0.60486537265801132;
	setAttr ".wl[284].w[2]" 0.096389663070939782;
	setAttr ".wl[284].w[6]" 0.19347417500443148;
	setAttr ".wl[284].w[7]" 0.00022935288143344223;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[0]" 0.074318562207097746;
	setAttr ".wl[285].w[1]" 0.27796556481934936;
	setAttr ".wl[285].w[2]" 0.059187054006564523;
	setAttr ".wl[285].w[6]" 0.58791679469093672;
	setAttr ".wl[285].w[7]" 0.00061202427605167031;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[0]" 0.021069020807856789;
	setAttr ".wl[286].w[1]" 0.96501755178931736;
	setAttr ".wl[286].w[2]" 0.011569941252005621;
	setAttr ".wl[286].w[6]" 0.0015481332378466234;
	setAttr ".wl[286].w[7]" 0.00079535291297361255;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[0]" 0.021695230006419139;
	setAttr ".wl[287].w[1]" 0.96233523214151739;
	setAttr ".wl[287].w[2]" 0.01477964912588221;
	setAttr ".wl[287].w[6]" 0.00092721862365197636;
	setAttr ".wl[287].w[7]" 0.00026267010252922773;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[0]" 0.031234622061760229;
	setAttr ".wl[288].w[1]" 0.94448766941525075;
	setAttr ".wl[288].w[2]" 0.022585102670970872;
	setAttr ".wl[288].w[6]" 0.0015373411947945605;
	setAttr ".wl[288].w[7]" 0.00015526465722359717;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[0]" 0.12046091802771282;
	setAttr ".wl[289].w[1]" 0.74148615500580517;
	setAttr ".wl[289].w[2]" 0.073465652264971995;
	setAttr ".wl[289].w[6]" 0.063411452477041927;
	setAttr ".wl[289].w[7]" 0.0011758222244679928;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[0]" 0.13635018849856789;
	setAttr ".wl[290].w[1]" 0.29712544200304047;
	setAttr ".wl[290].w[2]" 0.053600173339299235;
	setAttr ".wl[290].w[6]" 0.50954820304885284;
	setAttr ".wl[290].w[7]" 0.0033759931102395058;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[0]" 0.039622366156525708;
	setAttr ".wl[291].w[1]" 0.017864510212679766;
	setAttr ".wl[291].w[2]" 0.0057869747519526688;
	setAttr ".wl[291].w[6]" 0.93067876173710751;
	setAttr ".wl[291].w[7]" 0.0060473871417343616;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[0]" 0.027689404501209984;
	setAttr ".wl[292].w[1]" 0.0056556706607000561;
	setAttr ".wl[292].w[2]" 0.0023333972653263001;
	setAttr ".wl[292].w[6]" 0.95324898598570895;
	setAttr ".wl[292].w[7]" 0.011072541587054729;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[0]" 0.017112180111151835;
	setAttr ".wl[293].w[1]" 0.0018041054838651559;
	setAttr ".wl[293].w[6]" 0.97220692990270541;
	setAttr ".wl[293].w[7]" 0.0083665186539292336;
	setAttr ".wl[293].w[11]" 0.00051026584834831671;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[0]" 0.042465974848231773;
	setAttr ".wl[294].w[1]" 0.0035691124751792511;
	setAttr ".wl[294].w[6]" 0.93392663982855084;
	setAttr ".wl[294].w[7]" 0.018779790389968264;
	setAttr ".wl[294].w[11]" 0.0012584824580699205;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[0]" 0.075061071153840905;
	setAttr ".wl[295].w[1]" 0.008644522549440389;
	setAttr ".wl[295].w[6]" 0.8938811831765795;
	setAttr ".wl[295].w[7]" 0.018231946974992752;
	setAttr ".wl[295].w[8]" 0.0041812761451463622;
	setAttr -s 5 ".wl[296].w";
	setAttr ".wl[296].w[0]" 0.1132011885518637;
	setAttr ".wl[296].w[1]" 0.020176548764626736;
	setAttr ".wl[296].w[2]" 0.0074666831278554988;
	setAttr ".wl[296].w[6]" 0.85503830676140735;
	setAttr ".wl[296].w[7]" 0.0041172727942466736;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[0]" 0.1594026422124741;
	setAttr ".wl[297].w[1]" 0.060519409902197521;
	setAttr ".wl[297].w[2]" 0.017507029116085149;
	setAttr ".wl[297].w[6]" 0.76227833726316974;
	setAttr ".wl[297].w[7]" 0.00029258150607347488;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[0]" 0.25020612411949361;
	setAttr ".wl[298].w[1]" 0.29097017556629806;
	setAttr ".wl[298].w[2]" 0.060290083149357944;
	setAttr ".wl[298].w[6]" 0.39847494897219987;
	setAttr ".wl[298].w[7]" 5.8668192650657147e-005;
	setAttr -s 5 ".wl[299].w";
	setAttr ".wl[299].w[0]" 0.25974968023253692;
	setAttr ".wl[299].w[1]" 0.52964344557924781;
	setAttr ".wl[299].w[2]" 0.071004267976191957;
	setAttr ".wl[299].w[6]" 0.1395250467521271;
	setAttr ".wl[299].w[7]" 7.7559459896292537e-005;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[0]" 0.16225194043784102;
	setAttr ".wl[300].w[1]" 0.76058190626484845;
	setAttr ".wl[300].w[2]" 0.052073794097558898;
	setAttr ".wl[300].w[6]" 0.024642879351139551;
	setAttr ".wl[300].w[7]" 0.00044947984861209989;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[0]" 0.11391840963129884;
	setAttr ".wl[301].w[1]" 0.83519914732880984;
	setAttr ".wl[301].w[2]" 0.038162716669692308;
	setAttr ".wl[301].w[6]" 0.010845757968275195;
	setAttr ".wl[301].w[7]" 0.0018739684019237757;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[0]" 0.076042757302143271;
	setAttr ".wl[302].w[1]" 0.8801556358522209;
	setAttr ".wl[302].w[2]" 0.032151811229893308;
	setAttr ".wl[302].w[3]" 0.0042815169260601001;
	setAttr ".wl[302].w[6]" 0.0073682786896824837;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[0]" 0.047834846940294558;
	setAttr ".wl[303].w[1]" 0.92336563037606212;
	setAttr ".wl[303].w[2]" 0.023746634874391187;
	setAttr ".wl[303].w[6]" 0.0040672998621814095;
	setAttr ".wl[303].w[11]" 0.0009855879470705986;
	setAttr -s 5 ".wl[304].w[1:5]"  0.083101527128025265 0.90485919935523518 
		0.0038498997287209845 0.0043407231441343081 0.0038486506438842544;
	setAttr -s 5 ".wl[305].w[1:5]"  0.10227369639340754 0.8802195078746794 
		0.0064793722610100943 0.0062049610254779775 0.0048224624454249647;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[1]" 0.12010483276334466;
	setAttr ".wl[306].w[2]" 0.85167487370865791;
	setAttr ".wl[306].w[3]" 0.011706536929433775;
	setAttr ".wl[306].w[4]" 0.0089692429533121277;
	setAttr ".wl[306].w[7]" 0.0075445136452514236;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[1]" 0.12512487107647838;
	setAttr ".wl[307].w[2]" 0.83822037239782843;
	setAttr ".wl[307].w[3]" 0.017998073984694957;
	setAttr ".wl[307].w[4]" 0.010813652855679663;
	setAttr ".wl[307].w[7]" 0.00784302968531847;
	setAttr -s 5 ".wl[308].w[1:5]"  0.12314542506495028 0.83839228970223434 
		0.021552882841322188 0.011378691833324978 0.0055307105581682446;
	setAttr -s 5 ".wl[309].w[1:5]"  0.12258406928116439 0.83977029617996624 
		0.020776198922707868 0.011285378136939424 0.0055840574792221688;
	setAttr -s 5 ".wl[310].w[1:5]"  0.1283373057730125 0.83815544386199881 
		0.016695358028067698 0.010811922118003747 0.0059999702189172778;
	setAttr -s 5 ".wl[311].w[1:5]"  0.12460399107797665 0.84986226945113907 
		0.010628103254849267 0.0088747557547241562 0.0060308804613108877;
	setAttr -s 5 ".wl[312].w[1:5]"  0.10532435511874887 0.87733075921446246 
		0.0060440677018882474 0.006180430988799627 0.0051203869761008965;
	setAttr -s 5 ".wl[313].w[1:5]"  0.084015724097089017 0.90402528069037869 
		0.0037242839605509787 0.0043249356070316734 0.003909775644949709;
	setAttr -s 5 ".wl[314].w[6:10]"  0.080679057479818919 0.90848957641688655 
		0.0039511911554028136 0.0043895015008639073 0.0024906734470278025;
	setAttr -s 5 ".wl[315].w[6:10]"  0.076168838029000485 0.91430557273316748 
		0.0034190695418363061 0.0039786427250786786 0.0021278769709169865;
	setAttr -s 5 ".wl[316].w[6:10]"  0.10294303477603046 0.88346031297568184 
		0.0054423432582530193 0.0056695797093393868 0.0024847292806953192;
	setAttr -s 5 ".wl[317].w[6:10]"  0.11728727369852275 0.86210708467094221 
		0.0095432462467828667 0.0081356047626205148 0.0029267906211316586;
	setAttr -s 5 ".wl[318].w[6:10]"  0.11719376449756101 0.85415890633564273 
		0.015373251921138623 0.010169832886820036 0.0031042443588376045;
	setAttr -s 5 ".wl[319].w[6:10]"  0.11269636890065039 0.85258238549929322 
		0.02022015682285784 0.011042143463730031 0.0034589453134685755;
	setAttr -s 5 ".wl[320].w[6:10]"  0.10843607518548261 0.85734971411536354 
		0.020028630274398593 0.010642540408089252 0.0035430400166660547;
	setAttr -s 5 ".wl[321].w";
	setAttr ".wl[321].w[2]" 0.0079371237246893631;
	setAttr ".wl[321].w[6]" 0.12228751771816974;
	setAttr ".wl[321].w[7]" 0.84130966561705367;
	setAttr ".wl[321].w[8]" 0.018429913612933047;
	setAttr ".wl[321].w[9]" 0.01003577932715416;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[2]" 0.0082232293220112912;
	setAttr ".wl[322].w[6]" 0.12611971788542123;
	setAttr ".wl[322].w[7]" 0.84483351300503184;
	setAttr ".wl[322].w[8]" 0.012587410950665524;
	setAttr ".wl[322].w[9]" 0.0082361288368701935;
	setAttr -s 5 ".wl[323].w[6:10]"  0.10845504685500974 0.87325976611463374 
		0.0070767465601361728 0.0061651331509369554 0.0050433073192834854;
	setAttr -s 5 ".wl[324].w";
	setAttr ".wl[324].w[2]" 0.14326822608146145;
	setAttr ".wl[324].w[3]" 0.39302792977584738;
	setAttr ".wl[324].w[4]" 0.39053728595052545;
	setAttr ".wl[324].w[5]" 0.060160540129609696;
	setAttr ".wl[324].w[8]" 0.013006018062555904;
	setAttr -s 5 ".wl[325].w[1:5]"  0.092412829918020495 0.89287008221544151 
		0.0053130397768596871 0.0052318938734938047 0.0041721542161844488;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[0]" 0.0016775127144623716;
	setAttr ".wl[326].w[1]" 0.90887044257588534;
	setAttr ".wl[326].w[2]" 0.088424390003294898;
	setAttr ".wl[326].w[6]" 0.00093661246044449771;
	setAttr ".wl[326].w[7]" 9.1042245912831277e-005;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[0]" 0.0019432819091772988;
	setAttr ".wl[327].w[1]" 0.95499726706730859;
	setAttr ".wl[327].w[2]" 0.042377358219703065;
	setAttr ".wl[327].w[6]" 0.00065320193699572033;
	setAttr ".wl[327].w[7]" 2.8890866815345362e-005;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[0]" 0.027591081441863993;
	setAttr ".wl[328].w[1]" 0.66224996451653595;
	setAttr ".wl[328].w[2]" 0.17778117233470009;
	setAttr ".wl[328].w[6]" 0.12944363200761444;
	setAttr ".wl[328].w[7]" 0.0029341496992856264;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[0]" 0.052765695314702071;
	setAttr ".wl[329].w[1]" 0.570008751155756;
	setAttr ".wl[329].w[2]" 0.070715417065304292;
	setAttr ".wl[329].w[6]" 0.24427620787322468;
	setAttr ".wl[329].w[7]" 0.062233928591012955;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[0]" 0.045941309426441125;
	setAttr ".wl[330].w[1]" 0.2338311808539541;
	setAttr ".wl[330].w[2]" 0.044690373298304747;
	setAttr ".wl[330].w[6]" 0.67416838560322623;
	setAttr ".wl[330].w[7]" 0.0013687508180737495;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[0]" 0.031319637672244736;
	setAttr ".wl[331].w[1]" 0.29201820981918425;
	setAttr ".wl[331].w[2]" 0.10238033239271163;
	setAttr ".wl[331].w[6]" 0.56743498614173637;
	setAttr ".wl[331].w[7]" 0.0068468339741230011;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[0]" 0.0014243336194332673;
	setAttr ".wl[332].w[1]" 0.0028162555455601319;
	setAttr ".wl[332].w[2]" 0.0014975921105459967;
	setAttr ".wl[332].w[6]" 0.9874723849545789;
	setAttr ".wl[332].w[7]" 0.0067894337698817253;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[0]" 0.00096995301614219149;
	setAttr ".wl[333].w[1]" 0.0023906874953439645;
	setAttr ".wl[333].w[2]" 0.0014804408897111738;
	setAttr ".wl[333].w[6]" 0.97972387580773412;
	setAttr ".wl[333].w[7]" 0.015435042791068554;
	setAttr -s 5 ".wl[334].w[6:10]"  0.096343648441912247 0.88841073644955526 
		0.0057817882320675357 0.005229811400506424 0.0042340154759585857;
	setAttr -s 5 ".wl[335].w";
	setAttr ".wl[335].w[3]" 0.014513316358162789;
	setAttr ".wl[335].w[7]" 0.14497365924657674;
	setAttr ".wl[335].w[8]" 0.38964383494715343;
	setAttr ".wl[335].w[9]" 0.38760956348685044;
	setAttr ".wl[335].w[10]" 0.063259625961256644;
	setAttr -s 5 ".wl[336].w[1:5]"  0.17743323512935522 0.7345799368662953 
		0.027987099558482526 0.031772957619969761 0.028226770825897168;
	setAttr -s 5 ".wl[337].w[1:5]"  0.18265644022767466 0.72871369703064015 
		0.022899275256861515 0.033207920983575182 0.032522666501248416;
	setAttr -s 5 ".wl[338].w[1:5]"  0.1826139597680686 0.72943746908563289 
		0.02382026208351877 0.03260826400143281 0.031520045061346945;
	setAttr -s 5 ".wl[339].w[1:5]"  0.16942402007508633 0.75260806182975293 
		0.025830632300694281 0.02806685265863184 0.024070433135834679;
	setAttr -s 5 ".wl[340].w[1:5]"  0.17348652849089949 0.74219666810984508 
		0.029009234296655896 0.030238415282628869 0.025069153819970734;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[1]" 0.15727199512504847;
	setAttr ".wl[341].w[2]" 0.73153568194834451;
	setAttr ".wl[341].w[3]" 0.039052081726369148;
	setAttr ".wl[341].w[4]" 0.029597063038434596;
	setAttr ".wl[341].w[7]" 0.042543178161803329;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[1]" 0.14792669022422242;
	setAttr ".wl[342].w[2]" 0.73224485217310908;
	setAttr ".wl[342].w[3]" 0.056924443093466011;
	setAttr ".wl[342].w[4]" 0.029909577133508003;
	setAttr ".wl[342].w[7]" 0.032994437375694505;
	setAttr -s 5 ".wl[343].w";
	setAttr ".wl[343].w[1]" 0.14407946231360452;
	setAttr ".wl[343].w[2]" 0.74087698625182741;
	setAttr ".wl[343].w[3]" 0.069490240929400038;
	setAttr ".wl[343].w[4]" 0.030236562444882091;
	setAttr ".wl[343].w[7]" 0.015316748060286045;
	setAttr -s 5 ".wl[344].w[1:5]"  0.14160511815963073 0.74642293813455829 
		0.06796645999223809 0.030637746706116912 0.013367737007455964;
	setAttr -s 5 ".wl[345].w[1:5]"  0.15591794299908379 0.74197754243231073 
		0.054275139435217813 0.031751940377850313 0.016077434755537339;
	setAttr -s 5 ".wl[346].w[1:5]"  0.17122375004312648 0.73857381448898685 
		0.037350288239417204 0.031635168333888901 0.021216978894580484;
	setAttr -s 5 ".wl[347].w[6:10]"  0.17984313301238403 0.73945533074292835 
		0.023995048753631665 0.032328973814174183 0.02437751367688179;
	setAttr -s 5 ".wl[348].w[6:10]"  0.17547864406197586 0.74948950320147356 
		0.021883900294183113 0.03187416996558471 0.021273782476782799;
	setAttr -s 5 ".wl[349].w[6:10]"  0.18575193129320336 0.7516698319021955 
		0.023090011499600254 0.026564149247030384 0.012924076057970524;
	setAttr -s 5 ".wl[350].w[6:10]"  0.17495148463229726 0.75555605165698081 
		0.031946476054546043 0.027560475533663992 0.0099855121225118637;
	setAttr -s 5 ".wl[351].w[6:10]"  0.15792958457856679 0.75227647568137801 
		0.050710466774225575 0.030189834116571286 0.0088936388492584229;
	setAttr -s 5 ".wl[352].w[6:10]"  0.14741200512565619 0.7444198202310941 
		0.067847027065048068 0.030959021808944047 0.0093621257692575455;
	setAttr -s 5 ".wl[353].w";
	setAttr ".wl[353].w[2]" 0.014539616844305308;
	setAttr ".wl[353].w[6]" 0.13859847616200482;
	setAttr ".wl[353].w[7]" 0.74936383905218484;
	setAttr ".wl[353].w[8]" 0.067823715768389026;
	setAttr ".wl[353].w[9]" 0.029674352173115939;
	setAttr -s 5 ".wl[354].w";
	setAttr ".wl[354].w[2]" 0.033399697192381707;
	setAttr ".wl[354].w[6]" 0.15207467012558268;
	setAttr ".wl[354].w[7]" 0.72911110156588543;
	setAttr ".wl[354].w[8]" 0.056199588288329411;
	setAttr ".wl[354].w[9]" 0.029214942827820778;
	setAttr -s 5 ".wl[355].w";
	setAttr ".wl[355].w[1]" 0.031116321997678942;
	setAttr ".wl[355].w[2]" 0.048908135099553482;
	setAttr ".wl[355].w[6]" 0.17237814130294712;
	setAttr ".wl[355].w[7]" 0.70762962013925945;
	setAttr ".wl[355].w[8]" 0.039967781460561;
	setAttr -s 5 ".wl[356].w[6:10]"  0.18570583550113787 0.73028640699981862 
		0.029143008289741638 0.029992887000408665 0.024871862208893362;
	setAttr -s 5 ".wl[357].w[6:10]"  0.17644883434638131 0.7460471436816738 
		0.026012632684946031 0.027799663049038702 0.023691726237960193;
	setAttr -s 5 ".wl[358].w[1:5]"  0.0045422975784652833 0.21196584162615464 
		0.26933612814453406 0.39827161989254661 0.11588411275829953;
	setAttr -s 5 ".wl[359].w[1:5]"  0.0054330468829337656 0.24824239693422098 
		0.28321315917905598 0.3585073819634505 0.10460401504033871;
	setAttr -s 5 ".wl[360].w";
	setAttr ".wl[360].w[2]" 0.39185251442037849;
	setAttr ".wl[360].w[3]" 0.2713329561885523;
	setAttr ".wl[360].w[4]" 0.24623815424549939;
	setAttr ".wl[360].w[5]" 0.071295100062852584;
	setAttr ".wl[360].w[7]" 0.019281275082717077;
	setAttr -s 5 ".wl[361].w";
	setAttr ".wl[361].w[2]" 0.39243834438627984;
	setAttr ".wl[361].w[3]" 0.27371235452099812;
	setAttr ".wl[361].w[4]" 0.23895746762903655;
	setAttr ".wl[361].w[5]" 0.068168332770919687;
	setAttr ".wl[361].w[7]" 0.026723500692765682;
	setAttr -s 5 ".wl[362].w";
	setAttr ".wl[362].w[2]" 0.53633043863666385;
	setAttr ".wl[362].w[3]" 0.30462887803008182;
	setAttr ".wl[362].w[4]" 0.11578263117815374;
	setAttr ".wl[362].w[5]" 0.021565478229214924;
	setAttr ".wl[362].w[7]" 0.021692573925885535;
	setAttr -s 5 ".wl[363].w";
	setAttr ".wl[363].w[2]" 0.52354499762599904;
	setAttr ".wl[363].w[3]" 0.39731670678645742;
	setAttr ".wl[363].w[4]" 0.054255746815438349;
	setAttr ".wl[363].w[7]" 0.012520606258547026;
	setAttr ".wl[363].w[8]" 0.012361942513558198;
	setAttr -s 5 ".wl[364].w";
	setAttr ".wl[364].w[2]" 0.51011522328723147;
	setAttr ".wl[364].w[3]" 0.44286560927361429;
	setAttr ".wl[364].w[4]" 0.036248743781394734;
	setAttr ".wl[364].w[5]" 0.006068703084503105;
	setAttr ".wl[364].w[7]" 0.0047017205732564531;
	setAttr -s 5 ".wl[365].w[1:5]"  0.004617311202464558 0.50939177172657568 
		0.43792062621388456 0.041094243547259726 0.0069760473098155048;
	setAttr -s 5 ".wl[366].w[1:5]"  0.0067105837737332008 0.52092282398569467 
		0.38539265762781433 0.073760555723820509 0.013213378888937262;
	setAttr -s 5 ".wl[367].w[1:5]"  0.0096748572389295309 0.50591847810577539 
		0.29002998516736367 0.16104550225066799 0.033331177237263289;
	setAttr -s 5 ".wl[368].w[1:5]"  0.014535737855354463 0.3403147257702227 
		0.27318859210131369 0.2696400032779247 0.10232094099518435;
	setAttr -s 5 ".wl[369].w[6:10]"  0.0070085759073634903 0.31058428182158693 
		0.26409888025086148 0.31601146668175656 0.1022967953384316;
	setAttr -s 5 ".wl[370].w[6:10]"  0.0056931515818553335 0.29565251965678785 
		0.2455645062960411 0.34400848835319059 0.10908133411212502;
	setAttr -s 5 ".wl[371].w[6:10]"  0.016037295631451429 0.41116620124946268 
		0.24415378533286355 0.23854828555145827 0.090094432234764099;
	setAttr -s 5 ".wl[372].w[6:10]"  0.009865321961608978 0.5726669642164478 
		0.25571766221636721 0.13538846880483013 0.026361582800745964;
	setAttr -s 5 ".wl[373].w[6:10]"  0.0069813585850374343 0.55067959313887815 
		0.36319991796827916 0.067654145999324067 0.011484984308481216;
	setAttr -s 5 ".wl[374].w[6:10]"  0.0049605849890664985 0.51729206548850593 
		0.42993577511121001 0.041016073540423477 0.0067955008707940578;
	setAttr -s 5 ".wl[375].w";
	setAttr ".wl[375].w[2]" 0.0054407438412291615;
	setAttr ".wl[375].w[7]" 0.50452430325488662;
	setAttr ".wl[375].w[8]" 0.44486472020105478;
	setAttr ".wl[375].w[9]" 0.038598229692168994;
	setAttr ".wl[375].w[10]" 0.0065720030106604099;
	setAttr -s 5 ".wl[376].w";
	setAttr ".wl[376].w[2]" 0.015272690116565509;
	setAttr ".wl[376].w[3]" 0.014572854551006124;
	setAttr ".wl[376].w[7]" 0.5101437052596216;
	setAttr ".wl[376].w[8]" 0.40106419735475524;
	setAttr ".wl[376].w[9]" 0.058946552718051458;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[2]" 0.028584609136113489;
	setAttr ".wl[377].w[3]" 0.024855489052496283;
	setAttr ".wl[377].w[7]" 0.51182598305343407;
	setAttr ".wl[377].w[8]" 0.31663310435952841;
	setAttr ".wl[377].w[9]" 0.11810081439842776;
	setAttr -s 5 ".wl[378].w";
	setAttr ".wl[378].w[2]" 0.035577442349557155;
	setAttr ".wl[378].w[7]" 0.39204123451062134;
	setAttr ".wl[378].w[8]" 0.27007196733444377;
	setAttr ".wl[378].w[9]" 0.2318520629592303;
	setAttr ".wl[378].w[10]" 0.070457292846147421;
	setAttr -s 5 ".wl[379].w";
	setAttr ".wl[379].w[2]" 0.026020473617534456;
	setAttr ".wl[379].w[7]" 0.40523709335189456;
	setAttr ".wl[379].w[8]" 0.26309198818658958;
	setAttr ".wl[379].w[9]" 0.23342544709689958;
	setAttr ".wl[379].w[10]" 0.072224997747081854;
	setAttr -s 5 ".wl[380].w[6:10]"  0.00071291620448383987 0.009528822071551717 
		0.086140221373377304 0.5163108968393767 0.38730714351121037;
	setAttr -s 5 ".wl[381].w";
	setAttr ".wl[381].w[4]" 7.454293641898877e-005;
	setAttr ".wl[381].w[7]" 0.00060786338936079474;
	setAttr ".wl[381].w[8]" 0.0048496130783833163;
	setAttr ".wl[381].w[9]" 0.49723399029791848;
	setAttr ".wl[381].w[10]" 0.49723399029791848;
	setAttr -s 5 ".wl[382].w[6:10]"  0.00024861112306207256 0.001354070746304781 
		0.0051762034910899776 0.49661055731977172 0.4966105573197715;
	setAttr -s 5 ".wl[383].w[6:10]"  0.0020596096130210398 0.018941830357244137 
		0.075131315026072565 0.4859150665430409 0.41795217846062144;
	setAttr -s 5 ".wl[384].w";
	setAttr ".wl[384].w[4]" 0.00042183545615838625;
	setAttr ".wl[384].w[7]" 0.0021506860572953414;
	setAttr ".wl[384].w[8]" 0.01622396137962576;
	setAttr ".wl[384].w[9]" 0.49060175855346033;
	setAttr ".wl[384].w[10]" 0.49060175855346022;
	setAttr -s 5 ".wl[385].w[6:10]"  0.00071681449925926086 0.0040074900094576741 
		0.014947674704591803 0.49016401039334567 0.49016401039334567;
	setAttr -s 5 ".wl[386].w";
	setAttr ".wl[386].w[4]" 0.0058738497019107973;
	setAttr ".wl[386].w[7]" 0.024329249895324416;
	setAttr ".wl[386].w[8]" 0.16963533021154781;
	setAttr ".wl[386].w[9]" 0.46378443214553738;
	setAttr ".wl[386].w[10]" 0.3363771380456797;
	setAttr -s 5 ".wl[387].w";
	setAttr ".wl[387].w[4]" 0.006839194134206506;
	setAttr ".wl[387].w[7]" 0.042975652225665892;
	setAttr ".wl[387].w[8]" 0.14991915233062522;
	setAttr ".wl[387].w[9]" 0.44063171429328929;
	setAttr ".wl[387].w[10]" 0.35963428701621303;
	setAttr -s 5 ".wl[388].w";
	setAttr ".wl[388].w[2]" 0.0020674871075230038;
	setAttr ".wl[388].w[3]" 0.015632964410174803;
	setAttr ".wl[388].w[4]" 0.49094979499777569;
	setAttr ".wl[388].w[5]" 0.49094979499777569;
	setAttr ".wl[388].w[9]" 0.00039995848675079658;
	setAttr -s 5 ".wl[389].w";
	setAttr ".wl[389].w[2]" 0.00060968600432088243;
	setAttr ".wl[389].w[3]" 0.0048745077376190415;
	setAttr ".wl[389].w[4]" 0.49722065347977529;
	setAttr ".wl[389].w[5]" 0.49722065347977529;
	setAttr ".wl[389].w[9]" 7.4499298509553304e-005;
	setAttr -s 5 ".wl[390].w[1:5]"  0.00020710907940268289 0.0011441410860242257 
		0.0045687533065906505 0.49703999826399126 0.49703999826399126;
	setAttr -s 5 ".wl[391].w[1:5]"  0.00063391617623414554 0.0035655706418370606 
		0.01355754222680141 0.49112148547756368 0.49112148547756368;
	setAttr -s 5 ".wl[392].w[1:5]"  0.00071934971754571858 0.0099239971071071187 
		0.088621720930709164 0.51247577841002501 0.38825915383461296;
	setAttr -s 5 ".wl[393].w[1:5]"  0.0018933411708080231 0.017634125917269657 
		0.075662304452197154 0.4861579687296172 0.41865225973010806;
	setAttr -s 5 ".wl[394].w";
	setAttr ".wl[394].w[2]" 0.023630782717903226;
	setAttr ".wl[394].w[3]" 0.16757355154423759;
	setAttr ".wl[394].w[4]" 0.46700745989162284;
	setAttr ".wl[394].w[5]" 0.33626462697838594;
	setAttr ".wl[394].w[9]" 0.0055235788678505218;
	setAttr -s 5 ".wl[395].w";
	setAttr ".wl[395].w[2]" 0.040844379273110618;
	setAttr ".wl[395].w[3]" 0.14537008749159805;
	setAttr ".wl[395].w[4]" 0.44669304717194908;
	setAttr ".wl[395].w[5]" 0.36094276435217831;
	setAttr ".wl[395].w[9]" 0.0061497217111640681;
	setAttr -s 5 ".wl[396].w";
	setAttr ".wl[396].w[0]" 0.088088834467822272;
	setAttr ".wl[396].w[1]" 0.9071856543868575;
	setAttr ".wl[396].w[2]" 0.0028208058118082053;
	setAttr ".wl[396].w[6]" 0.0012027326738461852;
	setAttr ".wl[396].w[11]" 0.00070197265966584997;
	setAttr -s 5 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.068829244777531481;
	setAttr ".wl[397].w[1]" 0.92577286902631517;
	setAttr ".wl[397].w[2]" 0.0035273319936185263;
	setAttr ".wl[397].w[6]" 0.00066936534130945802;
	setAttr ".wl[397].w[11]" 0.0012011888612253475;
	setAttr -s 5 ".wl[398].w";
	setAttr ".wl[398].w[0]" 0.10927527638668588;
	setAttr ".wl[398].w[1]" 0.87828561649986614;
	setAttr ".wl[398].w[2]" 0.0078379427422138187;
	setAttr ".wl[398].w[6]" 0.0015409225597977638;
	setAttr ".wl[398].w[11]" 0.0030602418114364016;
	setAttr -s 5 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.31920324868475047;
	setAttr ".wl[399].w[1]" 0.58736548553817913;
	setAttr ".wl[399].w[2]" 0.024969835448928755;
	setAttr ".wl[399].w[6]" 0.05148441344499588;
	setAttr ".wl[399].w[11]" 0.016977016883145811;
	setAttr -s 5 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.33480331473830532;
	setAttr ".wl[400].w[1]" 0.20839430335553086;
	setAttr ".wl[400].w[6]" 0.42666423487376404;
	setAttr ".wl[400].w[7]" 0.010800310410559177;
	setAttr ".wl[400].w[11]" 0.019337836621840621;
	setAttr -s 5 ".wl[401].w";
	setAttr ".wl[401].w[0]" 0.11797949952264129;
	setAttr ".wl[401].w[1]" 0.013242176919326705;
	setAttr ".wl[401].w[6]" 0.86068634028571922;
	setAttr ".wl[401].w[7]" 0.0047889687120914459;
	setAttr ".wl[401].w[11]" 0.0033030145602213194;
	setAttr -s 5 ".wl[402].w";
	setAttr ".wl[402].w[0]" 0.077444624194969489;
	setAttr ".wl[402].w[1]" 0.0031348378334935408;
	setAttr ".wl[402].w[6]" 0.91483574523385058;
	setAttr ".wl[402].w[7]" 0.003296165494248271;
	setAttr ".wl[402].w[11]" 0.0012886272434381857;
	setAttr -s 5 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.075777556474565286;
	setAttr ".wl[403].w[1]" 0.0013787924464533936;
	setAttr ".wl[403].w[6]" 0.92014982489565844;
	setAttr ".wl[403].w[7]" 0.002240694822622531;
	setAttr ".wl[403].w[11]" 0.00045313136070035398;
	setAttr -s 5 ".wl[404].w";
	setAttr ".wl[404].w[0]" 0.17559396666250993;
	setAttr ".wl[404].w[1]" 0.0026403849591298302;
	setAttr ".wl[404].w[6]" 0.81709482716570825;
	setAttr ".wl[404].w[7]" 0.0039235800746369922;
	setAttr ".wl[404].w[11]" 0.00074724113801494241;
	setAttr -s 5 ".wl[405].w";
	setAttr ".wl[405].w[0]" 0.28292326116615479;
	setAttr ".wl[405].w[1]" 0.006597738282427202;
	setAttr ".wl[405].w[6]" 0.70542569735383287;
	setAttr ".wl[405].w[7]" 0.0030959041323512793;
	setAttr ".wl[405].w[11]" 0.0019573990652338143;
	setAttr -s 5 ".wl[406].w";
	setAttr ".wl[406].w[0]" 0.3310595302358012;
	setAttr ".wl[406].w[1]" 0.015411033520582419;
	setAttr ".wl[406].w[6]" 0.64882780111697325;
	setAttr ".wl[406].w[7]" 0.00065476464806124568;
	setAttr ".wl[406].w[11]" 0.0040468704785819069;
	setAttr -s 5 ".wl[407].w";
	setAttr ".wl[407].w[0]" 0.39981397270694113;
	setAttr ".wl[407].w[1]" 0.041974388626154616;
	setAttr ".wl[407].w[6]" 0.55036997667456233;
	setAttr ".wl[407].w[7]" 0.00012715047341771424;
	setAttr ".wl[407].w[11]" 0.0077145115189242598;
	setAttr -s 5 ".wl[408].w";
	setAttr ".wl[408].w[0]" 0.52150368070951991;
	setAttr ".wl[408].w[1]" 0.15683274788358645;
	setAttr ".wl[408].w[6]" 0.30781749288810994;
	setAttr ".wl[408].w[7]" 0.00020991390920244157;
	setAttr ".wl[408].w[11]" 0.013636164609581147;
	setAttr -s 5 ".wl[409].w";
	setAttr ".wl[409].w[0]" 0.57932125018984226;
	setAttr ".wl[409].w[1]" 0.30475790887186266;
	setAttr ".wl[409].w[2]" 0.013424170994954524;
	setAttr ".wl[409].w[6]" 0.091748505830764771;
	setAttr ".wl[409].w[11]" 0.010748164112575872;
	setAttr -s 5 ".wl[410].w";
	setAttr ".wl[410].w[0]" 0.39660351560207802;
	setAttr ".wl[410].w[1]" 0.56114487439820526;
	setAttr ".wl[410].w[2]" 0.015107541441327544;
	setAttr ".wl[410].w[6]" 0.018423436209559441;
	setAttr ".wl[410].w[11]" 0.0087206323488296447;
	setAttr -s 5 ".wl[411].w";
	setAttr ".wl[411].w[0]" 0.32888586375255691;
	setAttr ".wl[411].w[1]" 0.64974740776329543;
	setAttr ".wl[411].w[2]" 0.010777098034344313;
	setAttr ".wl[411].w[6]" 0.0074169863946735859;
	setAttr ".wl[411].w[11]" 0.0031726440551297073;
	setAttr -s 5 ".wl[412].w";
	setAttr ".wl[412].w[0]" 0.2669366451444673;
	setAttr ".wl[412].w[1]" 0.71923134283558998;
	setAttr ".wl[412].w[2]" 0.0076701855837368908;
	setAttr ".wl[412].w[6]" 0.0048876996152102947;
	setAttr ".wl[412].w[11]" 0.0012741268209955016;
	setAttr -s 5 ".wl[413].w";
	setAttr ".wl[413].w[0]" 0.17525196442119861;
	setAttr ".wl[413].w[1]" 0.81643072073731038;
	setAttr ".wl[413].w[2]" 0.0047004882938749808;
	setAttr ".wl[413].w[6]" 0.0028648310660653975;
	setAttr ".wl[413].w[11]" 0.00075199548155069351;
	setAttr -s 5 ".wl[414].w";
	setAttr ".wl[414].w[0]" 0.46072942674618184;
	setAttr ".wl[414].w[1]" 0.53671383640731896;
	setAttr ".wl[414].w[2]" 0.00051496748184716402;
	setAttr ".wl[414].w[6]" 0.00063507538288831711;
	setAttr ".wl[414].w[11]" 0.0014066939817636898;
	setAttr -s 5 ".wl[415].w";
	setAttr ".wl[415].w[0]" 0.33833235643711868;
	setAttr ".wl[415].w[1]" 0.65471287100350262;
	setAttr ".wl[415].w[2]" 0.0017770549453866222;
	setAttr ".wl[415].w[6]" 0.00081075867637991905;
	setAttr ".wl[415].w[11]" 0.0043669589376121405;
	setAttr -s 5 ".wl[416].w";
	setAttr ".wl[416].w[0]" 0.37611336358728759;
	setAttr ".wl[416].w[1]" 0.59993970744451575;
	setAttr ".wl[416].w[2]" 0.0058670759750430916;
	setAttr ".wl[416].w[6]" 0.0027442453429102898;
	setAttr ".wl[416].w[11]" 0.015335607650243355;
	setAttr -s 5 ".wl[417].w";
	setAttr ".wl[417].w[0]" 0.56945890228229401;
	setAttr ".wl[417].w[1]" 0.34187900646624453;
	setAttr ".wl[417].w[2]" 0.010151734442404685;
	setAttr ".wl[417].w[6]" 0.03785918653011322;
	setAttr ".wl[417].w[11]" 0.040651170278943459;
	setAttr -s 5 ".wl[418].w";
	setAttr ".wl[418].w[0]" 0.61294662521438403;
	setAttr ".wl[418].w[1]" 0.1986909315655484;
	setAttr ".wl[418].w[6]" 0.12763621946389234;
	setAttr ".wl[418].w[7]" 0.012377753853797913;
	setAttr ".wl[418].w[11]" 0.048348469902377254;
	setAttr -s 5 ".wl[419].w";
	setAttr ".wl[419].w[0]" 0.51367951917112276;
	setAttr ".wl[419].w[1]" 0.025619776060905854;
	setAttr ".wl[419].w[6]" 0.43649080395698547;
	setAttr ".wl[419].w[7]" 0.0059849100462242184;
	setAttr ".wl[419].w[11]" 0.018224990764761723;
	setAttr -s 5 ".wl[420].w";
	setAttr ".wl[420].w[0]" 0.40626193910631681;
	setAttr ".wl[420].w[1]" 0.0033057479745497277;
	setAttr ".wl[420].w[6]" 0.58532273769378662;
	setAttr ".wl[420].w[7]" 0.0014824307641538061;
	setAttr ".wl[420].w[11]" 0.0036271444611930014;
	setAttr -s 5 ".wl[421].w";
	setAttr ".wl[421].w[0]" 0.49905732135098724;
	setAttr ".wl[421].w[1]" 0.00058470441834988372;
	setAttr ".wl[421].w[6]" 0.49964964389801025;
	setAttr ".wl[421].w[7]" 0.00024739274940933502;
	setAttr ".wl[421].w[11]" 0.00046093758324327932;
	setAttr -s 5 ".wl[422].w";
	setAttr ".wl[422].w[0]" 0.49975012938903668;
	setAttr ".wl[422].w[1]" 0.00024409775816599884;
	setAttr ".wl[422].w[6]" 0.49975012938903657;
	setAttr ".wl[422].w[7]" 7.766021735733375e-005;
	setAttr ".wl[422].w[11]" 0.00017798324640342939;
	setAttr -s 5 ".wl[423].w";
	setAttr ".wl[423].w[0]" 0.49925691148449347;
	setAttr ".wl[423].w[1]" 0.00074590773282963636;
	setAttr ".wl[423].w[6]" 0.49925691148449314;
	setAttr ".wl[423].w[7]" 0.00018021024879999459;
	setAttr ".wl[423].w[11]" 0.00056005904938375665;
	setAttr -s 5 ".wl[424].w";
	setAttr ".wl[424].w[0]" 0.52375306491826756;
	setAttr ".wl[424].w[1]" 0.0032313974855649776;
	setAttr ".wl[424].w[6]" 0.46999956577513607;
	setAttr ".wl[424].w[7]" 0.00039479360566474497;
	setAttr ".wl[424].w[11]" 0.002621178215366672;
	setAttr -s 5 ".wl[425].w";
	setAttr ".wl[425].w[0]" 0.71695812253529179;
	setAttr ".wl[425].w[1]" 0.013097738002466521;
	setAttr ".wl[425].w[6]" 0.26136648157647752;
	setAttr ".wl[425].w[7]" 0.00060727563686668873;
	setAttr ".wl[425].w[11]" 0.0079703822488975742;
	setAttr -s 5 ".wl[426].w";
	setAttr ".wl[426].w[0]" 0.89117259793260151;
	setAttr ".wl[426].w[1]" 0.035380968202669984;
	setAttr ".wl[426].w[6]" 0.059422187507152557;
	setAttr ".wl[426].w[11]" 0.013064484302126658;
	setAttr ".wl[426].w[12]" 0.00095976205544927632;
	setAttr -s 5 ".wl[427].w";
	setAttr ".wl[427].w[0]" 0.90740195624729658;
	setAttr ".wl[427].w[1]" 0.057912519477641713;
	setAttr ".wl[427].w[6]" 0.020674875006079674;
	setAttr ".wl[427].w[11]" 0.013194403424633233;
	setAttr ".wl[427].w[12]" 0.00081624584434876848;
	setAttr -s 5 ".wl[428].w";
	setAttr ".wl[428].w[0]" 0.72632805122856448;
	setAttr ".wl[428].w[1]" 0.25814846136802821;
	setAttr ".wl[428].w[6]" 0.0054028402082622051;
	setAttr ".wl[428].w[11]" 0.0092596570781755261;
	setAttr ".wl[428].w[12]" 0.00086099011696958697;
	setAttr -s 5 ".wl[429].w";
	setAttr ".wl[429].w[0]" 0.5159396664776803;
	setAttr ".wl[429].w[1]" 0.47941444584541265;
	setAttr ".wl[429].w[2]" 0.0004292031042372973;
	setAttr ".wl[429].w[6]" 0.0013506894465535879;
	setAttr ".wl[429].w[11]" 0.0028659951261160656;
	setAttr -s 5 ".wl[430].w";
	setAttr ".wl[430].w[0]" 0.49962802165120179;
	setAttr ".wl[430].w[1]" 0.49962802165120201;
	setAttr ".wl[430].w[2]" 8.1969674965923174e-005;
	setAttr ".wl[430].w[6]" 0.00020611916261259466;
	setAttr ".wl[430].w[11]" 0.00045586786001769822;
	setAttr -s 5 ".wl[431].w";
	setAttr ".wl[431].w[0]" 0.49951207763938377;
	setAttr ".wl[431].w[1]" 0.49951207763938399;
	setAttr ".wl[431].w[2]" 0.00015419252874456789;
	setAttr ".wl[431].w[6]" 0.00035136518999934196;
	setAttr ".wl[431].w[11]" 0.00047028700248825781;
	setAttr -s 4 ".wl[432].w";
	setAttr ".wl[432].w[11]" 0.028358196862003766;
	setAttr ".wl[432].w[12]" 0.26881297351821198;
	setAttr ".wl[432].w[13]" 0.57066768917788968;
	setAttr ".wl[432].w[15]" 0.13216114044189453;
	setAttr -s 5 ".wl[433].w";
	setAttr ".wl[433].w[11]" 0.19770165757340535;
	setAttr ".wl[433].w[12]" 0.44136463747080151;
	setAttr ".wl[433].w[13]" 0.35030003416075595;
	setAttr ".wl[433].w[15]" 0.010633661411702633;
	setAttr ".wl[433].w[19]" 9.3833345689496179e-009;
	setAttr -s 5 ".wl[434].w";
	setAttr ".wl[434].w[11]" 0.21325243558669715;
	setAttr ".wl[434].w[12]" 0.49471277806942571;
	setAttr ".wl[434].w[13]" 0.28956069112928523;
	setAttr ".wl[434].w[15]" 0.002474058885127306;
	setAttr ".wl[434].w[19]" 3.6329464613098683e-008;
	setAttr -s 4 ".wl[435].w";
	setAttr ".wl[435].w[11]" 0.23651426383768637;
	setAttr ".wl[435].w[12]" 0.5049126972532102;
	setAttr ".wl[435].w[13]" 0.25855437885541988;
	setAttr ".wl[435].w[15]" 1.8660053683561273e-005;
	setAttr -s 5 ".wl[436].w";
	setAttr ".wl[436].w[11]" 0.27913239702673609;
	setAttr ".wl[436].w[12]" 0.44700588001175512;
	setAttr ".wl[436].w[13]" 0.27328606024367069;
	setAttr ".wl[436].w[15]" 0.00051113480003550649;
	setAttr ".wl[436].w[19]" 6.452791780266018e-005;
	setAttr -s 5 ".wl[437].w";
	setAttr ".wl[437].w[11]" 0.084762266901155472;
	setAttr ".wl[437].w[12]" 0.46874451857904148;
	setAttr ".wl[437].w[13]" 0.4307720481406328;
	setAttr ".wl[437].w[15]" 0.014122030697762966;
	setAttr ".wl[437].w[19]" 0.0015991356814071898;
	setAttr -s 5 ".wl[438].w";
	setAttr ".wl[438].w[11]" 0.078754539097767251;
	setAttr ".wl[438].w[12]" 0.43433344804809393;
	setAttr ".wl[438].w[13]" 0.46510023052956168;
	setAttr ".wl[438].w[15]" 0.015188122110331969;
	setAttr ".wl[438].w[19]" 0.0066236602142453194;
	setAttr -s 5 ".wl[439].w";
	setAttr ".wl[439].w[11]" 0.064961517880377781;
	setAttr ".wl[439].w[12]" 0.44134108229044872;
	setAttr ".wl[439].w[13]" 0.46488490478323335;
	setAttr ".wl[439].w[15]" 0.014359876499156288;
	setAttr ".wl[439].w[19]" 0.014452618546783924;
	setAttr -s 5 ".wl[440].w";
	setAttr ".wl[440].w[11]" 0.050817260933924704;
	setAttr ".wl[440].w[12]" 0.44603921968718446;
	setAttr ".wl[440].w[13]" 0.49460433485446437;
	setAttr ".wl[440].w[15]" 0.0081702116916237758;
	setAttr ".wl[440].w[19]" 0.00036897283280268312;
	setAttr -s 5 ".wl[441].w";
	setAttr ".wl[441].w[11]" 0.089421439189971585;
	setAttr ".wl[441].w[12]" 0.4683961994998081;
	setAttr ".wl[441].w[13]" 0.44121581854746733;
	setAttr ".wl[441].w[15]" 0.00091315928148105741;
	setAttr ".wl[441].w[19]" 5.3383481272024248e-005;
	setAttr -s 4 ".wl[442].w";
	setAttr ".wl[442].w[11]" 0.052685738697321481;
	setAttr ".wl[442].w[12]" 0.7909210510484056;
	setAttr ".wl[442].w[13]" 0.15632804017131077;
	setAttr ".wl[442].w[15]" 6.5170082962140441e-005;
	setAttr -s 5 ".wl[443].w";
	setAttr ".wl[443].w[11]" 0.06060589624125181;
	setAttr ".wl[443].w[12]" 0.83178301490204176;
	setAttr ".wl[443].w[13]" 0.10760670839383936;
	setAttr ".wl[443].w[15]" 1.9436420188867487e-006;
	setAttr ".wl[443].w[19]" 2.4368208481864442e-006;
	setAttr -s 5 ".wl[444].w";
	setAttr ".wl[444].w[11]" 0.059357716134319602;
	setAttr ".wl[444].w[12]" 0.9147212952058511;
	setAttr ".wl[444].w[13]" 0.025909323812383919;
	setAttr ".wl[444].w[15]" 1.1663623808999546e-005;
	setAttr ".wl[444].w[19]" 1.2236363763547395e-009;
	setAttr -s 4 ".wl[445].w";
	setAttr ".wl[445].w[11]" 0.072530755925649504;
	setAttr ".wl[445].w[12]" 0.8832360222442418;
	setAttr ".wl[445].w[13]" 0.041709929275566215;
	setAttr ".wl[445].w[15]" 0.0025232925545424223;
	setAttr -s 4 ".wl[446].w";
	setAttr ".wl[446].w[11]" 0.06378406379891291;
	setAttr ".wl[446].w[12]" 0.81650458744877719;
	setAttr ".wl[446].w[13]" 0.10276227627210818;
	setAttr ".wl[446].w[15]" 0.016949072480201721;
	setAttr -s 4 ".wl[447].w";
	setAttr ".wl[447].w[11]" 0.063483484730600434;
	setAttr ".wl[447].w[12]" 0.74682515933007365;
	setAttr ".wl[447].w[13]" 0.15878676113050907;
	setAttr ".wl[447].w[15]" 0.03090459480881691;
	setAttr -s 4 ".wl[448].w";
	setAttr ".wl[448].w[11]" 0.098380444701811551;
	setAttr ".wl[448].w[12]" 0.43147639593764248;
	setAttr ".wl[448].w[13]" 0.39675260844911936;
	setAttr ".wl[448].w[15]" 0.073390550911426544;
	setAttr -s 4 ".wl[449].w";
	setAttr ".wl[449].w[11]" 0.071246991152964886;
	setAttr ".wl[449].w[12]" 0.379370735472712;
	setAttr ".wl[449].w[13]" 0.46108451139760415;
	setAttr ".wl[449].w[15]" 0.088297761976718903;
	setAttr -s 5 ".wl[450].w";
	setAttr ".wl[450].w[0]" 0.38726817423196658;
	setAttr ".wl[450].w[1]" 0.60529285638203567;
	setAttr ".wl[450].w[2]" 0.0015029625791331924;
	setAttr ".wl[450].w[6]" 0.00072652800008654594;
	setAttr ".wl[450].w[11]" 0.0052094788067780628;
	setAttr -s 5 ".wl[451].w";
	setAttr ".wl[451].w[0]" 0.40939642246846081;
	setAttr ".wl[451].w[1]" 0.5670313004528208;
	setAttr ".wl[451].w[2]" 0.0046894420022599919;
	setAttr ".wl[451].w[6]" 0.0025109450798481703;
	setAttr ".wl[451].w[11]" 0.016371889996610375;
	setAttr -s 5 ".wl[452].w";
	setAttr ".wl[452].w[0]" 0.61082224585040501;
	setAttr ".wl[452].w[1]" 0.32155335047594241;
	setAttr ".wl[452].w[2]" 0.0071505843703973705;
	setAttr ".wl[452].w[6]" 0.022199718281626701;
	setAttr ".wl[452].w[11]" 0.038274101021628468;
	setAttr -s 5 ".wl[453].w";
	setAttr ".wl[453].w[0]" 0.65074238218577662;
	setAttr ".wl[453].w[1]" 0.16174772403396695;
	setAttr ".wl[453].w[6]" 0.12901853696352117;
	setAttr ".wl[453].w[7]" 0.010608583688735962;
	setAttr ".wl[453].w[11]" 0.047882773127999288;
	setAttr -s 5 ".wl[454].w";
	setAttr ".wl[454].w[0]" 0.57111425354826295;
	setAttr ".wl[454].w[1]" 0.024286657861872951;
	setAttr ".wl[454].w[6]" 0.38064414262771606;
	setAttr ".wl[454].w[7]" 0.0050239474552178469;
	setAttr ".wl[454].w[11]" 0.018930998506930301;
	setAttr -s 5 ".wl[455].w";
	setAttr ".wl[455].w[0]" 0.47368397359724157;
	setAttr ".wl[455].w[1]" 0.0027369530831852893;
	setAttr ".wl[455].w[6]" 0.51927733421325684;
	setAttr ".wl[455].w[7]" 0.00098026753161653893;
	setAttr ".wl[455].w[11]" 0.0033214715746997482;
	setAttr -s 5 ".wl[456].w";
	setAttr ".wl[456].w[0]" 0.55124190944680784;
	setAttr ".wl[456].w[1]" 0.00043158222596464214;
	setAttr ".wl[456].w[6]" 0.44777867197990417;
	setAttr ".wl[456].w[7]" 0.00014846316158739349;
	setAttr ".wl[456].w[11]" 0.00039937318573601659;
	setAttr -s 5 ".wl[457].w";
	setAttr ".wl[457].w[0]" 0.52508938654901283;
	setAttr ".wl[457].w[1]" 0.00016154865646164887;
	setAttr ".wl[457].w[6]" 0.47455184238422843;
	setAttr ".wl[457].w[7]" 4.2515188397374004e-005;
	setAttr ".wl[457].w[11]" 0.00015470722189972678;
	setAttr -s 5 ".wl[458].w";
	setAttr ".wl[458].w[0]" 0.49952073054668489;
	setAttr ".wl[458].w[1]" 0.00043944623580473101;
	setAttr ".wl[458].w[6]" 0.49952073054668522;
	setAttr ".wl[458].w[7]" 9.0962719696108252e-005;
	setAttr ".wl[458].w[11]" 0.00042812995112911646;
	setAttr -s 5 ".wl[459].w";
	setAttr ".wl[459].w[0]" 0.55064469483125666;
	setAttr ".wl[459].w[1]" 0.0022650248120074301;
	setAttr ".wl[459].w[6]" 0.44454133046893063;
	setAttr ".wl[459].w[11]" 0.0024820273322441366;
	setAttr ".wl[459].w[19]" 6.6922555561177433e-005;
	setAttr -s 5 ".wl[460].w";
	setAttr ".wl[460].w[0]" 0.76084334611993321;
	setAttr ".wl[460].w[1]" 0.0084588631600643633;
	setAttr ".wl[460].w[6]" 0.22119664746348094;
	setAttr ".wl[460].w[11]" 0.0088309301063418388;
	setAttr ".wl[460].w[12]" 0.00067021315017956997;
	setAttr -s 5 ".wl[461].w";
	setAttr ".wl[461].w[0]" 0.92331545258842529;
	setAttr ".wl[461].w[1]" 0.020209142700859838;
	setAttr ".wl[461].w[6]" 0.04360223188996315;
	setAttr ".wl[461].w[11]" 0.012265789613405327;
	setAttr ".wl[461].w[12]" 0.00060738320734640813;
	setAttr -s 5 ".wl[462].w";
	setAttr ".wl[462].w[0]" 0.93224682191925701;
	setAttr ".wl[462].w[1]" 0.044348515594038906;
	setAttr ".wl[462].w[6]" 0.011340402066707611;
	setAttr ".wl[462].w[11]" 0.011540511174881984;
	setAttr ".wl[462].w[12]" 0.00052374924511455832;
	setAttr -s 5 ".wl[463].w";
	setAttr ".wl[463].w[0]" 0.76353587928612021;
	setAttr ".wl[463].w[1]" 0.22314132030247991;
	setAttr ".wl[463].w[6]" 0.0038194858934730291;
	setAttr ".wl[463].w[11]" 0.0088703510272006986;
	setAttr ".wl[463].w[12]" 0.00063296349072615031;
	setAttr -s 5 ".wl[464].w";
	setAttr ".wl[464].w[0]" 0.54000166888840917;
	setAttr ".wl[464].w[1]" 0.45580060709009679;
	setAttr ".wl[464].w[6]" 0.0010602001566439867;
	setAttr ".wl[464].w[11]" 0.0029357909174768547;
	setAttr ".wl[464].w[15]" 0.00020173294737324383;
	setAttr -s 5 ".wl[465].w";
	setAttr ".wl[465].w[0]" 0.49949995088637517;
	setAttr ".wl[465].w[1]" 0.49949995088637517;
	setAttr ".wl[465].w[2]" 6.3718639669767732e-005;
	setAttr ".wl[465].w[6]" 0.0001860170450527221;
	setAttr ".wl[465].w[11]" 0.000750362542527133;
	setAttr -s 5 ".wl[466].w";
	setAttr ".wl[466].w[0]" 0.49953567351334954;
	setAttr ".wl[466].w[1]" 0.49953567351334932;
	setAttr ".wl[466].w[2]" 7.7534003447879874e-005;
	setAttr ".wl[466].w[6]" 0.00020331284031271935;
	setAttr ".wl[466].w[11]" 0.00064780612954053554;
	setAttr -s 5 ".wl[467].w";
	setAttr ".wl[467].w[0]" 0.48606647517366608;
	setAttr ".wl[467].w[1]" 0.51162401657044798;
	setAttr ".wl[467].w[2]" 0.00033427153543187356;
	setAttr ".wl[467].w[6]" 0.00046274159103631973;
	setAttr ".wl[467].w[11]" 0.0015124951294177157;
	setAttr -s 5 ".wl[468].w[1:5]"  0.24914827455547317 0.74379955697817024 
		0.0023807164514443161 0.0024643202641367154 0.0022071317507755795;
	setAttr -s 5 ".wl[469].w[1:5]"  0.20527323874348652 0.79125071763444266 
		0.0010703831875007333 0.0012336816989161851 0.0011719787356540348;
	setAttr -s 5 ".wl[470].w[1:5]"  0.21001509496109269 0.78618945271295471 
		0.0011920516176219752 0.0013423818627987505 0.0012610188455318722;
	setAttr -s 5 ".wl[471].w[1:5]"  0.23139966549842397 0.76229371744464181 
		0.0021912708881566636 0.0021973510041834649 0.0019179951645941441;
	setAttr -s 5 ".wl[472].w";
	setAttr ".wl[472].w[1]" 0.24723107608179845;
	setAttr ".wl[472].w[2]" 0.74478504016738634;
	setAttr ".wl[472].w[3]" 0.0028042810863020411;
	setAttr ".wl[472].w[4]" 0.002749558573316243;
	setAttr ".wl[472].w[7]" 0.0024300440911969577;
	setAttr -s 5 ".wl[473].w";
	setAttr ".wl[473].w[1]" 0.26172796384466207;
	setAttr ".wl[473].w[2]" 0.72041212130460441;
	setAttr ".wl[473].w[3]" 0.0062643878351820587;
	setAttr ".wl[473].w[6]" 0.0054926344453539349;
	setAttr ".wl[473].w[7]" 0.0061028925701975822;
	setAttr -s 5 ".wl[474].w";
	setAttr ".wl[474].w[1]" 0.26510292681732561;
	setAttr ".wl[474].w[2]" 0.71230477921638524;
	setAttr ".wl[474].w[3]" 0.010750026413329729;
	setAttr ".wl[474].w[4]" 0.007183781790184373;
	setAttr ".wl[474].w[7]" 0.0046584857627749443;
	setAttr -s 5 ".wl[475].w";
	setAttr ".wl[475].w[1]" 0.27115733399555991;
	setAttr ".wl[475].w[2]" 0.70506469958669504;
	setAttr ".wl[475].w[3]" 0.013266308073136456;
	setAttr ".wl[475].w[4]" 0.0080026264341593809;
	setAttr ".wl[475].w[7]" 0.0025090319104492664;
	setAttr -s 5 ".wl[476].w[1:5]"  0.24610026190484185 0.7297155607092084 
		0.012258050253910508 0.0075687285264632474 0.004357398605576027;
	setAttr -s 5 ".wl[477].w[1:5]"  0.26298337018596202 0.71611080779702563 
		0.0096533124365765152 0.0068474848412137732 0.0044050247392221215;
	setAttr -s 5 ".wl[478].w[1:5]"  0.26955706878558555 0.71672095720151019 
		0.0054171233093391596 0.0046897745990921299 0.0036150761044728263;
	setAttr -s 5 ".wl[479].w[6:10]"  0.18463686906837118 0.81146524768619055 
		0.0014941748844321653 0.001402815990066826 0.0010008923709392548;
	setAttr -s 5 ".wl[480].w[6:10]"  0.16238454665196675 0.83435060228231783 
		0.0011923073532141078 0.0013079981935964489 0.00076454551890492439;
	setAttr -s 5 ".wl[481].w[6:10]"  0.21245400293933359 0.78138384719588383 
		0.0024771128445423168 0.0024757788019443582 0.0012092582182958722;
	setAttr -s 5 ".wl[482].w[6:10]"  0.23755838421484565 0.75021825847871471 
		0.0054870387276076526 0.0048102857525275083 0.0019260328263044357;
	setAttr -s 5 ".wl[483].w[6:10]"  0.21397405031596634 0.76777568918213246 
		0.0092325644558863829 0.0066638168885610341 0.0023538791574537754;
	setAttr -s 5 ".wl[484].w[6:10]"  0.16529875241075559 0.81474575360845591 
		0.010891368266380402 0.0067286276049481767 0.002335498109459877;
	setAttr -s 5 ".wl[485].w[6:10]"  0.17630345939822817 0.80196249585582247 
		0.011926461590458359 0.0071448895394882125 0.0026626936160027981;
	setAttr -s 5 ".wl[486].w";
	setAttr ".wl[486].w[2]" 0.0075675503983725842;
	setAttr ".wl[486].w[6]" 0.22514864366659834;
	setAttr ".wl[486].w[7]" 0.74958063412332321;
	setAttr ".wl[486].w[8]" 0.011490651864266435;
	setAttr ".wl[486].w[9]" 0.0062125199474394321;
	setAttr -s 5 ".wl[487].w";
	setAttr ".wl[487].w[1]" 0.006140808238464527;
	setAttr ".wl[487].w[2]" 0.0071155489445928815;
	setAttr ".wl[487].w[6]" 0.23570628563777618;
	setAttr ".wl[487].w[7]" 0.74393754510795307;
	setAttr ".wl[487].w[8]" 0.007099812071213389;
	setAttr -s 5 ".wl[488].w";
	setAttr ".wl[488].w[2]" 0.0030042429080545893;
	setAttr ".wl[488].w[6]" 0.23798732329871697;
	setAttr ".wl[488].w[7]" 0.75288971041652775;
	setAttr ".wl[488].w[8]" 0.0035286568562035675;
	setAttr ".wl[488].w[9]" 0.0025900665204972029;
	setAttr -s 5 ".wl[489].w[6:10]"  0.22124490224969998 0.7714331207980063 
		0.0027806099615216859 0.0021047212649136782 0.0024366457258583282;
	setAttr -s 5 ".wl[490].w";
	setAttr ".wl[490].w[12]" 1.4681996806141409e-005;
	setAttr ".wl[490].w[15]" 7.1716316440132794e-005;
	setAttr ".wl[490].w[16]" 0.98500192249317742;
	setAttr ".wl[490].w[17]" 0.014871740530909472;
	setAttr ".wl[490].w[18]" 3.993866266682744e-005;
	setAttr -s 5 ".wl[491].w";
	setAttr ".wl[491].w[12]" 0.0013982439323129636;
	setAttr ".wl[491].w[15]" 0.9419045283899643;
	setAttr ".wl[491].w[16]" 0.056250508089652387;
	setAttr ".wl[491].w[17]" 0.00010221169708412709;
	setAttr ".wl[491].w[18]" 0.00034450789098627865;
	setAttr -s 5 ".wl[492].w";
	setAttr ".wl[492].w[11]" 0.0022471794550855402;
	setAttr ".wl[492].w[12]" 0.030121857040089805;
	setAttr ".wl[492].w[13]" 0.0016006887384510959;
	setAttr ".wl[492].w[15]" 0.96597437856441681;
	setAttr ".wl[492].w[16]" 5.5896201956784353e-005;
	setAttr -s 4 ".wl[493].w";
	setAttr ".wl[493].w[11]" 0.0058499116963837269;
	setAttr ".wl[493].w[12]" 0.33640612696879391;
	setAttr ".wl[493].w[13]" 0.004039590344244357;
	setAttr ".wl[493].w[19]" 0.6537043709905781;
	setAttr -s 5 ".wl[494].w";
	setAttr ".wl[494].w[12]" 0.00016693192250192578;
	setAttr ".wl[494].w[19]" 0.87671617561913473;
	setAttr ".wl[494].w[20]" 0.12288570814807448;
	setAttr ".wl[494].w[21]" 0.00015242288645822555;
	setAttr ".wl[494].w[22]" 7.8761423830712551e-005;
	setAttr -s 5 ".wl[495].w";
	setAttr ".wl[495].w[12]" 3.2560198092095386e-006;
	setAttr ".wl[495].w[19]" 3.4819536355812067e-010;
	setAttr ".wl[495].w[20]" 0.86073276905731377;
	setAttr ".wl[495].w[21]" 0.13871241053781316;
	setAttr ".wl[495].w[22]" 0.00055156403686851263;
	setAttr -s 5 ".wl[496].w";
	setAttr ".wl[496].w[12]" 6.9388192728011625e-007;
	setAttr ".wl[496].w[19]" 1.2369590616805076e-006;
	setAttr ".wl[496].w[20]" 0.00037398446101601638;
	setAttr ".wl[496].w[21]" 0.70162640141132815;
	setAttr ".wl[496].w[22]" 0.29799768328666687;
	setAttr -s 5 ".wl[497].w";
	setAttr ".wl[497].w[12]" 0.00026867083943286126;
	setAttr ".wl[497].w[19]" 0.0011235354468226433;
	setAttr ".wl[497].w[20]" 0.029995915898465075;
	setAttr ".wl[497].w[21]" 0.48430593890763968;
	setAttr ".wl[497].w[22]" 0.48430593890763968;
	setAttr -s 5 ".wl[498].w";
	setAttr ".wl[498].w[12]" 0.00026569301267729211;
	setAttr ".wl[498].w[19]" 0.0013228257885202765;
	setAttr ".wl[498].w[20]" 0.029432061370316853;
	setAttr ".wl[498].w[21]" 0.48448970991424284;
	setAttr ".wl[498].w[22]" 0.48448970991424273;
	setAttr -s 5 ".wl[499].w";
	setAttr ".wl[499].w[12]" 1.6188422009031731e-006;
	setAttr ".wl[499].w[19]" 2.8600799193448191e-006;
	setAttr ".wl[499].w[20]" 0.0008142592872444548;
	setAttr ".wl[499].w[21]" 0.77561605585897175;
	setAttr ".wl[499].w[22]" 0.22356520593166351;
	setAttr -s 5 ".wl[500].w";
	setAttr ".wl[500].w[12]" 0.00019678372983547373;
	setAttr ".wl[500].w[19]" 0.00077215244527906179;
	setAttr ".wl[500].w[20]" 0.024753575604178828;
	setAttr ".wl[500].w[21]" 0.48713874411035346;
	setAttr ".wl[500].w[22]" 0.48713874411035324;
	setAttr -s 5 ".wl[501].w";
	setAttr ".wl[501].w[12]" 0.00023120224173496821;
	setAttr ".wl[501].w[19]" 0.0011541120475158095;
	setAttr ".wl[501].w[20]" 0.027755975389464324;
	setAttr ".wl[501].w[21]" 0.48542935516064228;
	setAttr ".wl[501].w[22]" 0.48542935516064251;
	setAttr -s 5 ".wl[502].w";
	setAttr ".wl[502].w[12]" 8.7643534964736932e-006;
	setAttr ".wl[502].w[19]" 4.482365806300013e-005;
	setAttr ".wl[502].w[20]" 0.0039515543400061911;
	setAttr ".wl[502].w[21]" 0.68050037989956347;
	setAttr ".wl[502].w[22]" 0.31549447774887085;
	setAttr -s 5 ".wl[503].w";
	setAttr ".wl[503].w[12]" 0.00018783704809777413;
	setAttr ".wl[503].w[19]" 0.00068749237107113004;
	setAttr ".wl[503].w[20]" 0.02483360302810628;
	setAttr ".wl[503].w[21]" 0.48714553377636238;
	setAttr ".wl[503].w[22]" 0.48714553377636238;
	setAttr -s 5 ".wl[504].w";
	setAttr ".wl[504].w[12]" 0.00024976197419526101;
	setAttr ".wl[504].w[19]" 0.0012800083495676517;
	setAttr ".wl[504].w[20]" 0.03095449356229648;
	setAttr ".wl[504].w[21]" 0.4837578680569703;
	setAttr ".wl[504].w[22]" 0.4837578680569703;
	setAttr -s 5 ".wl[505].w";
	setAttr ".wl[505].w[12]" 7.565973650212631e-005;
	setAttr ".wl[505].w[19]" 0.00064943860083212116;
	setAttr ".wl[505].w[20]" 0.027561475655746862;
	setAttr ".wl[505].w[21]" 0.86044474918950176;
	setAttr ".wl[505].w[22]" 0.11126867681741714;
	setAttr -s 5 ".wl[506].w";
	setAttr ".wl[506].w[12]" 3.1491523910922262e-005;
	setAttr ".wl[506].w[19]" 7.6402181173461017e-005;
	setAttr ".wl[506].w[20]" 0.25168054016115565;
	setAttr ".wl[506].w[21]" 0.74729618867473679;
	setAttr ".wl[506].w[22]" 0.00091537745902314782;
	setAttr -s 5 ".wl[507].w";
	setAttr ".wl[507].w[12]" 8.1519183287738004e-005;
	setAttr ".wl[507].w[19]" 1.866178806832709e-005;
	setAttr ".wl[507].w[20]" 0.78334964850819977;
	setAttr ".wl[507].w[21]" 0.21475828050834378;
	setAttr ".wl[507].w[22]" 0.0017918900121003389;
	setAttr -s 5 ".wl[508].w";
	setAttr ".wl[508].w[11]" 0.003071137736187138;
	setAttr ".wl[508].w[12]" 0.0057699327215253414;
	setAttr ".wl[508].w[19]" 0.41549366543150251;
	setAttr ".wl[508].w[20]" 0.56887173531554269;
	setAttr ".wl[508].w[21]" 0.0067935287952423096;
	setAttr -s 5 ".wl[509].w";
	setAttr ".wl[509].w[11]" 0.01817185039127384;
	setAttr ".wl[509].w[12]" 0.20709725828628445;
	setAttr ".wl[509].w[13]" 0.022237082889907674;
	setAttr ".wl[509].w[19]" 0.75194912943062897;
	setAttr ".wl[509].w[20]" 0.00054467900190502405;
	setAttr -s 5 ".wl[510].w";
	setAttr ".wl[510].w[11]" 0.021365371251685451;
	setAttr ".wl[510].w[12]" 0.10858554648754139;
	setAttr ".wl[510].w[13]" 0.010629678062459402;
	setAttr ".wl[510].w[15]" 0.85884518987256164;
	setAttr ".wl[510].w[16]" 0.00057421432575210929;
	setAttr -s 5 ".wl[511].w";
	setAttr ".wl[511].w[11]" 0.0015384355659045048;
	setAttr ".wl[511].w[12]" 0.0049699093020920447;
	setAttr ".wl[511].w[15]" 0.95001288508846615;
	setAttr ".wl[511].w[16]" 0.043422112670912665;
	setAttr ".wl[511].w[17]" 5.6657372624613345e-005;
	setAttr -s 5 ".wl[512].w";
	setAttr ".wl[512].w[12]" 0.00018353629328558431;
	setAttr ".wl[512].w[15]" 0.00062224118969037825;
	setAttr ".wl[512].w[16]" 0.97990278698836786;
	setAttr ".wl[512].w[17]" 0.017910420007181987;
	setAttr ".wl[512].w[18]" 0.0013810155214741826;
	setAttr -s 5 ".wl[513].w";
	setAttr ".wl[513].w[12]" 0.00017433336352317831;
	setAttr ".wl[513].w[15]" 0.00069438804883129143;
	setAttr ".wl[513].w[16]" 0.92373028259559309;
	setAttr ".wl[513].w[17]" 0.072417684568020516;
	setAttr ".wl[513].w[18]" 0.0029833114240318537;
	setAttr -s 5 ".wl[514].w";
	setAttr ".wl[514].w[12]" 5.5969972702303319e-005;
	setAttr ".wl[514].w[15]" 0.0004370617472255606;
	setAttr ".wl[514].w[16]" 0.022764617271293638;
	setAttr ".wl[514].w[17]" 0.80462635452879039;
	setAttr ".wl[514].w[18]" 0.1721159964799881;
	setAttr -s 5 ".wl[515].w";
	setAttr ".wl[515].w[12]" 0.00025882678256573089;
	setAttr ".wl[515].w[15]" 0.0016749542384962882;
	setAttr ".wl[515].w[16]" 0.034395406102693461;
	setAttr ".wl[515].w[17]" 0.60997980120899298;
	setAttr ".wl[515].w[18]" 0.35369101166725159;
	setAttr -s 5 ".wl[516].w";
	setAttr ".wl[516].w[12]" 0.00020354390450595924;
	setAttr ".wl[516].w[15]" 0.0013236771210316939;
	setAttr ".wl[516].w[16]" 0.028279608425758836;
	setAttr ".wl[516].w[17]" 0.57770790958526352;
	setAttr ".wl[516].w[18]" 0.39248526096343994;
	setAttr -s 5 ".wl[517].w";
	setAttr ".wl[517].w[12]" 9.5570835995996738e-006;
	setAttr ".wl[517].w[15]" 8.2315608516133303e-005;
	setAttr ".wl[517].w[16]" 0.004760030274600177;
	setAttr ".wl[517].w[17]" 0.89002196198203365;
	setAttr ".wl[517].w[18]" 0.10512613505125046;
	setAttr -s 5 ".wl[518].w";
	setAttr ".wl[518].w[12]" 0.00022228405161405098;
	setAttr ".wl[518].w[15]" 0.0014141623224963396;
	setAttr ".wl[518].w[16]" 0.028960832210560991;
	setAttr ".wl[518].w[17]" 0.57016622115211446;
	setAttr ".wl[518].w[18]" 0.39923650026321411;
	setAttr -s 5 ".wl[519].w";
	setAttr ".wl[519].w[12]" 0.00018895564484813936;
	setAttr ".wl[519].w[15]" 0.001207131646038387;
	setAttr ".wl[519].w[16]" 0.025586644490728998;
	setAttr ".wl[519].w[17]" 0.55856775525985791;
	setAttr ".wl[519].w[18]" 0.41444951295852661;
	setAttr -s 5 ".wl[520].w";
	setAttr ".wl[520].w[12]" 1.1844622379293806e-006;
	setAttr ".wl[520].w[15]" 1.0236844529358513e-005;
	setAttr ".wl[520].w[16]" 0.00065581134945964185;
	setAttr ".wl[520].w[17]" 0.88770744613434238;
	setAttr ".wl[520].w[18]" 0.11162532120943069;
	setAttr -s 5 ".wl[521].w";
	setAttr ".wl[521].w[12]" 0.00026911714433662119;
	setAttr ".wl[521].w[15]" 0.0016389875595046706;
	setAttr ".wl[521].w[16]" 0.030493408972461993;
	setAttr ".wl[521].w[17]" 0.51403336562667523;
	setAttr ".wl[521].w[18]" 0.45356512069702148;
	setAttr -s 5 ".wl[522].w";
	setAttr ".wl[522].w[12]" 0.00029063780097309433;
	setAttr ".wl[522].w[15]" 0.0017659894450797768;
	setAttr ".wl[522].w[16]" 0.032957606118617179;
	setAttr ".wl[522].w[17]" 0.54361645244160439;
	setAttr ".wl[522].w[18]" 0.42136931419372559;
	setAttr -s 5 ".wl[523].w";
	setAttr ".wl[523].w[12]" 3.993138475415435e-007;
	setAttr ".wl[523].w[15]" 3.4793817766786865e-006;
	setAttr ".wl[523].w[16]" 0.0002411201013234956;
	setAttr ".wl[523].w[17]" 0.93162736906193899;
	setAttr ".wl[523].w[18]" 0.068127632141113281;
	setAttr -s 5 ".wl[524].w";
	setAttr ".wl[524].w[0]" 0.38175383675556007;
	setAttr ".wl[524].w[1]" 0.30837285580878987;
	setAttr ".wl[524].w[11]" 0.28850516122591052;
	setAttr ".wl[524].w[12]" 0.00031739686312570145;
	setAttr ".wl[524].w[15]" 0.021050749346613884;
	setAttr -s 5 ".wl[525].w";
	setAttr ".wl[525].w[0]" 0.36686028027593237;
	setAttr ".wl[525].w[1]" 0.2690711992932921;
	setAttr ".wl[525].w[11]" 0.35756086276022447;
	setAttr ".wl[525].w[12]" 0.00056096512558415329;
	setAttr ".wl[525].w[15]" 0.0059466925449669361;
	setAttr -s 5 ".wl[526].w";
	setAttr ".wl[526].w[11]" 0.42649443289485828;
	setAttr ".wl[526].w[12]" 0.24515470812787624;
	setAttr ".wl[526].w[15]" 0.3265401077521386;
	setAttr ".wl[526].w[16]" 0.0018099306342142642;
	setAttr ".wl[526].w[19]" 8.2059091255359817e-007;
	setAttr -s 5 ".wl[527].w";
	setAttr ".wl[527].w[0]" 0.043298531463818693;
	setAttr ".wl[527].w[11]" 0.68325277425904596;
	setAttr ".wl[527].w[12]" 0.13083831549661601;
	setAttr ".wl[527].w[15]" 0.14260497172492326;
	setAttr ".wl[527].w[19]" 5.407055596151622e-006;
	setAttr -s 5 ".wl[528].w";
	setAttr ".wl[528].w[0]" 0.34958600142104967;
	setAttr ".wl[528].w[1]" 0.16788970503752518;
	setAttr ".wl[528].w[6]" 0.015570417977869511;
	setAttr ".wl[528].w[11]" 0.46545455455754964;
	setAttr ".wl[528].w[12]" 0.0014993210060059805;
	setAttr -s 4 ".wl[529].w";
	setAttr ".wl[529].w[0]" 0.069589991918662844;
	setAttr ".wl[529].w[11]" 0.81928209828504162;
	setAttr ".wl[529].w[12]" 0.07055211217693004;
	setAttr ".wl[529].w[15]" 0.040575797619365542;
	setAttr -s 5 ".wl[530].w";
	setAttr ".wl[530].w[0]" 0.33127869064256021;
	setAttr ".wl[530].w[1]" 0.067325493191913305;
	setAttr ".wl[530].w[6]" 0.011717809364199638;
	setAttr ".wl[530].w[11]" 0.58829647238037108;
	setAttr ".wl[530].w[12]" 0.0013815344209557681;
	setAttr -s 4 ".wl[531].w";
	setAttr ".wl[531].w[0]" 0.098422395524481121;
	setAttr ".wl[531].w[11]" 0.86710826101135274;
	setAttr ".wl[531].w[12]" 0.024129763766668599;
	setAttr ".wl[531].w[15]" 0.010339579697497374;
	setAttr -s 5 ".wl[532].w";
	setAttr ".wl[532].w[0]" 0.28465247259331405;
	setAttr ".wl[532].w[1]" 0.036069498119685142;
	setAttr ".wl[532].w[6]" 0.013717097230255604;
	setAttr ".wl[532].w[11]" 0.66402484711007359;
	setAttr ".wl[532].w[12]" 0.0015360849466716615;
	setAttr -s 4 ".wl[533].w";
	setAttr ".wl[533].w[0]" 0.10586120363415318;
	setAttr ".wl[533].w[11]" 0.86587930624985365;
	setAttr ".wl[533].w[12]" 0.020472992006102919;
	setAttr ".wl[533].w[15]" 0.0077864981098902603;
	setAttr -s 4 ".wl[534].w";
	setAttr ".wl[534].w[0]" 0.23555501686523078;
	setAttr ".wl[534].w[1]" 0.022901574751402184;
	setAttr ".wl[534].w[6]" 0.027296682427591756;
	setAttr ".wl[534].w[11]" 0.71424672595577521;
	setAttr -s 5 ".wl[535].w";
	setAttr ".wl[535].w[0]" 0.10449615726594132;
	setAttr ".wl[535].w[11]" 0.81361944880668491;
	setAttr ".wl[535].w[12]" 0.066252544537158217;
	setAttr ".wl[535].w[15]" 0.015588535228912598;
	setAttr ".wl[535].w[19]" 4.3314161302987486e-005;
	setAttr -s 4 ".wl[536].w";
	setAttr ".wl[536].w[0]" 0.2538425057312928;
	setAttr ".wl[536].w[6]" 0.061745376307020719;
	setAttr ".wl[536].w[11]" 0.68188104741364242;
	setAttr ".wl[536].w[12]" 0.0025310705480440518;
	setAttr -s 5 ".wl[537].w";
	setAttr ".wl[537].w[0]" 0.10503772510436242;
	setAttr ".wl[537].w[11]" 0.65743936119690272;
	setAttr ".wl[537].w[12]" 0.1967147661334735;
	setAttr ".wl[537].w[15]" 0.032250473090247228;
	setAttr ".wl[537].w[19]" 0.0085576744750142097;
	setAttr -s 5 ".wl[538].w";
	setAttr ".wl[538].w[0]" 0.25333014901429962;
	setAttr ".wl[538].w[6]" 0.10934480729172025;
	setAttr ".wl[538].w[11]" 0.6365932675370477;
	setAttr ".wl[538].w[12]" 0.0005292853834147651;
	setAttr ".wl[538].w[19]" 0.00020249077351763844;
	setAttr -s 5 ".wl[539].w";
	setAttr ".wl[539].w[11]" 0.44267695597841406;
	setAttr ".wl[539].w[12]" 0.30760400780585406;
	setAttr ".wl[539].w[15]" 0.029147827352101835;
	setAttr ".wl[539].w[19]" 0.22057119862672717;
	setAttr ".wl[539].w[20]" 1.0236902880933485e-008;
	setAttr -s 5 ".wl[540].w";
	setAttr ".wl[540].w[0]" 0.24132603157290913;
	setAttr ".wl[540].w[6]" 0.10131419218770595;
	setAttr ".wl[540].w[11]" 0.65048693072028652;
	setAttr ".wl[540].w[12]" 0.0005422571522621355;
	setAttr ".wl[540].w[19]" 0.0063305883668363094;
	setAttr -s 5 ".wl[541].w";
	setAttr ".wl[541].w[0]" 0.039119406502577912;
	setAttr ".wl[541].w[11]" 0.23465842855506183;
	setAttr ".wl[541].w[12]" 0.32859292231905957;
	setAttr ".wl[541].w[15]" 0.018442582571954847;
	setAttr ".wl[541].w[19]" 0.37918666005134583;
	setAttr -s 5 ".wl[542].w";
	setAttr ".wl[542].w[0]" 0.27881327238177622;
	setAttr ".wl[542].w[6]" 0.066732130457470118;
	setAttr ".wl[542].w[11]" 0.63728119274801553;
	setAttr ".wl[542].w[12]" 0.0014720356557518244;
	setAttr ".wl[542].w[19]" 0.015701368756986325;
	setAttr -s 5 ".wl[543].w";
	setAttr ".wl[543].w[0]" 0.059718280198582961;
	setAttr ".wl[543].w[11]" 0.510657307711331;
	setAttr ".wl[543].w[12]" 0.19900255323409238;
	setAttr ".wl[543].w[15]" 0.016890555044920402;
	setAttr ".wl[543].w[19]" 0.2137313038110733;
	setAttr -s 5 ".wl[544].w";
	setAttr ".wl[544].w[0]" 0.31807867382661237;
	setAttr ".wl[544].w[6]" 0.049610579167814112;
	setAttr ".wl[544].w[11]" 0.62112056827766049;
	setAttr ".wl[544].w[12]" 0.0011133379302918911;
	setAttr ".wl[544].w[19]" 0.010076840797621176;
	setAttr -s 5 ".wl[545].w";
	setAttr ".wl[545].w[0]" 0.089607096231462333;
	setAttr ".wl[545].w[11]" 0.7007184479563795;
	setAttr ".wl[545].w[12]" 0.11449662846808639;
	setAttr ".wl[545].w[15]" 0.01433308975471252;
	setAttr ".wl[545].w[19]" 0.080844737589359283;
	setAttr -s 5 ".wl[546].w";
	setAttr ".wl[546].w[0]" 0.45897327906428093;
	setAttr ".wl[546].w[1]" 0.0056001084832105414;
	setAttr ".wl[546].w[6]" 0.021940959992276975;
	setAttr ".wl[546].w[11]" 0.5128421165938295;
	setAttr ".wl[546].w[12]" 0.0006435358664020896;
	setAttr -s 5 ".wl[547].w";
	setAttr ".wl[547].w[0]" 0.09026023415662715;
	setAttr ".wl[547].w[11]" 0.80967066238976948;
	setAttr ".wl[547].w[12]" 0.069450551330455468;
	setAttr ".wl[547].w[15]" 0.008930591870981993;
	setAttr ".wl[547].w[19]" 0.021687960252165794;
	setAttr -s 5 ".wl[548].w";
	setAttr ".wl[548].w[0]" 0.43561949474210904;
	setAttr ".wl[548].w[1]" 0.0022420422847069061;
	setAttr ".wl[548].w[6]" 0.003454996536339587;
	setAttr ".wl[548].w[11]" 0.55846435549893891;
	setAttr ".wl[548].w[12]" 0.00021911093790549785;
	setAttr -s 5 ".wl[549].w";
	setAttr ".wl[549].w[0]" 0.074117259421461648;
	setAttr ".wl[549].w[11]" 0.88188081938820007;
	setAttr ".wl[549].w[12]" 0.039502202924146995;
	setAttr ".wl[549].w[15]" 0.0040133230317164342;
	setAttr ".wl[549].w[19]" 0.00048639523447491229;
	setAttr -s 5 ".wl[550].w";
	setAttr ".wl[550].w[0]" 0.44533689227370038;
	setAttr ".wl[550].w[1]" 0.00363719532857323;
	setAttr ".wl[550].w[6]" 0.0022779132705181837;
	setAttr ".wl[550].w[11]" 0.54846123652305478;
	setAttr ".wl[550].w[12]" 0.00028676260415338225;
	setAttr -s 4 ".wl[551].w";
	setAttr ".wl[551].w[0]" 0.072081244237084924;
	setAttr ".wl[551].w[11]" 0.88123460915091401;
	setAttr ".wl[551].w[12]" 0.041137514887732624;
	setAttr ".wl[551].w[15]" 0.0055466317242683881;
	setAttr -s 5 ".wl[552].w";
	setAttr ".wl[552].w[0]" 0.47135322031902349;
	setAttr ".wl[552].w[1]" 0.026537562424075154;
	setAttr ".wl[552].w[6]" 0.0058617051690816879;
	setAttr ".wl[552].w[11]" 0.49451603045980114;
	setAttr ".wl[552].w[12]" 0.0017314816280184946;
	setAttr -s 4 ".wl[553].w";
	setAttr ".wl[553].w[0]" 0.083380806305299579;
	setAttr ".wl[553].w[11]" 0.81960047778382317;
	setAttr ".wl[553].w[12]" 0.074419317276139887;
	setAttr ".wl[553].w[15]" 0.022599398634737426;
	setAttr -s 5 ".wl[554].w";
	setAttr ".wl[554].w[0]" 0.48595354324123058;
	setAttr ".wl[554].w[1]" 0.076171846309621205;
	setAttr ".wl[554].w[11]" 0.43484819673602548;
	setAttr ".wl[554].w[12]" 0.0012512894864259621;
	setAttr ".wl[554].w[15]" 0.0017751242266967893;
	setAttr -s 4 ".wl[555].w";
	setAttr ".wl[555].w[0]" 0.082766282260736707;
	setAttr ".wl[555].w[11]" 0.71727317775055499;
	setAttr ".wl[555].w[12]" 0.13330499853103678;
	setAttr ".wl[555].w[15]" 0.06665554145767158;
	setAttr -s 5 ".wl[556].w";
	setAttr ".wl[556].w[0]" 0.48500138457787101;
	setAttr ".wl[556].w[1]" 0.14301526360614281;
	setAttr ".wl[556].w[11]" 0.36234555671971447;
	setAttr ".wl[556].w[12]" 0.0012802273836071505;
	setAttr ".wl[556].w[15]" 0.0083575677126646042;
	setAttr -s 4 ".wl[557].w";
	setAttr ".wl[557].w[0]" 0.052403694301845334;
	setAttr ".wl[557].w[11]" 0.47796087425786599;
	setAttr ".wl[557].w[12]" 0.24533284401812647;
	setAttr ".wl[557].w[15]" 0.22430258742216219;
	setAttr -s 5 ".wl[558].w";
	setAttr ".wl[558].w[0]" 0.44718778833864953;
	setAttr ".wl[558].w[1]" 0.22744536383494929;
	setAttr ".wl[558].w[11]" 0.2974069460102044;
	setAttr ".wl[558].w[12]" 0.00065891628617781371;
	setAttr ".wl[558].w[15]" 0.027300985530018806;
	setAttr -s 5 ".wl[559].w";
	setAttr ".wl[559].w[0]" 0.025244087631792103;
	setAttr ".wl[559].w[11]" 0.23381648177675177;
	setAttr ".wl[559].w[12]" 0.2837824620109336;
	setAttr ".wl[559].w[15]" 0.45247431639392022;
	setAttr ".wl[559].w[16]" 0.004682652186602354;
	setAttr -s 5 ".wl[560].w";
	setAttr ".wl[560].w[11]" 0.020606193745039237;
	setAttr ".wl[560].w[12]" 0.35170082635518196;
	setAttr ".wl[560].w[13]" 0.052951115492008739;
	setAttr ".wl[560].w[15]" 0.57355080586239671;
	setAttr ".wl[560].w[16]" 0.0011910585453733802;
	setAttr -s 4 ".wl[561].w";
	setAttr ".wl[561].w[11]" 0.2230701341020703;
	setAttr ".wl[561].w[12]" 0.52506334151435097;
	setAttr ".wl[561].w[13]" 0.0045965878589246641;
	setAttr ".wl[561].w[15]" 0.24726993652465409;
	setAttr -s 4 ".wl[562].w";
	setAttr ".wl[562].w[11]" 0.020133075989446449;
	setAttr ".wl[562].w[12]" 0.18686976050691292;
	setAttr ".wl[562].w[13]" 0.34682573077010487;
	setAttr ".wl[562].w[15]" 0.44617143273353577;
	setAttr -s 4 ".wl[563].w";
	setAttr ".wl[563].w[11]" 0.19375183536561366;
	setAttr ".wl[563].w[12]" 0.42517848213080034;
	setAttr ".wl[563].w[13]" 0.35866521854186545;
	setAttr ".wl[563].w[15]" 0.022404463961720467;
	setAttr -s 4 ".wl[564].w";
	setAttr ".wl[564].w[11]" 0.26713195176483628;
	setAttr ".wl[564].w[12]" 0.64548785620880922;
	setAttr ".wl[564].w[13]" 0.0050188962070719136;
	setAttr ".wl[564].w[15]" 0.082361295819282532;
	setAttr -s 5 ".wl[565].w";
	setAttr ".wl[565].w[11]" 0.22710207770392038;
	setAttr ".wl[565].w[12]" 0.48385345315139183;
	setAttr ".wl[565].w[13]" 0.28589031284987421;
	setAttr ".wl[565].w[15]" 0.0031541083008050919;
	setAttr ".wl[565].w[19]" 4.7994008419626351e-008;
	setAttr -s 4 ".wl[566].w";
	setAttr ".wl[566].w[11]" 0.27326820210630159;
	setAttr ".wl[566].w[12]" 0.68578180672748557;
	setAttr ".wl[566].w[13]" 0.013648519899218257;
	setAttr ".wl[566].w[15]" 0.027301471266994684;
	setAttr -s 5 ".wl[567].w";
	setAttr ".wl[567].w[11]" 0.25675237800557271;
	setAttr ".wl[567].w[12]" 0.49972310569335054;
	setAttr ".wl[567].w[13]" 0.24350030183032206;
	setAttr ".wl[567].w[15]" 2.4149727323674597e-005;
	setAttr ".wl[567].w[19]" 6.4743430945192536e-008;
	setAttr -s 4 ".wl[568].w";
	setAttr ".wl[568].w[11]" 0.28181788224297299;
	setAttr ".wl[568].w[12]" 0.69182785836208793;
	setAttr ".wl[568].w[13]" 0.019156963582052169;
	setAttr ".wl[568].w[15]" 0.0071972958128867677;
	setAttr -s 5 ".wl[569].w";
	setAttr ".wl[569].w[11]" 0.2888480214624698;
	setAttr ".wl[569].w[12]" 0.4375638283305997;
	setAttr ".wl[569].w[13]" 0.27277134283057242;
	setAttr ".wl[569].w[15]" 0.00074030831456184387;
	setAttr ".wl[569].w[19]" 7.6499061796277812e-005;
	setAttr -s 5 ".wl[570].w";
	setAttr ".wl[570].w[11]" 0.22813404217111014;
	setAttr ".wl[570].w[12]" 0.75515017669772344;
	setAttr ".wl[570].w[13]" 0.012444878498411615;
	setAttr ".wl[570].w[15]" 0.0024108608793658977;
	setAttr ".wl[570].w[19]" 0.0018600417533889413;
	setAttr -s 5 ".wl[571].w";
	setAttr ".wl[571].w[11]" 0.13045579396795279;
	setAttr ".wl[571].w[12]" 0.41848930754632313;
	setAttr ".wl[571].w[13]" 0.43330716432721822;
	setAttr ".wl[571].w[15]" 0.015188721657936635;
	setAttr ".wl[571].w[19]" 0.0025590125005692244;
	setAttr -s 5 ".wl[572].w";
	setAttr ".wl[572].w[11]" 0.05748708892818178;
	setAttr ".wl[572].w[12]" 0.88265223114326796;
	setAttr ".wl[572].w[13]" 0.011952447257053684;
	setAttr ".wl[572].w[15]" 0.001713716549155435;
	setAttr ".wl[572].w[19]" 0.046194516122341156;
	setAttr -s 5 ".wl[573].w";
	setAttr ".wl[573].w[11]" 0.10783967955167659;
	setAttr ".wl[573].w[12]" 0.36194412131998666;
	setAttr ".wl[573].w[13]" 0.46581834142309947;
	setAttr ".wl[573].w[15]" 0.014845092961670806;
	setAttr ".wl[573].w[19]" 0.049552764743566513;
	setAttr -s 5 ".wl[574].w";
	setAttr ".wl[574].w[11]" 0.015554401003559591;
	setAttr ".wl[574].w[12]" 0.36306340489105543;
	setAttr ".wl[574].w[13]" 0.070514299448058315;
	setAttr ".wl[574].w[19]" 0.5483003701012561;
	setAttr ".wl[574].w[20]" 0.0025675245560705662;
	setAttr -s 5 ".wl[575].w";
	setAttr ".wl[575].w[11]" 0.067850906237699696;
	setAttr ".wl[575].w[12]" 0.42460988929114513;
	setAttr ".wl[575].w[13]" 0.47041004020862209;
	setAttr ".wl[575].w[15]" 0.014603954329013681;
	setAttr ".wl[575].w[19]" 0.022525209933519363;
	setAttr -s 5 ".wl[576].w";
	setAttr ".wl[576].w[11]" 0.053876795352522329;
	setAttr ".wl[576].w[12]" 0.62721902227426196;
	setAttr ".wl[576].w[13]" 0.16902007656304896;
	setAttr ".wl[576].w[15]" 0.014272944220544221;
	setAttr ".wl[576].w[19]" 0.1356111615896225;
	setAttr -s 5 ".wl[577].w";
	setAttr ".wl[577].w[11]" 0.052064249283161508;
	setAttr ".wl[577].w[12]" 0.433182901516246;
	setAttr ".wl[577].w[13]" 0.50519753172114101;
	setAttr ".wl[577].w[15]" 0.0088880227592636665;
	setAttr ".wl[577].w[19]" 0.00066729472018778324;
	setAttr -s 5 ".wl[578].w";
	setAttr ".wl[578].w[11]" 0.11501171107496705;
	setAttr ".wl[578].w[12]" 0.78667000128012632;
	setAttr ".wl[578].w[13]" 0.064046038450777956;
	setAttr ".wl[578].w[15]" 0.0083615382782054985;
	setAttr ".wl[578].w[19]" 0.025910710915923119;
	setAttr -s 4 ".wl[579].w";
	setAttr ".wl[579].w[11]" 0.044154734642028619;
	setAttr ".wl[579].w[12]" 0.71175521030978417;
	setAttr ".wl[579].w[13]" 0.24339956050058917;
	setAttr ".wl[579].w[15]" 0.00069049454759806395;
	setAttr -s 5 ".wl[580].w";
	setAttr ".wl[580].w[11]" 0.2534187477736628;
	setAttr ".wl[580].w[12]" 0.67519461909205447;
	setAttr ".wl[580].w[13]" 0.051397289374091069;
	setAttr ".wl[580].w[15]" 0.008822523457586098;
	setAttr ".wl[580].w[19]" 0.011166820302605629;
	setAttr -s 4 ".wl[581].w";
	setAttr ".wl[581].w[11]" 0.053715723297747514;
	setAttr ".wl[581].w[12]" 0.75956129991835286;
	setAttr ".wl[581].w[13]" 0.1866160546368025;
	setAttr ".wl[581].w[15]" 0.00010692214709706604;
	setAttr -s 5 ".wl[582].w";
	setAttr ".wl[582].w[11]" 0.31226169889435601;
	setAttr ".wl[582].w[12]" 0.63545325497606242;
	setAttr ".wl[582].w[13]" 0.040205661388911747;
	setAttr ".wl[582].w[15]" 0.0075119427444827139;
	setAttr ".wl[582].w[19]" 0.0045674419961869717;
	setAttr -s 4 ".wl[583].w";
	setAttr ".wl[583].w[11]" 0.061516730024034905;
	setAttr ".wl[583].w[12]" 0.8035584610446953;
	setAttr ".wl[583].w[13]" 0.13491762857679071;
	setAttr ".wl[583].w[19]" 7.1803544790618923e-006;
	setAttr -s 5 ".wl[584].w";
	setAttr ".wl[584].w[11]" 0.3913630722257066;
	setAttr ".wl[584].w[12]" 0.58754600280653668;
	setAttr ".wl[584].w[13]" 0.016967694850268462;
	setAttr ".wl[584].w[15]" 0.0041150986216962337;
	setAttr ".wl[584].w[19]" 8.1314957920924655e-006;
	setAttr -s 5 ".wl[585].w";
	setAttr ".wl[585].w[11]" 0.064891757029532246;
	setAttr ".wl[585].w[12]" 0.8937403012736691;
	setAttr ".wl[585].w[13]" 0.041351336842748027;
	setAttr ".wl[585].w[15]" 1.6602723917458206e-005;
	setAttr ".wl[585].w[19]" 2.1301331315942968e-009;
	setAttr -s 4 ".wl[586].w";
	setAttr ".wl[586].w[11]" 0.39262629923857978;
	setAttr ".wl[586].w[12]" 0.58150778210907117;
	setAttr ".wl[586].w[13]" 0.018069673025243854;
	setAttr ".wl[586].w[15]" 0.0077962456271052361;
	setAttr -s 4 ".wl[587].w";
	setAttr ".wl[587].w[11]" 0.079753857309638035;
	setAttr ".wl[587].w[12]" 0.85009556162629618;
	setAttr ".wl[587].w[13]" 0.064772772943964163;
	setAttr ".wl[587].w[15]" 0.0053778081201016903;
	setAttr -s 4 ".wl[588].w";
	setAttr ".wl[588].w[11]" 0.29647645008890972;
	setAttr ".wl[588].w[12]" 0.59029519539318132;
	setAttr ".wl[588].w[13]" 0.03921515023231311;
	setAttr ".wl[588].w[15]" 0.074013204285595893;
	setAttr -s 4 ".wl[589].w";
	setAttr ".wl[589].w[11]" 0.067140966350368189;
	setAttr ".wl[589].w[12]" 0.77751266852243051;
	setAttr ".wl[589].w[13]" 0.13442357018911391;
	setAttr ".wl[589].w[15]" 0.020922794938087463;
	setAttr -s 4 ".wl[590].w";
	setAttr ".wl[590].w[11]" 0.22051284505405405;
	setAttr ".wl[590].w[12]" 0.58879658503005872;
	setAttr ".wl[590].w[13]" 0.05117642902907895;
	setAttr ".wl[590].w[15]" 0.13951414088680833;
	setAttr -s 4 ".wl[591].w";
	setAttr ".wl[591].w[11]" 0.062759987987485777;
	setAttr ".wl[591].w[12]" 0.71924835988409686;
	setAttr ".wl[591].w[13]" 0.18568048828573927;
	setAttr ".wl[591].w[15]" 0.03231116384267807;
	setAttr -s 4 ".wl[592].w";
	setAttr ".wl[592].w[11]" 0.091620027247403174;
	setAttr ".wl[592].w[12]" 0.53765265938426654;
	setAttr ".wl[592].w[13]" 0.05692583129511293;
	setAttr ".wl[592].w[15]" 0.31380148207321734;
	setAttr -s 4 ".wl[593].w";
	setAttr ".wl[593].w[11]" 0.053214992922217874;
	setAttr ".wl[593].w[12]" 0.65689741888091979;
	setAttr ".wl[593].w[13]" 0.24183449121700587;
	setAttr ".wl[593].w[15]" 0.048053096979856491;
	setAttr -s 5 ".wl[594].w";
	setAttr ".wl[594].w[11]" 0.045528184908391049;
	setAttr ".wl[594].w[12]" 0.41470442836166116;
	setAttr ".wl[594].w[13]" 0.13542068313243064;
	setAttr ".wl[594].w[15]" 0.40177375078201294;
	setAttr ".wl[594].w[16]" 0.0025729528155041957;
	setAttr -s 4 ".wl[595].w";
	setAttr ".wl[595].w[11]" 0.047195557464938961;
	setAttr ".wl[595].w[12]" 0.57846587255655102;
	setAttr ".wl[595].w[13]" 0.31418847564819924;
	setAttr ".wl[595].w[15]" 0.060150094330310822;
	setAttr -s 5 ".wl[596].w";
	setAttr ".wl[596].w[11]" 0.16631402481835761;
	setAttr ".wl[596].w[12]" 0.30781773286896341;
	setAttr ".wl[596].w[13]" 0.0040628222061834954;
	setAttr ".wl[596].w[15]" 0.52154015851159086;
	setAttr ".wl[596].w[16]" 0.00026526159490458667;
	setAttr -s 4 ".wl[597].w";
	setAttr ".wl[597].w[11]" 0.32753945635287296;
	setAttr ".wl[597].w[12]" 0.52569235592621366;
	setAttr ".wl[597].w[13]" 0.0024292519077208094;
	setAttr ".wl[597].w[15]" 0.1443389358131926;
	setAttr -s 5 ".wl[598].w";
	setAttr ".wl[598].w[11]" 0.36785451339914682;
	setAttr ".wl[598].w[12]" 0.57567686963269871;
	setAttr ".wl[598].w[13]" 0.006163145879709086;
	setAttr ".wl[598].w[15]" 0.050304383003203897;
	setAttr ".wl[598].w[19]" 1.0880852414629771e-006;
	setAttr -s 4 ".wl[599].w";
	setAttr ".wl[599].w[11]" 0.38836475414639982;
	setAttr ".wl[599].w[12]" 0.58638795164832491;
	setAttr ".wl[599].w[13]" 0.011790908686823304;
	setAttr ".wl[599].w[15]" 0.013456385518452001;
	setAttr -s 4 ".wl[600].w";
	setAttr ".wl[600].w[11]" 0.40038472004216169;
	setAttr ".wl[600].w[12]" 0.57710361572380475;
	setAttr ".wl[600].w[13]" 0.015617686218760541;
	setAttr ".wl[600].w[15]" 0.0068939780152730201;
	setAttr -s 5 ".wl[601].w";
	setAttr ".wl[601].w[11]" 0.36856076340392363;
	setAttr ".wl[601].w[12]" 0.61114488236291831;
	setAttr ".wl[601].w[13]" 0.014795683529586642;
	setAttr ".wl[601].w[15]" 0.005481662190402894;
	setAttr ".wl[601].w[19]" 1.7008513168548234e-005;
	setAttr -s 5 ".wl[602].w";
	setAttr ".wl[602].w[11]" 0.12830038272300326;
	setAttr ".wl[602].w[12]" 0.85126881853402725;
	setAttr ".wl[602].w[13]" 0.0085698067381698457;
	setAttr ".wl[602].w[15]" 0.0029573367812511871;
	setAttr ".wl[602].w[19]" 0.0089036552235484123;
	setAttr -s 5 ".wl[603].w";
	setAttr ".wl[603].w[11]" 0.033597176903621899;
	setAttr ".wl[603].w[12]" 0.66804547034328521;
	setAttr ".wl[603].w[13]" 0.0017823232407681649;
	setAttr ".wl[603].w[19]" 0.29646270977610711;
	setAttr ".wl[603].w[20]" 0.00011231973621761426;
	setAttr -s 5 ".wl[604].w";
	setAttr ".wl[604].w[11]" 0.047339704360599318;
	setAttr ".wl[604].w[12]" 0.51504996264548575;
	setAttr ".wl[604].w[13]" 0.021253462465980349;
	setAttr ".wl[604].w[15]" 0.0060911565978045553;
	setAttr ".wl[604].w[19]" 0.41026571393013;
	setAttr -s 5 ".wl[605].w";
	setAttr ".wl[605].w[11]" 0.25912952499908631;
	setAttr ".wl[605].w[12]" 0.53222824962498172;
	setAttr ".wl[605].w[13]" 0.024347454321079074;
	setAttr ".wl[605].w[15]" 0.009247388342488767;
	setAttr ".wl[605].w[19]" 0.1750473827123642;
	setAttr -s 5 ".wl[606].w";
	setAttr ".wl[606].w[11]" 0.50236609765725915;
	setAttr ".wl[606].w[12]" 0.38705773059718374;
	setAttr ".wl[606].w[13]" 0.024907007353529687;
	setAttr ".wl[606].w[15]" 0.01067240241435486;
	setAttr ".wl[606].w[19]" 0.074996761977672577;
	setAttr -s 5 ".wl[607].w";
	setAttr ".wl[607].w[11]" 0.63790624372028648;
	setAttr ".wl[607].w[12]" 0.3079313273167108;
	setAttr ".wl[607].w[13]" 0.019377709030200668;
	setAttr ".wl[607].w[15]" 0.0086488990373686896;
	setAttr ".wl[607].w[19]" 0.026135820895433426;
	setAttr -s 5 ".wl[608].w";
	setAttr ".wl[608].w[0]" 0.014007162223163002;
	setAttr ".wl[608].w[11]" 0.73293729655109319;
	setAttr ".wl[608].w[12]" 0.24718903226448169;
	setAttr ".wl[608].w[15]" 0.0056178720854948364;
	setAttr ".wl[608].w[19]" 0.00024863687576726079;
	setAttr -s 4 ".wl[609].w";
	setAttr ".wl[609].w[0]" 0.013810886305255177;
	setAttr ".wl[609].w[11]" 0.73358542061320764;
	setAttr ".wl[609].w[12]" 0.24141733748266683;
	setAttr ".wl[609].w[15]" 0.011186355598870429;
	setAttr -s 4 ".wl[610].w";
	setAttr ".wl[610].w[11]" 0.64210494522678552;
	setAttr ".wl[610].w[12]" 0.29371043432267596;
	setAttr ".wl[610].w[13]" 0.018200675454751503;
	setAttr ".wl[610].w[15]" 0.045983944995787063;
	setAttr -s 4 ".wl[611].w";
	setAttr ".wl[611].w[11]" 0.49498805410127983;
	setAttr ".wl[611].w[12]" 0.36979621781511762;
	setAttr ".wl[611].w[13]" 0.02473868764583782;
	setAttr ".wl[611].w[15]" 0.11047704043776475;
	setAttr -s 4 ".wl[612].w";
	setAttr ".wl[612].w[11]" 0.22532859626602358;
	setAttr ".wl[612].w[12]" 0.43149595186722539;
	setAttr ".wl[612].w[13]" 0.021035132239842609;
	setAttr ".wl[612].w[15]" 0.32214031962690842;
	setAttr -s 5 ".wl[613].w";
	setAttr ".wl[613].w[11]" 0.1125613221300827;
	setAttr ".wl[613].w[12]" 0.34469212675066768;
	setAttr ".wl[613].w[13]" 0.032278812579107814;
	setAttr ".wl[613].w[15]" 0.50759916675579453;
	setAttr ".wl[613].w[16]" 0.0028685717843472958;
	setAttr -s 5 ".wl[614].w";
	setAttr ".wl[614].w[11]" 0.055984884510323615;
	setAttr ".wl[614].w[12]" 0.40357159567068707;
	setAttr ".wl[614].w[13]" 0.024872761040504478;
	setAttr ".wl[614].w[19]" 0.51556906498614286;
	setAttr ".wl[614].w[20]" 1.6937923419391154e-006;
	setAttr -s 5 ".wl[615].w";
	setAttr ".wl[615].w[11]" 0.033289845644427732;
	setAttr ".wl[615].w[12]" 0.25287613592252478;
	setAttr ".wl[615].w[13]" 0.018251045924286936;
	setAttr ".wl[615].w[19]" 0.69541432850053386;
	setAttr ".wl[615].w[20]" 0.00016864400822669268;
	setAttr -s 5 ".wl[616].w";
	setAttr ".wl[616].w[11]" 0.0043576638251366442;
	setAttr ".wl[616].w[12]" 0.33689524176071017;
	setAttr ".wl[616].w[13]" 0.0032715750348445024;
	setAttr ".wl[616].w[19]" 0.65547551182573582;
	setAttr ".wl[616].w[20]" 7.5535728782938349e-009;
	setAttr -s 5 ".wl[617].w";
	setAttr ".wl[617].w[11]" 0.015742055043933736;
	setAttr ".wl[617].w[12]" 0.08976899454089117;
	setAttr ".wl[617].w[13]" 0.03399374461287729;
	setAttr ".wl[617].w[19]" 0.85273428198081869;
	setAttr ".wl[617].w[20]" 0.0077609238214790821;
	setAttr -s 5 ".wl[618].w";
	setAttr ".wl[618].w[11]" 0.0024559533339552644;
	setAttr ".wl[618].w[12]" 0.03169878625381102;
	setAttr ".wl[618].w[13]" 0.0050599967140430458;
	setAttr ".wl[618].w[19]" 0.96061413330607237;
	setAttr ".wl[618].w[20]" 0.00017113039211835712;
	setAttr -s 5 ".wl[619].w";
	setAttr ".wl[619].w[11]" 0.014767547277813379;
	setAttr ".wl[619].w[12]" 0.12845502600835249;
	setAttr ".wl[619].w[13]" 0.019683607530476436;
	setAttr ".wl[619].w[19]" 0.8369104628977968;
	setAttr ".wl[619].w[20]" 0.00018335628556087613;
	setAttr -s 5 ".wl[620].w";
	setAttr ".wl[620].w[11]" 0.032555650653736827;
	setAttr ".wl[620].w[12]" 0.12948109840202798;
	setAttr ".wl[620].w[13]" 0.0061440018635591231;
	setAttr ".wl[620].w[15]" 0.83115587127040647;
	setAttr ".wl[620].w[16]" 0.00066337781026959419;
	setAttr -s 5 ".wl[621].w";
	setAttr ".wl[621].w[11]" 0.022504584081791484;
	setAttr ".wl[621].w[12]" 0.17536749312123026;
	setAttr ".wl[621].w[13]" 0.0062136085100137507;
	setAttr ".wl[621].w[15]" 0.79522438260744743;
	setAttr ".wl[621].w[16]" 0.00068993167951703072;
	setAttr -s 5 ".wl[622].w";
	setAttr ".wl[622].w[11]" 0.019266039809431552;
	setAttr ".wl[622].w[12]" 0.1000359964950631;
	setAttr ".wl[622].w[13]" 0.011441693855059366;
	setAttr ".wl[622].w[15]" 0.86849151727689122;
	setAttr ".wl[622].w[16]" 0.0007647525635547936;
	setAttr -s 5 ".wl[623].w";
	setAttr ".wl[623].w[11]" 0.003412506758609957;
	setAttr ".wl[623].w[12]" 0.013552658647850248;
	setAttr ".wl[623].w[13]" 0.0038948498096603276;
	setAttr ".wl[623].w[15]" 0.97908448045044782;
	setAttr ".wl[623].w[16]" 5.5504333431599662e-005;
	setAttr -s 5 ".wl[624].w";
	setAttr ".wl[624].w[11]" 0.01339019063959164;
	setAttr ".wl[624].w[12]" 0.075379162482861334;
	setAttr ".wl[624].w[13]" 0.021590048267277465;
	setAttr ".wl[624].w[15]" 0.88818461371701463;
	setAttr ".wl[624].w[16]" 0.0014559848932549357;
	setAttr -s 5 ".wl[625].w";
	setAttr ".wl[625].w[11]" 0.0014146125885806822;
	setAttr ".wl[625].w[12]" 0.019919323454713644;
	setAttr ".wl[625].w[13]" 0.0010864553946772948;
	setAttr ".wl[625].w[15]" 0.97754130967829111;
	setAttr ".wl[625].w[16]" 3.8298883737297729e-005;
	setAttr -s 5 ".wl[626].w";
	setAttr ".wl[626].w[0]" 0.37201393425956353;
	setAttr ".wl[626].w[1]" 0.61981659440737358;
	setAttr ".wl[626].w[2]" 0.0019133390991864581;
	setAttr ".wl[626].w[6]" 0.00093957502394914627;
	setAttr ".wl[626].w[11]" 0.0053165572099272739;
	setAttr -s 5 ".wl[627].w";
	setAttr ".wl[627].w[0]" 0.37654925117887234;
	setAttr ".wl[627].w[1]" 0.59860761995962986;
	setAttr ".wl[627].w[2]" 0.0061887099097431651;
	setAttr ".wl[627].w[6]" 0.0026501908432692289;
	setAttr ".wl[627].w[11]" 0.016004228108485501;
	setAttr -s 5 ".wl[628].w";
	setAttr ".wl[628].w[0]" 0.55226867853242978;
	setAttr ".wl[628].w[1]" 0.37185572158265384;
	setAttr ".wl[628].w[2]" 0.0098844977243788754;
	setAttr ".wl[628].w[6]" 0.026954991742968559;
	setAttr ".wl[628].w[11]" 0.039036110417569062;
	setAttr -s 5 ".wl[629].w";
	setAttr ".wl[629].w[0]" 0.59870630021295002;
	setAttr ".wl[629].w[1]" 0.17624328743050524;
	setAttr ".wl[629].w[6]" 0.164505119951038;
	setAttr ".wl[629].w[7]" 0.013135459274053574;
	setAttr ".wl[629].w[11]" 0.047409833131453194;
	setAttr -s 5 ".wl[630].w";
	setAttr ".wl[630].w[0]" 0.49824439806516058;
	setAttr ".wl[630].w[1]" 0.023299573306738954;
	setAttr ".wl[630].w[6]" 0.45572975277900696;
	setAttr ".wl[630].w[7]" 0.0058656582406882872;
	setAttr ".wl[630].w[11]" 0.016860617608405206;
	setAttr -s 5 ".wl[631].w";
	setAttr ".wl[631].w[0]" 0.43147070150369621;
	setAttr ".wl[631].w[1]" 0.0031988443866048447;
	setAttr ".wl[631].w[6]" 0.56111812591552734;
	setAttr ".wl[631].w[7]" 0.0014043604811703198;
	setAttr ".wl[631].w[11]" 0.0028079677130013157;
	setAttr -s 5 ".wl[632].w";
	setAttr ".wl[632].w[0]" 0.52782494976189231;
	setAttr ".wl[632].w[1]" 0.00069784428332367223;
	setAttr ".wl[632].w[6]" 0.47054105997085571;
	setAttr ".wl[632].w[7]" 0.00028594106696668529;
	setAttr ".wl[632].w[11]" 0.00065020491696168511;
	setAttr -s 5 ".wl[633].w";
	setAttr ".wl[633].w[0]" 0.50529525881399417;
	setAttr ".wl[633].w[1]" 0.00029353225189373286;
	setAttr ".wl[633].w[6]" 0.49407106637954712;
	setAttr ".wl[633].w[7]" 9.2340738513114866e-005;
	setAttr ".wl[633].w[11]" 0.00024780181605178541;
	setAttr -s 5 ".wl[634].w";
	setAttr ".wl[634].w[0]" 0.49907169286754083;
	setAttr ".wl[634].w[1]" 0.00088081128822732266;
	setAttr ".wl[634].w[6]" 0.49907169286754116;
	setAttr ".wl[634].w[7]" 0.0002096161333611235;
	setAttr ".wl[634].w[11]" 0.00076618684332966638;
	setAttr -s 5 ".wl[635].w";
	setAttr ".wl[635].w[0]" 0.5183613836991311;
	setAttr ".wl[635].w[1]" 0.0028253009343816569;
	setAttr ".wl[635].w[6]" 0.47577571939818236;
	setAttr ".wl[635].w[11]" 0.0028199377772005064;
	setAttr ".wl[635].w[19]" 0.00021765819110441953;
	setAttr -s 5 ".wl[636].w";
	setAttr ".wl[636].w[0]" 0.71066029333207115;
	setAttr ".wl[636].w[1]" 0.010405018321456821;
	setAttr ".wl[636].w[6]" 0.26840737654873481;
	setAttr ".wl[636].w[11]" 0.0096415933221578598;
	setAttr ".wl[636].w[12]" 0.00088571847557935061;
	setAttr -s 5 ".wl[637].w";
	setAttr ".wl[637].w[0]" 0.89453001402770238;
	setAttr ".wl[637].w[1]" 0.02790147194413712;
	setAttr ".wl[637].w[6]" 0.061185289174318314;
	setAttr ".wl[637].w[11]" 0.015493000068242542;
	setAttr ".wl[637].w[12]" 0.00089022478559961683;
	setAttr -s 5 ".wl[638].w";
	setAttr ".wl[638].w[0]" 0.90237896665961981;
	setAttr ".wl[638].w[1]" 0.064965287297069588;
	setAttr ".wl[638].w[6]" 0.016341108828783035;
	setAttr ".wl[638].w[11]" 0.01549957065468522;
	setAttr ".wl[638].w[12]" 0.00081506655984228606;
	setAttr -s 5 ".wl[639].w";
	setAttr ".wl[639].w[0]" 0.68949338745368283;
	setAttr ".wl[639].w[1]" 0.27637140881891931;
	setAttr ".wl[639].w[6]" 0.0048253373242914677;
	setAttr ".wl[639].w[11]" 0.028714135358239492;
	setAttr ".wl[639].w[15]" 0.00059573104486682494;
	setAttr -s 5 ".wl[640].w";
	setAttr ".wl[640].w[0]" 0.49661044080497541;
	setAttr ".wl[640].w[1]" 0.47505754246967574;
	setAttr ".wl[640].w[6]" 0.0012947033392265439;
	setAttr ".wl[640].w[11]" 0.026752027265317405;
	setAttr ".wl[640].w[15]" 0.00028528612080492904;
	setAttr -s 5 ".wl[641].w";
	setAttr ".wl[641].w[0]" 0.48977112920580834;
	setAttr ".wl[641].w[1]" 0.48977112920580845;
	setAttr ".wl[641].w[2]" 0.00012664489100082835;
	setAttr ".wl[641].w[6]" 0.0003355461813043803;
	setAttr ".wl[641].w[11]" 0.019995550516077997;
	setAttr -s 5 ".wl[642].w";
	setAttr ".wl[642].w[0]" 0.49203608548108119;
	setAttr ".wl[642].w[1]" 0.49203608548108141;
	setAttr ".wl[642].w[2]" 0.00021985595118070839;
	setAttr ".wl[642].w[6]" 0.00052331533515825868;
	setAttr ".wl[642].w[11]" 0.015184657751498439;
	setAttr -s 5 ".wl[643].w";
	setAttr ".wl[643].w[0]" 0.471113136700341;
	setAttr ".wl[643].w[1]" 0.51787493999296719;
	setAttr ".wl[643].w[2]" 0.00072070029164654633;
	setAttr ".wl[643].w[6]" 0.00081523391418159008;
	setAttr ".wl[643].w[11]" 0.0094759891008637555;
	setAttr -s 5 ".wl[644].w";
	setAttr ".wl[644].w[12]" 0.071440881286020719;
	setAttr ".wl[644].w[13]" 0.61343422854678398;
	setAttr ".wl[644].w[14]" 0.25455243550589596;
	setAttr ".wl[644].w[15]" 0.011616008311678668;
	setAttr ".wl[644].w[19]" 0.048956446349620819;
	setAttr -s 5 ".wl[645].w";
	setAttr ".wl[645].w[11]" 0.011243104211529107;
	setAttr ".wl[645].w[12]" 0.13803567658708668;
	setAttr ".wl[645].w[13]" 0.84546932717044254;
	setAttr ".wl[645].w[15]" 0.004621307136262221;
	setAttr ".wl[645].w[19]" 0.00063058489467948675;
	setAttr -s 5 ".wl[646].w";
	setAttr ".wl[646].w[12]" 0.030044135958356984;
	setAttr ".wl[646].w[13]" 0.80010760180247709;
	setAttr ".wl[646].w[14]" 0.15873495274609969;
	setAttr ".wl[646].w[15]" 0.0042393358477963335;
	setAttr ".wl[646].w[19]" 0.0068739736452698708;
	setAttr -s 5 ".wl[647].w";
	setAttr ".wl[647].w[12]" 0.0093506685595708319;
	setAttr ".wl[647].w[13]" 0.12637769435975102;
	setAttr ".wl[647].w[14]" 0.80332800728241471;
	setAttr ".wl[647].w[15]" 0.0048593098491132745;
	setAttr ".wl[647].w[19]" 0.056084319949150085;
	setAttr -s 5 ".wl[648].w";
	setAttr ".wl[648].w[12]" 0.082115179647505268;
	setAttr ".wl[648].w[13]" 0.36750578003713946;
	setAttr ".wl[648].w[14]" 0.37646276816918767;
	setAttr ".wl[648].w[15]" 0.017565853220882371;
	setAttr ".wl[648].w[19]" 0.15635041892528534;
	setAttr -s 5 ".wl[649].w";
	setAttr ".wl[649].w[12]" 0.02364902964062417;
	setAttr ".wl[649].w[13]" 0.74729067501061086;
	setAttr ".wl[649].w[14]" 0.22490829772155632;
	setAttr ".wl[649].w[15]" 0.0031656178180128336;
	setAttr ".wl[649].w[19]" 0.00098637980919577496;
	setAttr -s 5 ".wl[650].w";
	setAttr ".wl[650].w[11]" 0.0011126534999989076;
	setAttr ".wl[650].w[12]" 0.042493601232395158;
	setAttr ".wl[650].w[13]" 0.95618811303413787;
	setAttr ".wl[650].w[15]" 0.0002024718705797568;
	setAttr ".wl[650].w[19]" 3.1603628883079472e-006;
	setAttr -s 5 ".wl[651].w";
	setAttr ".wl[651].w[12]" 0.018163896426451765;
	setAttr ".wl[651].w[13]" 0.72288347539674669;
	setAttr ".wl[651].w[14]" 0.25829242070565095;
	setAttr ".wl[651].w[15]" 0.00047448990517295897;
	setAttr ".wl[651].w[19]" 0.00018571756597767709;
	setAttr -s 5 ".wl[652].w";
	setAttr ".wl[652].w[12]" 0.0024159466104340223;
	setAttr ".wl[652].w[13]" 0.063257144974723331;
	setAttr ".wl[652].w[14]" 0.9324279718169679;
	setAttr ".wl[652].w[15]" 0.00094672259526550745;
	setAttr ".wl[652].w[19]" 0.00095221400260925293;
	setAttr -s 5 ".wl[653].w";
	setAttr ".wl[653].w[12]" 0.090112113372114486;
	setAttr ".wl[653].w[13]" 0.55068101957443749;
	setAttr ".wl[653].w[14]" 0.35864724708815299;
	setAttr ".wl[653].w[15]" 0.00033733516465872526;
	setAttr ".wl[653].w[19]" 0.00022228480063633718;
	setAttr -s 5 ".wl[654].w";
	setAttr ".wl[654].w[11]" 0.002442266955290354;
	setAttr ".wl[654].w[12]" 0.036916342310455236;
	setAttr ".wl[654].w[13]" 0.95998696508024439;
	setAttr ".wl[654].w[15]" 0.00065407593501731753;
	setAttr ".wl[654].w[19]" 3.4971899268383202e-007;
	setAttr -s 5 ".wl[655].w";
	setAttr ".wl[655].w[12]" 0.12013563152085492;
	setAttr ".wl[655].w[13]" 0.49554404124198914;
	setAttr ".wl[655].w[14]" 0.3824616874333529;
	setAttr ".wl[655].w[15]" 0.0001711218646960333;
	setAttr ".wl[655].w[19]" 0.0016875179391069939;
	setAttr -s 5 ".wl[656].w";
	setAttr ".wl[656].w[11]" 0.0025134602508708427;
	setAttr ".wl[656].w[12]" 0.0035185722344787062;
	setAttr ".wl[656].w[13]" 0.020184272131389864;
	setAttr ".wl[656].w[14]" 0.97105363804128264;
	setAttr ".wl[656].w[19]" 0.0027300573419779539;
	setAttr -s 5 ".wl[657].w";
	setAttr ".wl[657].w[12]" 0.15109863746076507;
	setAttr ".wl[657].w[13]" 0.49918773936642263;
	setAttr ".wl[657].w[14]" 0.34598484561789888;
	setAttr ".wl[657].w[15]" 1.5130842257349286e-005;
	setAttr ".wl[657].w[19]" 0.0037136467126560866;
	setAttr -s 5 ".wl[658].w";
	setAttr ".wl[658].w[11]" 0.0029470517495371567;
	setAttr ".wl[658].w[12]" 0.060880866597578777;
	setAttr ".wl[658].w[13]" 0.936154603816858;
	setAttr ".wl[658].w[15]" 1.7072858099709265e-005;
	setAttr ".wl[658].w[19]" 4.0497792639433038e-007;
	setAttr -s 5 ".wl[659].w";
	setAttr ".wl[659].w[12]" 0.21220567768054913;
	setAttr ".wl[659].w[13]" 0.4324029112171639;
	setAttr ".wl[659].w[14]" 0.35058465586273713;
	setAttr ".wl[659].w[15]" 5.5339774007734377e-006;
	setAttr ".wl[659].w[19]" 0.0048012212621491215;
	setAttr -s 5 ".wl[660].w";
	setAttr ".wl[660].w[11]" 0.033150244550693472;
	setAttr ".wl[660].w[12]" 0.02511562545711065;
	setAttr ".wl[660].w[13]" 0.026421537672922751;
	setAttr ".wl[660].w[14]" 0.90552519672276888;
	setAttr ".wl[660].w[19]" 0.0097873955965042114;
	setAttr -s 5 ".wl[661].w";
	setAttr ".wl[661].w[11]" 0.10536609082220777;
	setAttr ".wl[661].w[12]" 0.45050940784974114;
	setAttr ".wl[661].w[13]" 0.44177160786669034;
	setAttr ".wl[661].w[15]" 1.0203190292656927e-008;
	setAttr ".wl[661].w[19]" 0.0023528832581704317;
	setAttr -s 4 ".wl[662].w";
	setAttr ".wl[662].w[11]" 0.010932601329415476;
	setAttr ".wl[662].w[12]" 0.16386466673480946;
	setAttr ".wl[662].w[13]" 0.82520072572775027;
	setAttr ".wl[662].w[19]" 2.0062080248094038e-006;
	setAttr -s 5 ".wl[663].w";
	setAttr ".wl[663].w[11]" 0.11179138362008585;
	setAttr ".wl[663].w[12]" 0.46160580686913438;
	setAttr ".wl[663].w[13]" 0.42652680024936124;
	setAttr ".wl[663].w[15]" 4.7431377936391073e-008;
	setAttr ".wl[663].w[19]" 7.5961830040533485e-005;
	setAttr -s 4 ".wl[664].w";
	setAttr ".wl[664].w[11]" 0.15639442612571711;
	setAttr ".wl[664].w[12]" 0.19813743368987816;
	setAttr ".wl[664].w[14]" 0.64542782247344999;
	setAttr ".wl[664].w[16]" 4.031771095469594e-005;
	setAttr -s 5 ".wl[665].w";
	setAttr ".wl[665].w[12]" 0.37889817243489532;
	setAttr ".wl[665].w[13]" 0.41934211453719294;
	setAttr ".wl[665].w[14]" 0.1972044364039483;
	setAttr ".wl[665].w[15]" 9.0257999545428902e-006;
	setAttr ".wl[665].w[19]" 0.0045462508240088325;
	setAttr -s 5 ".wl[666].w";
	setAttr ".wl[666].w[11]" 0.049383004388723471;
	setAttr ".wl[666].w[12]" 0.24937050086145771;
	setAttr ".wl[666].w[13]" 0.70124072302785201;
	setAttr ".wl[666].w[15]" 3.0553133001376409e-007;
	setAttr ".wl[666].w[19]" 5.4661906367546951e-006;
	setAttr -s 4 ".wl[667].w";
	setAttr ".wl[667].w[11]" 0.0084026635480789463;
	setAttr ".wl[667].w[12]" 0.15906794045512868;
	setAttr ".wl[667].w[13]" 0.83252909964800514;
	setAttr ".wl[667].w[15]" 2.963487872875703e-007;
	setAttr -s 5 ".wl[668].w";
	setAttr ".wl[668].w[11]" 0.074701425575566721;
	setAttr ".wl[668].w[12]" 0.26728857515444482;
	setAttr ".wl[668].w[13]" 0.6579858717579562;
	setAttr ".wl[668].w[15]" 2.0730123651446775e-005;
	setAttr ".wl[668].w[19]" 3.3973883808530855e-006;
	setAttr -s 4 ".wl[669].w";
	setAttr ".wl[669].w[11]" 0.070590621121087826;
	setAttr ".wl[669].w[12]" 0.16447657644477717;
	setAttr ".wl[669].w[13]" 0.76140916093537558;
	setAttr ".wl[669].w[15]" 0.0035236414987593889;
	setAttr -s 4 ".wl[670].w";
	setAttr ".wl[670].w[11]" 0.0085172858452398775;
	setAttr ".wl[670].w[12]" 0.24595049898178972;
	setAttr ".wl[670].w[13]" 0.74553141697813752;
	setAttr ".wl[670].w[15]" 7.9819483289611526e-007;
	setAttr -s 5 ".wl[671].w";
	setAttr ".wl[671].w[11]" 0.11410710000228132;
	setAttr ".wl[671].w[12]" 0.14972628372182273;
	setAttr ".wl[671].w[13]" 0.72579377505098908;
	setAttr ".wl[671].w[14]" 0.010326779949409099;
	setAttr ".wl[671].w[19]" 4.6061275497777387e-005;
	setAttr -s 5 ".wl[672].w";
	setAttr ".wl[672].w[11]" 0.10545414576995767;
	setAttr ".wl[672].w[12]" 0.094114711762228159;
	setAttr ".wl[672].w[13]" 0.61717831872401352;
	setAttr ".wl[672].w[14]" 0.18303787877184238;
	setAttr ".wl[672].w[19]" 0.0002149449719581753;
	setAttr -s 4 ".wl[673].w";
	setAttr ".wl[673].w[11]" 0.062703541016731978;
	setAttr ".wl[673].w[12]" 0.28198087633396257;
	setAttr ".wl[673].w[13]" 0.65513874122708848;
	setAttr ".wl[673].w[15]" 0.00017684142221696675;
	setAttr -s 4 ".wl[674].w[11:14]"  0.12569085579483621 0.11873689852152781 
		0.63145099431905016 0.12412125136458582;
	setAttr -s 5 ".wl[675].w";
	setAttr ".wl[675].w[11]" 0.12088171268458153;
	setAttr ".wl[675].w[12]" 0.1469816002442042;
	setAttr ".wl[675].w[13]" 0.6495684570420327;
	setAttr ".wl[675].w[15]" 0.053392812531427483;
	setAttr ".wl[675].w[19]" 0.029175417497754097;
	setAttr -s 5 ".wl[676].w";
	setAttr ".wl[676].w[11]" 0.076568886714899725;
	setAttr ".wl[676].w[12]" 0.21774475156779124;
	setAttr ".wl[676].w[13]" 0.69172019164295717;
	setAttr ".wl[676].w[15]" 0.013100172393023968;
	setAttr ".wl[676].w[19]" 0.00086599768132786551;
	setAttr -s 5 ".wl[677].w";
	setAttr ".wl[677].w[12]" 0.29733102858068489;
	setAttr ".wl[677].w[13]" 0.49125459842975883;
	setAttr ".wl[677].w[14]" 0.055942480909402903;
	setAttr ".wl[677].w[15]" 0.063627258858527116;
	setAttr ".wl[677].w[19]" 0.091844633221626282;
	setAttr -s 5 ".wl[678].w";
	setAttr ".wl[678].w[11]" 0.096760556490692193;
	setAttr ".wl[678].w[12]" 0.053455547289509971;
	setAttr ".wl[678].w[14]" 0.58875645626260142;
	setAttr ".wl[678].w[15]" 0.063300355797345331;
	setAttr ".wl[678].w[19]" 0.19772708415985107;
	setAttr -s 5 ".wl[679].w";
	setAttr ".wl[679].w[12]" 0.13446140723677691;
	setAttr ".wl[679].w[13]" 0.20874682562028868;
	setAttr ".wl[679].w[14]" 0.52461457484974983;
	setAttr ".wl[679].w[15]" 0.027312527917402532;
	setAttr ".wl[679].w[19]" 0.10486466437578201;
	setAttr -s 5 ".wl[680].w";
	setAttr ".wl[680].w[11]" 0.038204099798579083;
	setAttr ".wl[680].w[12]" 0.24130251330032704;
	setAttr ".wl[680].w[13]" 0.67866939633481427;
	setAttr ".wl[680].w[15]" 0.02258301518633582;
	setAttr ".wl[680].w[19]" 0.019240975379943848;
	setAttr -s 5 ".wl[681].w";
	setAttr ".wl[681].w[12]" 0.089221964322588679;
	setAttr ".wl[681].w[13]" 0.17969403715355003;
	setAttr ".wl[681].w[14]" 0.47556346183000636;
	setAttr ".wl[681].w[15]" 0.018883927854819977;
	setAttr ".wl[681].w[19]" 0.23663660883903503;
	setAttr -s 5 ".wl[682].w";
	setAttr ".wl[682].w[11]" 0.0019623813618733013;
	setAttr ".wl[682].w[12]" 0.01991260552653875;
	setAttr ".wl[682].w[14]" 0.77997356323901157;
	setAttr ".wl[682].w[19]" 0.186882963603758;
	setAttr ".wl[682].w[20]" 0.011268486268818378;
	setAttr -s 5 ".wl[683].w";
	setAttr ".wl[683].w[12]" 0.00019510695324411126;
	setAttr ".wl[683].w[13]" 0.00039573509855474605;
	setAttr ".wl[683].w[14]" 0.99283170700073242;
	setAttr ".wl[683].w[15]" 0.00037647402129123788;
	setAttr ".wl[683].w[19]" 0.0062009769261774832;
	setAttr -s 5 ".wl[684].w";
	setAttr ".wl[684].w[12]" 7.5002139655294746e-005;
	setAttr ".wl[684].w[13]" 8.3204392028550191e-005;
	setAttr ".wl[684].w[14]" 0.99827717792958848;
	setAttr ".wl[684].w[15]" 5.4262943949694475e-005;
	setAttr ".wl[684].w[19]" 0.0015103525947779417;
	setAttr -s 5 ".wl[685].w";
	setAttr ".wl[685].w[11]" 2.2757862931402813e-007;
	setAttr ".wl[685].w[12]" 1.9629691587260486e-007;
	setAttr ".wl[685].w[14]" 0.99997850949584199;
	setAttr ".wl[685].w[19]" 2.1065119283072595e-005;
	setAttr ".wl[685].w[20]" 1.5093296612533891e-009;
	setAttr -s 5 ".wl[686].w";
	setAttr ".wl[686].w[12]" 0.00031956350007437891;
	setAttr ".wl[686].w[13]" 0.00051633218739473253;
	setAttr ".wl[686].w[14]" 0.98533641712875208;
	setAttr ".wl[686].w[19]" 0.01380333644175508;
	setAttr ".wl[686].w[20]" 2.4350742023671046e-005;
	setAttr -s 5 ".wl[687].w";
	setAttr ".wl[687].w[11]" 2.5300744203756324e-005;
	setAttr ".wl[687].w[12]" 2.63535277427927e-005;
	setAttr ".wl[687].w[14]" 0.99976312612595797;
	setAttr ".wl[687].w[15]" 1.0658115748798863e-005;
	setAttr ".wl[687].w[19]" 0.00017456148634664714;
	setAttr -s 5 ".wl[688].w";
	setAttr ".wl[688].w[11]" 1.4915153110106106e-005;
	setAttr ".wl[688].w[12]" 8.4107665704208243e-006;
	setAttr ".wl[688].w[14]" 0.99993047342794483;
	setAttr ".wl[688].w[15]" 3.7813319947455748e-006;
	setAttr ".wl[688].w[19]" 4.2419320379849523e-005;
	setAttr -s 5 ".wl[689].w";
	setAttr ".wl[689].w[11]" 5.3958668159172501e-009;
	setAttr ".wl[689].w[12]" 9.3234185914013244e-010;
	setAttr ".wl[689].w[14]" 0.99999990165054153;
	setAttr ".wl[689].w[15]" 1.498787404552508e-009;
	setAttr ".wl[689].w[19]" 9.0522462414810434e-008;
	setAttr -s 5 ".wl[690].w";
	setAttr ".wl[690].w[11]" 7.0841687849193167e-005;
	setAttr ".wl[690].w[12]" 1.491312069195223e-005;
	setAttr ".wl[690].w[13]" 7.5795938041670131e-006;
	setAttr ".wl[690].w[14]" 0.99962138734858841;
	setAttr ".wl[690].w[19]" 0.00028527824906632304;
	setAttr -s 5 ".wl[691].w";
	setAttr ".wl[691].w[11]" 0.0060947331137327643;
	setAttr ".wl[691].w[12]" 0.00041619948997760506;
	setAttr ".wl[691].w[14]" 0.99138722873138452;
	setAttr ".wl[691].w[15]" 3.0647435778519139e-005;
	setAttr ".wl[691].w[16]" 0.0020711912291266261;
	setAttr -s 5 ".wl[692].w";
	setAttr ".wl[692].w[11]" 1.0794672619102436e-007;
	setAttr ".wl[692].w[12]" 4.8658376654171336e-009;
	setAttr ".wl[692].w[14]" 0.99999862731840483;
	setAttr ".wl[692].w[15]" 9.0587526369034777e-010;
	setAttr ".wl[692].w[19]" 1.2589631560465245e-006;
	setAttr -s 5 ".wl[693].w";
	setAttr ".wl[693].w[11]" 0.02178870599252012;
	setAttr ".wl[693].w[12]" 0.00070264109540983948;
	setAttr ".wl[693].w[14]" 0.97721125446555146;
	setAttr ".wl[693].w[15]" 8.8585229605087079e-006;
	setAttr ".wl[693].w[16]" 0.00028853992355804263;
	setAttr -s 5 ".wl[694].w";
	setAttr ".wl[694].w[11]" 0.031337283880635995;
	setAttr ".wl[694].w[12]" 0.00067921514821173677;
	setAttr ".wl[694].w[14]" 0.96762212329240338;
	setAttr ".wl[694].w[15]" 4.1189146031683777e-006;
	setAttr ".wl[694].w[16]" 0.00035725876414567187;
	setAttr -s 5 ".wl[695].w";
	setAttr ".wl[695].w[11]" 9.5393672254146609e-005;
	setAttr ".wl[695].w[12]" 5.0396065924633823e-007;
	setAttr ".wl[695].w[14]" 0.99989430013015024;
	setAttr ".wl[695].w[15]" 7.1929612488474959e-008;
	setAttr ".wl[695].w[16]" 9.7303073238444328e-006;
	setAttr -s 5 ".wl[696].w";
	setAttr ".wl[696].w[11]" 0.008958233653801724;
	setAttr ".wl[696].w[12]" 0.00056629460583634491;
	setAttr ".wl[696].w[14]" 0.99039161069751536;
	setAttr ".wl[696].w[15]" 7.5822174494533101e-007;
	setAttr ".wl[696].w[16]" 8.310282110156496e-005;
	setAttr -s 5 ".wl[697].w";
	setAttr ".wl[697].w[11]" 0.00013025184627840118;
	setAttr ".wl[697].w[12]" 0.00044002668256975239;
	setAttr ".wl[697].w[14]" 0.94590969454502727;
	setAttr ".wl[697].w[19]" 0.053350336329602774;
	setAttr ".wl[697].w[20]" 0.00016969059652183205;
	setAttr -s 5 ".wl[698].w";
	setAttr ".wl[698].w[12]" 0.00050763688065689041;
	setAttr ".wl[698].w[13]" 7.4824266523964533e-005;
	setAttr ".wl[698].w[14]" 0.96330718077970756;
	setAttr ".wl[698].w[19]" 0.03593439657610465;
	setAttr ".wl[698].w[20]" 0.00017596149700693786;
	setAttr -s 5 ".wl[699].w";
	setAttr ".wl[699].w[12]" 0.00037185906646243413;
	setAttr ".wl[699].w[13]" 0.00014616765881124563;
	setAttr ".wl[699].w[14]" 0.97111266716099376;
	setAttr ".wl[699].w[19]" 0.028280941616672575;
	setAttr ".wl[699].w[20]" 8.8364497059956193e-005;
	setAttr -s 5 ".wl[700].w";
	setAttr ".wl[700].w[11]" 2.4603909997658023e-006;
	setAttr ".wl[700].w[12]" 1.333368068317048e-006;
	setAttr ".wl[700].w[14]" 0.99897989098214979;
	setAttr ".wl[700].w[19]" 0.0010160829068595533;
	setAttr ".wl[700].w[20]" 2.3235192259107862e-007;
	setAttr -s 5 ".wl[701].w";
	setAttr ".wl[701].w[11]" 7.7977690345712477e-010;
	setAttr ".wl[701].w[12]" 2.0946561544836734e-010;
	setAttr ".wl[701].w[14]" 0.99999995665961683;
	setAttr ".wl[701].w[19]" 4.2314060776734133e-008;
	setAttr ".wl[701].w[20]" 3.7079932874162225e-011;
	setAttr ".wl[702].w[14]"  1;
	setAttr ".wl[703].w[14]"  1;
	setAttr ".wl[704].w[14]"  1;
	setAttr ".wl[705].w[14]"  1;
	setAttr ".wl[706].w[14]"  1;
	setAttr ".wl[707].w[14]"  1;
	setAttr ".wl[708].w[14]"  1;
	setAttr -s 5 ".wl[709].w";
	setAttr ".wl[709].w[11]" 1.4425862462640238e-006;
	setAttr ".wl[709].w[12]" 5.6170252693702842e-009;
	setAttr ".wl[709].w[14]" 0.9999980997141128;
	setAttr ".wl[709].w[15]" 1.9537433892935496e-009;
	setAttr ".wl[709].w[16]" 4.5012887223919263e-007;
	setAttr ".wl[710].w[14]"  1;
	setAttr -s 5 ".wl[711].w";
	setAttr ".wl[711].w[11]" 2.8837773054264989e-005;
	setAttr ".wl[711].w[12]" 7.5537772026442679e-008;
	setAttr ".wl[711].w[14]" 0.99996866531545325;
	setAttr ".wl[711].w[15]" 4.0273334889207035e-008;
	setAttr ".wl[711].w[16]" 2.3811003855763195e-006;
	setAttr -s 5 ".wl[712].w";
	setAttr ".wl[712].w[11]" 5.5228269232831938e-005;
	setAttr ".wl[712].w[12]" 2.4677799520901393e-007;
	setAttr ".wl[712].w[14]" 0.9999411628442465;
	setAttr ".wl[712].w[15]" 4.1548858575879422e-008;
	setAttr ".wl[712].w[16]" 3.3205596669173202e-006;
	setAttr ".wl[713].w[14]"  1;
	setAttr -s 5 ".wl[714].w";
	setAttr ".wl[714].w[11]" 2.2405833981927547e-005;
	setAttr ".wl[714].w[12]" 3.7282122580046416e-007;
	setAttr ".wl[714].w[14]" 0.99997533501394598;
	setAttr ".wl[714].w[15]" 2.5316149177001535e-008;
	setAttr ".wl[714].w[16]" 1.8610146970850949e-006;
	setAttr -s 5 ".wl[715].w";
	setAttr ".wl[715].w[11]" 2.76459523322997e-008;
	setAttr ".wl[715].w[12]" 5.1171194816893642e-009;
	setAttr ".wl[715].w[14]" 0.99999422519023851;
	setAttr ".wl[715].w[19]" 5.7370872608514151e-006;
	setAttr ".wl[715].w[20]" 4.9594288675791631e-009;
	setAttr -s 4 ".wl[716].w";
	setAttr ".wl[716].w[11]" 9.727004043617429e-010;
	setAttr ".wl[716].w[12]" 3.6369771946837642e-010;
	setAttr ".wl[716].w[14]" 0.99999969806093847;
	setAttr ".wl[716].w[19]" 3.0060266343255337e-007;
	setAttr -s 4 ".wl[717].w";
	setAttr ".wl[717].w[11]" 9.0793993827322202e-010;
	setAttr ".wl[717].w[12]" 5.2122504105226421e-010;
	setAttr ".wl[717].w[14]" 0.99999973062787373;
	setAttr ".wl[717].w[19]" 2.6794296129033695e-007;
	setAttr ".wl[718].w[14]"  1;
	setAttr ".wl[719].w[14]"  1;
	setAttr ".wl[720].w[14]"  1;
	setAttr ".wl[721].w[14]"  1;
	setAttr ".wl[722].w[14]"  1;
	setAttr ".wl[723].w[14]"  1;
	setAttr ".wl[724].w[14]"  1;
	setAttr ".wl[725].w[14]"  1;
	setAttr -s 5 ".wl[726].w";
	setAttr ".wl[726].w[11]" 1.6499275128928189e-007;
	setAttr ".wl[726].w[12]" 2.363689979349717e-010;
	setAttr ".wl[726].w[14]" 0.9999997615814209;
	setAttr ".wl[726].w[15]" 7.0541701661553753e-009;
	setAttr ".wl[726].w[16]" 6.6135288648190284e-008;
	setAttr ".wl[727].w[14]"  1;
	setAttr -s 5 ".wl[728].w";
	setAttr ".wl[728].w[11]" 1.0198236636294333e-005;
	setAttr ".wl[728].w[12]" 1.3751268528945309e-008;
	setAttr ".wl[728].w[14]" 0.99998891353607178;
	setAttr ".wl[728].w[15]" 2.7451438752073899e-007;
	setAttr ".wl[728].w[16]" 5.9996163587863896e-007;
	setAttr -s 5 ".wl[729].w";
	setAttr ".wl[729].w[11]" 0.00087239000023222463;
	setAttr ".wl[729].w[12]" 4.1442599278997983e-006;
	setAttr ".wl[729].w[14]" 0.99904012680053711;
	setAttr ".wl[729].w[15]" 4.3517293694215361e-005;
	setAttr ".wl[729].w[16]" 3.9821645608550768e-005;
	setAttr -s 4 ".wl[730].w";
	setAttr ".wl[730].w[12]" 3.9903000898055964e-009;
	setAttr ".wl[730].w[14]" 0.9999997615814209;
	setAttr ".wl[730].w[15]" 1.4191400138079204e-007;
	setAttr ".wl[730].w[16]" 9.2514277630964877e-008;
	setAttr -s 5 ".wl[731].w";
	setAttr ".wl[731].w[11]" 0.0052784756572567398;
	setAttr ".wl[731].w[12]" 3.243413033345305e-005;
	setAttr ".wl[731].w[14]" 0.9942940788087854;
	setAttr ".wl[731].w[15]" 0.00019680785771925002;
	setAttr ".wl[731].w[16]" 0.00019820354590514673;
	setAttr ".wl[732].w[14]"  1;
	setAttr ".wl[733].w[14]"  1;
	setAttr ".wl[734].w[14]"  1;
	setAttr -s 4 ".wl[735].w";
	setAttr ".wl[735].w[11]" 1.0335677567576792e-008;
	setAttr ".wl[735].w[12]" 1.8512091880452814e-009;
	setAttr ".wl[735].w[14]" 0.99999994039535522;
	setAttr ".wl[735].w[19]" 4.7417758019768555e-008;
	setAttr -s 4 ".wl[736].w";
	setAttr ".wl[736].w[12]" 2.2518354730995316e-009;
	setAttr ".wl[736].w[14]" 0.99999996397331348;
	setAttr ".wl[736].w[19]" 3.2405183477219574e-008;
	setAttr ".wl[736].w[20]" 1.369667601558433e-009;
	setAttr -s 4 ".wl[737].w";
	setAttr ".wl[737].w[12]" 4.5177861829499787e-009;
	setAttr ".wl[737].w[14]" 0.99999916553497314;
	setAttr ".wl[737].w[15]" 3.1685822762102932e-008;
	setAttr ".wl[737].w[19]" 7.9826141791041585e-007;
	setAttr ".wl[738].w[14]"  1;
	setAttr ".wl[739].w[14]"  1;
	setAttr ".wl[740].w[14]"  1;
	setAttr ".wl[741].w[14]"  1;
	setAttr ".wl[742].w[14]"  1;
	setAttr -s 5 ".wl[743].w[12:16]"  5.3143561778037314e-009 3.148552914670183e-010 
		0.99999964237213135 2.392119164021678e-007 1.1278674078090524e-007;
	setAttr -s 5 ".wl[744].w[12:16]"  2.8716429957802715e-006 8.9067826015567343e-006 
		0.99983304738998413 0.00014001319520429983 1.5160989214232289e-005;
	setAttr -s 5 ".wl[745].w[12:16]"  2.8286931486871757e-008 1.0026565300981892e-009 
		0.99999856948852539 1.0460208369500307e-006 3.5520104964237449e-007;
	setAttr -s 5 ".wl[746].w[12:16]"  0.0001005040809969319 0.00076460173419896514 
		0.99587458372116089 0.0027971884542645339 0.00046312200937868034;
	setAttr -s 5 ".wl[747].w";
	setAttr ".wl[747].w[12]" 3.4235045755703301e-007;
	setAttr ".wl[747].w[13]" 1.1614031636929191e-009;
	setAttr ".wl[747].w[14]" 0.99999787805283502;
	setAttr ".wl[747].w[19]" 1.6268494811895995e-006;
	setAttr ".wl[747].w[20]" 1.5158582300500711e-007;
	setAttr ".wl[748].w[14]"  1;
	setAttr -s 4 ".wl[749].w";
	setAttr ".wl[749].w[11]" 1.6553847193777717e-008;
	setAttr ".wl[749].w[12]" 1.2449222626802054e-009;
	setAttr ".wl[749].w[14]" 0.99999994039535522;
	setAttr ".wl[749].w[19]" 4.1805875318932701e-008;
	setAttr ".wl[750].w[14]"  1;
	setAttr ".wl[751].w[14]"  1;
	setAttr ".wl[752].w[14]"  1;
	setAttr ".wl[753].w[14]"  1;
	setAttr ".wl[754].w[14]"  1;
	setAttr -s 5 ".wl[755].w";
	setAttr ".wl[755].w[12]" 2.9588323449794741e-006;
	setAttr ".wl[755].w[13]" 1.4228550327578731e-008;
	setAttr ".wl[755].w[14]" 0.99996808334270038;
	setAttr ".wl[755].w[19]" 2.7389236648696504e-005;
	setAttr ".wl[755].w[20]" 1.5543597555733868e-006;
	setAttr -s 5 ".wl[756].w";
	setAttr ".wl[756].w[11]" 0.00032068043645826303;
	setAttr ".wl[756].w[12]" 0.076881133764760565;
	setAttr ".wl[756].w[13]" 0.92240595897702538;
	setAttr ".wl[756].w[15]" 0.00035976888761622748;
	setAttr ".wl[756].w[19]" 3.2457934139529243e-005;
	setAttr -s 5 ".wl[757].w";
	setAttr ".wl[757].w[11]" 0.0015834611858628446;
	setAttr ".wl[757].w[12]" 0.19279939866242843;
	setAttr ".wl[757].w[13]" 0.80415859612459339;
	setAttr ".wl[757].w[15]" 0.0012716152609177607;
	setAttr ".wl[757].w[19]" 0.00018692876619752496;
	setAttr -s 5 ".wl[758].w";
	setAttr ".wl[758].w[11]" 3.5978892633177423e-005;
	setAttr ".wl[758].w[12]" 0.059842560651945126;
	setAttr ".wl[758].w[13]" 0.94006249706069522;
	setAttr ".wl[758].w[15]" 5.7301473352539503e-005;
	setAttr ".wl[758].w[19]" 1.6619213738522376e-006;
	setAttr -s 5 ".wl[759].w";
	setAttr ".wl[759].w[11]" 4.0836673138586653e-005;
	setAttr ".wl[759].w[12]" 0.057613409465923283;
	setAttr ".wl[759].w[13]" 0.94226041095991331;
	setAttr ".wl[759].w[15]" 8.3812352386303246e-005;
	setAttr ".wl[759].w[19]" 1.5305486384967614e-006;
	setAttr -s 5 ".wl[760].w";
	setAttr ".wl[760].w[11]" 3.0031117173601006e-005;
	setAttr ".wl[760].w[12]" 0.05773694821577402;
	setAttr ".wl[760].w[13]" 0.9421729979477117;
	setAttr ".wl[760].w[15]" 5.9376994613558054e-005;
	setAttr ".wl[760].w[19]" 6.4572472709491908e-007;
	setAttr -s 5 ".wl[761].w";
	setAttr ".wl[761].w[11]" 9.8021893496951572e-005;
	setAttr ".wl[761].w[12]" 0.050420217820695473;
	setAttr ".wl[761].w[13]" 0.94922211614449148;
	setAttr ".wl[761].w[15]" 0.00025769695639610291;
	setAttr ".wl[761].w[19]" 1.9471849199441112e-006;
	setAttr -s 5 ".wl[762].w";
	setAttr ".wl[762].w[11]" 0.00014273009249775369;
	setAttr ".wl[762].w[12]" 0.051757003449966629;
	setAttr ".wl[762].w[13]" 0.94760537576412696;
	setAttr ".wl[762].w[15]" 0.00049305951688438654;
	setAttr ".wl[762].w[19]" 1.8311765243148082e-006;
	setAttr -s 5 ".wl[763].w";
	setAttr ".wl[763].w[11]" 0.00048035566369747178;
	setAttr ".wl[763].w[12]" 0.054318472813584436;
	setAttr ".wl[763].w[13]" 0.94403011121607039;
	setAttr ".wl[763].w[15]" 0.0011669035302475095;
	setAttr ".wl[763].w[19]" 4.1567764001533152e-006;
	setAttr -s 5 ".wl[764].w";
	setAttr ".wl[764].w[11]" 0.0043740586436342658;
	setAttr ".wl[764].w[12]" 0.12356819970299954;
	setAttr ".wl[764].w[13]" 0.87201626086161554;
	setAttr ".wl[764].w[15]" 3.3371222798450617e-006;
	setAttr ".wl[764].w[19]" 3.8143669470898278e-005;
	setAttr -s 5 ".wl[765].w";
	setAttr ".wl[765].w[11]" 0.00044352210045575966;
	setAttr ".wl[765].w[12]" 0.073218281740904681;
	setAttr ".wl[765].w[13]" 0.92429891202528713;
	setAttr ".wl[765].w[15]" 0.0020380808773189291;
	setAttr ".wl[765].w[19]" 1.2032560334773734e-006;
	setAttr -s 5 ".wl[766].w";
	setAttr ".wl[766].w[11]" 0.00122996395532528;
	setAttr ".wl[766].w[12]" 0.065476361541697503;
	setAttr ".wl[766].w[13]" 0.93150032970724006;
	setAttr ".wl[766].w[15]" 0.0017928500892594457;
	setAttr ".wl[766].w[19]" 4.9470647766824652e-007;
	setAttr -s 5 ".wl[767].w";
	setAttr ".wl[767].w[11]" 0.001074639037627679;
	setAttr ".wl[767].w[12]" 0.073135967549280909;
	setAttr ".wl[767].w[13]" 0.92239770764495133;
	setAttr ".wl[767].w[15]" 0.0033912422622858376;
	setAttr ".wl[767].w[19]" 4.4350585426400357e-007;
	setAttr -s 5 ".wl[768].w";
	setAttr ".wl[768].w[11]" 0.0017453315683884968;
	setAttr ".wl[768].w[12]" 0.076712957257997705;
	setAttr ".wl[768].w[13]" 0.92103293725892299;
	setAttr ".wl[768].w[15]" 0.00050836720038205385;
	setAttr ".wl[768].w[19]" 4.067143088298227e-007;
	setAttr -s 5 ".wl[769].w";
	setAttr ".wl[769].w[11]" 0.00076880574521276184;
	setAttr ".wl[769].w[12]" 0.088475559533932199;
	setAttr ".wl[769].w[13]" 0.90977140520027178;
	setAttr ".wl[769].w[15]" 0.0009834608552812484;
	setAttr ".wl[769].w[19]" 7.6866530207553296e-007;
	setAttr -s 5 ".wl[770].w";
	setAttr ".wl[770].w[11]" 0.0010629377467634236;
	setAttr ".wl[770].w[12]" 0.09843457820522665;
	setAttr ".wl[770].w[13]" 0.90033546085517491;
	setAttr ".wl[770].w[15]" 0.00016430176037829369;
	setAttr ".wl[770].w[19]" 2.7214324566704087e-006;
	setAttr -s 5 ".wl[771].w";
	setAttr ".wl[771].w[11]" 0.0012796504959974593;
	setAttr ".wl[771].w[12]" 0.088212201521638986;
	setAttr ".wl[771].w[13]" 0.91037426432457924;
	setAttr ".wl[771].w[15]" 0.00012467161286622286;
	setAttr ".wl[771].w[19]" 9.212044918057476e-006;
	setAttr -s 5 ".wl[772].w";
	setAttr ".wl[772].w[11]" 0.012351045724390749;
	setAttr ".wl[772].w[12]" 0.19538583391577938;
	setAttr ".wl[772].w[13]" 0.79192334185528679;
	setAttr ".wl[772].w[15]" 0.00017480495444033295;
	setAttr ".wl[772].w[19]" 0.00016497355010271266;
	setAttr -s 5 ".wl[773].w";
	setAttr ".wl[773].w[11]" 0.009501155214583612;
	setAttr ".wl[773].w[12]" 0.22122752051550468;
	setAttr ".wl[773].w[13]" 0.76632477324370563;
	setAttr ".wl[773].w[15]" 0.0027822292569443753;
	setAttr ".wl[773].w[19]" 0.0001643217692617327;
	setAttr -s 5 ".wl[774].w";
	setAttr ".wl[774].w[11]" 0.018886217344217939;
	setAttr ".wl[774].w[12]" 0.25420476372053735;
	setAttr ".wl[774].w[13]" 0.7211685920101677;
	setAttr ".wl[774].w[15]" 0.0053538555589699704;
	setAttr ".wl[774].w[19]" 0.00038657136610709131;
	setAttr -s 5 ".wl[775].w";
	setAttr ".wl[775].w[11]" 0.0075461365692329778;
	setAttr ".wl[775].w[12]" 0.26852622407177795;
	setAttr ".wl[775].w[13]" 0.7200163222287761;
	setAttr ".wl[775].w[15]" 0.00340459947673359;
	setAttr ".wl[775].w[19]" 0.0005067176534794271;
	setAttr -s 5 ".wl[776].w";
	setAttr ".wl[776].w[11]" 0.014026746321826289;
	setAttr ".wl[776].w[12]" 0.27279774012183688;
	setAttr ".wl[776].w[13]" 0.70320098217142446;
	setAttr ".wl[776].w[15]" 0.0064349794041188117;
	setAttr ".wl[776].w[19]" 0.0035395519807934761;
	setAttr -s 5 ".wl[777].w";
	setAttr ".wl[777].w[11]" 0.032786275574511407;
	setAttr ".wl[777].w[12]" 0.19871446707062332;
	setAttr ".wl[777].w[13]" 0.72810728362391541;
	setAttr ".wl[777].w[15]" 0.015240517956046572;
	setAttr ".wl[777].w[19]" 0.025151455774903297;
	setAttr -s 5 ".wl[778].w";
	setAttr ".wl[778].w[12]" 0.075361082520652933;
	setAttr ".wl[778].w[13]" 0.23569784342970937;
	setAttr ".wl[778].w[14]" 0.43596132609703414;
	setAttr ".wl[778].w[15]" 0.015772558750294836;
	setAttr ".wl[778].w[19]" 0.23720718920230865;
	setAttr -s 5 ".wl[779].w";
	setAttr ".wl[779].w[12]" 0.013670034095509783;
	setAttr ".wl[779].w[13]" 0.019757315936402807;
	setAttr ".wl[779].w[14]" 0.68407200936734147;
	setAttr ".wl[779].w[15]" 0.0056532780824353783;
	setAttr ".wl[779].w[19]" 0.27684736251831055;
	setAttr -s 5 ".wl[780].w";
	setAttr ".wl[780].w[12]" 0.00037907380177507277;
	setAttr ".wl[780].w[13]" 0.00027300333905960436;
	setAttr ".wl[780].w[14]" 0.97586302728703056;
	setAttr ".wl[780].w[19]" 0.023396904222560973;
	setAttr ".wl[780].w[20]" 8.7991349573712796e-005;
	setAttr -s 5 ".wl[781].w";
	setAttr ".wl[781].w[11]" 1.8241625116692949e-007;
	setAttr ".wl[781].w[12]" 4.44307791470648e-007;
	setAttr ".wl[781].w[14]" 0.99995544337428022;
	setAttr ".wl[781].w[19]" 4.3882056429332464e-005;
	setAttr ".wl[781].w[20]" 4.7845247763689258e-008;
	setAttr -s 5 ".wl[782].w";
	setAttr ".wl[782].w[11]" 1.0280788210151704e-009;
	setAttr ".wl[782].w[12]" 1.2194043790755277e-009;
	setAttr ".wl[782].w[14]" 0.99999992004329719;
	setAttr ".wl[782].w[19]" 7.7624002140724269e-008;
	setAttr ".wl[782].w[20]" 8.5217485845667795e-011;
	setAttr ".wl[783].w[14]"  1;
	setAttr ".wl[784].w[14]"  1;
	setAttr ".wl[785].w[14]"  1;
	setAttr ".wl[786].w[14]"  1;
	setAttr -s 3 ".wl[787].w";
	setAttr ".wl[787].w[12]" 8.1820788164241555e-008;
	setAttr ".wl[787].w[14]" 0.99999883244702981;
	setAttr ".wl[787].w[19]" 1.0857321821060675e-006;
	setAttr -s 4 ".wl[788].w";
	setAttr ".wl[788].w[12]" 2.4316594028959535e-008;
	setAttr ".wl[788].w[14]" 0.99999858860106305;
	setAttr ".wl[788].w[19]" 1.3677805365136124e-006;
	setAttr ".wl[788].w[20]" 1.9301806375437991e-008;
	setAttr ".wl[789].w[14]"  1;
	setAttr -s 5 ".wl[790].w";
	setAttr ".wl[790].w[12]" 0.28675906569313325;
	setAttr ".wl[790].w[13]" 0.40100835956583791;
	setAttr ".wl[790].w[14]" 0.30761162081188975;
	setAttr ".wl[790].w[15]" 9.6374208169436315e-007;
	setAttr ".wl[790].w[19]" 0.0046199901870574364;
	setAttr -s 5 ".wl[791].w";
	setAttr ".wl[791].w[11]" 0.16756673894277949;
	setAttr ".wl[791].w[12]" 0.1090646858695957;
	setAttr ".wl[791].w[14]" 0.72335788081682018;
	setAttr ".wl[791].w[15]" 5.0108557303474299e-009;
	setAttr ".wl[791].w[16]" 1.0689359948962284e-005;
	setAttr -s 5 ".wl[792].w";
	setAttr ".wl[792].w[11]" 0.011674499270214449;
	setAttr ".wl[792].w[12]" 0.00046118502031423654;
	setAttr ".wl[792].w[14]" 0.98739905900060365;
	setAttr ".wl[792].w[15]" 5.8537311815598514e-006;
	setAttr ".wl[792].w[16]" 0.00045940297768608116;
	setAttr ".wl[793].w[14]"  1;
	setAttr -s 5 ".wl[794].w";
	setAttr ".wl[794].w[11]" 0.00012354995118213355;
	setAttr ".wl[794].w[12]" 1.0209869374664945e-006;
	setAttr ".wl[794].w[14]" 0.99986608915997943;
	setAttr ".wl[794].w[15]" 2.9191397743488778e-008;
	setAttr ".wl[794].w[16]" 9.3107105032623974e-006;
	setAttr ".wl[795].w[14]"  1;
	setAttr -s 5 ".wl[796].w[12:16]"  1.2312493627014008e-005 4.6859625814660977e-005 
		0.99929749965667725 0.00059206961412115429 5.1258609759924603e-005;
	setAttr -s 5 ".wl[797].w";
	setAttr ".wl[797].w[11]" 0.0089115004892507399;
	setAttr ".wl[797].w[12]" 0.092530525222564192;
	setAttr ".wl[797].w[13]" 0.89849421045974287;
	setAttr ".wl[797].w[15]" 6.2960389186628163e-005;
	setAttr ".wl[797].w[19]" 8.0343925561487519e-007;
	setAttr -s 4 ".wl[798].w";
	setAttr ".wl[798].w[11]" 0.062009566009515057;
	setAttr ".wl[798].w[12]" 0.36014148773394916;
	setAttr ".wl[798].w[13]" 0.54109728480686503;
	setAttr ".wl[798].w[15]" 0.036751661449670792;
	setAttr -s 5 ".wl[799].w";
	setAttr ".wl[799].w[11]" 0.0084759214983408868;
	setAttr ".wl[799].w[12]" 0.074590080007767776;
	setAttr ".wl[799].w[13]" 0.91689014908900424;
	setAttr ".wl[799].w[15]" 4.3831663788296282e-005;
	setAttr ".wl[799].w[19]" 1.7741098807593655e-008;
	setAttr -s 5 ".wl[800].w";
	setAttr ".wl[800].w[11]" 0.028262480545236817;
	setAttr ".wl[800].w[12]" 0.12526886866673834;
	setAttr ".wl[800].w[13]" 0.84639355458495968;
	setAttr ".wl[800].w[15]" 7.4808252975344658e-005;
	setAttr ".wl[800].w[19]" 2.8795008988759274e-007;
	setAttr -s 5 ".wl[801].w";
	setAttr ".wl[801].w[11]" 0.054223725071931184;
	setAttr ".wl[801].w[12]" 0.21070312955360557;
	setAttr ".wl[801].w[13]" 0.73495813611152128;
	setAttr ".wl[801].w[15]" 0.00011472426558611915;
	setAttr ".wl[801].w[19]" 2.8499735582902663e-007;
	setAttr -s 5 ".wl[802].w";
	setAttr ".wl[802].w[11]" 0.20996714782729109;
	setAttr ".wl[802].w[12]" 0.47224723751497399;
	setAttr ".wl[802].w[13]" 0.31351237886431005;
	setAttr ".wl[802].w[15]" 0.0042732055298984051;
	setAttr ".wl[802].w[19]" 3.0263526489726948e-008;
	setAttr -s 4 ".wl[803].w";
	setAttr ".wl[803].w[11]" 0.047462093557727951;
	setAttr ".wl[803].w[12]" 0.17704047765861342;
	setAttr ".wl[803].w[13]" 0.77537730153746742;
	setAttr ".wl[803].w[15]" 0.00012012724619125947;
	setAttr -s 4 ".wl[804].w";
	setAttr ".wl[804].w[11]" 0.056297465667636354;
	setAttr ".wl[804].w[12]" 0.20868328107973355;
	setAttr ".wl[804].w[13]" 0.73474507165383263;
	setAttr ".wl[804].w[15]" 0.00027418159879744053;
	setAttr -s 4 ".wl[805].w";
	setAttr ".wl[805].w[11]" 0.21453446301611118;
	setAttr ".wl[805].w[12]" 0.50215442406947042;
	setAttr ".wl[805].w[13]" 0.28304462412739878;
	setAttr ".wl[805].w[15]" 0.00026648878701962531;
	setAttr -s 5 ".wl[806].w";
	setAttr ".wl[806].w[11]" 0.052054196374490838;
	setAttr ".wl[806].w[12]" 0.20238028150343823;
	setAttr ".wl[806].w[13]" 0.74522743592558371;
	setAttr ".wl[806].w[15]" 0.00033748109126463532;
	setAttr ".wl[806].w[19]" 6.0510522262492474e-007;
	setAttr -s 5 ".wl[807].w";
	setAttr ".wl[807].w[11]" 0.074602997306104327;
	setAttr ".wl[807].w[12]" 0.18972273627367581;
	setAttr ".wl[807].w[13]" 0.73512556505238302;
	setAttr ".wl[807].w[15]" 0.00053975451737642288;
	setAttr ".wl[807].w[19]" 8.9468504605411771e-006;
	setAttr -s 4 ".wl[808].w";
	setAttr ".wl[808].w[11]" 0.29648687555133318;
	setAttr ".wl[808].w[12]" 0.45862687654153511;
	setAttr ".wl[808].w[13]" 0.24484568737200565;
	setAttr ".wl[808].w[15]" 4.0560535126132891e-005;
	setAttr -s 5 ".wl[809].w";
	setAttr ".wl[809].w[11]" 0.064917544220382872;
	setAttr ".wl[809].w[12]" 0.15837063742362067;
	setAttr ".wl[809].w[13]" 0.77397623034822816;
	setAttr ".wl[809].w[15]" 0.002621449064463377;
	setAttr ".wl[809].w[19]" 0.00011413894330493249;
	setAttr -s 5 ".wl[810].w";
	setAttr ".wl[810].w[11]" 0.034690901898290084;
	setAttr ".wl[810].w[12]" 0.26352390756526095;
	setAttr ".wl[810].w[13]" 0.69312371397495143;
	setAttr ".wl[810].w[15]" 0.0076788085435289741;
	setAttr ".wl[810].w[19]" 0.00098266801796853542;
	setAttr -s 5 ".wl[811].w";
	setAttr ".wl[811].w[11]" 0.147541388386246;
	setAttr ".wl[811].w[12]" 0.47427499984401605;
	setAttr ".wl[811].w[13]" 0.37246580802872753;
	setAttr ".wl[811].w[15]" 0.0045568607747554779;
	setAttr ".wl[811].w[19]" 0.0011609429662548759;
	setAttr -s 5 ".wl[812].w";
	setAttr ".wl[812].w[11]" 0.022444692622977064;
	setAttr ".wl[812].w[12]" 0.24777969746926276;
	setAttr ".wl[812].w[13]" 0.71504799889982562;
	setAttr ".wl[812].w[15]" 0.0097426557045636342;
	setAttr ".wl[812].w[19]" 0.0049849553033709526;
	setAttr -s 5 ".wl[813].w";
	setAttr ".wl[813].w[11]" 0.026300242850960096;
	setAttr ".wl[813].w[12]" 0.26970410981404774;
	setAttr ".wl[813].w[13]" 0.67761937121750992;
	setAttr ".wl[813].w[15]" 0.013156074871041777;
	setAttr ".wl[813].w[19]" 0.013220201246440411;
	setAttr -s 5 ".wl[814].w";
	setAttr ".wl[814].w[11]" 0.073839424435047887;
	setAttr ".wl[814].w[12]" 0.46218450820247292;
	setAttr ".wl[814].w[13]" 0.44522278331998194;
	setAttr ".wl[814].w[15]" 0.015198055108805298;
	setAttr ".wl[814].w[19]" 0.0035552289336919785;
	setAttr -s 5 ".wl[815].w";
	setAttr ".wl[815].w[11]" 0.019501851883654685;
	setAttr ".wl[815].w[12]" 0.24098199747730614;
	setAttr ".wl[815].w[13]" 0.72649965498894731;
	setAttr ".wl[815].w[15]" 0.010859882953965774;
	setAttr ".wl[815].w[19]" 0.0021566126961261034;
	setAttr -s 5 ".wl[816].w";
	setAttr ".wl[816].w[11]" 0.017310047327245739;
	setAttr ".wl[816].w[12]" 0.23884147242716036;
	setAttr ".wl[816].w[13]" 0.73016456829764653;
	setAttr ".wl[816].w[15]" 0.010691798128601517;
	setAttr ".wl[816].w[19]" 0.0029921138193458319;
	setAttr -s 5 ".wl[817].w";
	setAttr ".wl[817].w[11]" 0.070631762433751244;
	setAttr ".wl[817].w[12]" 0.42334463634440311;
	setAttr ".wl[817].w[13]" 0.48074801466411143;
	setAttr ".wl[817].w[15]" 0.015165559400963983;
	setAttr ".wl[817].w[19]" 0.010110027156770229;
	setAttr -s 5 ".wl[818].w";
	setAttr ".wl[818].w[11]" 0.028571738375806097;
	setAttr ".wl[818].w[12]" 0.21459065815956407;
	setAttr ".wl[818].w[13]" 0.7380160769075832;
	setAttr ".wl[818].w[15]" 0.012959940131593217;
	setAttr ".wl[818].w[19]" 0.0058615864254534245;
	setAttr -s 5 ".wl[819].w";
	setAttr ".wl[819].w[11]" 0.035324926402829332;
	setAttr ".wl[819].w[12]" 0.34879132236967242;
	setAttr ".wl[819].w[13]" 0.60558509948373129;
	setAttr ".wl[819].w[15]" 0.0095107849180634044;
	setAttr ".wl[819].w[19]" 0.0007878668257035315;
	setAttr -s 5 ".wl[820].w";
	setAttr ".wl[820].w[11]" 0.044020320516240399;
	setAttr ".wl[820].w[12]" 0.45553184712314526;
	setAttr ".wl[820].w[13]" 0.49108020300674227;
	setAttr ".wl[820].w[15]" 0.0080947275776254522;
	setAttr ".wl[820].w[19]" 0.0012729017762467265;
	setAttr -s 5 ".wl[821].w";
	setAttr ".wl[821].w[11]" 0.047376586014180502;
	setAttr ".wl[821].w[12]" 0.35292401894669001;
	setAttr ".wl[821].w[13]" 0.59228306246831008;
	setAttr ".wl[821].w[15]" 0.0072975698858499527;
	setAttr ".wl[821].w[19]" 0.00011876268496946571;
	setAttr -s 5 ".wl[822].w";
	setAttr ".wl[822].w[11]" 0.066124252786401286;
	setAttr ".wl[822].w[12]" 0.35040240757986468;
	setAttr ".wl[822].w[13]" 0.58186345841038922;
	setAttr ".wl[822].w[15]" 0.0014906706055626273;
	setAttr ".wl[822].w[19]" 0.00011921061778219231;
	setAttr -s 5 ".wl[823].w";
	setAttr ".wl[823].w[11]" 0.066204267945256731;
	setAttr ".wl[823].w[12]" 0.44872028333146741;
	setAttr ".wl[823].w[13]" 0.48195947486416929;
	setAttr ".wl[823].w[15]" 0.003047208534553647;
	setAttr ".wl[823].w[19]" 6.8765324552983009e-005;
	setAttr -s 5 ".wl[824].w";
	setAttr ".wl[824].w[11]" 0.058216506210763706;
	setAttr ".wl[824].w[12]" 0.52583656872405882;
	setAttr ".wl[824].w[13]" 0.41580473864280815;
	setAttr ".wl[824].w[15]" 8.8704771769698709e-005;
	setAttr ".wl[824].w[19]" 5.3481650599618198e-005;
	setAttr -s 3 ".wl[825].w[11:13]"  0.073335005779470386 0.53053393138994887 
		0.39613106283058069;
	setAttr -s 5 ".wl[826].w";
	setAttr ".wl[826].w[11]" 0.10707557977471037;
	setAttr ".wl[826].w[12]" 0.47664563525485359;
	setAttr ".wl[826].w[13]" 0.41587551255114724;
	setAttr ".wl[826].w[15]" 0.00037177937338128686;
	setAttr ".wl[826].w[19]" 3.1493045907386486e-005;
	setAttr -s 5 ".wl[827].w";
	setAttr ".wl[827].w[11]" 0.068652621810914;
	setAttr ".wl[827].w[12]" 0.52440508614038361;
	setAttr ".wl[827].w[13]" 0.40693124204016801;
	setAttr ".wl[827].w[15]" 2.5937094960681861e-006;
	setAttr ".wl[827].w[19]" 8.4562990382343062e-006;
	setAttr -s 4 ".wl[828].w";
	setAttr ".wl[828].w[11]" 0.062407537742771128;
	setAttr ".wl[828].w[12]" 0.53151116880757299;
	setAttr ".wl[828].w[13]" 0.40607149495209771;
	setAttr ".wl[828].w[15]" 9.7984975582221523e-006;
	setAttr -s 5 ".wl[829].w";
	setAttr ".wl[829].w[11]" 0.056281249676499015;
	setAttr ".wl[829].w[12]" 0.81319398484952343;
	setAttr ".wl[829].w[13]" 0.13051035864743454;
	setAttr ".wl[829].w[15]" 7.816214747435879e-006;
	setAttr ".wl[829].w[19]" 6.5906117955633546e-006;
	setAttr -s 5 ".wl[830].w";
	setAttr ".wl[830].w[11]" 0.05613538211871124;
	setAttr ".wl[830].w[12]" 0.61125999921188379;
	setAttr ".wl[830].w[13]" 0.33256907914879963;
	setAttr ".wl[830].w[15]" 3.5187229514122009e-005;
	setAttr ".wl[830].w[19]" 3.5229109119666011e-007;
	setAttr -s 4 ".wl[831].w";
	setAttr ".wl[831].w[11]" 0.063088247365607003;
	setAttr ".wl[831].w[12]" 0.71017366095656942;
	setAttr ".wl[831].w[13]" 0.22673012947371501;
	setAttr ".wl[831].w[15]" 7.9622041084803641e-006;
	setAttr -s 5 ".wl[832].w";
	setAttr ".wl[832].w[11]" 0.059467180844300652;
	setAttr ".wl[832].w[12]" 0.88536262921432762;
	setAttr ".wl[832].w[13]" 0.055149646984274041;
	setAttr ".wl[832].w[15]" 2.0444700567168184e-005;
	setAttr ".wl[832].w[19]" 9.8256530422724849e-008;
	setAttr -s 3 ".wl[833].w[11:13]"  0.03547413881871337 0.78331626065321669 
		0.18120960052806992;
	setAttr -s 3 ".wl[834].w[11:13]"  0.017723265630119063 0.87891507134774982 
		0.10336166302213108;
	setAttr -s 4 ".wl[835].w";
	setAttr ".wl[835].w[11]" 0.050299603830213278;
	setAttr ".wl[835].w[12]" 0.93429528617559665;
	setAttr ".wl[835].w[13]" 0.015403981365607493;
	setAttr ".wl[835].w[15]" 1.128628582591773e-006;
	setAttr -s 3 ".wl[836].w[11:13]"  0.022333430723433512 0.86882811708542118 
		0.10883845219114525;
	setAttr -s 4 ".wl[837].w";
	setAttr ".wl[837].w[11]" 0.033166668696923619;
	setAttr ".wl[837].w[12]" 0.85262095704196661;
	setAttr ".wl[837].w[13]" 0.11407935744500214;
	setAttr ".wl[837].w[15]" 0.00013301681610755622;
	setAttr -s 4 ".wl[838].w";
	setAttr ".wl[838].w[11]" 0.067994381037775942;
	setAttr ".wl[838].w[12]" 0.85458112063245906;
	setAttr ".wl[838].w[13]" 0.066849563325649924;
	setAttr ".wl[838].w[15]" 0.010574935004115105;
	setAttr -s 3 ".wl[839].w[11:13]"  0.025999376221645873 0.80483884259845473 
		0.16916178117989947;
	setAttr -s 3 ".wl[840].w[11:13]"  0.026437647709770307 0.75793599550267277 
		0.21562635678755704;
	setAttr -s 4 ".wl[841].w";
	setAttr ".wl[841].w[11]" 0.062185667517841388;
	setAttr ".wl[841].w[12]" 0.78955000117064023;
	setAttr ".wl[841].w[13]" 0.12604342916660949;
	setAttr ".wl[841].w[15]" 0.022220902144908905;
	setAttr -s 3 ".wl[842].w[11:13]"  0.078326042339921437 0.30166774540964725 
		0.62000621225043129;
	setAttr -s 4 ".wl[843].w";
	setAttr ".wl[843].w[11]" 0.10991720747019239;
	setAttr ".wl[843].w[12]" 0.17912577396891796;
	setAttr ".wl[843].w[13]" 0.70837338864353627;
	setAttr ".wl[843].w[15]" 0.0025836299173533916;
	setAttr -s 4 ".wl[844].w";
	setAttr ".wl[844].w[11]" 0.11362074946522403;
	setAttr ".wl[844].w[12]" 0.45635518568889571;
	setAttr ".wl[844].w[13]" 0.36321401572926881;
	setAttr ".wl[844].w[15]" 0.066810049116611481;
	setAttr -s 5 ".wl[845].w";
	setAttr ".wl[845].w[11]" 0.061301618056705122;
	setAttr ".wl[845].w[12]" 0.14620030604981474;
	setAttr ".wl[845].w[13]" 0.7924170513947224;
	setAttr ".wl[845].w[15]" 8.1023907114285976e-005;
	setAttr ".wl[845].w[19]" 5.9164355907135046e-010;
	setAttr -s 4 ".wl[846].w";
	setAttr ".wl[846].w[11]" 0.052548301989479608;
	setAttr ".wl[846].w[12]" 0.15308564157135757;
	setAttr ".wl[846].w[13]" 0.79436605587491382;
	setAttr ".wl[846].w[19]" 5.6424902426080492e-010;
	setAttr -s 4 ".wl[847].w";
	setAttr ".wl[847].w[11]" 0.086178867956902758;
	setAttr ".wl[847].w[12]" 0.3988543983420037;
	setAttr ".wl[847].w[13]" 0.43339323247180733;
	setAttr ".wl[847].w[15]" 0.081573501229286194;
	setAttr -s 5 ".wl[848].w";
	setAttr ".wl[848].w[11]" 0.017717754973104412;
	setAttr ".wl[848].w[12]" 0.098803443022415477;
	setAttr ".wl[848].w[13]" 0.8834618229517246;
	setAttr ".wl[848].w[15]" 1.6978712665149942e-005;
	setAttr ".wl[848].w[19]" 3.4009039192733335e-010;
	setAttr -s 5 ".wl[849].w";
	setAttr ".wl[849].w[11]" 0.0095923958991657992;
	setAttr ".wl[849].w[12]" 0.076976702091858029;
	setAttr ".wl[849].w[13]" 0.91339051585454556;
	setAttr ".wl[849].w[15]" 4.0384878957411274e-005;
	setAttr ".wl[849].w[19]" 1.2754732050351244e-009;
	setAttr -s 4 ".wl[850].w";
	setAttr ".wl[850].w[11]" 0.028568098221100055;
	setAttr ".wl[850].w[12]" 0.21049835191506036;
	setAttr ".wl[850].w[13]" 0.69827468113377134;
	setAttr ".wl[850].w[15]" 0.062658868730068207;
	setAttr -s 5 ".wl[851].w";
	setAttr ".wl[851].w[11]" 0.20880288116327178;
	setAttr ".wl[851].w[12]" 0.25831684889376977;
	setAttr ".wl[851].w[14]" 0.53243815914358128;
	setAttr ".wl[851].w[15]" 0.00027525244513526559;
	setAttr ".wl[851].w[16]" 0.0001668583542419269;
	setAttr -s 5 ".wl[852].w";
	setAttr ".wl[852].w[11]" 0.0028007707036486933;
	setAttr ".wl[852].w[12]" 0.00014677083309009008;
	setAttr ".wl[852].w[14]" 0.99704595370982763;
	setAttr ".wl[852].w[15]" 1.2818366030842299e-006;
	setAttr ".wl[852].w[16]" 5.2229168304381353e-006;
	setAttr -s 5 ".wl[853].w";
	setAttr ".wl[853].w[11]" 0.11809894691823371;
	setAttr ".wl[853].w[12]" 0.14428649678350086;
	setAttr ".wl[853].w[13]" 0.064622600100148322;
	setAttr ".wl[853].w[14]" 0.67127845525787622;
	setAttr ".wl[853].w[19]" 0.0017135009402409196;
	setAttr -s 5 ".wl[854].w";
	setAttr ".wl[854].w[11]" 0.002176371955837367;
	setAttr ".wl[854].w[12]" 0.0002234292927227057;
	setAttr ".wl[854].w[14]" 0.99759400980782675;
	setAttr ".wl[854].w[15]" 2.6847546599496744e-006;
	setAttr ".wl[854].w[16]" 3.504188953229459e-006;
	setAttr -s 4 ".wl[855].w[11:14]"  0.47358371358454782 0.28724254861947573 
		0.2189097084807799 0.020264029315196525;
	setAttr -s 5 ".wl[856].w";
	setAttr ".wl[856].w[11]" 0.02570741875807761;
	setAttr ".wl[856].w[12]" 0.020414854030726431;
	setAttr ".wl[856].w[14]" 0.95184041635634498;
	setAttr ".wl[856].w[15]" 0.00067714310562483511;
	setAttr ".wl[856].w[16]" 0.0013601677492260933;
	setAttr -s 4 ".wl[857].w";
	setAttr ".wl[857].w[11]" 0.30549168298085977;
	setAttr ".wl[857].w[12]" 0.41304595317359644;
	setAttr ".wl[857].w[13]" 0.28146003655205803;
	setAttr ".wl[857].w[19]" 2.3272934858397033e-006;
	setAttr -s 5 ".wl[858].w";
	setAttr ".wl[858].w[11]" 0.026750432533622245;
	setAttr ".wl[858].w[12]" 0.017890988803532459;
	setAttr ".wl[858].w[14]" 0.95420293728142402;
	setAttr ".wl[858].w[15]" 0.00030296771766356509;
	setAttr ".wl[858].w[16]" 0.00085267366375774145;
	setAttr -s 5 ".wl[859].w";
	setAttr ".wl[859].w[11]" 0.43041742770259606;
	setAttr ".wl[859].w[12]" 0.28145262070358196;
	setAttr ".wl[859].w[13]" 0.28703388509311767;
	setAttr ".wl[859].w[15]" 0.0010960366344079375;
	setAttr ".wl[859].w[19]" 2.9866296447013537e-008;
	setAttr -s 4 ".wl[860].w";
	setAttr ".wl[860].w[11]" 0.051366975492090176;
	setAttr ".wl[860].w[12]" 0.17660996134384419;
	setAttr ".wl[860].w[14]" 0.77182618918244361;
	setAttr ".wl[860].w[15]" 0.00019687398162204772;
	setAttr -s 5 ".wl[861].w";
	setAttr ".wl[861].w[11]" 0.42558888811338585;
	setAttr ".wl[861].w[12]" 0.27003403286798755;
	setAttr ".wl[861].w[13]" 0.29303534262483877;
	setAttr ".wl[861].w[14]" 0.011341565817587529;
	setAttr ".wl[861].w[19]" 1.7057620027571829e-007;
	setAttr -s 5 ".wl[862].w";
	setAttr ".wl[862].w[11]" 0.0065070894321147725;
	setAttr ".wl[862].w[12]" 0.02329606604097428;
	setAttr ".wl[862].w[14]" 0.96918431926991722;
	setAttr ".wl[862].w[15]" 0.0010123028854680147;
	setAttr ".wl[862].w[19]" 2.2237152563775453e-007;
	setAttr -s 4 ".wl[863].w[11:14]"  0.16821321654313637 0.14985154834652878 
		0.15511641589094541 0.52681881921938944;
	setAttr -s 4 ".wl[864].w";
	setAttr ".wl[864].w[11]" 0.0020440514998033613;
	setAttr ".wl[864].w[12]" 0.0056856583725226392;
	setAttr ".wl[864].w[14]" 0.99151531204444177;
	setAttr ".wl[864].w[15]" 0.00075497808323221182;
	setAttr -s 5 ".wl[865].w";
	setAttr ".wl[865].w[11]" 0.027721877330158368;
	setAttr ".wl[865].w[12]" 0.047666815458844783;
	setAttr ".wl[865].w[13]" 0.11253533751735072;
	setAttr ".wl[865].w[14]" 0.81174449723369846;
	setAttr ".wl[865].w[19]" 0.00033147245994769037;
	setAttr -s 5 ".wl[866].w";
	setAttr ".wl[866].w[11]" 0.0011223132686866925;
	setAttr ".wl[866].w[12]" 0.0055414993530819787;
	setAttr ".wl[866].w[14]" 0.9514470915958938;
	setAttr ".wl[866].w[15]" 0.00082471790820163606;
	setAttr ".wl[866].w[19]" 0.041064377874135971;
	setAttr -s 5 ".wl[867].w";
	setAttr ".wl[867].w[11]" 0.039451230870757241;
	setAttr ".wl[867].w[12]" 0.10241622720299298;
	setAttr ".wl[867].w[13]" 0.14481664077344825;
	setAttr ".wl[867].w[14]" 0.70325241404772998;
	setAttr ".wl[867].w[19]" 0.010063487105071545;
	setAttr -s 5 ".wl[868].w";
	setAttr ".wl[868].w[11]" 0.00056695480045514406;
	setAttr ".wl[868].w[12]" 0.0026595205832821095;
	setAttr ".wl[868].w[14]" 0.96042520785483998;
	setAttr ".wl[868].w[15]" 0.00041673699276510256;
	setAttr ".wl[868].w[19]" 0.035931579768657684;
	setAttr -s 5 ".wl[869].w";
	setAttr ".wl[869].w[11]" 0.044832938594856604;
	setAttr ".wl[869].w[12]" 0.055547542931191012;
	setAttr ".wl[869].w[14]" 0.65716387698068901;
	setAttr ".wl[869].w[15]" 0.066424394711914234;
	setAttr ".wl[869].w[19]" 0.17603124678134918;
	setAttr -s 5 ".wl[870].w";
	setAttr ".wl[870].w[11]" 0.00019850342863506477;
	setAttr ".wl[870].w[12]" 0.00028720944122770858;
	setAttr ".wl[870].w[14]" 0.96918883746333351;
	setAttr ".wl[870].w[19]" 0.02885426954725203;
	setAttr ".wl[870].w[20]" 0.0014711801195517182;
	setAttr -s 5 ".wl[871].w";
	setAttr ".wl[871].w[11]" 9.2992615062205546e-005;
	setAttr ".wl[871].w[12]" 9.8409755093976365e-006;
	setAttr ".wl[871].w[14]" 0.99989646065203774;
	setAttr ".wl[871].w[15]" 8.7856960817589425e-008;
	setAttr ".wl[871].w[16]" 6.1790042980363089e-007;
	setAttr ".wl[872].w[14]"  1;
	setAttr -s 5 ".wl[873].w";
	setAttr ".wl[873].w[11]" 0.0021704626221517101;
	setAttr ".wl[873].w[12]" 0.0002933843991685746;
	setAttr ".wl[873].w[14]" 0.99735902387321285;
	setAttr ".wl[873].w[15]" 6.8309373804425829e-006;
	setAttr ".wl[873].w[16]" 0.00017029816808644682;
	setAttr ".wl[874].w[14]"  1;
	setAttr -s 5 ".wl[875].w";
	setAttr ".wl[875].w[11]" 0.0078768608920540394;
	setAttr ".wl[875].w[12]" 0.0015343869494755735;
	setAttr ".wl[875].w[14]" 0.98956263065338135;
	setAttr ".wl[875].w[15]" 7.5776762298951177e-005;
	setAttr ".wl[875].w[16]" 0.00095034474279008898;
	setAttr -s 5 ".wl[876].w";
	setAttr ".wl[876].w[11]" 0.0003425601860121684;
	setAttr ".wl[876].w[12]" 3.2205085661744219e-005;
	setAttr ".wl[876].w[14]" 0.99954705079266604;
	setAttr ".wl[876].w[15]" 3.0992884013098607e-007;
	setAttr ".wl[876].w[16]" 7.7874006819911301e-005;
	setAttr -s 4 ".wl[877].w";
	setAttr ".wl[877].w[11]" 0.00017330685718416972;
	setAttr ".wl[877].w[12]" 0.00036779174802253038;
	setAttr ".wl[877].w[14]" 0.99944837033070932;
	setAttr ".wl[877].w[15]" 1.0531064083984441e-005;
	setAttr -s 5 ".wl[878].w";
	setAttr ".wl[878].w[11]" 5.2607059235502841e-005;
	setAttr ".wl[878].w[12]" 0.00013239616316419254;
	setAttr ".wl[878].w[14]" 0.99955672025680542;
	setAttr ".wl[878].w[15]" 3.0416120831092034e-005;
	setAttr ".wl[878].w[16]" 0.00022786039996379267;
	setAttr -s 5 ".wl[879].w";
	setAttr ".wl[879].w[11]" 0.00074363505210409749;
	setAttr ".wl[879].w[12]" 0.0042464072232115445;
	setAttr ".wl[879].w[14]" 0.99478380881371686;
	setAttr ".wl[879].w[15]" 0.0002261488883193985;
	setAttr ".wl[879].w[19]" 2.2648065714503396e-011;
	setAttr -s 5 ".wl[880].w";
	setAttr ".wl[880].w[11]" 9.1711106595147615e-005;
	setAttr ".wl[880].w[12]" 8.6487898003535479e-005;
	setAttr ".wl[880].w[14]" 0.99980756845004048;
	setAttr ".wl[880].w[15]" 1.4232544783026232e-005;
	setAttr ".wl[880].w[19]" 5.7781356739214362e-013;
	setAttr -s 5 ".wl[881].w";
	setAttr ".wl[881].w[11]" 0.00020420712326093768;
	setAttr ".wl[881].w[12]" 6.0342221092618794e-005;
	setAttr ".wl[881].w[14]" 0.99971164051264072;
	setAttr ".wl[881].w[15]" 2.3662245666835e-005;
	setAttr ".wl[881].w[19]" 1.4789733882025757e-007;
	setAttr -s 5 ".wl[882].w";
	setAttr ".wl[882].w[11]" 2.5100331797314579e-005;
	setAttr ".wl[882].w[12]" 1.6389064145039251e-005;
	setAttr ".wl[882].w[14]" 0.99995025010449423;
	setAttr ".wl[882].w[15]" 8.2578264578046861e-006;
	setAttr ".wl[882].w[19]" 2.6731055147166671e-009;
	setAttr -s 4 ".wl[883].w";
	setAttr ".wl[883].w[11]" 0.00032477813393861949;
	setAttr ".wl[883].w[12]" 0.0011693317479908134;
	setAttr ".wl[883].w[14]" 0.99831792401657515;
	setAttr ".wl[883].w[15]" 0.00018796610149548985;
	setAttr -s 5 ".wl[884].w";
	setAttr ".wl[884].w[11]" 0.00013844661480909743;
	setAttr ".wl[884].w[12]" 6.3238553054662891e-005;
	setAttr ".wl[884].w[14]" 0.99971059142216845;
	setAttr ".wl[884].w[15]" 8.0388480717148491e-005;
	setAttr ".wl[884].w[19]" 7.3349292506463826e-006;
	setAttr -s 5 ".wl[885].w";
	setAttr ".wl[885].w[11]" 6.0897993994298976e-005;
	setAttr ".wl[885].w[12]" 6.8543709919903392e-005;
	setAttr ".wl[885].w[14]" 0.9928122258123403;
	setAttr ".wl[885].w[19]" 0.0056912571149835131;
	setAttr ".wl[885].w[20]" 0.0013670753687620163;
	setAttr -s 4 ".wl[886].w";
	setAttr ".wl[886].w[11]" 4.387246550895326e-005;
	setAttr ".wl[886].w[12]" 6.8776934209940248e-005;
	setAttr ".wl[886].w[14]" 0.99983819639170457;
	setAttr ".wl[886].w[15]" 4.9154208576568205e-005;
	setAttr -s 5 ".wl[887].w";
	setAttr ".wl[887].w[11]" 4.9307733745436589e-005;
	setAttr ".wl[887].w[12]" 5.8252862498101196e-005;
	setAttr ".wl[887].w[14]" 0.99365438038235099;
	setAttr ".wl[887].w[19]" 0.0054239062563177197;
	setAttr ".wl[887].w[20]" 0.00081415276508778334;
	setAttr -s 4 ".wl[888].w";
	setAttr ".wl[888].w[11]" 2.0993531512149903e-006;
	setAttr ".wl[888].w[12]" 1.3563072970455191e-006;
	setAttr ".wl[888].w[14]" 0.99976886335355208;
	setAttr ".wl[888].w[19]" 0.00022768098599967336;
	setAttr -s 5 ".wl[889].w";
	setAttr ".wl[889].w[11]" 0.00025395040567402683;
	setAttr ".wl[889].w[12]" 0.00021628898375979181;
	setAttr ".wl[889].w[14]" 0.9695695774809624;
	setAttr ".wl[889].w[19]" 0.025957210157955865;
	setAttr ".wl[889].w[20]" 0.0040029729716479778;
	setAttr -s 5 ".wl[890].w";
	setAttr ".wl[890].w[11]" 1.5263381806809691e-006;
	setAttr ".wl[890].w[12]" 6.5528310350062221e-007;
	setAttr ".wl[890].w[14]" 0.99981205590466893;
	setAttr ".wl[890].w[19]" 0.00018238380081948748;
	setAttr ".wl[890].w[20]" 3.3786732274165843e-006;
	setAttr -s 5 ".wl[891].w";
	setAttr ".wl[891].w[12]" 0.0012897322024964784;
	setAttr ".wl[891].w[14]" 0.9872108571272904;
	setAttr ".wl[891].w[15]" 0.0064136327317282941;
	setAttr ".wl[891].w[16]" 0.0046881740960549164;
	setAttr ".wl[891].w[17]" 0.00039760384242981672;
	setAttr -s 5 ".wl[892].w";
	setAttr ".wl[892].w[11]" 0.0020818013133994677;
	setAttr ".wl[892].w[12]" 4.6567844535712457e-005;
	setAttr ".wl[892].w[14]" 0.99752905689029581;
	setAttr ".wl[892].w[15]" 1.6617534129181877e-005;
	setAttr ".wl[892].w[16]" 0.00032595641763986645;
	setAttr -s 5 ".wl[893].w";
	setAttr ".wl[893].w[11]" 0.012800749029382786;
	setAttr ".wl[893].w[12]" 0.0020496388871034687;
	setAttr ".wl[893].w[14]" 0.98438989855413994;
	setAttr ".wl[893].w[15]" 0.00027072266675531864;
	setAttr ".wl[893].w[16]" 0.0004889908626183998;
	setAttr -s 5 ".wl[894].w";
	setAttr ".wl[894].w[11]" 0.048920191735331665;
	setAttr ".wl[894].w[12]" 0.0093497090297904612;
	setAttr ".wl[894].w[14]" 0.93261392407367927;
	setAttr ".wl[894].w[15]" 0.0032707760110497475;
	setAttr ".wl[894].w[16]" 0.0058453991501487782;
	setAttr -s 5 ".wl[895].w";
	setAttr ".wl[895].w[11]" 0.03471719168049333;
	setAttr ".wl[895].w[12]" 0.0094888265156920851;
	setAttr ".wl[895].w[14]" 0.94987541437149048;
	setAttr ".wl[895].w[15]" 0.0040042586977340347;
	setAttr ".wl[895].w[16]" 0.00191430873459007;
	setAttr -s 5 ".wl[896].w";
	setAttr ".wl[896].w[11]" 0.013799810576805257;
	setAttr ".wl[896].w[12]" 0.0013561018886460263;
	setAttr ".wl[896].w[14]" 0.98207122087478638;
	setAttr ".wl[896].w[15]" 0.0012122610907520297;
	setAttr ".wl[896].w[16]" 0.0015606055690103112;
	setAttr -s 5 ".wl[897].w";
	setAttr ".wl[897].w[11]" 5.5030130526672926e-005;
	setAttr ".wl[897].w[12]" 2.5263582180060391e-005;
	setAttr ".wl[897].w[14]" 0.99972355365753174;
	setAttr ".wl[897].w[15]" 4.3707893745277839e-005;
	setAttr ".wl[897].w[16]" 0.00015244473601625058;
	setAttr -s 5 ".wl[898].w[11:15]"  1.579252641452677e-006 1.1048923971410977e-007 
		3.554712453042953e-009 0.99999773502349854 5.7167990784501407e-007;
	setAttr -s 5 ".wl[899].w";
	setAttr ".wl[899].w[11]" 5.4191231713862053e-006;
	setAttr ".wl[899].w[12]" 2.7604771681909232e-006;
	setAttr ".wl[899].w[14]" 0.99998683850464787;
	setAttr ".wl[899].w[15]" 4.9182342274611285e-006;
	setAttr ".wl[899].w[19]" 6.3660785087904515e-008;
	setAttr -s 5 ".wl[900].w[11:15]"  9.5518492878608188e-007 2.5243231365509203e-008 
		1.1219902079438359e-009 0.99999791383743286 1.104612416779137e-006;
	setAttr -s 5 ".wl[901].w";
	setAttr ".wl[901].w[11]" 1.0530183946124145e-005;
	setAttr ".wl[901].w[12]" 1.4630602337997461e-006;
	setAttr ".wl[901].w[14]" 0.9999799010441176;
	setAttr ".wl[901].w[15]" 8.1057074479411855e-006;
	setAttr ".wl[901].w[19]" 4.2545515721581495e-012;
	setAttr -s 5 ".wl[902].w[11:15]"  8.1111863956402818e-006 1.5836337007324936e-007 
		5.8068467753571081e-008 0.99997216463088989 1.950775087664032e-005;
	setAttr -s 5 ".wl[903].w";
	setAttr ".wl[903].w[11]" 0.00066574548770249637;
	setAttr ".wl[903].w[12]" 0.00035478485842127864;
	setAttr ".wl[903].w[14]" 0.99728640561549964;
	setAttr ".wl[903].w[15]" 0.0012368305876993486;
	setAttr ".wl[903].w[19]" 0.00045623345067724586;
	setAttr -s 4 ".wl[904].w[11:14]"  0.0010763938177702165 3.5365374027432816e-005 
		4.2754726646141747e-005 0.99884548608155621;
	setAttr -s 5 ".wl[905].w";
	setAttr ".wl[905].w[11]" 0.0016042590442306311;
	setAttr ".wl[905].w[12]" 0.0010715485607226821;
	setAttr ".wl[905].w[14]" 0.9903660253285067;
	setAttr ".wl[905].w[15]" 0.0014863815137402809;
	setAttr ".wl[905].w[19]" 0.0054717855527997017;
	setAttr -s 4 ".wl[906].w[11:14]"  0.0015227433973431564 0.00043611430419596939 
		2.5570119618497188e-006 0.99803858528649902;
	setAttr -s 5 ".wl[907].w";
	setAttr ".wl[907].w[11]" 7.5876427403419544e-006;
	setAttr ".wl[907].w[12]" 4.4723866331943973e-006;
	setAttr ".wl[907].w[14]" 0.99948032209591053;
	setAttr ".wl[907].w[19]" 0.00040620883711846555;
	setAttr ".wl[907].w[20]" 0.00010140903759747744;
	setAttr ".wl[908].w[14]"  1;
	setAttr ".wl[909].w[14]"  1;
	setAttr ".wl[910].w[14]"  1;
	setAttr -s 5 ".wl[911].w[12:16]"  0.00014740202666771769 0.00019658948954700707 
		0.99884867462943394 0.00022663967683911324 0.00058069417751231624;
	setAttr -s 5 ".wl[912].w[12:16]"  0.00018797367236991449 0.0013718364375828031 
		0.99242603778839111 0.005333838936151125 0.00068031316550504488;
	setAttr -s 5 ".wl[913].w[12:16]"  0.003980382293957324 8.5680708338923201e-006 
		0.99445811049341026 1.1009273066520109e-006 0.001551838214491913;
	setAttr -s 5 ".wl[914].w[12:16]"  0.008955349081218358 4.2626489903475129e-005 
		0.98096067410198018 0.0065454314462840557 0.0034959188806139119;
	setAttr -s 4 ".wl[915].w";
	setAttr ".wl[915].w[12]" 0.00011339783420782128;
	setAttr ".wl[915].w[14]" 0.99952322244644165;
	setAttr ".wl[915].w[15]" 0.00016254183440876795;
	setAttr ".wl[915].w[16]" 0.0002008378849417604;
	setAttr -s 5 ".wl[916].w[11:15]"  0.0066367822505582121 0.00025588791070369686 
		1.5095815356190727e-008 0.99228781461715698 0.00081950012576575179;
	setAttr -s 4 ".wl[917].w";
	setAttr ".wl[917].w[11]" 0.00015085860536863949;
	setAttr ".wl[917].w[12]" 2.4205387355877887e-006;
	setAttr ".wl[917].w[14]" 0.99981594085693359;
	setAttr ".wl[917].w[15]" 3.077999896217896e-005;
	setAttr -s 5 ".wl[918].w[11:15]"  0.057316426518600284 0.017074670165285018 
		0.001208743897060886 0.88734859228134155 0.037051567137712266;
	setAttr -s 5 ".wl[919].w[11:15]"  0.00059905212703708244 6.0997128789741232e-006 
		3.219229797545493e-006 0.99848610162734985 0.00090552730293654439;
	setAttr -s 5 ".wl[920].w[11:15]"  0.0050392647547438689 7.999984220202999e-005 
		3.095138976007593e-006 0.9854474663734436 0.0094301738906344898;
	setAttr -s 5 ".wl[921].w[11:15]"  0.0025339102313491125 2.5605979834663723e-005 
		6.8203910479500357e-006 0.99323982000350952 0.0041938433942587524;
	setAttr -s 5 ".wl[922].w[11:15]"  0.0078271131019727082 7.5783080255725571e-005 
		4.2183727349048625e-005 0.98054051399230957 0.011514406098112948;
	setAttr -s 4 ".wl[923].w[11:14]"  0.015630353046506618 0.00021625257158539 
		0.0012785854701748405 0.98287480891173318;
	setAttr -s 5 ".wl[924].w";
	setAttr ".wl[924].w[11]" 0.028946872999502587;
	setAttr ".wl[924].w[12]" 0.00046299482945832412;
	setAttr ".wl[924].w[13]" 1.8206369214771686e-005;
	setAttr ".wl[924].w[14]" 0.97047834188929383;
	setAttr ".wl[924].w[19]" 9.3583912530448288e-005;
	setAttr -s 5 ".wl[925].w";
	setAttr ".wl[925].w[11]" 0.01227425876020518;
	setAttr ".wl[925].w[12]" 0.0017660028679692234;
	setAttr ".wl[925].w[13]" 9.9348784965581235e-005;
	setAttr ".wl[925].w[14]" 0.98313743241536034;
	setAttr ".wl[925].w[19]" 0.0027229571714997292;
	setAttr -s 5 ".wl[926].w";
	setAttr ".wl[926].w[11]" 0.049167970547361634;
	setAttr ".wl[926].w[12]" 0.020016177243357448;
	setAttr ".wl[926].w[13]" 0.002480963130360345;
	setAttr ".wl[926].w[14]" 0.91662557803321432;
	setAttr ".wl[926].w[19]" 0.011709311045706272;
	setAttr -s 5 ".wl[927].w";
	setAttr ".wl[927].w[11]" 8.1560221035630932e-005;
	setAttr ".wl[927].w[12]" 1.6653284497441872e-005;
	setAttr ".wl[927].w[13]" 3.684289678793456e-007;
	setAttr ".wl[927].w[14]" 0.99980082649629143;
	setAttr ".wl[927].w[19]" 0.0001005915692076087;
	setAttr -s 5 ".wl[928].w";
	setAttr ".wl[928].w[11]" 0.00015047921237670319;
	setAttr ".wl[928].w[12]" 3.6490448154792788e-005;
	setAttr ".wl[928].w[13]" 2.5658911922576756e-006;
	setAttr ".wl[928].w[14]" 0.99959990481238747;
	setAttr ".wl[928].w[19]" 0.00021055963588878512;
	setAttr -s 5 ".wl[929].w";
	setAttr ".wl[929].w[12]" 1.8477720838478084e-006;
	setAttr ".wl[929].w[13]" 9.7713649641937742e-007;
	setAttr ".wl[929].w[14]" 0.99987150536000768;
	setAttr ".wl[929].w[19]" 8.7922787267397042e-005;
	setAttr ".wl[929].w[20]" 3.7746944144601002e-005;
	setAttr ".wl[930].w[14]"  1;
	setAttr ".wl[931].w[14]"  1;
	setAttr ".wl[932].w[14]"  1;
	setAttr -s 5 ".wl[933].w[12:16]"  7.6505009012140975e-009 1.8567308113245527e-009 
		0.99999964237213135 2.074986748369054e-007 1.4062196210289973e-007;
	setAttr -s 5 ".wl[934].w[12:16]"  1.1659338060115609e-006 8.2206706794547251e-009 
		0.99998277425765991 1.2548727374337596e-005 3.5028604890592793e-006;
	setAttr -s 5 ".wl[935].w[12:16]"  0.00035919369069459928 0.0037326631984363544 
		0.98550748825073242 0.0090563505884920289 0.0013443042716445976;
	setAttr -s 5 ".wl[936].w[12:16]"  0.0012301410583720979 0.0046554282655359271 
		0.97894150018692017 0.011839929622459262 0.0033330008667125485;
	setAttr -s 5 ".wl[937].w[12:16]"  0.0073725852498797559 1.3658688567185914e-006 
		0.97846835851669312 0.0085976192291173197 0.0055600711354530912;
	setAttr -s 5 ".wl[938].w[12:16]"  0.019923470451745858 6.7668105430129799e-007 
		0.95272578755150605 0.020190842659743725 0.0071592226559502002;
	setAttr -s 5 ".wl[939].w[11:15]"  0.013219573407669397 0.0011563383604651892 
		2.282877337303605e-009 0.98315107822418213 0.0024730077248059507;
	setAttr -s 5 ".wl[940].w[11:15]"  0.033448226272482603 0.031843669290917247 
		1.6073435915586742e-007 0.91811327644411189 0.016594667258129085;
	setAttr -s 5 ".wl[941].w[11:15]"  0.017583203850419893 0.00075469012989860232 
		3.6864006314140089e-008 0.97548282146453857 0.0061792476911366181;
	setAttr -s 4 ".wl[942].w";
	setAttr ".wl[942].w[11]" 0.049584339287607193;
	setAttr ".wl[942].w[12]" 0.036771841416632971;
	setAttr ".wl[942].w[14]" 0.8905805850295051;
	setAttr ".wl[942].w[15]" 0.023063234266254597;
	setAttr -s 4 ".wl[943].w";
	setAttr ".wl[943].w[11]" 0.016543971353209973;
	setAttr ".wl[943].w[12]" 0.00084009443782609558;
	setAttr ".wl[943].w[14]" 0.96139270067214966;
	setAttr ".wl[943].w[15]" 0.021223233536814275;
	setAttr -s 4 ".wl[944].w";
	setAttr ".wl[944].w[11]" 0.028849201840469203;
	setAttr ".wl[944].w[12]" 0.0069180405190901531;
	setAttr ".wl[944].w[14]" 0.94823872358242578;
	setAttr ".wl[944].w[15]" 0.015994034058014871;
	setAttr -s 4 ".wl[945].w";
	setAttr ".wl[945].w[11]" 0.020543330370935777;
	setAttr ".wl[945].w[12]" 0.00060507696698367083;
	setAttr ".wl[945].w[14]" 0.96312850713729858;
	setAttr ".wl[945].w[15]" 0.015723085524781969;
	setAttr -s 4 ".wl[946].w";
	setAttr ".wl[946].w[11]" 0.02409300643785239;
	setAttr ".wl[946].w[12]" 0.013224828405301252;
	setAttr ".wl[946].w[14]" 0.94920362256708291;
	setAttr ".wl[946].w[15]" 0.013478542589763482;
	setAttr -s 4 ".wl[947].w";
	setAttr ".wl[947].w[11]" 0.035080109098928197;
	setAttr ".wl[947].w[12]" 0.0014672397160668154;
	setAttr ".wl[947].w[14]" 0.96261436517445653;
	setAttr ".wl[947].w[19]" 0.0008382860105484724;
	setAttr -s 4 ".wl[948].w";
	setAttr ".wl[948].w[11]" 0.028797424333779794;
	setAttr ".wl[948].w[12]" 0.013628764012645006;
	setAttr ".wl[948].w[14]" 0.95741570657891439;
	setAttr ".wl[948].w[19]" 0.00015810507466085255;
	setAttr -s 4 ".wl[949].w";
	setAttr ".wl[949].w[11]" 0.023507151768770843;
	setAttr ".wl[949].w[12]" 0.0079741258278933479;
	setAttr ".wl[949].w[14]" 0.96533982066577995;
	setAttr ".wl[949].w[19]" 0.0031789017375558615;
	setAttr -s 5 ".wl[950].w";
	setAttr ".wl[950].w[11]" 0.03398685776069274;
	setAttr ".wl[950].w[12]" 0.030283342091368907;
	setAttr ".wl[950].w[13]" 1.5831631030238257e-007;
	setAttr ".wl[950].w[14]" 0.93476479688301595;
	setAttr ".wl[950].w[19]" 0.00096484494861215353;
	setAttr -s 5 ".wl[951].w";
	setAttr ".wl[951].w[11]" 0.0048728391744607214;
	setAttr ".wl[951].w[12]" 0.0011803520723931823;
	setAttr ".wl[951].w[13]" 3.5594835332993991e-005;
	setAttr ".wl[951].w[14]" 0.99180157689951998;
	setAttr ".wl[951].w[19]" 0.0021096370182931423;
	setAttr -s 5 ".wl[952].w";
	setAttr ".wl[952].w[11]" 0.020836883463394275;
	setAttr ".wl[952].w[12]" 0.0075585603272330069;
	setAttr ".wl[952].w[13]" 0.00010611561193632901;
	setAttr ".wl[952].w[14]" 0.97134384008962382;
	setAttr ".wl[952].w[19]" 0.00015460050781257451;
	setAttr -s 4 ".wl[953].w";
	setAttr ".wl[953].w[12]" 0.0001536217868238552;
	setAttr ".wl[953].w[14]" 0.99610061356149171;
	setAttr ".wl[953].w[19]" 0.0018765432009234374;
	setAttr ".wl[953].w[20]" 0.0018692214507609606;
	setAttr -s 5 ".wl[954].w";
	setAttr ".wl[954].w[12]" 0.0050304875499575649;
	setAttr ".wl[954].w[13]" 0.00052440106534245266;
	setAttr ".wl[954].w[14]" 0.95928308575872978;
	setAttr ".wl[954].w[19]" 0.011019823636081044;
	setAttr ".wl[954].w[20]" 0.024142201989889145;
	setAttr -s 5 ".wl[955].w";
	setAttr ".wl[955].w[12]" 2.3874373586817116e-006;
	setAttr ".wl[955].w[13]" 4.1454628406298207e-007;
	setAttr ".wl[955].w[14]" 0.99984073938189144;
	setAttr ".wl[955].w[19]" 0.00013137589654538067;
	setAttr ".wl[955].w[20]" 2.5082737920456566e-005;
	setAttr -s 5 ".wl[956].w";
	setAttr ".wl[956].w[12]" 0.0011099038377168943;
	setAttr ".wl[956].w[13]" 5.4251135286626388e-006;
	setAttr ".wl[956].w[14]" 0.98252138334316619;
	setAttr ".wl[956].w[19]" 0.011330897815185679;
	setAttr ".wl[956].w[20]" 0.0050323898904025555;
	setAttr -s 5 ".wl[957].w";
	setAttr ".wl[957].w[12]" 7.6466754348417657e-006;
	setAttr ".wl[957].w[13]" 6.2754595182294636e-007;
	setAttr ".wl[957].w[14]" 0.99960794426301136;
	setAttr ".wl[957].w[19]" 0.00034869287167546483;
	setAttr ".wl[957].w[20]" 3.5088643926428631e-005;
	setAttr -s 5 ".wl[958].w";
	setAttr ".wl[958].w[12]" 0.00059598144038843165;
	setAttr ".wl[958].w[13]" 1.3671428797048826e-007;
	setAttr ".wl[958].w[14]" 0.99085207318892632;
	setAttr ".wl[958].w[19]" 0.0064493044048724805;
	setAttr ".wl[958].w[20]" 0.002102504251524806;
	setAttr -s 4 ".wl[959].w";
	setAttr ".wl[959].w[12]" 1.0018722649074876e-005;
	setAttr ".wl[959].w[14]" 0.99984580278396606;
	setAttr ".wl[959].w[19]" 7.7532883328642479e-005;
	setAttr ".wl[959].w[20]" 6.6645610056218198e-005;
	setAttr -s 5 ".wl[960].w";
	setAttr ".wl[960].w[12]" 0.0012671492470920052;
	setAttr ".wl[960].w[13]" 1.0016980184889249e-006;
	setAttr ".wl[960].w[14]" 0.99025744199752808;
	setAttr ".wl[960].w[19]" 0.0045552380137248768;
	setAttr ".wl[960].w[20]" 0.0039191690436365537;
	setAttr -s 5 ".wl[961].w";
	setAttr ".wl[961].w[12]" 0.00052828738324565115;
	setAttr ".wl[961].w[13]" 6.7448327074347603e-009;
	setAttr ".wl[961].w[14]" 0.99545693397521973;
	setAttr ".wl[961].w[19]" 0.0021607300237089706;
	setAttr ".wl[961].w[20]" 0.0018540418729929441;
	setAttr -s 4 ".wl[962].w";
	setAttr ".wl[962].w[11]" 0.0042427123271560939;
	setAttr ".wl[962].w[12]" 0.0020696783777308918;
	setAttr ".wl[962].w[14]" 0.98457795381546021;
	setAttr ".wl[962].w[19]" 0.0091096554796528083;
	setAttr -s 5 ".wl[963].w";
	setAttr ".wl[963].w[11]" 0.0017279457416446828;
	setAttr ".wl[963].w[12]" 0.00089018087745351465;
	setAttr ".wl[963].w[13]" 4.2644821259291272e-008;
	setAttr ".wl[963].w[14]" 0.99349415302276611;
	setAttr ".wl[963].w[19]" 0.0038876777133144305;
	setAttr -s 5 ".wl[964].w";
	setAttr ".wl[964].w[11]" 0.00085914830120239658;
	setAttr ".wl[964].w[12]" 0.00032487101251401333;
	setAttr ".wl[964].w[13]" 2.0687176533106935e-008;
	setAttr ".wl[964].w[14]" 0.9966006875038147;
	setAttr ".wl[964].w[19]" 0.00221527249529236;
	setAttr -s 4 ".wl[965].w";
	setAttr ".wl[965].w[12]" 1.3233903739673566e-005;
	setAttr ".wl[965].w[14]" 0.99982929229736328;
	setAttr ".wl[965].w[15]" 3.7119720161187976e-005;
	setAttr ".wl[965].w[19]" 0.00012035407873585721;
	setAttr -s 4 ".wl[966].w";
	setAttr ".wl[966].w[11]" 0.00045289698199720046;
	setAttr ".wl[966].w[12]" 0.00013278891706560073;
	setAttr ".wl[966].w[14]" 0.99825268983840942;
	setAttr ".wl[966].w[19]" 0.0011616242625277749;
	setAttr ".wl[967].w[14]"  1;
	setAttr -s 4 ".wl[968].w";
	setAttr ".wl[968].w[11]" 0.00017286439639432806;
	setAttr ".wl[968].w[12]" 3.0332018878097301e-005;
	setAttr ".wl[968].w[14]" 0.99972915649414063;
	setAttr ".wl[968].w[15]" 6.7647090586949628e-005;
	setAttr -s 4 ".wl[969].w";
	setAttr ".wl[969].w[11]" 4.0833171117042682e-005;
	setAttr ".wl[969].w[12]" 9.2711129113221241e-006;
	setAttr ".wl[969].w[14]" 0.99993860721588135;
	setAttr ".wl[969].w[15]" 1.1288500090287543e-005;
	setAttr -s 4 ".wl[970].w";
	setAttr ".wl[970].w[11]" 0.00072855892279134738;
	setAttr ".wl[970].w[12]" 0.00017511249430116256;
	setAttr ".wl[970].w[14]" 0.99880731105804443;
	setAttr ".wl[970].w[15]" 0.00028901752486305647;
	setAttr -s 4 ".wl[971].w";
	setAttr ".wl[971].w[11]" 2.49768646359539e-006;
	setAttr ".wl[971].w[12]" 2.7682586524169863e-007;
	setAttr ".wl[971].w[14]" 0.99999624490737915;
	setAttr ".wl[971].w[15]" 9.8058029201252112e-007;
	setAttr -s 5 ".wl[972].w[11:15]"  0.00047229540641578478 0.00021000667773409193 
		1.1143902083057651e-006 0.99885094165802002 0.00046564186762179796;
	setAttr -s 5 ".wl[973].w[12:16]"  8.4469000941079673e-005 9.2027920493962853e-007 
		0.99937838315963745 0.00039632012586851209 0.00013990743434801742;
	setAttr -s 5 ".wl[974].w[12:16]"  0.0008508345471344871 5.8640244489734164e-005 
		0.99672901630401611 0.0015402803916473716 0.00082122851271229386;
	setAttr -s 5 ".wl[975].w[12:16]"  0.0051369161370624881 0.0021117840818022987 
		0.96689093112945557 0.019028231026185175 0.0068321376254944742;
	setAttr -s 5 ".wl[976].w[12:16]"  0.019029266625257831 0.0072680059820413589 
		0.93774584945843809 0.024711260332306965 0.011245617601955745;
	setAttr -s 4 ".wl[977].w";
	setAttr ".wl[977].w[11]" 0.030767035861735962;
	setAttr ".wl[977].w[12]" 0.028962374572821442;
	setAttr ".wl[977].w[14]" 0.91638501209894196;
	setAttr ".wl[977].w[15]" 0.023885577466500697;
	setAttr -s 4 ".wl[978].w";
	setAttr ".wl[978].w[11]" 0.017826409155313128;
	setAttr ".wl[978].w[12]" 0.025231154584327019;
	setAttr ".wl[978].w[14]" 0.94098021534372278;
	setAttr ".wl[978].w[15]" 0.015962220916637102;
	setAttr -s 4 ".wl[979].w";
	setAttr ".wl[979].w[11]" 0.027906009138251992;
	setAttr ".wl[979].w[12]" 0.031686169298778474;
	setAttr ".wl[979].w[14]" 0.92700595273709552;
	setAttr ".wl[979].w[15]" 0.013401868825874064;
	setAttr -s 4 ".wl[980].w";
	setAttr ".wl[980].w[11]" 0.013263064232329293;
	setAttr ".wl[980].w[12]" 0.022246519641704703;
	setAttr ".wl[980].w[14]" 0.95563539188194235;
	setAttr ".wl[980].w[15]" 0.008855024244023681;
	setAttr -s 5 ".wl[981].w[11:15]"  0.024088781302267454 0.028935338709018481 
		1.4218685464584269e-006 0.93662137777961951 0.010353080340548059;
	setAttr -s 5 ".wl[982].w[11:15]"  0.010543471797633751 0.018874539869651853 
		1.5692914530518465e-005 0.96499374601832943 0.0055725493998543957;
	setAttr -s 4 ".wl[983].w";
	setAttr ".wl[983].w[11]" 0.017942984197157306;
	setAttr ".wl[983].w[12]" 0.019352777737925209;
	setAttr ".wl[983].w[14]" 0.95474154718164395;
	setAttr ".wl[983].w[15]" 0.0079626908832735963;
	setAttr -s 4 ".wl[984].w";
	setAttr ".wl[984].w[11]" 0.0093564626145220386;
	setAttr ".wl[984].w[12]" 0.015058601107286558;
	setAttr ".wl[984].w[14]" 0.97037975535792442;
	setAttr ".wl[984].w[15]" 0.0052051809202670234;
	setAttr -s 4 ".wl[985].w";
	setAttr ".wl[985].w[11]" 0.016806708794992558;
	setAttr ".wl[985].w[12]" 0.019097800644094932;
	setAttr ".wl[985].w[14]" 0.95590630938211052;
	setAttr ".wl[985].w[15]" 0.0081891811788020134;
	setAttr -s 4 ".wl[986].w";
	setAttr ".wl[986].w[11]" 0.009479929893596804;
	setAttr ".wl[986].w[12]" 0.014757934660724222;
	setAttr ".wl[986].w[14]" 0.97037695105058985;
	setAttr ".wl[986].w[15]" 0.0053851843950892186;
	setAttr -s 4 ".wl[987].w";
	setAttr ".wl[987].w[11]" 0.014285677150600412;
	setAttr ".wl[987].w[12]" 0.017996939265628238;
	setAttr ".wl[987].w[14]" 0.96735969462617888;
	setAttr ".wl[987].w[19]" 0.00035768895759247243;
	setAttr -s 4 ".wl[988].w";
	setAttr ".wl[988].w[11]" 0.0080848125607593507;
	setAttr ".wl[988].w[12]" 0.014282366534226354;
	setAttr ".wl[988].w[14]" 0.97664872645010736;
	setAttr ".wl[988].w[19]" 0.00098409445490688086;
	setAttr -s 4 ".wl[989].w";
	setAttr ".wl[989].w[11]" 0.016926661051041247;
	setAttr ".wl[989].w[12]" 0.022207986513620305;
	setAttr ".wl[989].w[14]" 0.96027100867808157;
	setAttr ".wl[989].w[19]" 0.0005943437572568655;
	setAttr -s 4 ".wl[990].w";
	setAttr ".wl[990].w[11]" 0.0096653554466158056;
	setAttr ".wl[990].w[12]" 0.015091267397003592;
	setAttr ".wl[990].w[14]" 0.97499609637359352;
	setAttr ".wl[990].w[19]" 0.00024728078278712928;
	setAttr -s 5 ".wl[991].w";
	setAttr ".wl[991].w[11]" 0.028954266369572129;
	setAttr ".wl[991].w[12]" 0.021482935115967838;
	setAttr ".wl[991].w[13]" 0.00017511750477471475;
	setAttr ".wl[991].w[14]" 0.94900460824414123;
	setAttr ".wl[991].w[19]" 0.00038307276554405689;
	setAttr -s 4 ".wl[992].w";
	setAttr ".wl[992].w[11]" 0.015639894081906362;
	setAttr ".wl[992].w[12]" 0.01427859234305733;
	setAttr ".wl[992].w[14]" 0.96803112497063382;
	setAttr ".wl[992].w[19]" 0.0020503886044025421;
	setAttr -s 5 ".wl[993].w";
	setAttr ".wl[993].w[11]" 0.041288435293978937;
	setAttr ".wl[993].w[12]" 0.028060341784364371;
	setAttr ".wl[993].w[13]" 7.2761227577545801e-005;
	setAttr ".wl[993].w[14]" 0.91471895094450062;
	setAttr ".wl[993].w[19]" 0.015859510749578476;
	setAttr -s 5 ".wl[994].w";
	setAttr ".wl[994].w[11]" 0.020767183420895969;
	setAttr ".wl[994].w[12]" 0.01975515247598891;
	setAttr ".wl[994].w[13]" 3.1088806752731281e-005;
	setAttr ".wl[994].w[14]" 0.95112454405917735;
	setAttr ".wl[994].w[19]" 0.0083220312371850014;
	setAttr -s 5 ".wl[995].w";
	setAttr ".wl[995].w[12]" 0.0087768508820201593;
	setAttr ".wl[995].w[13]" 1.5598123699263989e-005;
	setAttr ".wl[995].w[14]" 0.95519408486699997;
	setAttr ".wl[995].w[19]" 0.019003495573997498;
	setAttr ".wl[995].w[20]" 0.017009970553283165;
	setAttr -s 4 ".wl[996].w";
	setAttr ".wl[996].w[11]" 0.010526508474195026;
	setAttr ".wl[996].w[12]" 0.010402695249398628;
	setAttr ".wl[996].w[14]" 0.96779086032785566;
	setAttr ".wl[996].w[19]" 0.011279935948550701;
	setAttr -s 5 ".wl[997].w";
	setAttr ".wl[997].w[12]" 0.0042510877023283549;
	setAttr ".wl[997].w[13]" 1.5480650101788537e-007;
	setAttr ".wl[997].w[14]" 0.97649060272948984;
	setAttr ".wl[997].w[19]" 0.010859796051570581;
	setAttr ".wl[997].w[20]" 0.0083983587101101875;
	setAttr -s 5 ".wl[998].w";
	setAttr ".wl[998].w[12]" 0.0074705506864479647;
	setAttr ".wl[998].w[13]" 4.1033450413543753e-007;
	setAttr ".wl[998].w[14]" 0.97503936290740967;
	setAttr ".wl[998].w[19]" 0.0093804776028894032;
	setAttr ".wl[998].w[20]" 0.0081091984687488312;
	setAttr -s 4 ".wl[999].w";
	setAttr ".wl[999].w[11]" 0.0027533753904959786;
	setAttr ".wl[999].w[12]" 0.0016876771288191739;
	setAttr ".wl[999].w[14]" 0.99048686027526855;
	setAttr ".wl[999].w[19]" 0.0050720872054162928;
	setAttr -s 5 ".wl[1000].w";
	setAttr ".wl[1000].w[11]" 0.0028756418177349162;
	setAttr ".wl[1000].w[12]" 0.0020931573695869951;
	setAttr ".wl[1000].w[13]" 3.1802520084056596e-007;
	setAttr ".wl[1000].w[14]" 0.99218197052239732;
	setAttr ".wl[1000].w[19]" 0.0028489122650798477;
	setAttr -s 5 ".wl[1001].w";
	setAttr ".wl[1001].w[11]" 0.0084513923152065955;
	setAttr ".wl[1001].w[12]" 0.0040187550394500679;
	setAttr ".wl[1001].w[13]" 6.1012524383841082e-005;
	setAttr ".wl[1001].w[14]" 0.97194927363920747;
	setAttr ".wl[1001].w[19]" 0.015519566481752047;
	setAttr -s 4 ".wl[1002].w";
	setAttr ".wl[1002].w[11]" 0.0026473775544895266;
	setAttr ".wl[1002].w[12]" 0.0020234083911128092;
	setAttr ".wl[1002].w[14]" 0.99240286735208372;
	setAttr ".wl[1002].w[19]" 0.0029263467023139061;
	setAttr -s 5 ".wl[1003].w";
	setAttr ".wl[1003].w[11]" 0.00071761986124547691;
	setAttr ".wl[1003].w[12]" 0.0002426560069074193;
	setAttr ".wl[1003].w[13]" 2.4711300715283423e-008;
	setAttr ".wl[1003].w[14]" 0.99723345041275024;
	setAttr ".wl[1003].w[19]" 0.0018062490077961444;
	setAttr -s 5 ".wl[1004].w";
	setAttr ".wl[1004].w[11]" 0.0028361991541643273;
	setAttr ".wl[1004].w[12]" 0.0025854585433408954;
	setAttr ".wl[1004].w[13]" 4.4146455380200678e-009;
	setAttr ".wl[1004].w[14]" 0.99082545261208776;
	setAttr ".wl[1004].w[19]" 0.0037528852757614489;
	setAttr -s 4 ".wl[1005].w";
	setAttr ".wl[1005].w[11]" 0.00046619613813287942;
	setAttr ".wl[1005].w[12]" 0.00012555270929663214;
	setAttr ".wl[1005].w[14]" 0.99830853939056396;
	setAttr ".wl[1005].w[19]" 0.0010997117620065236;
	setAttr -s 5 ".wl[1006].w";
	setAttr ".wl[1006].w[11]" 0.0025742020891056489;
	setAttr ".wl[1006].w[12]" 0.0023367562412626901;
	setAttr ".wl[1006].w[13]" 2.7813551461974839e-009;
	setAttr ".wl[1006].w[14]" 0.99102443981926513;
	setAttr ".wl[1006].w[19]" 0.0040645990690113161;
	setAttr -s 5 ".wl[1007].w[11:15]"  0.00034948523274629941 7.8589018710699808e-005 
		5.9913281746752328e-009 0.99934399127960205 0.00022792847761277525;
	setAttr -s 5 ".wl[1008].w[11:15]"  0.0023242152668655094 0.0020420155896939966 
		1.1152023748906004e-010 0.99332817895297221 0.0023055900789480939;
	setAttr -s 5 ".wl[1009].w[11:15]"  0.00061322045035669891 0.00012946630368683795 
		1.6775963832202455e-008 0.99888020753860474 0.00037708893138789474;
	setAttr -s 5 ".wl[1010].w[11:15]"  0.002571322822304409 0.0021107776501768228 
		2.2293618340274435e-010 0.99281926828499389 0.0024986310195886574;
	setAttr -s 5 ".wl[1011].w[11:15]"  0.0017994254184955326 0.0012701695163317003 
		2.0460597535407634e-006 0.99490565061569214 0.0020227083897270876;
	setAttr -s 5 ".wl[1012].w[11:15]"  0.0033116055720741697 0.0037188733654842498 
		1.1065248273212092e-008 0.98966609724838794 0.0033034127488053744;
	setAttr -s 5 ".wl[1013].w[11:15]"  0.0021227967070744525 0.0014849707584834819 
		0.00025282465355528272 0.99467450380325317 0.0014649040776336083;
	setAttr -s 5 ".wl[1014].w[11:15]"  0.003652333654637008 0.0062261611697054008 
		4.5444885472534224e-005 0.98639303274378753 0.0036830275463974852;
	setAttr -s 5 ".wl[1015].w[11:15]"  0.012109920079466801 0.018750637003665058 
		0.0016916958848014474 0.955032391124647 0.012415355907419696;
	setAttr -s 5 ".wl[1016].w[11:15]"  0.0040206780075220296 0.0085255979433869998 
		1.8480552171240561e-005 0.9836063737416324 0.0038288697552872411;
	setAttr -s 5 ".wl[1017].w[11:15]"  0.0089108086826227752 0.016790281164734768 
		0.0002137499104719609 0.96620894000500801 0.0078762202371624492;
	setAttr -s 5 ".wl[1018].w[11:15]"  0.0028331620809277538 0.0057412459748344656 
		0.00012755377974826843 0.9888111896109032 0.00248684855358626;
	setAttr -s 4 ".wl[1019].w";
	setAttr ".wl[1019].w[11]" 0.0061712489241835212;
	setAttr ".wl[1019].w[12]" 0.0137152474980827;
	setAttr ".wl[1019].w[14]" 0.9756461962701326;
	setAttr ".wl[1019].w[15]" 0.0044673073076011765;
	setAttr -s 4 ".wl[1020].w";
	setAttr ".wl[1020].w[11]" 0.0018157569737993215;
	setAttr ".wl[1020].w[12]" 0.0034196505851110505;
	setAttr ".wl[1020].w[14]" 0.99333072277265289;
	setAttr ".wl[1020].w[15]" 0.0014338696684367208;
	setAttr -s 5 ".wl[1021].w[11:15]"  0.004549632282612329 0.0092004588358723868 
		3.3256085316679673e-006 0.98326218166310753 0.0029844016098760947;
	setAttr -s 4 ".wl[1022].w";
	setAttr ".wl[1022].w[11]" 0.0012657199567299245;
	setAttr ".wl[1022].w[12]" 0.0023299616006980479;
	setAttr ".wl[1022].w[14]" 0.99544846818284283;
	setAttr ".wl[1022].w[15]" 0.00095585025972923167;
	setAttr -s 4 ".wl[1023].w";
	setAttr ".wl[1023].w[11]" 0.0039155086840579603;
	setAttr ".wl[1023].w[12]" 0.0073298250533621601;
	setAttr ".wl[1023].w[14]" 0.98617816830474681;
	setAttr ".wl[1023].w[15]" 0.0025764979578331505;
	setAttr -s 5 ".wl[1024].w[11:15]"  0.0010541325389999143 0.0019832829338111671 
		1.3913159513379014e-010 0.99618668244568154 0.00077590194237575703;
	setAttr -s 4 ".wl[1025].w";
	setAttr ".wl[1025].w[11]" 0.0041033876905772594;
	setAttr ".wl[1025].w[12]" 0.0076253260830930099;
	setAttr ".wl[1025].w[14]" 0.98566959420156697;
	setAttr ".wl[1025].w[15]" 0.0026016920247628325;
	setAttr -s 4 ".wl[1026].w";
	setAttr ".wl[1026].w[11]" 0.0011011727541825279;
	setAttr ".wl[1026].w[12]" 0.0020718601168418687;
	setAttr ".wl[1026].w[14]" 0.99618704799558433;
	setAttr ".wl[1026].w[19]" 0.0006399191333912313;
	setAttr -s 4 ".wl[1027].w";
	setAttr ".wl[1027].w[11]" 0.003799023383706543;
	setAttr ".wl[1027].w[12]" 0.0073426417108655986;
	setAttr ".wl[1027].w[14]" 0.98788927100734503;
	setAttr ".wl[1027].w[19]" 0.00096906389808282256;
	setAttr -s 4 ".wl[1028].w";
	setAttr ".wl[1028].w[11]" 0.00095001969375944635;
	setAttr ".wl[1028].w[12]" 0.001674442007734056;
	setAttr ".wl[1028].w[14]" 0.99682900416024045;
	setAttr ".wl[1028].w[19]" 0.00054653413826599717;
	setAttr -s 4 ".wl[1029].w";
	setAttr ".wl[1029].w[11]" 0.004439400885169557;
	setAttr ".wl[1029].w[12]" 0.0074104278392797341;
	setAttr ".wl[1029].w[14]" 0.98749301510753318;
	setAttr ".wl[1029].w[19]" 0.0006571561680175364;
	setAttr -s 4 ".wl[1030].w";
	setAttr ".wl[1030].w[11]" 0.0011045104717808654;
	setAttr ".wl[1030].w[12]" 0.0015714903821984197;
	setAttr ".wl[1030].w[14]" 0.9968616755733013;
	setAttr ".wl[1030].w[19]" 0.00046232357271946967;
	setAttr -s 4 ".wl[1031].w";
	setAttr ".wl[1031].w[11]" 0.0067872967729152604;
	setAttr ".wl[1031].w[12]" 0.0074919758934263855;
	setAttr ".wl[1031].w[14]" 0.98343806245536447;
	setAttr ".wl[1031].w[19]" 0.0022826648782938719;
	setAttr -s 4 ".wl[1032].w";
	setAttr ".wl[1032].w[11]" 0.0017486886214946921;
	setAttr ".wl[1032].w[12]" 0.0020062703938338077;
	setAttr ".wl[1032].w[14]" 0.99527820655641697;
	setAttr ".wl[1032].w[19]" 0.00096683442825451493;
	setAttr -s 5 ".wl[1033].w";
	setAttr ".wl[1033].w[11]" 0.0097003127921261711;
	setAttr ".wl[1033].w[12]" 0.010442739000441804;
	setAttr ".wl[1033].w[13]" 6.2339121537114663e-006;
	setAttr ".wl[1033].w[14]" 0.97505422235942918;
	setAttr ".wl[1033].w[19]" 0.0047964919358491898;
	setAttr -s 4 ".wl[1034].w";
	setAttr ".wl[1034].w[11]" 0.0027641430743179708;
	setAttr ".wl[1034].w[12]" 0.0028669379732154839;
	setAttr ".wl[1034].w[14]" 0.99178495911409115;
	setAttr ".wl[1034].w[19]" 0.0025839598383754492;
	setAttr -s 4 ".wl[1035].w";
	setAttr ".wl[1035].w[11]" 0.012071197485860091;
	setAttr ".wl[1035].w[12]" 0.015925985075328986;
	setAttr ".wl[1035].w[14]" 0.95994867210265977;
	setAttr ".wl[1035].w[19]" 0.012054145336151123;
	setAttr -s 4 ".wl[1036].w";
	setAttr ".wl[1036].w[11]" 0.0036953128066632979;
	setAttr ".wl[1036].w[12]" 0.0039283293088071903;
	setAttr ".wl[1036].w[14]" 0.98860436022962839;
	setAttr ".wl[1036].w[19]" 0.0037719976549011125;
	setAttr -s 5 ".wl[1037].w";
	setAttr ".wl[1037].w[11]" 0.0050669004871103981;
	setAttr ".wl[1037].w[12]" 0.0065540300364236789;
	setAttr ".wl[1037].w[13]" 1.764821038966012e-006;
	setAttr ".wl[1037].w[14]" 0.98203092813491821;
	setAttr ".wl[1037].w[19]" 0.0063463765205087463;
	setAttr -s 4 ".wl[1038].w";
	setAttr ".wl[1038].w[11]" 0.0038729827374596329;
	setAttr ".wl[1038].w[12]" 0.0041389541411690385;
	setAttr ".wl[1038].w[14]" 0.98768039903574056;
	setAttr ".wl[1038].w[19]" 0.00430766408563073;
	setAttr -s 4 ".wl[1039].w";
	setAttr ".wl[1039].w[11]" 0.00066659362354918011;
	setAttr ".wl[1039].w[12]" 0.00076790429295444469;
	setAttr ".wl[1039].w[14]" 0.99794129622474892;
	setAttr ".wl[1039].w[19]" 0.00062420585874749831;
	setAttr -s 4 ".wl[1040].w";
	setAttr ".wl[1040].w[11]" 0.00011392374200227742;
	setAttr ".wl[1040].w[12]" 0.00014715750784668932;
	setAttr ".wl[1040].w[14]" 0.99963730395276118;
	setAttr ".wl[1040].w[19]" 0.0001016147973899197;
	setAttr -s 5 ".wl[1041].w";
	setAttr ".wl[1041].w[11]" 0.0007684328976444877;
	setAttr ".wl[1041].w[12]" 0.00085336604474002379;
	setAttr ".wl[1041].w[13]" 8.3986322670787095e-013;
	setAttr ".wl[1041].w[14]" 0.99766180822428585;
	setAttr ".wl[1041].w[19]" 0.00071639283248971881;
	setAttr -s 5 ".wl[1042].w";
	setAttr ".wl[1042].w[11]" 0.00019640180093182519;
	setAttr ".wl[1042].w[12]" 0.00026617776593331849;
	setAttr ".wl[1042].w[13]" 4.9724564743502953e-011;
	setAttr ".wl[1042].w[14]" 0.99936141082856222;
	setAttr ".wl[1042].w[19]" 0.00017600955484810475;
	setAttr -s 5 ".wl[1043].w";
	setAttr ".wl[1043].w[11]" 0.00088763678701462016;
	setAttr ".wl[1043].w[12]" 0.00094090625236457654;
	setAttr ".wl[1043].w[13]" 8.0265299615134289e-012;
	setAttr ".wl[1043].w[14]" 0.99735810483369258;
	setAttr ".wl[1043].w[19]" 0.00081335211890165571;
	setAttr -s 4 ".wl[1044].w";
	setAttr ".wl[1044].w[11]" 0.00019771497465486534;
	setAttr ".wl[1044].w[12]" 0.00027662600373202405;
	setAttr ".wl[1044].w[14]" 0.99935140584706028;
	setAttr ".wl[1044].w[15]" 0.00017425317455268218;
	setAttr -s 5 ".wl[1045].w";
	setAttr ".wl[1045].w[11]" 0.0011499332791939641;
	setAttr ".wl[1045].w[12]" 0.0011743428961774229;
	setAttr ".wl[1045].w[13]" 8.437042037234832e-011;
	setAttr ".wl[1045].w[14]" 0.99661950812307687;
	setAttr ".wl[1045].w[19]" 0.0010562156171813558;
	setAttr -s 5 ".wl[1046].w";
	setAttr ".wl[1046].w[11]" 0.00031211140360836012;
	setAttr ".wl[1046].w[12]" 0.00080807611339554785;
	setAttr ".wl[1046].w[13]" 0.0042933961376547813;
	setAttr ".wl[1046].w[14]" 0.9943063573473121;
	setAttr ".wl[1046].w[19]" 0.00028005899802921778;
	setAttr -s 5 ".wl[1047].w";
	setAttr ".wl[1047].w[11]" 0.00088639174813817776;
	setAttr ".wl[1047].w[12]" 0.00097569976204958989;
	setAttr ".wl[1047].w[13]" 9.552948709856679e-012;
	setAttr ".wl[1047].w[14]" 0.99733483081647767;
	setAttr ".wl[1047].w[19]" 0.00080307766378167732;
	setAttr -s 5 ".wl[1048].w";
	setAttr ".wl[1048].w[11]" 0.00020557113515091432;
	setAttr ".wl[1048].w[12]" 0.00027719958876561851;
	setAttr ".wl[1048].w[13]" 2.6427412341822887e-011;
	setAttr ".wl[1048].w[14]" 0.99933344561906845;
	setAttr ".wl[1048].w[19]" 0.00018378363058757432;
	setAttr -s 4 ".wl[1049].w";
	setAttr ".wl[1049].w[11]" 0.00069801145164333776;
	setAttr ".wl[1049].w[12]" 0.00083086486056982987;
	setAttr ".wl[1049].w[14]" 0.99782845987986613;
	setAttr ".wl[1049].w[15]" 0.00064266380792074248;
	setAttr -s 4 ".wl[1050].w";
	setAttr ".wl[1050].w[11]" 0.00018031708350388858;
	setAttr ".wl[1050].w[12]" 0.00025393232873404217;
	setAttr ".wl[1050].w[14]" 0.99940637214907635;
	setAttr ".wl[1050].w[15]" 0.00015937843868577391;
	setAttr -s 4 ".wl[1051].w";
	setAttr ".wl[1051].w[11]" 0.00059001037500013411;
	setAttr ".wl[1051].w[12]" 0.00081756609659145742;
	setAttr ".wl[1051].w[14]" 0.99804320206046326;
	setAttr ".wl[1051].w[15]" 0.00054922146794520268;
	setAttr -s 4 ".wl[1052].w";
	setAttr ".wl[1052].w[11]" 9.5056785426557173e-005;
	setAttr ".wl[1052].w[12]" 0.0001304138455865666;
	setAttr ".wl[1052].w[14]" 0.9996905634427119;
	setAttr ".wl[1052].w[15]" 8.3965926275035243e-005;
	setAttr -s 5 ".wl[1053].w[11:15]"  0.00080747593508820163 0.0012206463845911963 
		1.2775973334822055e-010 0.99720935509615183 0.00076252245640902588;
	setAttr -s 4 ".wl[1054].w";
	setAttr ".wl[1054].w[11]" 0.00018717224624268612;
	setAttr ".wl[1054].w[12]" 0.00027407843516664293;
	setAttr ".wl[1054].w[14]" 0.99936946538788474;
	setAttr ".wl[1054].w[15]" 0.00016928393070596461;
	setAttr -s 5 ".wl[1055].w[11:15]"  0.00073969461083844357 0.0012142820825258331 
		5.8472218178451385e-009 0.99735875813549502 0.00068725932391886706;
	setAttr -s 4 ".wl[1056].w";
	setAttr ".wl[1056].w[11]" 7.3534836344863797e-005;
	setAttr ".wl[1056].w[12]" 9.906202346778839e-005;
	setAttr ".wl[1056].w[14]" 0.99976244980532758;
	setAttr ".wl[1056].w[15]" 6.4953334859851314e-005;
	setAttr -s 5 ".wl[1057].w[11:15]"  0.00052311277352482086 0.00082048856852618909 
		1.5110509510307679e-009 0.99818509415965795 0.00047130298724005115;
	setAttr -s 4 ".wl[1058].w";
	setAttr ".wl[1058].w[11]" 7.2667608569669702e-005;
	setAttr ".wl[1058].w[12]" 9.8569258183205485e-005;
	setAttr ".wl[1058].w[14]" 0.99976501942345164;
	setAttr ".wl[1058].w[15]" 6.3743709795555993e-005;
	setAttr -s 4 ".wl[1059].w";
	setAttr ".wl[1059].w[11]" 0.00028416308727952777;
	setAttr ".wl[1059].w[12]" 0.00042052863082776907;
	setAttr ".wl[1059].w[14]" 0.99904675464633663;
	setAttr ".wl[1059].w[15]" 0.00024855363555614519;
	setAttr -s 4 ".wl[1060].w";
	setAttr ".wl[1060].w[11]" 2.5922132923548728e-005;
	setAttr ".wl[1060].w[12]" 3.2621163894160706e-005;
	setAttr ".wl[1060].w[14]" 0.99991930144450991;
	setAttr ".wl[1060].w[15]" 2.2155258672391592e-005;
	setAttr -s 5 ".wl[1061].w[11:15]"  0.00021696312010287565 0.0003230586873554997 
		2.5652913820950474e-011 0.99927874539997064 0.00018123276691800672;
	setAttr -s 5 ".wl[1062].w[11:15]"  2.8405387575732748e-005 3.6262986371791936e-005 
		9.4655498716900155e-011 0.99991146272754672 2.3868803850271553e-005;
	setAttr -s 4 ".wl[1063].w";
	setAttr ".wl[1063].w[11]" 0.000158922161151451;
	setAttr ".wl[1063].w[12]" 0.00023100369708043604;
	setAttr ".wl[1063].w[14]" 0.99948041904902885;
	setAttr ".wl[1063].w[15]" 0.00012965509273930929;
	setAttr -s 4 ".wl[1064].w";
	setAttr ".wl[1064].w[11]" 1.6817213139472612e-005;
	setAttr ".wl[1064].w[12]" 2.0447685265275963e-005;
	setAttr ".wl[1064].w[14]" 0.99994887320748704;
	setAttr ".wl[1064].w[19]" 1.3861894108192083e-005;
	setAttr -s 4 ".wl[1065].w";
	setAttr ".wl[1065].w[11]" 0.00020757425609143731;
	setAttr ".wl[1065].w[12]" 0.00029110589942205756;
	setAttr ".wl[1065].w[14]" 0.99933719992484094;
	setAttr ".wl[1065].w[19]" 0.00016411991964560002;
	setAttr -s 5 ".wl[1066].w";
	setAttr ".wl[1066].w[11]" 3.6085573552028995e-005;
	setAttr ".wl[1066].w[12]" 8.9353720193248852e-005;
	setAttr ".wl[1066].w[13]" 0.04464380070567131;
	setAttr ".wl[1066].w[14]" 0.95520075077172661;
	setAttr ".wl[1066].w[19]" 3.0009228856728626e-005;
	setAttr -s 5 ".wl[1067].w";
	setAttr ".wl[1067].w[11]" 0.0001386837807327754;
	setAttr ".wl[1067].w[12]" 0.00019458226481950376;
	setAttr ".wl[1067].w[13]" 4.228862052202409e-012;
	setAttr ".wl[1067].w[14]" 0.99955509659411967;
	setAttr ".wl[1067].w[19]" 0.00011163735609915608;
	setAttr -s 5 ".wl[1068].w[11:15]"  1.9550532318857184e-005 2.4425549887437604e-005 
		2.1741048197854163e-011 0.99993977431661241 1.624957944020035e-005;
	setAttr -s 4 ".wl[1069].w";
	setAttr ".wl[1069].w[11]" 0.00015940029213989563;
	setAttr ".wl[1069].w[12]" 0.00019276673109650612;
	setAttr ".wl[1069].w[14]" 0.99951992456684124;
	setAttr ".wl[1069].w[19]" 0.00012790840992238373;
	setAttr -s 4 ".wl[1070].w";
	setAttr ".wl[1070].w[11]" 2.1098949795051233e-005;
	setAttr ".wl[1070].w[12]" 2.4644921831102364e-005;
	setAttr ".wl[1070].w[14]" 0.99993663097408425;
	setAttr ".wl[1070].w[19]" 1.7625154289594774e-005;
	setAttr -s 4 ".wl[1071].w";
	setAttr ".wl[1071].w[11]" 0.0002481009860482673;
	setAttr ".wl[1071].w[12]" 0.00026810544799956484;
	setAttr ".wl[1071].w[14]" 0.99926734733216627;
	setAttr ".wl[1071].w[19]" 0.00021644623378589206;
	setAttr -s 4 ".wl[1072].w";
	setAttr ".wl[1072].w[11]" 2.0728792025245053e-005;
	setAttr ".wl[1072].w[12]" 2.3226794205553147e-005;
	setAttr ".wl[1072].w[14]" 0.99993834995549913;
	setAttr ".wl[1072].w[19]" 1.7694458270105847e-005;
	setAttr -s 4 ".wl[1073].w";
	setAttr ".wl[1073].w[11]" 0.00048141991539791791;
	setAttr ".wl[1073].w[12]" 0.00049449826849431175;
	setAttr ".wl[1073].w[14]" 0.99858800171106199;
	setAttr ".wl[1073].w[19]" 0.00043608010504586327;
	setAttr -s 4 ".wl[1074].w";
	setAttr ".wl[1074].w[11]" 6.5291717645969108e-005;
	setAttr ".wl[1074].w[12]" 7.1072354299742065e-005;
	setAttr ".wl[1074].w[14]" 0.9998063447358555;
	setAttr ".wl[1074].w[19]" 5.7291192198748362e-005;
	setAttr -s 5 ".wl[1075].w";
	setAttr ".wl[1075].w[11]" 0.00066608746977816591;
	setAttr ".wl[1075].w[12]" 0.00070842349072768832;
	setAttr ".wl[1075].w[13]" 6.0484298125551561e-011;
	setAttr ".wl[1075].w[14]" 0.99800761758500678;
	setAttr ".wl[1075].w[19]" 0.00061787139400307375;
	setAttr -s 4 ".wl[1076].w";
	setAttr ".wl[1076].w[11]" 7.3568735819000644e-005;
	setAttr ".wl[1076].w[12]" 8.4605978035240598e-005;
	setAttr ".wl[1076].w[14]" 0.99977667427780947;
	setAttr ".wl[1076].w[19]" 6.5151008336329565e-005;
	setAttr -s 5 ".wl[1077].w";
	setAttr ".wl[1077].w[11]" 0.0008844829704868915;
	setAttr ".wl[1077].w[12]" 0.00096625817723987057;
	setAttr ".wl[1077].w[13]" 8.5443019326447711e-010;
	setAttr ".wl[1077].w[14]" 0.9973167630030878;
	setAttr ".wl[1077].w[19]" 0.00083249499475529455;
	setAttr -s 5 ".wl[1078].w";
	setAttr ".wl[1078].w[11]" 0.00019910470540074747;
	setAttr ".wl[1078].w[12]" 0.00024022443336356696;
	setAttr ".wl[1078].w[13]" 5.3946895561818309e-011;
	setAttr ".wl[1078].w[14]" 0.99938001200108517;
	setAttr ".wl[1078].w[19]" 0.00018065880620369749;
	setAttr -s 5 ".wl[1079].w";
	setAttr ".wl[1079].w[12]" 0.0024648133130896902;
	setAttr ".wl[1079].w[13]" 3.1557348067519458e-009;
	setAttr ".wl[1079].w[14]" 0.98723138251709375;
	setAttr ".wl[1079].w[19]" 0.0060883845155995835;
	setAttr ".wl[1079].w[20]" 0.0042154164984822273;
	setAttr -s 5 ".wl[1080].w";
	setAttr ".wl[1080].w[12]" 0.00039989206122503313;
	setAttr ".wl[1080].w[13]" 1.5189220490987033e-010;
	setAttr ".wl[1080].w[14]" 0.99794031484431323;
	setAttr ".wl[1080].w[19]" 0.0010197001757258034;
	setAttr ".wl[1080].w[20]" 0.00064009276684373617;
	setAttr -s 4 ".wl[1081].w";
	setAttr ".wl[1081].w[12]" 0.00027390603357094445;
	setAttr ".wl[1081].w[14]" 0.99636034126029183;
	setAttr ".wl[1081].w[19]" 0.002714421262331965;
	setAttr ".wl[1081].w[20]" 0.00065133144380524755;
	setAttr -s 4 ".wl[1082].w";
	setAttr ".wl[1082].w[12]" 3.4929173910555939e-006;
	setAttr ".wl[1082].w[14]" 0.99995882072784648;
	setAttr ".wl[1082].w[19]" 3.2498955324418808e-005;
	setAttr ".wl[1082].w[20]" 5.1873994380002841e-006;
	setAttr -s 5 ".wl[1083].w";
	setAttr ".wl[1083].w[11]" 0.0037494658916437849;
	setAttr ".wl[1083].w[12]" 0.0041882864016009177;
	setAttr ".wl[1083].w[13]" 3.704065950509477e-006;
	setAttr ".wl[1083].w[14]" 0.98698538541793823;
	setAttr ".wl[1083].w[19]" 0.0050731582228665563;
	setAttr -s 5 ".wl[1084].w";
	setAttr ".wl[1084].w[11]" 0.0023763277533306918;
	setAttr ".wl[1084].w[12]" 0.0020232844620717604;
	setAttr ".wl[1084].w[13]" 7.7387005086999133e-006;
	setAttr ".wl[1084].w[14]" 0.9920533299446106;
	setAttr ".wl[1084].w[19]" 0.0035393191394782527;
	setAttr -s 5 ".wl[1085].w";
	setAttr ".wl[1085].w[12]" 0.0047220335592651859;
	setAttr ".wl[1085].w[13]" 2.1376733597002185e-007;
	setAttr ".wl[1085].w[14]" 0.9834398627281189;
	setAttr ".wl[1085].w[19]" 0.0063439188138225142;
	setAttr ".wl[1085].w[20]" 0.0054939711314574329;
	setAttr -s 5 ".wl[1086].w";
	setAttr ".wl[1086].w[12]" 0.0018288931687692911;
	setAttr ".wl[1086].w[13]" 1.92591623684388e-007;
	setAttr ".wl[1086].w[14]" 0.99219930171966553;
	setAttr ".wl[1086].w[19]" 0.0032252109476006022;
	setAttr ".wl[1086].w[20]" 0.0027464015723408946;
	setAttr -s 5 ".wl[1087].w";
	setAttr ".wl[1087].w[11]" 0.001390213901213383;
	setAttr ".wl[1087].w[12]" 0.0014817398662384316;
	setAttr ".wl[1087].w[13]" 2.6725071933242361e-008;
	setAttr ".wl[1087].w[14]" 0.99579562591299897;
	setAttr ".wl[1087].w[19]" 0.0013323935944772297;
	setAttr -s 5 ".wl[1088].w";
	setAttr ".wl[1088].w[11]" 0.00078950000889320274;
	setAttr ".wl[1088].w[12]" 0.00088746305934962755;
	setAttr ".wl[1088].w[13]" 5.6421436966935801e-011;
	setAttr ".wl[1088].w[14]" 0.99757909155831492;
	setAttr ".wl[1088].w[19]" 0.00074394531702080228;
	setAttr -s 5 ".wl[1089].w";
	setAttr ".wl[1089].w[11]" 0.0033591300921485168;
	setAttr ".wl[1089].w[12]" 0.003457860438688184;
	setAttr ".wl[1089].w[13]" 5.4224901759880595e-006;
	setAttr ".wl[1089].w[14]" 0.98926118180965605;
	setAttr ".wl[1089].w[19]" 0.0039164051693312421;
	setAttr -s 5 ".wl[1090].w";
	setAttr ".wl[1090].w[11]" 0.002640573771933814;
	setAttr ".wl[1090].w[12]" 0.0025771367607346223;
	setAttr ".wl[1090].w[13]" 4.3540882188608521e-007;
	setAttr ".wl[1090].w[14]" 0.99152933140745025;
	setAttr ".wl[1090].w[19]" 0.0032525226510594766;
	setAttr -s 5 ".wl[1091].w[12:16]"  0.0012739262304266204 0.00017643343776190557 
		0.99154084920883179 0.0052085579821478899 0.0018002331408317966;
	setAttr -s 5 ".wl[1092].w[12:16]"  0.0025369153852584318 0.0020665018527363812 
		0.9791761040687561 0.011978995876804422 0.0042414828164446606;
	setAttr -s 5 ".wl[1093].w[12:16]"  0.00018952291877101499 0.00046410751278870658 
		0.99686568975448608 0.0020517538961235217 0.00042892591783067255;
	setAttr -s 5 ".wl[1094].w[12:16]"  0.00058247861876315496 0.00563964465662693 
		0.98474210500717163 0.0070922860653656683 0.0019434856520726147;
	setAttr -s 5 ".wl[1095].w[11:15]"  0.011692271223996764 0.017538149050366995 
		0.0082153324361204285 0.94979763031005859 0.012756616979457219;
	setAttr -s 5 ".wl[1096].w[11:15]"  0.013388428029366356 0.019853043402102331 
		0.0083696283400058746 0.94392519565222321 0.014463704576302167;
	setAttr -s 5 ".wl[1097].w[12:16]"  0.0042703905753022743 0.001176897921672702 
		0.98500746488571167 0.0064786847324089002 0.0030665618849044524;
	setAttr -s 5 ".wl[1098].w[12:16]"  0.0070694628389968376 0.00287016713148408 
		0.9716726541519165 0.012734261385768719 0.005653454491833858;
	setAttr -s 5 ".wl[1099].w[11:15]"  0.0015776578638619892 0.002629053692704459 
		4.9826854819912114e-007 0.99427053609004801 0.0015222540848373336;
	setAttr -s 5 ".wl[1100].w[11:15]"  0.00098847323309493302 0.0016393938976793181 
		2.3444489016810621e-008 0.99643651846460068 0.0009355909601360588;
	setAttr -s 5 ".wl[1101].w[11:15]"  0.0041692130377859529 0.0081742807621075966 
		7.4704352300614119e-005 0.9834158813598336 0.0041659204879722139;
	setAttr -s 5 ".wl[1102].w[11:15]"  0.0044752500083283424 0.0094507298319113867 
		4.913672455586493e-005 0.98161394324325757 0.0044109401919468893;
	setAttr -s 5 ".wl[1103].w";
	setAttr ".wl[1103].w[11]" 0.030172177267655503;
	setAttr ".wl[1103].w[12]" 0.080477653403210545;
	setAttr ".wl[1103].w[13]" 0.87014985766220454;
	setAttr ".wl[1103].w[15]" 0.019182506948709488;
	setAttr ".wl[1103].w[19]" 1.7804718219836355e-005;
	setAttr -s 5 ".wl[1104].w";
	setAttr ".wl[1104].w[11]" 0.029996587459451166;
	setAttr ".wl[1104].w[12]" 0.12990078859301737;
	setAttr ".wl[1104].w[13]" 0.82201009019728188;
	setAttr ".wl[1104].w[15]" 0.017716135829687119;
	setAttr ".wl[1104].w[19]" 0.00037639792056247894;
	setAttr -s 5 ".wl[1105].w";
	setAttr ".wl[1105].w[11]" 0.12657356817902887;
	setAttr ".wl[1105].w[12]" 0.065985799087144983;
	setAttr ".wl[1105].w[13]" 0.80732082138329075;
	setAttr ".wl[1105].w[15]" 0.00011963093857048079;
	setAttr ".wl[1105].w[19]" 1.8041196489653995e-007;
	setAttr -s 5 ".wl[1106].w";
	setAttr ".wl[1106].w[11]" 0.074785488982870921;
	setAttr ".wl[1106].w[12]" 0.13036010588361321;
	setAttr ".wl[1106].w[13]" 0.79483824358540134;
	setAttr ".wl[1106].w[15]" 4.2523370211711153e-006;
	setAttr ".wl[1106].w[19]" 1.190921109339075e-005;
	setAttr -s 5 ".wl[1107].w";
	setAttr ".wl[1107].w[11]" 0.21169037489220291;
	setAttr ".wl[1107].w[12]" 0.075924342046359755;
	setAttr ".wl[1107].w[13]" 0.71229066762856774;
	setAttr ".wl[1107].w[15]" 9.0827008534688503e-005;
	setAttr ".wl[1107].w[19]" 3.7884243348986333e-006;
	setAttr -s 5 ".wl[1108].w";
	setAttr ".wl[1108].w[11]" 0.18803387641012914;
	setAttr ".wl[1108].w[12]" 0.16975716784062425;
	setAttr ".wl[1108].w[13]" 0.6421369760826362;
	setAttr ".wl[1108].w[15]" 7.1694477810524404e-005;
	setAttr ".wl[1108].w[19]" 2.8518879994622052e-007;
	setAttr -s 4 ".wl[1109].w";
	setAttr ".wl[1109].w[11]" 0.25847217785668991;
	setAttr ".wl[1109].w[12]" 0.082197841419387227;
	setAttr ".wl[1109].w[13]" 0.63896673339744881;
	setAttr ".wl[1109].w[15]" 0.020363247326474078;
	setAttr -s 4 ".wl[1110].w[11:14]"  0.13928112141148891 0.11729685780645033 
		0.63983454228311865 0.10358747849894208;
	setAttr -s 5 ".wl[1111].w";
	setAttr ".wl[1111].w[11]" 0.26841706559626949;
	setAttr ".wl[1111].w[12]" 0.072860933033117262;
	setAttr ".wl[1111].w[13]" 0.53050347237431295;
	setAttr ".wl[1111].w[15]" 0.028021847079586583;
	setAttr ".wl[1111].w[19]" 0.10019668191671371;
	setAttr -s 5 ".wl[1112].w";
	setAttr ".wl[1112].w[12]" 0.039358077614737662;
	setAttr ".wl[1112].w[13]" 0.1283629254105331;
	setAttr ".wl[1112].w[14]" 0.51078939342927721;
	setAttr ".wl[1112].w[19]" 0.29696458699920264;
	setAttr ".wl[1112].w[20]" 0.02452501654624939;
	setAttr -s 5 ".wl[1113].w";
	setAttr ".wl[1113].w[11]" 0.00013996495173422164;
	setAttr ".wl[1113].w[12]" 0.00043149768098255299;
	setAttr ".wl[1113].w[14]" 0.94236705126994058;
	setAttr ".wl[1113].w[19]" 0.056921166868239045;
	setAttr ".wl[1113].w[20]" 0.00014031922910362482;
	setAttr -s 5 ".wl[1114].w";
	setAttr ".wl[1114].w[11]" 2.2591138428103101e-005;
	setAttr ".wl[1114].w[13]" 1.2809680777328128e-005;
	setAttr ".wl[1114].w[14]" 0.99099430146168144;
	setAttr ".wl[1114].w[19]" 0.00875402952695142;
	setAttr ".wl[1114].w[20]" 0.00021626819216180593;
	setAttr -s 5 ".wl[1115].w";
	setAttr ".wl[1115].w[11]" 3.5589322749358378e-007;
	setAttr ".wl[1115].w[12]" 7.5204201507168088e-008;
	setAttr ".wl[1115].w[14]" 0.99986165080451472;
	setAttr ".wl[1115].w[19]" 0.00013774150138482239;
	setAttr ".wl[1115].w[20]" 1.7659667150837777e-007;
	setAttr ".wl[1116].w[14]"  1;
	setAttr -s 5 ".wl[1117].w";
	setAttr ".wl[1117].w[11]" 5.7621234653904003e-009;
	setAttr ".wl[1117].w[12]" 8.4238009949503361e-010;
	setAttr ".wl[1117].w[14]" 0.99999980815787237;
	setAttr ".wl[1117].w[19]" 1.8416761370754683e-007;
	setAttr ".wl[1117].w[20]" 1.0700103025840235e-009;
	setAttr ".wl[1118].w[14]"  1;
	setAttr -s 5 ".wl[1119].w";
	setAttr ".wl[1119].w[12]" 2.8466720663167684e-008;
	setAttr ".wl[1119].w[13]" 6.3801259006537906e-009;
	setAttr ".wl[1119].w[14]" 0.99999819555339675;
	setAttr ".wl[1119].w[19]" 1.503917368642227e-006;
	setAttr ".wl[1119].w[20]" 2.6568238808977185e-007;
	setAttr ".wl[1120].w[14]"  1;
	setAttr -s 4 ".wl[1121].w";
	setAttr ".wl[1121].w[12]" 5.8350893958085685e-009;
	setAttr ".wl[1121].w[14]" 0.99999982118606567;
	setAttr ".wl[1121].w[19]" 9.6943012628514316e-008;
	setAttr ".wl[1121].w[20]" 7.6035832301848985e-008;
	setAttr ".wl[1122].w[14]"  1;
	setAttr ".wl[1123].w[14]"  1;
	setAttr -s 4 ".wl[1124].w";
	setAttr ".wl[1124].w[12]" 8.82716960733486e-009;
	setAttr ".wl[1124].w[14]" 0.9999997615814209;
	setAttr ".wl[1124].w[15]" 2.0457024215939556e-008;
	setAttr ".wl[1124].w[19]" 2.0913438527828809e-007;
	setAttr -s 4 ".wl[1125].w";
	setAttr ".wl[1125].w[11]" 9.1189160290619315e-008;
	setAttr ".wl[1125].w[12]" 7.9854055592875784e-009;
	setAttr ".wl[1125].w[14]" 0.99999988079071045;
	setAttr ".wl[1125].w[15]" 2.0034723700874363e-008;
	setAttr -s 5 ".wl[1126].w[12:16]"  3.0760972046142055e-005 1.330270382459052e-005 
		0.99900060892105103 0.00075991790883098479 0.00019540949424725723;
	setAttr -s 5 ".wl[1127].w";
	setAttr ".wl[1127].w[12]" 6.9026016757848421e-006;
	setAttr ".wl[1127].w[13]" 5.8283835738473199e-008;
	setAttr ".wl[1127].w[14]" 0.99974545730357456;
	setAttr ".wl[1127].w[19]" 0.00023776758819224898;
	setAttr ".wl[1127].w[20]" 9.8142227216158062e-006;
	setAttr -s 5 ".wl[1128].w";
	setAttr ".wl[1128].w[11]" 1.6894635844017501e-005;
	setAttr ".wl[1128].w[12]" 2.0403419676475308e-005;
	setAttr ".wl[1128].w[13]" 1.4365925116166522e-011;
	setAttr ".wl[1128].w[14]" 0.99994823452705661;
	setAttr ".wl[1128].w[19]" 1.4467403057048541e-005;
	setAttr ".wl[1129].w[14]"  1;
	setAttr ".wl[1130].w[14]"  1;
	setAttr -s 5 ".wl[1131].w[12:16]"  0.00010329884449988079 0.0012883628816900187 
		0.99473583698272705 0.0033873741783505325 0.0004851271127325167;
	setAttr -s 4 ".wl[1132].w";
	setAttr ".wl[1132].w[12]" 1.027111246579897e-009;
	setAttr ".wl[1132].w[14]" 0.99999994039535522;
	setAttr ".wl[1132].w[15]" 3.3191846948676247e-008;
	setAttr ".wl[1132].w[16]" 2.5385686580134483e-008;
	setAttr -s 4 ".wl[1133].w";
	setAttr ".wl[1133].w[12]" 1.0199392651716447e-007;
	setAttr ".wl[1133].w[14]" 0.99999878542492038;
	setAttr ".wl[1133].w[19]" 1.1047489986396145e-006;
	setAttr ".wl[1133].w[20]" 7.8321544805248777e-009;
	setAttr ".wl[1134].w[14]"  1;
	setAttr ".wl[1135].w[14]"  1;
	setAttr ".wl[1136].w[14]"  1;
	setAttr ".wl[1137].w[14]"  1;
	setAttr ".wl[1138].w[14]"  1;
	setAttr ".wl[1139].w[14]"  1;
	setAttr ".wl[1140].w[14]"  1;
	setAttr ".wl[1141].w[14]"  1;
	setAttr ".wl[1142].w[14]"  1;
	setAttr ".wl[1143].w[14]"  1;
	setAttr ".wl[1144].w[14]"  1;
	setAttr ".wl[1145].w[14]"  1;
	setAttr ".wl[1146].w[14]"  1;
	setAttr ".wl[1147].w[14]"  1;
	setAttr ".wl[1148].w[14]"  1;
	setAttr ".wl[1149].w[14]"  1;
	setAttr ".wl[1150].w[14]"  1;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 0.99977282744915219 0.021314161825597554 0
		 -0 -0.021314161825597554 0.99977282744915219 -0 -0.043862506586105236 -1.3105932202785699 -0.30826861574940173 1;
	setAttr ".pm[1]" -type "matrix" -0.06244809303584823 -0.098252191134387046 0.99320025302729265 -0
		 -0.82995323236898133 0.5578249175013954 0.0029989156108359283 0 -0.55432649923710631 -0.82412248382861952 -0.11637982596516105 0
		 1.1878335868177698 -0.56049404832728944 0.24872814315373964 1;
	setAttr ".pm[2]" -type "matrix" 0.024002554392111981 0.11682403011110465 -0.99286254001813035 -0
		 -0.95959467962061795 0.28121208164885864 0.0098901960809178336 0 0.28036035423443334 0.95250822102662969 0.11885352603195071 -0
		 0.62657783398500666 0.013836357536013779 -0.26021732019716437 1;
	setAttr ".pm[3]" -type "matrix" -0.10449224131745466 -0.043294653613820809 0.99358288253819771 -0
		 -0.26810555845955186 0.96329100153956371 0.013778819833214346 0 -0.95770599926467337 -0.26494531383167258 -0.11226397307725097 0
		 0.04473639427350197 -0.099203657723617319 0.26493255504878821 1;
	setAttr ".pm[4]" -type "matrix" -0.1124263495817811 0.012384322621809007 0.9935828825381976 -0
		 0.22898946216763869 0.9733313774558896 0.013778819833214348 0 -0.96691475432733465 0.22906911230678753 -0.11226397307725093 0
		 -0.13825008261422592 -0.037219485304337316 0.26493255504878815 1;
	setAttr ".pm[5]" -type "matrix" 0.99358288253819782 0.002454813193475422 0.11307974805097187 -0
		 0.013778819833214566 0.9896911953977604 -0.14255343516084237 0 -0.11226397307725197 0.14319675849801167 0.98330640631726396 -0
		 0.26493255504878799 -0.028362375772269095 0.31863992588956785 1;
	setAttr ".pm[6]" -type "matrix" 0.0067275771123752742 -0.12195072889717815 0.99251335478553826 -0
		 0.83237963280602723 -0.54935815095966845 -0.073142114160566624 0 0.55416503552272234 0.82663997102464215 0.097813453616967388 -0
		 -1.2073008846111137 0.56503656964224924 -0.24042464931585061 1;
	setAttr ".pm[7]" -type "matrix" 0.086346604369112109 0.079004600827873181 -0.99312765391058977 -0
		 0.95612169494720844 -0.28669236514877272 0.060322402278758139 0 -0.27995636868126722 -0.95475953036009586 -0.10029292508131978 0
		 -0.64262862089298323 -0.0032201085896980666 0.25213173690986118 1;
	setAttr ".pm[8]" -type "matrix" -0.10449031052223841 -0.043301963966729799 0.99358276702224924 -0
		 0.26813220921445963 -0.96328351952705271 -0.013783301104864859 0 0.95769874876640559 0.26497132094662262 0.11226444533806058 -0
		 -0.044740865871688157 0.099209864730582006 -0.26493224048444752 1;
	setAttr ".pm[9]" -type "matrix" -0.11242814411825373 0.012376986085874639 0.99358277089810398 -0
		 -0.22896250303831894 -0.97333765622761703 -0.01378329321159864 0 0.96692092986580469 -0.22904282827619626 0.11226441200437406 -0
		 0.13824905597639395 0.03722676645962264 -0.26493222341726219 1;
	setAttr ".pm[10]" -type "matrix" 0.99358276875381835 0.0024473456567907712 0.11308090968298533 -0
		 -0.013783297578485348 -0.98969508030599507 0.14252602824036475 0 0.11226443044597074 -0.14317003358715294 -0.98331024561899849 -0
		 -0.26493202482435407 0.028369466606594715 -0.31863834027412219 1;
	setAttr ".pm[11]" -type "matrix" 1.3784584905407121e-016 2.4090603909834148e-016 -1 -0
		 0.99475559455702389 0.10228053137084105 1.2747318663001e-016 0 0.10228053137084099 -0.99475559455702389 -1.5430466465290392e-016 -0
		 -1.6867089546176282 0.14553429036186413 0.043862506586105084 1;
	setAttr ".pm[12]" -type "matrix" 2.2784362644912852e-016 -2.8097171339274678e-016 1 -0
		 0.94249160465391801 0.33422982385909633 -8.654183823314743e-017 0 -0.33422982385909639 0.94249160465391812 2.6972659733917125e-016 -0
		 -1.9953863606863493 -1.0795219858008154 -0.043862506586105202 1;
	setAttr ".pm[13]" -type "matrix" 1.0020710296639323e-016 4.7005115599720401e-016 -1 -0
		 0.99820719623761522 0.059853098327817114 9.3871728761768739e-017 0 0.059853098327817059 -0.99820719623761534 -3.9197172211499626e-016 -0
		 -2.4830543140688768 0.11430839601299761 0.043862506586105209 1;
	setAttr ".pm[14]" -type "matrix" 1 -3.2658366260539222e-016 -3.7483293935356234e-016 -0
		 4.0568799912719686e-016 0.99991866860891199 -0.012753672701641443 0 3.9834346160184917e-016 0.012753672701641388 0.99991866860891199 -0
		 -0.043862506586106957 -3.4056358230012815 -0.27507869213496944 1;
	setAttr ".pm[15]" -type "matrix" 0.99999249070909124 0.0038535825656942292 -0.00041039838896836253 -0
		 0.0038535847802592975 -0.9999925749039994 4.6055164810740715e-006 0 -0.00041037759398277873 -6.186986882478975e-006 -0.99999991577597236 0
		 0.13072431826944328 2.2094801440371472 0.22236288780787217 1;
	setAttr ".pm[16]" -type "matrix" 0.99964647936566609 -0.026584729921362751 -0.00041039838896836259 -0
		 -0.026584730270443547 -0.99964656358897053 4.6055164810740715e-006 0 -0.00041037577564634125 6.3064421381817695e-006 -0.99999991577597258 -0
		 0.72448808219646765 2.1884429946997681 0.22236288780787236 1;
	setAttr ".pm[17]" -type "matrix" 0.99079493005563546 -0.050379403223161624 -0.12564761162444249 -0
		 -0.050781852679908673 -0.998709769371661 7.4853317988399246e-016 0 -0.12548549722754687 0.0063806185030940727 -0.99207493552305492 -0
		 1.2758034335655501 2.1576832240167874 0.077127071130073152 1;
	setAttr ".pm[18]" -type "matrix" 0.99207493552305481 -3.3950463368519217e-016 -0.12564761162444246 -0
		 -3.738179738997256e-016 -1.0000000000000002 7.485255628174587e-016 0 -0.12564761162444235 -6.9252296886022233e-016 -0.99207493552305492 -0
		 1.3896862012878937 2.2325369770467551 0.077127071130073208 1;
	setAttr ".pm[19]" -type "matrix" 0.97749729219802062 -0.031768508228365244 0.20854209558379602 -0
		 0.031176876278365039 0.99949512073078572 0.0061242159396026393 0 -0.20863136420744699 0.00051528661504944193 0.97799421693006106 -0
		 -0.2442289356991045 -2.2007551169043045 -0.27837588445298106 1;
	setAttr ".pm[20]" -type "matrix" 0.97749762266735651 -0.031758330245929084 0.2085420968045941 -0
		 0.031166473736819515 0.99949544528807888 0.0061241949019618571 0 -0.20863137011120442 0.00051313582566238868 0.97799421680148302 -0
		 -0.77102541170194339 -2.2007582126247094 -0.27837583882284966 1;
	setAttr ".pm[21]" -type "matrix" 0.98851349713153569 -0.15113261058910685 -2.3026994373273282e-006 -0
		 0.15113261060567681 0.98851349695578061 1.8648498102865457e-005 0 -5.4214672865427478e-007 -1.8782305053321109e-005 0.99999999982346555 -0
		 -1.5355914445877019 -2.0315981542874577 -0.012441320860198326 1;
	setAttr ".pm[22]" -type "matrix" 0.99491288070836015 -0.10073906787000972 -2.2965044753902918e-006 -0
		 0.10073906789534204 0.9949128805348183 1.8587315807298318e-005 -0 4.1235301410637811e-007 -1.872410763474843e-005 0.99999999982461907 -0
		 -1.6555418592706259 -2.1198071034232093 -0.012441190300714318 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.019356896598695883 1;
	setAttr -s 23 ".ma";
	setAttr -s 23 ".dpf[0:22]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4;
	setAttr -s 23 ".lw";
	setAttr -s 23 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "85625886-4EAB-6278-CC0D-D3A92DD10443";
createNode objectSet -n "skinCluster1Set";
	rename -uid "36C54D56-488A-2CB5-5DD7-199B61887E06";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CA4FF2C1-46F8-688F-5F6F-BC9A9E836958";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "6F9C59FB-40FC-2A3B-98F9-0195A4CA6002";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "7E5D74CE-44E1-0815-B946-16957D5DBEC0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "7AC5E49D-4488-B46D-1C50-73A9F24AADA9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B91A9770-492F-4D75-9744-F193FBB0A713";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "96433214-4F28-777C-F1C8-65949F635B77";
	setAttr -s 23 ".wm";
	setAttr -s 23 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -0.021315775969777909 1.4029633978968469e-017
		 -1.1913328690391476e-016 0 0.043862506586105243 1.3168659766354311 0.28026438959706718 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -0.098604039682641073 0.062488753238236154
		 0.46827529778650356 0 -0.27179118732664598 -0.017935970966817427 -0.055180390663681383 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46329759436098145 0.53418661445166093 -0.46329759436098167 0.53418661445166105 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -0.0060206927025198143 -0.011666954280843326
		 0.53096574506200123 0 0.79462156969816689 -0.068665085425525671 -0.0042399603801031175 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98508009754269066 -0.17209648870701288 -1.0537870701977097e-017 6.0318759417970931e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -0.021026345319471562 -0.012732263334343135
		 0.22422864735513184 0 0.53354299271843231 0.056452473946840644 0.0072903513481208182 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7774760540784037 -0.62891254188056633 -3.8509786567883061e-017 4.7606678052041582e-017 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14796918811061285 1.0408340855860843e-016
		 1.9861890614982498e-019 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.2486218065536997 0.96860063870822155 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.18164953624992924 -0.03697335337892646
		 -1.0068147570624964e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.031105264725682136 -0.7064222975716048 -0.031105264725682112 0.70642229757160535 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -0.1222578253464531 -0.0067276278620945918
		 0.46679334592752492 0 0.271791 -0.017938983120353136 -0.055180390121830222 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53418661445166127 0.4632975943609815 0.53418661445166093 0.46329759436098139 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -0.0059945022201080139 -0.011616375347998668
		 0.52863994363205735 0 -0.79461882232333658 0.068664685564290284 0.004240007735662743 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98508009754269055 -0.17209648870701283 -1.8133311774149405e-009 1.0379505511969936e-008 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0.041701968649010379 0.023898454574573236
		 0.23126554807324895 0 -0.53354239100872891 -0.056452501726537305 -0.0072905851009530953 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.77747605407840348 -0.62891254188056644 -1.0034189874319478e-008 1.2404494790375625e-008 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.14796926116754658 3.1605011251156778e-007
		 -2.1833191254927442e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4.285501078777037e-009 -1.669579647749709e-008 0.24862180655369903 0.96860063870822155 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.18164960159641716
		 0.036973431776693967 -1.9249164179280243e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.031105265022308207 -0.70642229083498631 -0.031105264429053127 0.70642230430822373 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -9.2823019764579786e-018 1.5584204571001742e-016
		 -0.034069794440649705 0 0 0.34524410200933442 0.044392821576607386 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.47707823638219043 -0.52191604341163811 0.47707823638219027 0.52191604341163811 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.57883099977219865 0.026105812586281224
		 4.3474911314757677e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9755417962773868 0.21981402074455925 1.3459726845626719e-017 5.9734706912278055e-017 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -3.5041414214731503e-016 1.0061396160665484e-016
		 1.6653345369377346e-016 0 0.24641809176661977 -0.005772511771996558 -1.0147494890142229e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97999928868534159 0.1990009903900595 1.2185296295416978e-017 6.0007649602759321e-017 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.93176006395773037 2.7061686225238191e-016
		 -3.7903070505771069e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48807852274945707 0.51164377806312444 -0.48807852274945679 0.51164377806312467 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -0.012747738125098123 -0.00045949159258692627
		 -0.0038480474441867246 0 0.01219610970241209 -0.13158344026421248 -0.18300900000000003 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.58013422367853407 -0.40428242914688339 0.58013422367853362 0.40428242914688373 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -1.2504111206735847e-018 3.3292098303387701e-020
		 0.0036621460156660512 0 -0.52681899999999993 -4.4408920985006262e-016 -1.7994197105885117e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.013389255424146542 0.9999103599019199 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -3.1480076169425169 3.2669997389001311
		 3.1421871617330712 0 -0.47987407859072373 -8.3898479319444164e-007 -1.6384924410288285e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.012011907642268059 0.99992785443490551 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.22546211589249787
		 -0.0014024254981790385 -7.688630823700516e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.025399120342436139 0.99967739030440739 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0.012508584105959975 0.21056455169179966
		 0.029161657632326948 0 0.012200035412417876 -0.13158202337877811 0.18300899999999987 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.40428242914688373 -0.58013422367853351 -0.40428242914688339 0.58013422367853396 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -2.8039254876933668e-011 -2.1720256046156147e-009
		 -0.026789718810837745 0 0.52681938114984683 -4.9349344219962177e-006 2.9550748664470411e-010 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0535767616687568e-008 1.4107873002045594e-010 0.01338925542414449 0.99991035990191979 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 3.1155431030648737 -2.9330118120457191
		 -3.0429961076030909 0 0.47987428902114848 1.602309705361904e-006 -5.0238667495842645e-010 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.6662122024162438e-008 2.0015831141292497e-010 0.012011907642268057 0.99992785443490539 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.22546211589251586 0.0014024254953053372
		 -2.016735297518181e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3.0737644854159789e-008 -7.8096108650820786e-010 -0.025399120348807012 0.99967739030424507 1
		 1 1 yes;
	setAttr -s 23 ".m";
	setAttr -s 23 ".p";
	setAttr ".bp" yes;
createNode animCurveTL -n "L_ARM_CTRL_translateX";
	rename -uid "797D4CB3-44CD-7704-C733-EB82F8BD96BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.70166598693862559 24 0.60712352422079452;
createNode animCurveTL -n "L_ARM_CTRL_translateY";
	rename -uid "E786E1D8-4826-60E3-0255-258D86CBB4D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 4.9010116037775262 24 -4.2350085814725213;
createNode animCurveTL -n "L_ARM_CTRL_translateZ";
	rename -uid "A14D5EC2-41D1-D2F3-47F4-09B65228A24B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.57177140437808893 24 0.15233680513905981;
createNode animCurveTU -n "L_ARM_CTRL_visibility";
	rename -uid "78DE2775-49D1-E794-D6AF-2F91A54A80E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "L_ARM_CTRL_rotateX";
	rename -uid "C400ED94-4D28-6165-1C85-78840A1F63B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "L_ARM_CTRL_rotateY";
	rename -uid "06EC9BD4-46B6-8A77-0B35-D88067B76261";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 187.21815606284028 24 187.21815606284028;
createNode animCurveTA -n "L_ARM_CTRL_rotateZ";
	rename -uid "A57DB9A2-4CD4-45C3-8550-ACA8C911E3BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animLayer -n "BaseAnimation";
	rename -uid "AACFD0EC-45A3-83D7-84B4-23AFBE309381";
	setAttr ".ovrd" yes;
createNode animCurveTU -n "polySurface3_visibility";
	rename -uid "44CD6B38-4E88-55C5-49CD-C5988749EA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "HEAD_CTRL_translateX";
	rename -uid "7DB1F9C3-4E0F-6323-0618-808D27229E61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.043862506586105438 24 0.12821342611035477;
createNode animCurveTL -n "HEAD_CTRL_translateY";
	rename -uid "53A91970-4405-ECC0-DC4F-8396A55A2D5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.4018505742955738 24 3.1067289643374316;
createNode animCurveTL -n "HEAD_CTRL_translateZ";
	rename -uid "F90F1889-4FC1-3278-98FC-8884701F2E71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.31849068422982307 24 -0.53162818044049509;
createNode animCurveTL -n "HIP_CTRL_translateX";
	rename -uid "7828EEBC-45B8-C7AA-473B-1EB3FB1CE85C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.043862506586105243 24 0.042927816515447748;
createNode animCurveTL -n "HIP_CTRL_translateY";
	rename -uid "40E43EC1-4269-8898-FF84-6B976181F362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.13050300648439217 24 -0.32401436937075001;
createNode animCurveTL -n "HIP_CTRL_translateZ";
	rename -uid "FA115D01-4CDC-454E-2070-D98B89B540BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.22284330947525799 24 0.1516656490788808;
createNode animCurveTL -n "L_LEG_CTRL_translateX";
	rename -uid "AA826C6A-48A0-47C0-E7CB-9DBB42686CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.4481530136455376e-009 24 -2.4481530136455376e-009;
createNode animCurveTL -n "L_LEG_CTRL_translateY";
	rename -uid "DAD4F2E3-44A0-26F1-B1CA-ECA48D4CCCB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.628735102539915e-007 24 3.628735102539915e-007;
createNode animCurveTL -n "L_LEG_CTRL_translateZ";
	rename -uid "75AFE906-4C9F-1D25-7D67-8AA82D6F962D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.2008284498710164e-008 24 -1.2008284498710164e-008;
createNode animCurveTL -n "R_LEG_CTRL_translateX";
	rename -uid "4738A6B6-41E3-5DCE-FA30-739CC5647D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.6516851209533741e-009 24 3.6516851209533741e-009;
createNode animCurveTL -n "R_LEG_CTRL_translateY";
	rename -uid "9F465E40-4DFB-4565-9D55-D49CD0511E8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.4128486048909963e-007 24 5.4128486048909963e-007;
createNode animCurveTL -n "R_LEG_CTRL_translateZ";
	rename -uid "CB610F6F-4FA7-EB68-FA92-D5AC3277A100";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.7912360171512542e-008 24 -1.7912360171512542e-008;
createNode animCurveTU -n "HIP_CTRL_visibility";
	rename -uid "EF486B0B-4161-EE3F-5137-CCAA6A54F9DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "HIP_CTRL_rotateX";
	rename -uid "32C8DC5D-480B-155E-EB40-E3B0AA1D2839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 -19.119129937315453;
createNode animCurveTA -n "HIP_CTRL_rotateY";
	rename -uid "49DC4A69-4B29-6F64-0A2F-2DBA0F25EACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "HIP_CTRL_rotateZ";
	rename -uid "A5A0B3C9-457D-F4D7-FC77-E1A6775587FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "R_LEG_CTRL_visibility";
	rename -uid "AAE9F72A-402F-649B-D35D-819246D49AEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "R_LEG_CTRL_rotateX";
	rename -uid "6A6FF410-4798-5B67-D395-5EBDC265923E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "R_LEG_CTRL_rotateY";
	rename -uid "95950BE8-4EEE-C231-2F84-909C6387D837";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "R_LEG_CTRL_rotateZ";
	rename -uid "18FE8A5F-468C-F124-4BD9-F2823D17A676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "L_LEG_CTRL_visibility";
	rename -uid "500BAFEA-42D9-4424-A111-E2BE9DBCDF81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "L_LEG_CTRL_rotateX";
	rename -uid "1CDD584B-4E6E-4CFD-26FA-00852BD25463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "L_LEG_CTRL_rotateY";
	rename -uid "B87662B8-4A59-F3E3-1E6D-CE9C8F61B80E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "L_LEG_CTRL_rotateZ";
	rename -uid "636F400D-4D75-FD3D-705F-D4B79A247704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "HEAD_CTRL_visibility";
	rename -uid "3B1538BB-40D2-8CE9-921F-E8866E1E5DC8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "HEAD_CTRL_rotateX";
	rename -uid "E0EDC731-46AF-A944-F9C6-D88279DE52DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -99.55554270265759 24 -156.75082819499502;
createNode animCurveTA -n "HEAD_CTRL_rotateY";
	rename -uid "164A4E20-4573-17F7-8EF1-D2A0E8A70C2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.4894786280419154 24 -10.198385830337692;
createNode animCurveTA -n "HEAD_CTRL_rotateZ";
	rename -uid "893622A8-4B1B-0B3B-4AF1-23BE3413FB6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.2499274011413988 24 30.507398962140464;
createNode animCurveTU -n "HEAD_CTRL_scaleX";
	rename -uid "FF61BDFE-4064-194B-DA9C-DCA8BDE82AFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.48468381525393944 24 0.48468381525393944;
createNode animCurveTU -n "HEAD_CTRL_scaleY";
	rename -uid "B59A146C-4744-D310-DF2F-24A76F28978B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.48468381525393944 24 0.48468381525393944;
createNode animCurveTU -n "HEAD_CTRL_scaleZ";
	rename -uid "8D276A62-4D4E-F519-0E83-EB83B98A50FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.48468381525393944 24 0.48468381525393944;
createNode animCurveTL -n "MAIN_CTRL_translateX";
	rename -uid "5DD0E47F-4B02-9107-1F46-BF8DE97E7B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "MAIN_CTRL_translateY";
	rename -uid "934A6591-41BA-03D5-5BEA-4980C02B861E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTL -n "MAIN_CTRL_translateZ";
	rename -uid "A6F7C3F2-4579-860E-C4D0-01BD0589BE21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "MAIN_CTRL_visibility";
	rename -uid "76B5FC99-4CB5-7F6E-7ECA-868E1B30B45E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "MAIN_CTRL_rotateX";
	rename -uid "FC6326A2-4643-FE28-DF60-B59ED5A6019C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "MAIN_CTRL_rotateY";
	rename -uid "CE6540BD-4EE6-4168-B7C6-A29275D24DED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTA -n "MAIN_CTRL_rotateZ";
	rename -uid "0BC7C889-471A-9DEA-839E-0883A49C1FAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 24 0;
createNode animCurveTU -n "MAIN_CTRL_scaleX";
	rename -uid "B2B1448C-49C2-EA62-5367-3E9F227C3036";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
createNode animCurveTU -n "MAIN_CTRL_scaleY";
	rename -uid "B37FF932-49AD-3ACE-0442-DBAABF142A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
createNode animCurveTU -n "MAIN_CTRL_scaleZ";
	rename -uid "999B4AAA-4C08-C125-ECB0-059F8557C37B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
createNode animLayer -n "AnimLayer1";
	rename -uid "5353F605-4261-5834-39A6-6B85F4C2DA17";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode animBlendNodeBoolean -n "polySurface3_visibility_AnimLayer1";
	rename -uid "4F328015-4E7E-5052-06D6-6CB7DE70F923";
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animCurveTA -n "R_ARM_CTRL_rotateX";
	rename -uid "1D699B95-4276-6014-96C2-84867213F939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 179.69417870230367 12 239.78480538108468
		 24 0.332402623776335;
createNode animCurveTA -n "R_ARM_CTRL_rotateY";
	rename -uid "DF38AAE0-4A07-8A48-6729-15AB46F0C23A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -14.232150460940925 12 -79.023684810105507
		 24 -26.90026337962847;
createNode animCurveTA -n "R_ARM_CTRL_rotateZ";
	rename -uid "2E833289-408C-ABA7-004E-4685FC3FEC71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -161.70668689480024 12 -225.8961102436171
		 24 18.067732671462224;
createNode animCurveTU -n "R_ARM_CTRL_visibility";
	rename -uid "9D78EB92-4B7E-9E9A-6CC4-87A25DAD6630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_ARM_CTRL_translateX";
	rename -uid "9BBBAAD9-4AFE-464E-C5E1-ECA4B281BC4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.57917872013527616 12 -0.7938184773106437
		 24 -1.9079555040746827;
createNode animCurveTL -n "R_ARM_CTRL_translateY";
	rename -uid "A57C349F-4A28-D6C1-2B8B-E49828414980";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.647028137766263 12 0.95016580437900722
		 24 -2.2063050633269476;
createNode animCurveTL -n "R_ARM_CTRL_translateZ";
	rename -uid "2B2B9CAC-4F69-E5F2-3908-40AB29B273A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.074061430194090158 12 -0.68656262240952237
		 24 -1.6110064651592859;
createNode lambert -n "lambert21";
	rename -uid "DE539634-4D34-B9EC-4EA7-67BBF49DAC7D";
createNode shadingEngine -n "lambert21SG";
	rename -uid "0151F419-44E0-33D9-B86A-E4BFCC155B44";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "BCAC7F4D-4183-8E2E-6E8A-44B00A49744E";
createNode file -n "file7";
	rename -uid "AEA80641-401F-4F0A-2C21-37B261E72CB2";
	setAttr ".ftn" -type "string" "C:/Users/Briey/Downloads/orphanBoyTexture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "12A760F4-411D-6712-9FB2-09902380D86E";
select -ne :time1;
	setAttr ".o" 24;
	setAttr ".unw" 24;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 23 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
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
	setAttr -s 2 ".sol";
connectAttr "Reference.di" "imagePlane1.do";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "layer2.di" "HIP.do";
connectAttr "HIP.s" "L_UPR_LEG.is";
connectAttr "L_UPR_LEG.s" "L_MID_LEG.is";
connectAttr "L_MID_LEG.s" "L_ANK.is";
connectAttr "L_ANK_orientConstraint1.crx" "L_ANK.rx";
connectAttr "L_ANK_orientConstraint1.cry" "L_ANK.ry";
connectAttr "L_ANK_orientConstraint1.crz" "L_ANK.rz";
connectAttr "L_ANK.s" "L_TOE.is";
connectAttr "L_TOE.s" "L_END.is";
connectAttr "L_ANK.ro" "L_ANK_orientConstraint1.cro";
connectAttr "L_ANK.pim" "L_ANK_orientConstraint1.cpim";
connectAttr "L_ANK.jo" "L_ANK_orientConstraint1.cjo";
connectAttr "L_ANK.is" "L_ANK_orientConstraint1.is";
connectAttr "L_LEG_CTRL.r" "L_ANK_orientConstraint1.tg[0].tr";
connectAttr "L_LEG_CTRL.ro" "L_ANK_orientConstraint1.tg[0].tro";
connectAttr "L_LEG_CTRL.pm" "L_ANK_orientConstraint1.tg[0].tpm";
connectAttr "L_ANK_orientConstraint1.w0" "L_ANK_orientConstraint1.tg[0].tw";
connectAttr "L_ANK.tx" "effector1.tx";
connectAttr "L_ANK.ty" "effector1.ty";
connectAttr "L_ANK.tz" "effector1.tz";
connectAttr "HIP.s" "R_UPR_LEG2.is";
connectAttr "R_UPR_LEG2.s" "R_MID_LEG1.is";
connectAttr "R_MID_LEG1.s" "R_ANK1.is";
connectAttr "R_ANK1_orientConstraint1.crx" "R_ANK1.rx";
connectAttr "R_ANK1_orientConstraint1.cry" "R_ANK1.ry";
connectAttr "R_ANK1_orientConstraint1.crz" "R_ANK1.rz";
connectAttr "R_ANK1.s" "R_TOE1.is";
connectAttr "R_TOE1.s" "R_END1.is";
connectAttr "R_ANK1.ro" "R_ANK1_orientConstraint1.cro";
connectAttr "R_ANK1.pim" "R_ANK1_orientConstraint1.cpim";
connectAttr "R_ANK1.jo" "R_ANK1_orientConstraint1.cjo";
connectAttr "R_ANK1.is" "R_ANK1_orientConstraint1.is";
connectAttr "R_LEG_CTRL.r" "R_ANK1_orientConstraint1.tg[0].tr";
connectAttr "R_LEG_CTRL.ro" "R_ANK1_orientConstraint1.tg[0].tro";
connectAttr "R_LEG_CTRL.pm" "R_ANK1_orientConstraint1.tg[0].tpm";
connectAttr "R_ANK1_orientConstraint1.w0" "R_ANK1_orientConstraint1.tg[0].tw";
connectAttr "R_ANK1.tx" "effector2.tx";
connectAttr "R_ANK1.ty" "effector2.ty";
connectAttr "R_ANK1.tz" "effector2.tz";
connectAttr "HIP.s" "SPINE_ONE.is";
connectAttr "SPINE_ONE.s" "Collar.is";
connectAttr "Collar.s" "NECK.is";
connectAttr "NECK_orientConstraint1.crx" "NECK.rx";
connectAttr "NECK_orientConstraint1.cry" "NECK.ry";
connectAttr "NECK_orientConstraint1.crz" "NECK.rz";
connectAttr "NECK_pointConstraint1.ctx" "NECK.tx";
connectAttr "NECK_pointConstraint1.cty" "NECK.ty";
connectAttr "NECK_pointConstraint1.ctz" "NECK.tz";
connectAttr "NECK.s" "HEAD.is";
connectAttr "NECK.ro" "NECK_orientConstraint1.cro";
connectAttr "NECK.pim" "NECK_orientConstraint1.cpim";
connectAttr "NECK.jo" "NECK_orientConstraint1.cjo";
connectAttr "NECK.is" "NECK_orientConstraint1.is";
connectAttr "HEAD_CTRL.r" "NECK_orientConstraint1.tg[0].tr";
connectAttr "HEAD_CTRL.ro" "NECK_orientConstraint1.tg[0].tro";
connectAttr "HEAD_CTRL.pm" "NECK_orientConstraint1.tg[0].tpm";
connectAttr "NECK_orientConstraint1.w0" "NECK_orientConstraint1.tg[0].tw";
connectAttr "NECK.pim" "NECK_pointConstraint1.cpim";
connectAttr "NECK.rp" "NECK_pointConstraint1.crp";
connectAttr "NECK.rpt" "NECK_pointConstraint1.crt";
connectAttr "HEAD_CTRL.t" "NECK_pointConstraint1.tg[0].tt";
connectAttr "HEAD_CTRL.rp" "NECK_pointConstraint1.tg[0].trp";
connectAttr "HEAD_CTRL.rpt" "NECK_pointConstraint1.tg[0].trt";
connectAttr "HEAD_CTRL.pm" "NECK_pointConstraint1.tg[0].tpm";
connectAttr "NECK_pointConstraint1.w0" "NECK_pointConstraint1.tg[0].tw";
connectAttr "Collar.s" "L_UPL_ALM.is";
connectAttr "L_UPL_ALM.s" "L_MID_ALM.is";
connectAttr "L_MID_ALM.s" "L_WLIST.is";
connectAttr "L_WLIST_orientConstraint1.crx" "L_WLIST.rx";
connectAttr "L_WLIST_orientConstraint1.cry" "L_WLIST.ry";
connectAttr "L_WLIST_orientConstraint1.crz" "L_WLIST.rz";
connectAttr "L_WLIST.s" "L_WLIST_END.is";
connectAttr "L_WLIST.ro" "L_WLIST_orientConstraint1.cro";
connectAttr "L_WLIST.pim" "L_WLIST_orientConstraint1.cpim";
connectAttr "L_WLIST.jo" "L_WLIST_orientConstraint1.cjo";
connectAttr "L_WLIST.is" "L_WLIST_orientConstraint1.is";
connectAttr "L_ARM_CTRL.r" "L_WLIST_orientConstraint1.tg[0].tr";
connectAttr "L_ARM_CTRL.ro" "L_WLIST_orientConstraint1.tg[0].tro";
connectAttr "L_ARM_CTRL.pm" "L_WLIST_orientConstraint1.tg[0].tpm";
connectAttr "L_WLIST_orientConstraint1.w0" "L_WLIST_orientConstraint1.tg[0].tw";
connectAttr "L_WLIST.tx" "effector3.tx";
connectAttr "L_WLIST.ty" "effector3.ty";
connectAttr "L_WLIST.tz" "effector3.tz";
connectAttr "Collar.s" "R_UPR_ARM.is";
connectAttr "R_UPR_ARM.s" "R_MID_ARM.is";
connectAttr "R_MID_ARM.s" "R_WRIST.is";
connectAttr "R_WRIST_orientConstraint1.crx" "R_WRIST.rx";
connectAttr "R_WRIST_orientConstraint1.cry" "R_WRIST.ry";
connectAttr "R_WRIST_orientConstraint1.crz" "R_WRIST.rz";
connectAttr "R_WRIST.s" "R_WRIST_END.is";
connectAttr "R_WRIST.ro" "R_WRIST_orientConstraint1.cro";
connectAttr "R_WRIST.pim" "R_WRIST_orientConstraint1.cpim";
connectAttr "R_WRIST.jo" "R_WRIST_orientConstraint1.cjo";
connectAttr "R_WRIST.is" "R_WRIST_orientConstraint1.is";
connectAttr "R_ARM_CTRL.r" "R_WRIST_orientConstraint1.tg[0].tr";
connectAttr "R_ARM_CTRL.ro" "R_WRIST_orientConstraint1.tg[0].tro";
connectAttr "R_ARM_CTRL.pm" "R_WRIST_orientConstraint1.tg[0].tpm";
connectAttr "R_WRIST_orientConstraint1.w0" "R_WRIST_orientConstraint1.tg[0].tw";
connectAttr "R_WRIST.tx" "effector4.tx";
connectAttr "R_WRIST.ty" "effector4.ty";
connectAttr "R_WRIST.tz" "effector4.tz";
connectAttr "Collar.tx" "effector5.tx";
connectAttr "Collar.ty" "effector5.ty";
connectAttr "Collar.tz" "effector5.tz";
connectAttr "L_UPR_LEG.msg" "L_LEG__IK.hsj";
connectAttr "effector1.hp" "L_LEG__IK.hee";
connectAttr "ikSCsolver.msg" "L_LEG__IK.hsv";
connectAttr "L_LEG__IK_pointConstraint1.ctx" "L_LEG__IK.tx";
connectAttr "L_LEG__IK_pointConstraint1.cty" "L_LEG__IK.ty";
connectAttr "L_LEG__IK_pointConstraint1.ctz" "L_LEG__IK.tz";
connectAttr "layer4.di" "L_LEG__IK.do";
connectAttr "L_LEG__IK.pim" "L_LEG__IK_pointConstraint1.cpim";
connectAttr "L_LEG__IK.rp" "L_LEG__IK_pointConstraint1.crp";
connectAttr "L_LEG__IK.rpt" "L_LEG__IK_pointConstraint1.crt";
connectAttr "L_LEG_CTRL.t" "L_LEG__IK_pointConstraint1.tg[0].tt";
connectAttr "L_LEG_CTRL.rp" "L_LEG__IK_pointConstraint1.tg[0].trp";
connectAttr "L_LEG_CTRL.rpt" "L_LEG__IK_pointConstraint1.tg[0].trt";
connectAttr "L_LEG_CTRL.pm" "L_LEG__IK_pointConstraint1.tg[0].tpm";
connectAttr "L_LEG__IK_pointConstraint1.w0" "L_LEG__IK_pointConstraint1.tg[0].tw"
		;
connectAttr "R_UPR_LEG2.msg" "R_LEG_IK.hsj";
connectAttr "effector2.hp" "R_LEG_IK.hee";
connectAttr "ikSCsolver.msg" "R_LEG_IK.hsv";
connectAttr "R_LEG_IK_pointConstraint1.ctx" "R_LEG_IK.tx";
connectAttr "R_LEG_IK_pointConstraint1.cty" "R_LEG_IK.ty";
connectAttr "R_LEG_IK_pointConstraint1.ctz" "R_LEG_IK.tz";
connectAttr "layer4.di" "R_LEG_IK.do";
connectAttr "R_LEG_IK.pim" "R_LEG_IK_pointConstraint1.cpim";
connectAttr "R_LEG_IK.rp" "R_LEG_IK_pointConstraint1.crp";
connectAttr "R_LEG_IK.rpt" "R_LEG_IK_pointConstraint1.crt";
connectAttr "R_LEG_CTRL.t" "R_LEG_IK_pointConstraint1.tg[0].tt";
connectAttr "R_LEG_CTRL.rp" "R_LEG_IK_pointConstraint1.tg[0].trp";
connectAttr "R_LEG_CTRL.rpt" "R_LEG_IK_pointConstraint1.tg[0].trt";
connectAttr "R_LEG_CTRL.pm" "R_LEG_IK_pointConstraint1.tg[0].tpm";
connectAttr "R_LEG_IK_pointConstraint1.w0" "R_LEG_IK_pointConstraint1.tg[0].tw";
connectAttr "L_UPL_ALM.msg" "L_ARM_IK.hsj";
connectAttr "effector3.hp" "L_ARM_IK.hee";
connectAttr "ikSCsolver.msg" "L_ARM_IK.hsv";
connectAttr "L_ARM_IK_pointConstraint1.ctx" "L_ARM_IK.tx";
connectAttr "L_ARM_IK_pointConstraint1.cty" "L_ARM_IK.ty";
connectAttr "L_ARM_IK_pointConstraint1.ctz" "L_ARM_IK.tz";
connectAttr "layer4.di" "L_ARM_IK.do";
connectAttr "L_ARM_IK.pim" "L_ARM_IK_pointConstraint1.cpim";
connectAttr "L_ARM_IK.rp" "L_ARM_IK_pointConstraint1.crp";
connectAttr "L_ARM_IK.rpt" "L_ARM_IK_pointConstraint1.crt";
connectAttr "L_ARM_CTRL.t" "L_ARM_IK_pointConstraint1.tg[0].tt";
connectAttr "L_ARM_CTRL.rp" "L_ARM_IK_pointConstraint1.tg[0].trp";
connectAttr "L_ARM_CTRL.rpt" "L_ARM_IK_pointConstraint1.tg[0].trt";
connectAttr "L_ARM_CTRL.pm" "L_ARM_IK_pointConstraint1.tg[0].tpm";
connectAttr "L_ARM_IK_pointConstraint1.w0" "L_ARM_IK_pointConstraint1.tg[0].tw";
connectAttr "R_UPR_ARM.msg" "R_ARM_IK.hsj";
connectAttr "effector4.hp" "R_ARM_IK.hee";
connectAttr "ikSCsolver.msg" "R_ARM_IK.hsv";
connectAttr "R_ARM_IK_pointConstraint1.ctx" "R_ARM_IK.tx";
connectAttr "R_ARM_IK_pointConstraint1.cty" "R_ARM_IK.ty";
connectAttr "R_ARM_IK_pointConstraint1.ctz" "R_ARM_IK.tz";
connectAttr "layer4.di" "R_ARM_IK.do";
connectAttr "R_ARM_IK.pim" "R_ARM_IK_pointConstraint1.cpim";
connectAttr "R_ARM_IK.rp" "R_ARM_IK_pointConstraint1.crp";
connectAttr "R_ARM_IK.rpt" "R_ARM_IK_pointConstraint1.crt";
connectAttr "R_ARM_CTRL.t" "R_ARM_IK_pointConstraint1.tg[0].tt";
connectAttr "R_ARM_CTRL.rp" "R_ARM_IK_pointConstraint1.tg[0].trp";
connectAttr "R_ARM_CTRL.rpt" "R_ARM_IK_pointConstraint1.tg[0].trt";
connectAttr "R_ARM_CTRL.pm" "R_ARM_IK_pointConstraint1.tg[0].tpm";
connectAttr "R_ARM_IK_pointConstraint1.w0" "R_ARM_IK_pointConstraint1.tg[0].tw";
connectAttr "HIP.msg" "SPINE_IK.hsj";
connectAttr "effector5.hp" "SPINE_IK.hee";
connectAttr "ikSplineSolver.msg" "SPINE_IK.hsv";
connectAttr "SPIKE_IK_CURVEShape.ws" "SPINE_IK.ic";
connectAttr "HIP_CTRL.ry" "SPINE_IK.rol";
connectAttr "CHEST_CTRL.ry" "SPINE_IK.twi";
connectAttr "layer4.di" "SPINE_IK.do";
connectAttr "SPIKE_IK_CURVE_pointConstraint1.ctx" "SPIKE_IK_CURVE.tx";
connectAttr "SPIKE_IK_CURVE_pointConstraint1.cty" "SPIKE_IK_CURVE.ty";
connectAttr "SPIKE_IK_CURVE_pointConstraint1.ctz" "SPIKE_IK_CURVE.tz";
connectAttr "SPIKE_IK_CURVE_orientConstraint1.crx" "SPIKE_IK_CURVE.rx";
connectAttr "SPIKE_IK_CURVE_orientConstraint1.crz" "SPIKE_IK_CURVE.rz";
connectAttr "layer4.di" "SPIKE_IK_CURVE.do";
connectAttr "SPIKE_IK_CURVE.pim" "SPIKE_IK_CURVE_pointConstraint1.cpim";
connectAttr "SPIKE_IK_CURVE.rp" "SPIKE_IK_CURVE_pointConstraint1.crp";
connectAttr "SPIKE_IK_CURVE.rpt" "SPIKE_IK_CURVE_pointConstraint1.crt";
connectAttr "HIP_CTRL.t" "SPIKE_IK_CURVE_pointConstraint1.tg[0].tt";
connectAttr "HIP_CTRL.rp" "SPIKE_IK_CURVE_pointConstraint1.tg[0].trp";
connectAttr "HIP_CTRL.rpt" "SPIKE_IK_CURVE_pointConstraint1.tg[0].trt";
connectAttr "HIP_CTRL.pm" "SPIKE_IK_CURVE_pointConstraint1.tg[0].tpm";
connectAttr "SPIKE_IK_CURVE_pointConstraint1.w0" "SPIKE_IK_CURVE_pointConstraint1.tg[0].tw"
		;
connectAttr "SPIKE_IK_CURVE.ro" "SPIKE_IK_CURVE_orientConstraint1.cro";
connectAttr "SPIKE_IK_CURVE.pim" "SPIKE_IK_CURVE_orientConstraint1.cpim";
connectAttr "HIP_CTRL.r" "SPIKE_IK_CURVE_orientConstraint1.tg[0].tr";
connectAttr "HIP_CTRL.ro" "SPIKE_IK_CURVE_orientConstraint1.tg[0].tro";
connectAttr "HIP_CTRL.pm" "SPIKE_IK_CURVE_orientConstraint1.tg[0].tpm";
connectAttr "SPIKE_IK_CURVE_orientConstraint1.w0" "SPIKE_IK_CURVE_orientConstraint1.tg[0].tw"
		;
connectAttr "MAIN_CTRL_translateX.o" "MAIN_CTRL.tx";
connectAttr "MAIN_CTRL_translateY.o" "MAIN_CTRL.ty";
connectAttr "MAIN_CTRL_translateZ.o" "MAIN_CTRL.tz";
connectAttr "MAIN_CTRL_visibility.o" "MAIN_CTRL.v";
connectAttr "MAIN_CTRL_rotateX.o" "MAIN_CTRL.rx";
connectAttr "MAIN_CTRL_rotateY.o" "MAIN_CTRL.ry";
connectAttr "MAIN_CTRL_rotateZ.o" "MAIN_CTRL.rz";
connectAttr "MAIN_CTRL_scaleX.o" "MAIN_CTRL.sx";
connectAttr "MAIN_CTRL_scaleY.o" "MAIN_CTRL.sy";
connectAttr "MAIN_CTRL_scaleZ.o" "MAIN_CTRL.sz";
connectAttr "layer3.di" "MAIN_CTRL.do";
connectAttr "L_LEG_CTRL_rotateX.o" "L_LEG_CTRL.rx";
connectAttr "L_LEG_CTRL_rotateY.o" "L_LEG_CTRL.ry";
connectAttr "L_LEG_CTRL_rotateZ.o" "L_LEG_CTRL.rz";
connectAttr "L_LEG_CTRL_translateX.o" "L_LEG_CTRL.tx";
connectAttr "L_LEG_CTRL_translateY.o" "L_LEG_CTRL.ty";
connectAttr "L_LEG_CTRL_translateZ.o" "L_LEG_CTRL.tz";
connectAttr "layer3.di" "L_LEG_CTRL.do";
connectAttr "L_LEG_CTRL_visibility.o" "L_LEG_CTRL.v";
connectAttr "transformGeometry4.og" "L_LEG_CTRLShape.cr";
connectAttr "R_LEG_CTRL_rotateX.o" "R_LEG_CTRL.rx";
connectAttr "R_LEG_CTRL_rotateY.o" "R_LEG_CTRL.ry";
connectAttr "R_LEG_CTRL_rotateZ.o" "R_LEG_CTRL.rz";
connectAttr "R_LEG_CTRL_translateX.o" "R_LEG_CTRL.tx";
connectAttr "R_LEG_CTRL_translateY.o" "R_LEG_CTRL.ty";
connectAttr "R_LEG_CTRL_translateZ.o" "R_LEG_CTRL.tz";
connectAttr "layer3.di" "R_LEG_CTRL.do";
connectAttr "R_LEG_CTRL_visibility.o" "R_LEG_CTRL.v";
connectAttr "HIP_CTRL_rotateY.o" "HIP_CTRL.ry";
connectAttr "HIP_CTRL_rotateX.o" "HIP_CTRL.rx";
connectAttr "HIP_CTRL_rotateZ.o" "HIP_CTRL.rz";
connectAttr "HIP_CTRL_translateX.o" "HIP_CTRL.tx";
connectAttr "HIP_CTRL_translateY.o" "HIP_CTRL.ty";
connectAttr "HIP_CTRL_translateZ.o" "HIP_CTRL.tz";
connectAttr "layer3.di" "HIP_CTRL.do";
connectAttr "HIP_CTRL_visibility.o" "HIP_CTRL.v";
connectAttr "transformGeometry5.og" "HIP_CTRLShape.cr";
connectAttr "L_ARM_CTRL_rotateX.o" "L_ARM_CTRL.rx";
connectAttr "L_ARM_CTRL_rotateY.o" "L_ARM_CTRL.ry";
connectAttr "L_ARM_CTRL_rotateZ.o" "L_ARM_CTRL.rz";
connectAttr "L_ARM_CTRL_translateX.o" "L_ARM_CTRL.tx";
connectAttr "L_ARM_CTRL_translateY.o" "L_ARM_CTRL.ty";
connectAttr "L_ARM_CTRL_translateZ.o" "L_ARM_CTRL.tz";
connectAttr "layer3.di" "L_ARM_CTRL.do";
connectAttr "L_ARM_CTRL_visibility.o" "L_ARM_CTRL.v";
connectAttr "R_ARM_CTRL_rotateX.o" "R_ARM_CTRL.rx";
connectAttr "R_ARM_CTRL_rotateY.o" "R_ARM_CTRL.ry";
connectAttr "R_ARM_CTRL_rotateZ.o" "R_ARM_CTRL.rz";
connectAttr "R_ARM_CTRL_translateX.o" "R_ARM_CTRL.tx";
connectAttr "R_ARM_CTRL_translateY.o" "R_ARM_CTRL.ty";
connectAttr "R_ARM_CTRL_translateZ.o" "R_ARM_CTRL.tz";
connectAttr "R_ARM_CTRL_visibility.o" "R_ARM_CTRL.v";
connectAttr "HEAD_CTRL_rotateX.o" "HEAD_CTRL.rx";
connectAttr "HEAD_CTRL_rotateY.o" "HEAD_CTRL.ry";
connectAttr "HEAD_CTRL_rotateZ.o" "HEAD_CTRL.rz";
connectAttr "HEAD_CTRL_translateX.o" "HEAD_CTRL.tx";
connectAttr "HEAD_CTRL_translateY.o" "HEAD_CTRL.ty";
connectAttr "HEAD_CTRL_translateZ.o" "HEAD_CTRL.tz";
connectAttr "layer3.di" "HEAD_CTRL.do";
connectAttr "HEAD_CTRL_visibility.o" "HEAD_CTRL.v";
connectAttr "HEAD_CTRL_scaleX.o" "HEAD_CTRL.sx";
connectAttr "HEAD_CTRL_scaleY.o" "HEAD_CTRL.sy";
connectAttr "HEAD_CTRL_scaleZ.o" "HEAD_CTRL.sz";
connectAttr "makeNurbCircle4.oc" "HEAD_CTRLShape.cr";
connectAttr "polySurface3_visibility_AnimLayer1.o" "polySurface3.v";
connectAttr "skinCluster1.og[0]" "boy.i";
connectAttr "skinCluster1GroupId.id" "boy.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "boy.iog.og[2].gco";
connectAttr "groupId36.id" "boy.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "boy.iog.og[3].gco";
connectAttr "tweak1.vl[0].vt[0]" "boy.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert16SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert18SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert19SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert20SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert21SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert16SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert17SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert18SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert19SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert20SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert21SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Reference.id";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "layerManager.dli[6]" "Geom.id";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "lambert7.msg" "materialInfo6.m";
connectAttr "lambert9.oc" "lambert8SG.ss";
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "lambert9.msg" "materialInfo7.m";
connectAttr "layerManager.dli[8]" "layer1.id";
connectAttr "rebuildCurve2.oc" "transformGeometry1.ig";
connectAttr "rebuildCurve1.oc" "rebuildCurve2.ic";
connectAttr "makeNurbCircle1.oc" "rebuildCurve1.ic";
connectAttr "transformGeometry1.og" "transformGeometry4.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry5.ig";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "layerManager.dli[3]" "layer3.id";
connectAttr "layerManager.dli[4]" "layer4.id";
connectAttr "lambert10.oc" "lambert10SG.ss";
connectAttr "lambert10SG.msg" "materialInfo8.sg";
connectAttr "lambert10.msg" "materialInfo8.m";
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "lambert11SG.msg" "materialInfo9.sg";
connectAttr "lambert11.msg" "materialInfo9.m";
connectAttr "file1.oc" "lambert12.c";
connectAttr "lambert12.oc" "lambert12SG.ss";
connectAttr "lambert12SG.msg" "materialInfo10.sg";
connectAttr "lambert12.msg" "materialInfo10.m";
connectAttr "file1.msg" "materialInfo10.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert13.oc" "lambert13SG.ss";
connectAttr "lambert13SG.msg" "materialInfo11.sg";
connectAttr "lambert13.msg" "materialInfo11.m";
connectAttr "file2.oc" "lambert14.c";
connectAttr "lambert14.oc" "lambert14SG.ss";
connectAttr "lambert14SG.msg" "materialInfo12.sg";
connectAttr "lambert14.msg" "materialInfo12.m";
connectAttr "file2.msg" "materialInfo12.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "lambert15.c";
connectAttr "lambert15.oc" "lambert15SG.ss";
connectAttr "lambert15SG.msg" "materialInfo13.sg";
connectAttr "lambert15.msg" "materialInfo13.m";
connectAttr "file3.msg" "materialInfo13.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "lambert16.c";
connectAttr "lambert16.oc" "lambert16SG.ss";
connectAttr "lambert16SG.msg" "materialInfo14.sg";
connectAttr "lambert16.msg" "materialInfo14.m";
connectAttr "file4.msg" "materialInfo14.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "lambert17.oc" "lambert17SG.ss";
connectAttr "lambert17SG.msg" "materialInfo15.sg";
connectAttr "lambert17.msg" "materialInfo15.m";
connectAttr "lambert18.oc" "lambert18SG.ss";
connectAttr "lambert18SG.msg" "materialInfo16.sg";
connectAttr "lambert18.msg" "materialInfo16.m";
connectAttr "file5.oc" "lambert19.c";
connectAttr "lambert19.oc" "lambert19SG.ss";
connectAttr "lambert19SG.msg" "materialInfo17.sg";
connectAttr "lambert19.msg" "materialInfo17.m";
connectAttr "file5.msg" "materialInfo17.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "file6.oc" "lambert20.c";
connectAttr "lambert20.oc" "lambert20SG.ss";
connectAttr "lambert20SG.msg" "materialInfo18.sg";
connectAttr "lambert20.msg" "materialInfo18.m";
connectAttr "file6.msg" "materialInfo18.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster1.bp";
connectAttr "HIP.wm" "skinCluster1.ma[0]";
connectAttr "L_UPR_LEG.wm" "skinCluster1.ma[1]";
connectAttr "L_MID_LEG.wm" "skinCluster1.ma[2]";
connectAttr "L_ANK.wm" "skinCluster1.ma[3]";
connectAttr "L_TOE.wm" "skinCluster1.ma[4]";
connectAttr "L_END.wm" "skinCluster1.ma[5]";
connectAttr "R_UPR_LEG2.wm" "skinCluster1.ma[6]";
connectAttr "R_MID_LEG1.wm" "skinCluster1.ma[7]";
connectAttr "R_ANK1.wm" "skinCluster1.ma[8]";
connectAttr "R_TOE1.wm" "skinCluster1.ma[9]";
connectAttr "R_END1.wm" "skinCluster1.ma[10]";
connectAttr "SPINE_ONE.wm" "skinCluster1.ma[11]";
connectAttr "Collar.wm" "skinCluster1.ma[12]";
connectAttr "NECK.wm" "skinCluster1.ma[13]";
connectAttr "HEAD.wm" "skinCluster1.ma[14]";
connectAttr "L_UPL_ALM.wm" "skinCluster1.ma[15]";
connectAttr "L_MID_ALM.wm" "skinCluster1.ma[16]";
connectAttr "L_WLIST.wm" "skinCluster1.ma[17]";
connectAttr "L_WLIST_END.wm" "skinCluster1.ma[18]";
connectAttr "R_UPR_ARM.wm" "skinCluster1.ma[19]";
connectAttr "R_MID_ARM.wm" "skinCluster1.ma[20]";
connectAttr "R_WRIST.wm" "skinCluster1.ma[21]";
connectAttr "R_WRIST_END.wm" "skinCluster1.ma[22]";
connectAttr "HIP.liw" "skinCluster1.lw[0]";
connectAttr "L_UPR_LEG.liw" "skinCluster1.lw[1]";
connectAttr "L_MID_LEG.liw" "skinCluster1.lw[2]";
connectAttr "L_ANK.liw" "skinCluster1.lw[3]";
connectAttr "L_TOE.liw" "skinCluster1.lw[4]";
connectAttr "L_END.liw" "skinCluster1.lw[5]";
connectAttr "R_UPR_LEG2.liw" "skinCluster1.lw[6]";
connectAttr "R_MID_LEG1.liw" "skinCluster1.lw[7]";
connectAttr "R_ANK1.liw" "skinCluster1.lw[8]";
connectAttr "R_TOE1.liw" "skinCluster1.lw[9]";
connectAttr "R_END1.liw" "skinCluster1.lw[10]";
connectAttr "SPINE_ONE.liw" "skinCluster1.lw[11]";
connectAttr "Collar.liw" "skinCluster1.lw[12]";
connectAttr "NECK.liw" "skinCluster1.lw[13]";
connectAttr "HEAD.liw" "skinCluster1.lw[14]";
connectAttr "L_UPL_ALM.liw" "skinCluster1.lw[15]";
connectAttr "L_MID_ALM.liw" "skinCluster1.lw[16]";
connectAttr "L_WLIST.liw" "skinCluster1.lw[17]";
connectAttr "L_WLIST_END.liw" "skinCluster1.lw[18]";
connectAttr "R_UPR_ARM.liw" "skinCluster1.lw[19]";
connectAttr "R_MID_ARM.liw" "skinCluster1.lw[20]";
connectAttr "R_WRIST.liw" "skinCluster1.lw[21]";
connectAttr "R_WRIST_END.liw" "skinCluster1.lw[22]";
connectAttr "HIP.obcc" "skinCluster1.ifcl[0]";
connectAttr "L_UPR_LEG.obcc" "skinCluster1.ifcl[1]";
connectAttr "L_MID_LEG.obcc" "skinCluster1.ifcl[2]";
connectAttr "L_ANK.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_TOE.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_END.obcc" "skinCluster1.ifcl[5]";
connectAttr "R_UPR_LEG2.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_MID_LEG1.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_ANK1.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_TOE1.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_END1.obcc" "skinCluster1.ifcl[10]";
connectAttr "SPINE_ONE.obcc" "skinCluster1.ifcl[11]";
connectAttr "Collar.obcc" "skinCluster1.ifcl[12]";
connectAttr "NECK.obcc" "skinCluster1.ifcl[13]";
connectAttr "HEAD.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_UPL_ALM.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_MID_ALM.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_WLIST.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_WLIST_END.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_UPR_ARM.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_MID_ARM.obcc" "skinCluster1.ifcl[20]";
connectAttr "R_WRIST.obcc" "skinCluster1.ifcl[21]";
connectAttr "R_WRIST_END.obcc" "skinCluster1.ifcl[22]";
connectAttr "L_UPL_ALM.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId36.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "boy.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet1.gn" -na;
connectAttr "boy.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurface3ShapeOrig.w" "groupParts2.ig";
connectAttr "groupId36.id" "groupParts2.gi";
connectAttr "HIP.msg" "bindPose3.m[0]";
connectAttr "L_UPR_LEG.msg" "bindPose3.m[1]";
connectAttr "L_MID_LEG.msg" "bindPose3.m[2]";
connectAttr "L_ANK.msg" "bindPose3.m[3]";
connectAttr "L_TOE.msg" "bindPose3.m[4]";
connectAttr "L_END.msg" "bindPose3.m[5]";
connectAttr "R_UPR_LEG2.msg" "bindPose3.m[6]";
connectAttr "R_MID_LEG1.msg" "bindPose3.m[7]";
connectAttr "R_ANK1.msg" "bindPose3.m[8]";
connectAttr "R_TOE1.msg" "bindPose3.m[9]";
connectAttr "R_END1.msg" "bindPose3.m[10]";
connectAttr "SPINE_ONE.msg" "bindPose3.m[11]";
connectAttr "Collar.msg" "bindPose3.m[12]";
connectAttr "NECK.msg" "bindPose3.m[13]";
connectAttr "HEAD.msg" "bindPose3.m[14]";
connectAttr "L_UPL_ALM.msg" "bindPose3.m[15]";
connectAttr "L_MID_ALM.msg" "bindPose3.m[16]";
connectAttr "L_WLIST.msg" "bindPose3.m[17]";
connectAttr "L_WLIST_END.msg" "bindPose3.m[18]";
connectAttr "R_UPR_ARM.msg" "bindPose3.m[19]";
connectAttr "R_MID_ARM.msg" "bindPose3.m[20]";
connectAttr "R_WRIST.msg" "bindPose3.m[21]";
connectAttr "R_WRIST_END.msg" "bindPose3.m[22]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[0]" "bindPose3.p[6]";
connectAttr "bindPose3.m[6]" "bindPose3.p[7]";
connectAttr "bindPose3.m[7]" "bindPose3.p[8]";
connectAttr "bindPose3.m[8]" "bindPose3.p[9]";
connectAttr "bindPose3.m[9]" "bindPose3.p[10]";
connectAttr "bindPose3.m[0]" "bindPose3.p[11]";
connectAttr "bindPose3.m[11]" "bindPose3.p[12]";
connectAttr "bindPose3.m[12]" "bindPose3.p[13]";
connectAttr "bindPose3.m[13]" "bindPose3.p[14]";
connectAttr "bindPose3.m[12]" "bindPose3.p[15]";
connectAttr "bindPose3.m[15]" "bindPose3.p[16]";
connectAttr "bindPose3.m[16]" "bindPose3.p[17]";
connectAttr "bindPose3.m[17]" "bindPose3.p[18]";
connectAttr "bindPose3.m[12]" "bindPose3.p[19]";
connectAttr "bindPose3.m[19]" "bindPose3.p[20]";
connectAttr "bindPose3.m[20]" "bindPose3.p[21]";
connectAttr "bindPose3.m[21]" "bindPose3.p[22]";
connectAttr "HIP.bps" "bindPose3.wm[0]";
connectAttr "L_UPR_LEG.bps" "bindPose3.wm[1]";
connectAttr "L_MID_LEG.bps" "bindPose3.wm[2]";
connectAttr "L_ANK.bps" "bindPose3.wm[3]";
connectAttr "L_TOE.bps" "bindPose3.wm[4]";
connectAttr "L_END.bps" "bindPose3.wm[5]";
connectAttr "R_UPR_LEG2.bps" "bindPose3.wm[6]";
connectAttr "R_MID_LEG1.bps" "bindPose3.wm[7]";
connectAttr "R_ANK1.bps" "bindPose3.wm[8]";
connectAttr "R_TOE1.bps" "bindPose3.wm[9]";
connectAttr "R_END1.bps" "bindPose3.wm[10]";
connectAttr "SPINE_ONE.bps" "bindPose3.wm[11]";
connectAttr "Collar.bps" "bindPose3.wm[12]";
connectAttr "NECK.bps" "bindPose3.wm[13]";
connectAttr "HEAD.bps" "bindPose3.wm[14]";
connectAttr "L_UPL_ALM.bps" "bindPose3.wm[15]";
connectAttr "L_MID_ALM.bps" "bindPose3.wm[16]";
connectAttr "L_WLIST.bps" "bindPose3.wm[17]";
connectAttr "L_WLIST_END.bps" "bindPose3.wm[18]";
connectAttr "R_UPR_ARM.bps" "bindPose3.wm[19]";
connectAttr "R_MID_ARM.bps" "bindPose3.wm[20]";
connectAttr "R_WRIST.bps" "bindPose3.wm[21]";
connectAttr "R_WRIST_END.bps" "bindPose3.wm[22]";
connectAttr "AnimLayer1.sl" "BaseAnimation.chsl[3]";
connectAttr "AnimLayer1.play" "BaseAnimation.cdly[3]";
connectAttr "BaseAnimation.csol" "AnimLayer1.sslo";
connectAttr "BaseAnimation.fgwt" "AnimLayer1.pwth";
connectAttr "BaseAnimation.omte" "AnimLayer1.pmte";
connectAttr "polySurface3.v" "AnimLayer1.dsm" -na;
connectAttr "polySurface3_visibility_AnimLayer1.msg" "AnimLayer1.bnds[0]";
connectAttr "AnimLayer1.bgwt" "polySurface3_visibility_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "polySurface3_visibility_AnimLayer1.wb";
connectAttr "polySurface3_visibility.o" "polySurface3_visibility_AnimLayer1.ia";
connectAttr "file7.oc" "lambert21.c";
connectAttr "lambert21.oc" "lambert21SG.ss";
connectAttr "boy.iog" "lambert21SG.dsm" -na;
connectAttr "lambert21SG.msg" "materialInfo19.sg";
connectAttr "lambert21.msg" "materialInfo19.m";
connectAttr "file7.msg" "materialInfo19.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "lambert15SG.pa" ":renderPartition.st" -na;
connectAttr "lambert16SG.pa" ":renderPartition.st" -na;
connectAttr "lambert17SG.pa" ":renderPartition.st" -na;
connectAttr "lambert18SG.pa" ":renderPartition.st" -na;
connectAttr "lambert19SG.pa" ":renderPartition.st" -na;
connectAttr "lambert20SG.pa" ":renderPartition.st" -na;
connectAttr "lambert21SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert13.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert14.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert15.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert16.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert17.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert18.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert19.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert20.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert21.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of lilOrphanDabby.ma
