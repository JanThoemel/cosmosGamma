#include "asbCubeSatACS_capi.h"
#include "asbCubeSatACS.h"
#include "asbCubeSatACS_private.h"
#define bzbppujgmh ((uint8_T)2U)
#define ftwsycxlh1 ((uint8_T)2U)
#define jmbkvvifex ((uint8_T)1U)
#define l0p2h0wtbn ((uint8_T)3U)
#define mbfvbx3cau ((uint8_T)0U)
#define oajnnejtzp ((uint8_T)1U)
const StatesOutBus asbCubeSatACS_rtZStatesOutBus = { { 0.0 , 0.0 , 0.0 } , {
0.0 , 0.0 , 0.0 } , { 0.0 , 0.0 , 0.0 , 0.0 } , { 0.0 , 0.0 , 0.0 , 0.0 } , {
0.0 , 0.0 , 0.0 } , { 0.0 , 0.0 , 0.0 } , { 0.0 , 0.0 , 0.0 } } ; const
EnvBus asbCubeSatACS_rtZEnvBus = { { 0.0 , 0.0 , 0.0 } , { 0.0 , 0.0 , 0.0 }
, { 0.0 , 0.0 , 0.0 } , 0.0 } ; const AttitudeErrorBus
asbCubeSatACS_rtZAttitudeErrorBus = { 0.0 , 0.0 , 0.0 } ; static RegMdlInfo
rtMdlInfo_asbCubeSatACS [ 66 ] = { { "ljessmtzau" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"jzffhhlmqx" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "jocwnxbfxr" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "dtfuznrxk0" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"ij25rkc53f" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "m044xy2juu" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "lk4hssveqi" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"n4oihypohv" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "bwecdxprsc" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "hqyt40uewx" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"p2cri44k0h" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "hjoltqgeiw" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "ciiojvslug" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"obi5idc0yut" , MDL_INFO_NAME_MDLREF_DWORK , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "jx0nvoaj5s" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "iu4azrivv1" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"m5irwxgsw5" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "kfw13hcd5g" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "als1g01zc0" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"ezvi2zbjy2" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "jdo0zysb04" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "h12irucwjp" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"jgeuwsgdmq" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "n0xjxj2ehs" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "jcboi25osc" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"due31ddxq5" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "ophodr0x0g" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "b1dkmxrvxd" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"h1ucxuq2iv" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "nkfjiqfgvd" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "jj0if5albh" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"m1mdmrcg1e" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "pm1oeto4u5" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "b4vxdooov4" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"ie553oink0" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "ihscoxzpvr" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "fmxxuhw4kx" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"kqwz44cb31" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "lav4pou52x" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "grpdkkxsmk" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"afyqqv1fiu" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "m0gafp20pk" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "ft4vlbdxum" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , 0 , ( void * ) "If Action Subsystem" }
, { "asbCubeSatACS" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , 0 , ( NULL ) } ,
{ "j5rpw4mhdf" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * )
"asbCubeSatACS" } , { "isesex4x31" , MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , -
1 , ( void * ) "asbCubeSatACS" } , { "dgtzqiy1yy" ,
MDL_INFO_ID_GLOBAL_RTW_CONSTRUCT , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"ACSOutBus" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL ) } , {
"AttitudeErrorBus" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL ) } , {
"EnvBus" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL ) } , { "StatesOutBus" ,
MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL ) } , {
"struct_9iDbyyjfBL0Y1ELTIVXdBC" , MDL_INFO_ID_DATA_TYPE , 0 , - 1 , ( NULL )
} , { "mr_asbCubeSatACS_GetSimStateDisallowedBlocks" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_extractBitFieldFromCellArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_cacheBitFieldToCellArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_restoreDataFromMxArrayWithOffset" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_cacheDataToMxArrayWithOffset" , MDL_INFO_ID_MODEL_FCN_NAME
, 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_extractBitFieldFromMxArray" , MDL_INFO_ID_MODEL_FCN_NAME ,
0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_cacheBitFieldToMxArray" , MDL_INFO_ID_MODEL_FCN_NAME , 0 ,
- 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_restoreDataFromMxArray" , MDL_INFO_ID_MODEL_FCN_NAME , 0 ,
- 1 , ( void * ) "asbCubeSatACS" } , { "mr_asbCubeSatACS_cacheDataAsMxArray"
, MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_RegisterSimStateChecksum" , MDL_INFO_ID_MODEL_FCN_NAME , 0
, - 1 , ( void * ) "asbCubeSatACS" } , { "mr_asbCubeSatACS_SetDWork" ,
MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void * ) "asbCubeSatACS" } , {
"mr_asbCubeSatACS_GetDWork" , MDL_INFO_ID_MODEL_FCN_NAME , 0 , - 1 , ( void *
) "asbCubeSatACS" } , { "asbCubeSatACS.h" , MDL_INFO_MODEL_FILENAME , 0 , - 1
, ( NULL ) } , { "asbCubeSatACS.c" , MDL_INFO_MODEL_FILENAME , 0 , - 1 , (
void * ) "asbCubeSatACS" } } ; abopqckbgqo abopqckbgq = { 0.0 , 0.0 , 1.0 , -
1.0 , - 1.0 , 4.4408920985006262E-16 , { 0.0 , 0.0 , 0.0 } , 0.5 , 2.0 , 1.0
, 0.5 , 1.0 , 1.0 , 1.0 , 0.5 , { 0.0 , 1.0 } , 1.0 , 0.5 , 1.0 , 1.0 , 1.0 ,
0.5 , { 0.0 , 1.0 } , 1.0 , 0.5 , 1.0 , 1.0 , 1.0 , 0.5 , { 0.0 , 1.0 } , 1.0
, 0.0 , 0.0 , - 1.0 , { - 1.0 , - 0.0 , - 0.0 , - 0.0 , - 1.0 , - 0.0 , - 0.0
, - 0.0 , - 1.0 } , 1.0 , 1.0 , - 1.0 , { 1.0 , 0.0 , 0.0 , 0.0 } , - 1.0 , -
1.0 , 1.0 , 1.0 , 0.0 , 0.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 ,
2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , - 1.0 , 1.0 , -
1.0 , 1.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 ,
2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , 2.0 , - 1.0 , 1.0 , { 0.0 , 0.0 , - 1.0 }
, { 1.0 , 0.0 , 0.0 } , - 1.0 , 1.0 , 0.5 , 0.5 , 0.5 , 0.5 , 0.5 , 0.5 , -
1.0 , 0.0 , 0.0 , - 1.0 , 0.0 , 0.0 , { 0.0 , 0.0 , 1.0 } , 0.5 , 0.5 , 0.5 ,
0.5 , 0.5 , 0.5 , 1.0 , { 0.0 } , { - 1.0 } , { 1.0 } , { 0.0 } , { - 1.0 } ,
{ 1.0 } , { 0.0 } , { - 1.0 } , { 1.0 } , { 0.0 } , { - 1.0 } , { 1.0 } } ;
void ft4vlbdxum ( real_T * jmbbaxxuhn , p2cri44k0h * localP ) { * jmbbaxxuhn
= localP -> P_0 ; } void pm1oeto4u5 ( ophodr0x0g * localB , due31ddxq5 *
localDW ) { localDW -> ck3q4trat2 = mbfvbx3cau ; localDW -> jrxil14s5x = 0U ;
localDW -> gvwlamizy1 = mbfvbx3cau ; localDW -> csgaj2fyjn [ 0 ] = abopqckbgq
. P_2 ; localDW -> drbjvug1h2 [ 0 ] = abopqckbgq . P_1 ; localB -> au2rrfanhd
[ 0 ] = 0.0 ; localDW -> csgaj2fyjn [ 1 ] = abopqckbgq . P_2 ; localDW ->
drbjvug1h2 [ 1 ] = abopqckbgq . P_1 ; localB -> au2rrfanhd [ 1 ] = 0.0 ;
localDW -> csgaj2fyjn [ 2 ] = abopqckbgq . P_2 ; localDW -> drbjvug1h2 [ 2 ]
= abopqckbgq . P_1 ; localB -> au2rrfanhd [ 2 ] = 0.0 ; localB -> kisoy4t2cf
[ 0 ] = abopqckbgq . P_39 [ 0 ] ; localB -> kisoy4t2cf [ 1 ] = abopqckbgq .
P_39 [ 1 ] ; localB -> kisoy4t2cf [ 2 ] = abopqckbgq . P_39 [ 2 ] ; localB ->
kisoy4t2cf [ 3 ] = abopqckbgq . P_39 [ 3 ] ; localB -> ik2arsnaov . Roll =
localB -> au2rrfanhd [ 0 ] ; localB -> ik2arsnaov . Pitch = localB ->
au2rrfanhd [ 1 ] ; localB -> ik2arsnaov . Yaw = localB -> au2rrfanhd [ 2 ] ;
} void m1mdmrcg1e ( ophodr0x0g * localB , due31ddxq5 * localDW ) { localDW ->
ck3q4trat2 = mbfvbx3cau ; localDW -> jrxil14s5x = 0U ; localDW -> gvwlamizy1
= mbfvbx3cau ; localDW -> csgaj2fyjn [ 0 ] = abopqckbgq . P_2 ; localDW ->
drbjvug1h2 [ 0 ] = abopqckbgq . P_1 ; localB -> au2rrfanhd [ 0 ] = 0.0 ;
localDW -> csgaj2fyjn [ 1 ] = abopqckbgq . P_2 ; localDW -> drbjvug1h2 [ 1 ]
= abopqckbgq . P_1 ; localB -> au2rrfanhd [ 1 ] = 0.0 ; localDW -> csgaj2fyjn
[ 2 ] = abopqckbgq . P_2 ; localDW -> drbjvug1h2 [ 2 ] = abopqckbgq . P_1 ;
localB -> au2rrfanhd [ 2 ] = 0.0 ; } void ie553oink0 ( dgtzqiy1yy * const
fprqfujhwe , due31ddxq5 * localDW ) { void * catalog ; void * catalog_p ;
void * catalog_e ; void * catalog_i ; if ( rt_slioCatalogue ( ) ) { catalog =
rtwGetPointerFromUniquePtr ( rt_slioCatalogue ( ) ) ; } else { catalog =
sdiGetSlioCatalogue ( fprqfujhwe -> DataMapInfo . mmi . InstanceMap .
fullPath ) ; } localDW -> kohckdzmxe = rt_SlioAccessorAddClientAssessmentSdi
( 1 , 4 , catalog , localDW -> kohckdzmxe , "Assertion" ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Error/Assertion"
) ; if ( rt_slioCatalogue ( ) ) { catalog_p = rtwGetPointerFromUniquePtr (
rt_slioCatalogue ( ) ) ; } else { catalog_p = sdiGetSlioCatalogue (
fprqfujhwe -> DataMapInfo . mmi . InstanceMap . fullPath ) ; } localDW ->
o0zwdfrkn4 = rt_SlioAccessorAddClientAssessmentSdi ( 1 , 4 , catalog_p ,
localDW -> o0zwdfrkn4 , "Assertion" ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Warning/Assertion"
) ; if ( rt_slioCatalogue ( ) ) { catalog_e = rtwGetPointerFromUniquePtr (
rt_slioCatalogue ( ) ) ; } else { catalog_e = sdiGetSlioCatalogue (
fprqfujhwe -> DataMapInfo . mmi . InstanceMap . fullPath ) ; } localDW ->
hunrq3wyal = rt_SlioAccessorAddClientAssessmentSdi ( 1 , 4 , catalog_e ,
localDW -> hunrq3wyal , "Assertion" ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Error/Assertion"
) ; if ( rt_slioCatalogue ( ) ) { catalog_i = rtwGetPointerFromUniquePtr (
rt_slioCatalogue ( ) ) ; } else { catalog_i = sdiGetSlioCatalogue (
fprqfujhwe -> DataMapInfo . mmi . InstanceMap . fullPath ) ; } localDW ->
kb3srtthe1 = rt_SlioAccessorAddClientAssessmentSdi ( 1 , 4 , catalog_i ,
localDW -> kb3srtthe1 , "Assertion" ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Warning/Assertion"
) ; } void asbCubeSatACS ( dgtzqiy1yy * const fprqfujhwe , const real_T
poggge31bg [ 3 ] , const real_T bhnv15a4pa [ 3 ] , const real_T iwyoy3pha2 [
4 ] , const real_T o11gvbbh0f [ 4 ] , const real_T bccrmd0zaf [ 3 ] , const
real_T ch404qdocd [ 3 ] , const real_T k5kslwiqzu [ 3 ] , const real_T *
mdjemta0zc , const real_T jqu0ukesnp [ 3 ] , const real_T covxpgifez [ 3 ] ,
const real_T gihymaan4d [ 3 ] , const real_T * ffoidm2zkp , ACSOutBus *
a5dz0igc5a , ophodr0x0g * localB , due31ddxq5 * localDW ) { boolean_T tmp ;
int32_T assessmentVar = - 1 ; int32_T assessmentVar_p = - 1 ; int32_T
assessmentVar_e = - 1 ; int32_T assessmentVar_i = - 1 ; void *
assessmentPtrVar ; int32_T i ; real_T uTmp ; real_T uTmp_p ; real_T uTmp_e ;
real_T uTmp_i ; int32_T i_p ; real_T uTmp_idx_0 ; real_T uTmp_idx_1 ; real_T
uTmp_idx_2 ; void * S ; const char * arg1 ; void * diag ; real_T * tmp_p ;
real_T * tmp_e ; localB -> pqbbeprs4l . V_ecef [ 0 ] = poggge31bg [ 0 ] ;
localB -> pqbbeprs4l . X_ecef [ 0 ] = bhnv15a4pa [ 0 ] ; localB -> pqbbeprs4l
. V_ecef [ 1 ] = poggge31bg [ 1 ] ; localB -> pqbbeprs4l . X_ecef [ 1 ] =
bhnv15a4pa [ 1 ] ; localB -> pqbbeprs4l . V_ecef [ 2 ] = poggge31bg [ 2 ] ;
localB -> pqbbeprs4l . X_ecef [ 2 ] = bhnv15a4pa [ 2 ] ; localB -> pqbbeprs4l
. q_ecef2b [ 0 ] = iwyoy3pha2 [ 0 ] ; localB -> pqbbeprs4l . q_eci2b [ 0 ] =
o11gvbbh0f [ 0 ] ; localB -> pqbbeprs4l . q_ecef2b [ 1 ] = iwyoy3pha2 [ 1 ] ;
localB -> pqbbeprs4l . q_eci2b [ 1 ] = o11gvbbh0f [ 1 ] ; localB ->
pqbbeprs4l . q_ecef2b [ 2 ] = iwyoy3pha2 [ 2 ] ; localB -> pqbbeprs4l .
q_eci2b [ 2 ] = o11gvbbh0f [ 2 ] ; localB -> pqbbeprs4l . q_ecef2b [ 3 ] =
iwyoy3pha2 [ 3 ] ; localB -> pqbbeprs4l . q_eci2b [ 3 ] = o11gvbbh0f [ 3 ] ;
localB -> pqbbeprs4l . Euler [ 0 ] = bccrmd0zaf [ 0 ] ; localB -> pqbbeprs4l
. LatLonAlt [ 0 ] = ch404qdocd [ 0 ] ; localB -> pqbbeprs4l . x_sun_eci [ 0 ]
= k5kslwiqzu [ 0 ] ; localB -> o3usn5t4yn . envForces_body [ 0 ] = jqu0ukesnp
[ 0 ] ; localB -> o3usn5t4yn . envTorques_body [ 0 ] = covxpgifez [ 0 ] ;
localB -> o3usn5t4yn . x_sun_eci [ 0 ] = gihymaan4d [ 0 ] ; localB ->
pqbbeprs4l . Euler [ 1 ] = bccrmd0zaf [ 1 ] ; localB -> pqbbeprs4l .
LatLonAlt [ 1 ] = ch404qdocd [ 1 ] ; localB -> pqbbeprs4l . x_sun_eci [ 1 ] =
k5kslwiqzu [ 1 ] ; localB -> o3usn5t4yn . envForces_body [ 1 ] = jqu0ukesnp [
1 ] ; localB -> o3usn5t4yn . envTorques_body [ 1 ] = covxpgifez [ 1 ] ;
localB -> o3usn5t4yn . x_sun_eci [ 1 ] = gihymaan4d [ 1 ] ; localB ->
pqbbeprs4l . Euler [ 2 ] = bccrmd0zaf [ 2 ] ; localB -> pqbbeprs4l .
LatLonAlt [ 2 ] = ch404qdocd [ 2 ] ; localB -> pqbbeprs4l . x_sun_eci [ 2 ] =
k5kslwiqzu [ 2 ] ; localB -> o3usn5t4yn . envForces_body [ 2 ] = jqu0ukesnp [
2 ] ; localB -> o3usn5t4yn . envTorques_body [ 2 ] = covxpgifez [ 2 ] ;
localB -> o3usn5t4yn . x_sun_eci [ 2 ] = gihymaan4d [ 2 ] ; localB ->
o3usn5t4yn . earthAngRate = * ffoidm2zkp ; if ( localDW -> jrxil14s5x == 0U )
{ localDW -> jrxil14s5x = 1U ; localDW -> gvwlamizy1 = jmbkvvifex ; localB ->
au2rrfanhd [ 0 ] = abopqckbgq . P_7 [ 0 ] ; localB -> au2rrfanhd [ 1 ] =
abopqckbgq . P_7 [ 1 ] ; localB -> au2rrfanhd [ 2 ] = abopqckbgq . P_7 [ 2 ]
; } else if ( localDW -> gvwlamizy1 == 1 ) { if ( * mdjemta0zc != 0.0 ) {
localB -> j2m0wlkbaa = 1.0 ; localDW -> gvwlamizy1 = ftwsycxlh1 ; localDW ->
ck3q4trat2 = l0p2h0wtbn ; } else { localB -> au2rrfanhd [ 0 ] = abopqckbgq .
P_7 [ 0 ] ; localB -> au2rrfanhd [ 1 ] = abopqckbgq . P_7 [ 1 ] ; localB ->
au2rrfanhd [ 2 ] = abopqckbgq . P_7 [ 2 ] ; } } else { if ( * mdjemta0zc ==
0.0 ) { localB -> j2m0wlkbaa = 0.0 ; localDW -> ck3q4trat2 = mbfvbx3cau ;
localDW -> gvwlamizy1 = jmbkvvifex ; localB -> au2rrfanhd [ 0 ] = abopqckbgq
. P_7 [ 0 ] ; localB -> au2rrfanhd [ 1 ] = abopqckbgq . P_7 [ 1 ] ; localB ->
au2rrfanhd [ 2 ] = abopqckbgq . P_7 [ 2 ] ; } else { switch ( localDW ->
ck3q4trat2 ) { case oajnnejtzp : if ( * mdjemta0zc == 2.0 ) { localB ->
j2m0wlkbaa = 1.0 ; localDW -> ck3q4trat2 = l0p2h0wtbn ; } else { localB ->
ptmfsrn2ct = localB -> pqbbeprs4l . V_ecef [ 1 ] * localB -> pqbbeprs4l .
X_ecef [ 2 ] ; localB -> iac52adxma = localB -> pqbbeprs4l . V_ecef [ 2 ] *
localB -> pqbbeprs4l . X_ecef [ 0 ] ; localB -> es2wmzeevd = localB ->
pqbbeprs4l . V_ecef [ 0 ] * localB -> pqbbeprs4l . X_ecef [ 1 ] ; localB ->
l3fkd1dx2n = localB -> pqbbeprs4l . V_ecef [ 2 ] * localB -> pqbbeprs4l .
X_ecef [ 1 ] ; localB -> b410ppllxu = localB -> pqbbeprs4l . V_ecef [ 0 ] *
localB -> pqbbeprs4l . X_ecef [ 2 ] ; localB -> hngjfbfpdn = localB ->
pqbbeprs4l . V_ecef [ 1 ] * localB -> pqbbeprs4l . X_ecef [ 0 ] ; localB ->
d2szlnfpsw [ 0 ] = localB -> ptmfsrn2ct - localB -> l3fkd1dx2n ; localB ->
d2szlnfpsw [ 1 ] = localB -> iac52adxma - localB -> b410ppllxu ; localB ->
d2szlnfpsw [ 2 ] = localB -> es2wmzeevd - localB -> hngjfbfpdn ; localB ->
hcc0twsvkr [ 0 ] = abopqckbgq . P_38 * localB -> pqbbeprs4l . X_ecef [ 0 ] ;
localB -> hcc0twsvkr [ 1 ] = abopqckbgq . P_38 * localB -> pqbbeprs4l .
X_ecef [ 1 ] ; localB -> hcc0twsvkr [ 2 ] = abopqckbgq . P_38 * localB ->
pqbbeprs4l . X_ecef [ 2 ] ; localB -> bx05lnxw1s = localB -> d2szlnfpsw [ 0 ]
* localB -> hcc0twsvkr [ 1 ] ; localB -> gjxnzadavs = localB -> d2szlnfpsw [
1 ] * localB -> hcc0twsvkr [ 2 ] ; localB -> auvpppbez4 = localB ->
d2szlnfpsw [ 2 ] * localB -> hcc0twsvkr [ 0 ] ; localB -> az1ozuqqa3 = localB
-> d2szlnfpsw [ 0 ] * localB -> hcc0twsvkr [ 2 ] ; localB -> hfn2gtiwqb =
localB -> d2szlnfpsw [ 1 ] * localB -> hcc0twsvkr [ 0 ] ; localB ->
oghscabnwv = localB -> d2szlnfpsw [ 2 ] * localB -> hcc0twsvkr [ 1 ] ; localB
-> ett0ysz14h [ 0 ] = localB -> gjxnzadavs - localB -> oghscabnwv ; localB ->
ett0ysz14h [ 1 ] = localB -> auvpppbez4 - localB -> az1ozuqqa3 ; localB ->
ett0ysz14h [ 2 ] = localB -> bx05lnxw1s - localB -> hfn2gtiwqb ; uTmp_idx_0 =
localB -> ett0ysz14h [ 0 ] ; uTmp_idx_1 = localB -> ett0ysz14h [ 0 ] ;
uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> ett0ysz14h [ 1
] ; uTmp_idx_1 = localB -> ett0ysz14h [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> ett0ysz14h [ 2 ] ; uTmp_idx_1 = localB ->
ett0ysz14h [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB ->
ndqopehfku = uTmp_idx_2 ; uTmp_idx_0 = localB -> ndqopehfku ; localB ->
pmzwdqbdhc = uTmp_idx_0 ; uTmp_idx_0 = localB -> pmzwdqbdhc ; if ( uTmp_idx_0
< 0.0 ) { localB -> evui23vo1t = - muDoubleScalarSqrt ( muDoubleScalarAbs (
uTmp_idx_0 ) ) ; } else { localB -> evui23vo1t = muDoubleScalarSqrt (
uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 0 ] = localB -> ett0ysz14h [ 0 ] /
localB -> evui23vo1t ; uTmp_idx_0 = localB -> d2szlnfpsw [ 0 ] ; uTmp_idx_1 =
localB -> d2szlnfpsw [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; localB ->
ajgwhha0vo [ 1 ] = localB -> ett0ysz14h [ 1 ] / localB -> evui23vo1t ;
uTmp_idx_0 = localB -> d2szlnfpsw [ 1 ] ; uTmp_idx_1 = localB -> d2szlnfpsw [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB -> ajgwhha0vo [ 2 ] =
localB -> ett0ysz14h [ 2 ] / localB -> evui23vo1t ; uTmp_idx_0 = localB ->
d2szlnfpsw [ 2 ] ; uTmp_idx_1 = localB -> d2szlnfpsw [ 2 ] ; uTmp_idx_2 +=
uTmp_idx_0 * uTmp_idx_1 ; localB -> p1j0vveypv = uTmp_idx_2 ; uTmp_idx_0 =
localB -> p1j0vveypv ; localB -> mag0q3tmvq = uTmp_idx_0 ; uTmp_idx_0 =
localB -> mag0q3tmvq ; if ( uTmp_idx_0 < 0.0 ) { localB -> bdbm0zeqye = -
muDoubleScalarSqrt ( muDoubleScalarAbs ( uTmp_idx_0 ) ) ; } else { localB ->
bdbm0zeqye = muDoubleScalarSqrt ( uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 3 ]
= localB -> d2szlnfpsw [ 0 ] / localB -> bdbm0zeqye ; uTmp_idx_0 = localB ->
hcc0twsvkr [ 0 ] ; uTmp_idx_1 = localB -> hcc0twsvkr [ 0 ] ; uTmp_idx_2 =
uTmp_idx_0 * uTmp_idx_1 ; localB -> ajgwhha0vo [ 4 ] = localB -> d2szlnfpsw [
1 ] / localB -> bdbm0zeqye ; uTmp_idx_0 = localB -> hcc0twsvkr [ 1 ] ;
uTmp_idx_1 = localB -> hcc0twsvkr [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; localB -> ajgwhha0vo [ 5 ] = localB -> d2szlnfpsw [ 2 ] / localB
-> bdbm0zeqye ; uTmp_idx_0 = localB -> hcc0twsvkr [ 2 ] ; uTmp_idx_1 = localB
-> hcc0twsvkr [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB ->
dxao5mqflq = uTmp_idx_2 ; uTmp_idx_0 = localB -> dxao5mqflq ; localB ->
as5s104yv3 = uTmp_idx_0 ; uTmp_idx_0 = localB -> as5s104yv3 ; if ( uTmp_idx_0
< 0.0 ) { localB -> ancb5wsbic = - muDoubleScalarSqrt ( muDoubleScalarAbs (
uTmp_idx_0 ) ) ; } else { localB -> ancb5wsbic = muDoubleScalarSqrt (
uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 6 ] = localB -> hcc0twsvkr [ 0 ] /
localB -> ancb5wsbic ; localB -> ajgwhha0vo [ 7 ] = localB -> hcc0twsvkr [ 1
] / localB -> ancb5wsbic ; localB -> ajgwhha0vo [ 8 ] = localB -> hcc0twsvkr
[ 2 ] / localB -> ancb5wsbic ; for ( i = 0 ; i < 3 ; i ++ ) { localB ->
chwm3nx1de [ 3 * i ] = localB -> ajgwhha0vo [ i ] ; localB -> chwm3nx1de [ 3
* i + 1 ] = localB -> ajgwhha0vo [ i + 3 ] ; localB -> chwm3nx1de [ 3 * i + 2
] = localB -> ajgwhha0vo [ i + 6 ] ; } if ( abopqckbgq . P_3 != 1.0 ) {
uTmp_idx_0 = localB -> chwm3nx1de [ 0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [
4 ] ; uTmp_idx_2 = localB -> chwm3nx1de [ 8 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> jeuezbh53e = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 5 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 7 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> hbmlrd3li0 = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 1 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 3 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 8 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> pzkyhpk2mi = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 2 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 3 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 7 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> f5xk34wflu = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 1 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 5 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 6 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> bilgg10n54 = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 2 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 4 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 6 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> d3tyu2leur = uTmp_idx_0 ; localB ->
c1i1qspkb3 = ( ( ( ( localB -> jeuezbh53e - localB -> hbmlrd3li0 ) - localB
-> pzkyhpk2mi ) + localB -> f5xk34wflu ) + localB -> bilgg10n54 ) - localB ->
d3tyu2leur ; localB -> llfqgps3ze = localB -> c1i1qspkb3 + abopqckbgq . P_34
; localB -> c4r13qkgfk = muDoubleScalarAbs ( localB -> llfqgps3ze ) ; localB
-> obvo01vjhr = ( localB -> c4r13qkgfk > abopqckbgq . P_6 ) ; for ( i = 0 ; i
< 3 ; i ++ ) { localB -> dagsyifhtl [ 3 * i ] = localB -> chwm3nx1de [ i ] ;
localB -> dagsyifhtl [ 3 * i + 1 ] = localB -> chwm3nx1de [ i + 3 ] ; localB
-> dagsyifhtl [ 3 * i + 2 ] = localB -> chwm3nx1de [ i + 6 ] ; } tmp_p = &
localB -> dagsyifhtl [ 0 ] ; tmp_e = & localB -> chwm3nx1de [ 0 ] ; for ( i =
0 ; i < 3 ; i ++ ) { for ( i_p = 0 ; i_p < 3 ; i_p ++ ) { localB ->
k4wxy4haes [ i_p + 3 * i ] = 0.0 ; localB -> k4wxy4haes [ i_p + 3 * i ] +=
tmp_e [ 3 * i ] * tmp_p [ i_p ] ; localB -> k4wxy4haes [ i_p + 3 * i ] +=
tmp_e [ 3 * i + 1 ] * tmp_p [ i_p + 3 ] ; localB -> k4wxy4haes [ i_p + 3 * i
] += tmp_e [ 3 * i + 2 ] * tmp_p [ i_p + 6 ] ; } } for ( i = 0 ; i < 9 ; i ++
) { localB -> bktac2t5qf [ i ] = localB -> k4wxy4haes [ i ] + abopqckbgq .
P_35 [ i ] ; localB -> k0jasfxbw4 [ i ] = muDoubleScalarAbs ( localB ->
bktac2t5qf [ i ] ) ; localB -> lzuk335wwg [ i ] = ( localB -> k0jasfxbw4 [ i
] > abopqckbgq . P_6 ) ; } tmp = localB -> lzuk335wwg [ 0 ] ; for ( i = 0 ; i
< 8 ; i ++ ) { tmp = ( tmp || localB -> lzuk335wwg [ i + 1 ] ) ; } localB ->
axb0wkwyqt = tmp ; if ( localB -> obvo01vjhr ) { if ( abopqckbgq . P_3 == 2.0
) { assessmentPtrVar = ( void * ) & assessmentVar ; if ( abopqckbgq . P_32 !=
0.0 ) { assessmentVar = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
kb3srtthe1 , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Warning/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssReportDiagnosticAsWarning ( S , diag ) ;
assessmentVar = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> kb3srtthe1 ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> fevx5o0jny ) ; } else { if ( abopqckbgq . P_3 == 3.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_e ; if ( abopqckbgq . P_32 !=
0.0 ) { assessmentVar_e = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
hunrq3wyal , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Error/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssSet_slErrMsg ( S , diag ) ; ssSetStopRequested (
fprqfujhwe -> _mdlRefSfcnS , ( int ) rtmGetTaskTime ( fprqfujhwe , 0 ) ) ;
assessmentVar_e = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> hunrq3wyal ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> i41lks3yol ) ; } } srUpdateBC ( localDW -> hmuqbllyba ) ; } else {
if ( localB -> axb0wkwyqt ) { if ( abopqckbgq . P_3 == 2.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_p ; if ( abopqckbgq . P_33 !=
0.0 ) { assessmentVar_p = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
o0zwdfrkn4 , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Warning/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssReportDiagnosticAsWarning ( S , diag ) ;
assessmentVar_p = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> o0zwdfrkn4 ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> hbhtccbgcn ) ; } else { if ( abopqckbgq . P_3 == 3.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_i ; if ( abopqckbgq . P_33 !=
0.0 ) { assessmentVar_i = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
kohckdzmxe , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Error/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssSet_slErrMsg ( S , diag ) ; ssSetStopRequested (
fprqfujhwe -> _mdlRefSfcnS , ( int ) rtmGetTaskTime ( fprqfujhwe , 0 ) ) ;
assessmentVar_i = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> kohckdzmxe ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> pj0n0u4s05 ) ; } } srUpdateBC ( localDW -> jkc1cp3f5y ) ; } }
srUpdateBC ( localDW -> pnnvwfsy4q ) ; } uTmp_idx_0 = localB -> chwm3nx1de [
0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 4 ] ; uTmp_idx_2 = localB ->
chwm3nx1de [ 8 ] ; uTmp_idx_0 += uTmp_idx_1 ; uTmp_idx_0 += uTmp_idx_2 ;
localB -> li3s2bpkyl = uTmp_idx_0 ; if ( localB -> li3s2bpkyl > 0.0 ) {
localB -> dpx2qbz3y1 = localB -> li3s2bpkyl + abopqckbgq . P_10 ; localB ->
aupjmejpoz = muDoubleScalarSqrt ( localB -> dpx2qbz3y1 ) ; localB ->
kisoy4t2cf [ 0 ] = abopqckbgq . P_8 * localB -> aupjmejpoz ; localB ->
nlbqn3ve2x = abopqckbgq . P_9 * localB -> aupjmejpoz ; localB -> jjzn0i4cnb =
localB -> chwm3nx1de [ 7 ] - localB -> chwm3nx1de [ 5 ] ; localB ->
lbecua1lw5 = localB -> chwm3nx1de [ 2 ] - localB -> chwm3nx1de [ 6 ] ; localB
-> kqs21bqzfd = localB -> chwm3nx1de [ 3 ] - localB -> chwm3nx1de [ 1 ] ;
localB -> kisoy4t2cf [ 1 ] = localB -> jjzn0i4cnb / localB -> nlbqn3ve2x ;
localB -> kisoy4t2cf [ 2 ] = localB -> lbecua1lw5 / localB -> nlbqn3ve2x ;
localB -> kisoy4t2cf [ 3 ] = localB -> kqs21bqzfd / localB -> nlbqn3ve2x ;
srUpdateBC ( localDW -> eqke51jlea ) ; } else { if ( ( localB -> chwm3nx1de [
4 ] > localB -> chwm3nx1de [ 0 ] ) && ( localB -> chwm3nx1de [ 4 ] > localB
-> chwm3nx1de [ 8 ] ) ) { localB -> pi5rmuvids = ( ( localB -> chwm3nx1de [ 4
] - localB -> chwm3nx1de [ 0 ] ) - localB -> chwm3nx1de [ 8 ] ) + abopqckbgq
. P_17 ; localB -> ityqvceuan = muDoubleScalarSqrt ( localB -> pi5rmuvids ) ;
localB -> kisoy4t2cf [ 2 ] = abopqckbgq . P_11 * localB -> ityqvceuan ;
localB -> da0yfcpj3q = localB -> chwm3nx1de [ 1 ] + localB -> chwm3nx1de [ 3
] ; localB -> cujzh0ksdj = localB -> chwm3nx1de [ 5 ] + localB -> chwm3nx1de
[ 7 ] ; localB -> miijbvu3or = localB -> chwm3nx1de [ 2 ] - localB ->
chwm3nx1de [ 6 ] ; if ( localB -> ityqvceuan != 0.0 ) { localB -> ei23othzol
[ 0 ] = abopqckbgq . P_15 ; localB -> ei23othzol [ 1 ] = localB -> ityqvceuan
; } else { localB -> ei23othzol [ 0 ] = abopqckbgq . P_16 [ 0 ] ; localB ->
ei23othzol [ 1 ] = abopqckbgq . P_16 [ 1 ] ; } localB -> a5gqfzjt2h = localB
-> ei23othzol [ 0 ] / localB -> ei23othzol [ 1 ] ; localB -> abdrly3jp0 [ 0 ]
= localB -> da0yfcpj3q * localB -> a5gqfzjt2h ; localB -> abdrly3jp0 [ 1 ] =
localB -> cujzh0ksdj * localB -> a5gqfzjt2h ; localB -> abdrly3jp0 [ 2 ] =
localB -> miijbvu3or * localB -> a5gqfzjt2h ; localB -> kisoy4t2cf [ 1 ] =
abopqckbgq . P_12 * localB -> abdrly3jp0 [ 0 ] ; localB -> kisoy4t2cf [ 3 ] =
abopqckbgq . P_13 * localB -> abdrly3jp0 [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_14 * localB -> abdrly3jp0 [ 2 ] ; srUpdateBC ( localDW ->
oaw4iyr2ye ) ; } else if ( localB -> chwm3nx1de [ 8 ] > localB -> chwm3nx1de
[ 0 ] ) { localB -> cgndjbnbcm = ( ( localB -> chwm3nx1de [ 8 ] - localB ->
chwm3nx1de [ 0 ] ) - localB -> chwm3nx1de [ 4 ] ) + abopqckbgq . P_24 ;
localB -> mxuvygxdg1 = muDoubleScalarSqrt ( localB -> cgndjbnbcm ) ; localB
-> kisoy4t2cf [ 3 ] = abopqckbgq . P_18 * localB -> mxuvygxdg1 ; localB ->
hcxxucabac = localB -> chwm3nx1de [ 2 ] + localB -> chwm3nx1de [ 6 ] ; localB
-> n25v12lx5j = localB -> chwm3nx1de [ 5 ] + localB -> chwm3nx1de [ 7 ] ;
localB -> jdudwnuxtj = localB -> chwm3nx1de [ 3 ] - localB -> chwm3nx1de [ 1
] ; if ( localB -> mxuvygxdg1 != 0.0 ) { localB -> lspyhlp2gk [ 0 ] =
abopqckbgq . P_22 ; localB -> lspyhlp2gk [ 1 ] = localB -> mxuvygxdg1 ; }
else { localB -> lspyhlp2gk [ 0 ] = abopqckbgq . P_23 [ 0 ] ; localB ->
lspyhlp2gk [ 1 ] = abopqckbgq . P_23 [ 1 ] ; } localB -> nr0mlbxf2n = localB
-> lspyhlp2gk [ 0 ] / localB -> lspyhlp2gk [ 1 ] ; localB -> o55jssatf5 [ 0 ]
= localB -> hcxxucabac * localB -> nr0mlbxf2n ; localB -> o55jssatf5 [ 1 ] =
localB -> n25v12lx5j * localB -> nr0mlbxf2n ; localB -> o55jssatf5 [ 2 ] =
localB -> jdudwnuxtj * localB -> nr0mlbxf2n ; localB -> kisoy4t2cf [ 1 ] =
abopqckbgq . P_19 * localB -> o55jssatf5 [ 0 ] ; localB -> kisoy4t2cf [ 2 ] =
abopqckbgq . P_20 * localB -> o55jssatf5 [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_21 * localB -> o55jssatf5 [ 2 ] ; srUpdateBC ( localDW ->
dgwobdrrst ) ; } else { localB -> miz1cf522w = ( ( localB -> chwm3nx1de [ 0 ]
- localB -> chwm3nx1de [ 4 ] ) - localB -> chwm3nx1de [ 8 ] ) + abopqckbgq .
P_31 ; localB -> ma31qnyf55 = muDoubleScalarSqrt ( localB -> miz1cf522w ) ;
localB -> kisoy4t2cf [ 1 ] = abopqckbgq . P_25 * localB -> ma31qnyf55 ; if (
localB -> ma31qnyf55 != 0.0 ) { localB -> imkid1zpxb [ 0 ] = abopqckbgq .
P_29 ; localB -> imkid1zpxb [ 1 ] = localB -> ma31qnyf55 ; } else { localB ->
imkid1zpxb [ 0 ] = abopqckbgq . P_30 [ 0 ] ; localB -> imkid1zpxb [ 1 ] =
abopqckbgq . P_30 [ 1 ] ; } localB -> cd1v4qteg4 = localB -> imkid1zpxb [ 0 ]
/ localB -> imkid1zpxb [ 1 ] ; localB -> fbn4dwnxru = localB -> chwm3nx1de [
1 ] + localB -> chwm3nx1de [ 3 ] ; localB -> lxirnp32u5 = localB ->
chwm3nx1de [ 2 ] + localB -> chwm3nx1de [ 6 ] ; localB -> fetanale5g = localB
-> chwm3nx1de [ 7 ] - localB -> chwm3nx1de [ 5 ] ; localB -> dmbfizzhoy [ 0 ]
= localB -> cd1v4qteg4 * localB -> fbn4dwnxru ; localB -> dmbfizzhoy [ 1 ] =
localB -> cd1v4qteg4 * localB -> lxirnp32u5 ; localB -> dmbfizzhoy [ 2 ] =
localB -> cd1v4qteg4 * localB -> fetanale5g ; localB -> kisoy4t2cf [ 2 ] =
abopqckbgq . P_26 * localB -> dmbfizzhoy [ 0 ] ; localB -> kisoy4t2cf [ 3 ] =
abopqckbgq . P_27 * localB -> dmbfizzhoy [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_28 * localB -> dmbfizzhoy [ 2 ] ; srUpdateBC ( localDW ->
gdtw35bz52 ) ; } srUpdateBC ( localDW -> cd1ggdrce0 ) ; } localB ->
othf40niz3 = localB -> pqbbeprs4l . q_ecef2b [ 0 ] * localB -> pqbbeprs4l .
q_ecef2b [ 0 ] ; localB -> g42ibolh2u = localB -> pqbbeprs4l . q_ecef2b [ 1 ]
* localB -> pqbbeprs4l . q_ecef2b [ 1 ] ; localB -> eijfujey1y = localB ->
pqbbeprs4l . q_ecef2b [ 2 ] * localB -> pqbbeprs4l . q_ecef2b [ 2 ] ; localB
-> h1pmvsmynu = localB -> pqbbeprs4l . q_ecef2b [ 3 ] * localB -> pqbbeprs4l
. q_ecef2b [ 3 ] ; localB -> kv1sbp011m = ( ( localB -> othf40niz3 + localB
-> g42ibolh2u ) + localB -> eijfujey1y ) + localB -> h1pmvsmynu ; localB ->
pc25fybu4k = localB -> pqbbeprs4l . q_ecef2b [ 0 ] / localB -> kv1sbp011m ;
localB -> f4tqdb5o3i = - localB -> pqbbeprs4l . q_ecef2b [ 1 ] ; localB ->
p4i01phfgx = localB -> f4tqdb5o3i / localB -> kv1sbp011m ; localB ->
aqrr43mbpr = - localB -> pqbbeprs4l . q_ecef2b [ 2 ] ; localB -> gklfi1kdl5 =
localB -> aqrr43mbpr / localB -> kv1sbp011m ; localB -> auuomm3be3 = - localB
-> pqbbeprs4l . q_ecef2b [ 3 ] ; localB -> irobrjzkwn = localB -> auuomm3be3
/ localB -> kv1sbp011m ; localB -> nf0jivsnr0 = localB -> pc25fybu4k * localB
-> kisoy4t2cf [ 0 ] ; localB -> cavz4oxykx = localB -> p4i01phfgx * localB ->
kisoy4t2cf [ 1 ] ; localB -> oyvh2jd13w = localB -> gklfi1kdl5 * localB ->
kisoy4t2cf [ 2 ] ; localB -> nnrzflsyha = localB -> irobrjzkwn * localB ->
kisoy4t2cf [ 3 ] ; localB -> geedq5yudt = ( ( localB -> nf0jivsnr0 - localB
-> cavz4oxykx ) - localB -> oyvh2jd13w ) - localB -> nnrzflsyha ; localB ->
bz2dqftj5o = localB -> pc25fybu4k * localB -> kisoy4t2cf [ 1 ] ; localB ->
mkyhn0hn34 = localB -> p4i01phfgx * localB -> kisoy4t2cf [ 0 ] ; localB ->
pt23uwsxrx = localB -> gklfi1kdl5 * localB -> kisoy4t2cf [ 3 ] ; localB ->
dzskq5ups0 = localB -> irobrjzkwn * localB -> kisoy4t2cf [ 2 ] ; localB ->
efvpi3kpft = ( ( localB -> bz2dqftj5o + localB -> mkyhn0hn34 ) + localB ->
pt23uwsxrx ) - localB -> dzskq5ups0 ; localB -> enxkcnmlol = localB ->
pc25fybu4k * localB -> kisoy4t2cf [ 2 ] ; localB -> ghszcpbmp2 = localB ->
p4i01phfgx * localB -> kisoy4t2cf [ 3 ] ; localB -> ngemudnybi = localB ->
gklfi1kdl5 * localB -> kisoy4t2cf [ 0 ] ; localB -> f2pgiglrfx = localB ->
irobrjzkwn * localB -> kisoy4t2cf [ 1 ] ; localB -> dotnnrn0mt = ( ( localB
-> enxkcnmlol - localB -> ghszcpbmp2 ) + localB -> ngemudnybi ) + localB ->
f2pgiglrfx ; localB -> jpwlfp1qfr = localB -> pc25fybu4k * localB ->
kisoy4t2cf [ 3 ] ; localB -> l5eqtelpjy = localB -> p4i01phfgx * localB ->
kisoy4t2cf [ 2 ] ; localB -> nbzu4nl53q = localB -> gklfi1kdl5 * localB ->
kisoy4t2cf [ 1 ] ; localB -> fmilqdljui = localB -> irobrjzkwn * localB ->
kisoy4t2cf [ 0 ] ; localB -> mjbiv50z2q = ( ( localB -> jpwlfp1qfr + localB
-> l5eqtelpjy ) - localB -> nbzu4nl53q ) + localB -> fmilqdljui ; localB ->
gwprbrbwhf = localB -> geedq5yudt * localB -> geedq5yudt ; localB ->
pwaj3lur5c = localB -> efvpi3kpft * localB -> efvpi3kpft ; localB ->
g2nimep1p5 = localB -> dotnnrn0mt * localB -> dotnnrn0mt ; localB ->
fjpeg4isms = localB -> mjbiv50z2q * localB -> mjbiv50z2q ; localB ->
msga0mx05j = ( ( localB -> gwprbrbwhf + localB -> pwaj3lur5c ) + localB ->
g2nimep1p5 ) + localB -> fjpeg4isms ; localB -> kuprjkwqeb =
muDoubleScalarSqrt ( localB -> msga0mx05j ) ; localB -> hnom3fn0oe = localB
-> geedq5yudt / localB -> kuprjkwqeb ; localB -> pod1oyk1bu = localB ->
efvpi3kpft / localB -> kuprjkwqeb ; localB -> kdhrhevjum = localB ->
dotnnrn0mt / localB -> kuprjkwqeb ; localB -> eqqfdw0pcv = localB ->
mjbiv50z2q / localB -> kuprjkwqeb ; localB -> gew4afwhiu = ( localB ->
pod1oyk1bu * localB -> eqqfdw0pcv + localB -> hnom3fn0oe * localB ->
kdhrhevjum ) * 2.0 ; if ( localB -> gew4afwhiu > 1.0 ) { localB -> byzzmz3jix
= abopqckbgq . P_36 ; srUpdateBC ( localDW -> kw1ggasixl ) ; } else if (
localB -> gew4afwhiu < - 1.0 ) { localB -> byzzmz3jix = abopqckbgq . P_37 ;
srUpdateBC ( localDW -> fvctynab0j ) ; } else { localB -> byzzmz3jix = localB
-> gew4afwhiu ; srUpdateBC ( localDW -> fyislxta05 ) ; } localB -> god220qgbo
= ( localB -> kdhrhevjum * localB -> eqqfdw0pcv - localB -> hnom3fn0oe *
localB -> pod1oyk1bu ) * - 2.0 ; localB -> aoa1pcyyzq = ( ( localB ->
hnom3fn0oe * localB -> hnom3fn0oe - localB -> pod1oyk1bu * localB ->
pod1oyk1bu ) - localB -> kdhrhevjum * localB -> kdhrhevjum ) + localB ->
eqqfdw0pcv * localB -> eqqfdw0pcv ; localB -> h0f0eu2pdu [ 0 ] =
muDoubleScalarAtan2 ( localB -> god220qgbo , localB -> aoa1pcyyzq ) ; localB
-> m3z4w45but = ( localB -> pod1oyk1bu * localB -> kdhrhevjum - localB ->
hnom3fn0oe * localB -> eqqfdw0pcv ) * - 2.0 ; localB -> kqq0bxks3j = ( (
localB -> hnom3fn0oe * localB -> hnom3fn0oe + localB -> pod1oyk1bu * localB
-> pod1oyk1bu ) - localB -> kdhrhevjum * localB -> kdhrhevjum ) - localB ->
eqqfdw0pcv * localB -> eqqfdw0pcv ; localB -> h0f0eu2pdu [ 2 ] =
muDoubleScalarAtan2 ( localB -> m3z4w45but , localB -> kqq0bxks3j ) ;
uTmp_idx_0 = localB -> byzzmz3jix ; if ( uTmp_idx_0 > 1.0 ) { uTmp_idx_0 =
1.0 ; } else { if ( uTmp_idx_0 < - 1.0 ) { uTmp_idx_0 = - 1.0 ; } } localB ->
h0f0eu2pdu [ 1 ] = muDoubleScalarAsin ( uTmp_idx_0 ) ; localB -> au2rrfanhd [
0 ] = localB -> h0f0eu2pdu [ 0 ] ; localB -> au2rrfanhd [ 1 ] = localB ->
h0f0eu2pdu [ 1 ] ; localB -> au2rrfanhd [ 2 ] = localB -> h0f0eu2pdu [ 2 ] -
1.5708 ; } break ; case bzbppujgmh : if ( * mdjemta0zc == 1.0 ) { localB ->
j2m0wlkbaa = 1.0 ; localDW -> ck3q4trat2 = l0p2h0wtbn ; } else { if ( localB
-> gc5pvsxnh5_pbm3vprmfu < 1.0E-6 ) { ft4vlbdxum ( & localB -> cbctnmjpjt , &
abopqckbgq . ft4vlbdxumf ) ; } else if ( localB -> flpv12x3hz_fqdqrf4qbc <
1.0E-6 ) { ft4vlbdxum ( & localB -> cbctnmjpjt , & abopqckbgq . atfx0t2smt )
; } else { ft4vlbdxum ( & localB -> cbctnmjpjt , & abopqckbgq . lvsoakle5c )
; } localB -> mg3e3f2azc = localB -> pqbbeprs4l . q_eci2b [ 0 ] * localB ->
pqbbeprs4l . q_eci2b [ 0 ] ; localB -> ndpdx5s540 = localB -> pqbbeprs4l .
q_eci2b [ 1 ] * localB -> pqbbeprs4l . q_eci2b [ 1 ] ; localB -> iz0aop4d5l =
localB -> pqbbeprs4l . q_eci2b [ 2 ] * localB -> pqbbeprs4l . q_eci2b [ 2 ] ;
localB -> ifgliophkp = localB -> pqbbeprs4l . q_eci2b [ 3 ] * localB ->
pqbbeprs4l . q_eci2b [ 3 ] ; localB -> gc5pvsxnh5 = ( ( localB -> mg3e3f2azc
+ localB -> ndpdx5s540 ) + localB -> iz0aop4d5l ) + localB -> ifgliophkp ;
localB -> kxk4gev0hm = muDoubleScalarSqrt ( localB -> gc5pvsxnh5 ) ; localB
-> flpv12x3hz = localB -> pqbbeprs4l . q_eci2b [ 2 ] / localB -> kxk4gev0hm ;
localB -> kqsghauiwo = localB -> flpv12x3hz * localB -> flpv12x3hz ; localB
-> j1f5fwnaed = localB -> pqbbeprs4l . q_eci2b [ 3 ] / localB -> kxk4gev0hm ;
localB -> fxzazlwsdi = localB -> j1f5fwnaed * localB -> j1f5fwnaed ; localB
-> b4afctu403 = ( abopqckbgq . P_105 - localB -> kqsghauiwo ) - localB ->
fxzazlwsdi ; localB -> ccu14oeslu = abopqckbgq . P_46 * localB -> b4afctu403
; localB -> dag30omkol = localB -> o3usn5t4yn . x_sun_eci [ 0 ] * localB ->
ccu14oeslu ; localB -> d3otc2dkvn = localB -> pqbbeprs4l . q_eci2b [ 1 ] /
localB -> kxk4gev0hm ; localB -> nwvrpnrwrq = localB -> d3otc2dkvn * localB
-> flpv12x3hz ; localB -> g4pmwv35ka = localB -> pqbbeprs4l . q_eci2b [ 0 ] /
localB -> kxk4gev0hm ; localB -> ai2d5pbcxj = localB -> g4pmwv35ka * localB
-> j1f5fwnaed ; localB -> bacajx3vjq = localB -> nwvrpnrwrq + localB ->
ai2d5pbcxj ; localB -> eljr2k52n1 = abopqckbgq . P_47 * localB -> bacajx3vjq
; localB -> jgt3sawf5i = localB -> eljr2k52n1 * localB -> o3usn5t4yn .
x_sun_eci [ 1 ] ; localB -> iwp0fe0b2p = localB -> g4pmwv35ka * localB ->
flpv12x3hz ; localB -> acn0p1ytar = localB -> d3otc2dkvn * localB ->
j1f5fwnaed ; localB -> ajdngegxdt = localB -> acn0p1ytar - localB ->
iwp0fe0b2p ; localB -> kwhrditlo0 = abopqckbgq . P_48 * localB -> ajdngegxdt
; localB -> n4hlop4vyd = localB -> kwhrditlo0 * localB -> o3usn5t4yn .
x_sun_eci [ 2 ] ; localB -> lns22e0fq0 = ( localB -> dag30omkol + localB ->
jgt3sawf5i ) + localB -> n4hlop4vyd ; localB -> em5tyjv3wn = localB ->
d3otc2dkvn * localB -> flpv12x3hz ; localB -> ekc1hhwybn = localB ->
g4pmwv35ka * localB -> j1f5fwnaed ; localB -> fbpazf2nhl = localB ->
em5tyjv3wn - localB -> ekc1hhwybn ; localB -> ht4c4tg5yn = abopqckbgq . P_49
* localB -> fbpazf2nhl ; localB -> cumsv5eupg = localB -> o3usn5t4yn .
x_sun_eci [ 0 ] * localB -> ht4c4tg5yn ; localB -> pt5fpkxfmr = localB ->
d3otc2dkvn * localB -> d3otc2dkvn ; localB -> mjnug2avlo = localB ->
j1f5fwnaed * localB -> j1f5fwnaed ; localB -> cvagzwmrwp = ( abopqckbgq .
P_106 - localB -> pt5fpkxfmr ) - localB -> mjnug2avlo ; localB -> mzh1r2z3sd
= abopqckbgq . P_50 * localB -> cvagzwmrwp ; localB -> ffyr5yrwug = localB ->
mzh1r2z3sd * localB -> o3usn5t4yn . x_sun_eci [ 1 ] ; localB -> n5ko0l2kof =
localB -> g4pmwv35ka * localB -> d3otc2dkvn ; localB -> ora2iiobyk = localB
-> flpv12x3hz * localB -> j1f5fwnaed ; localB -> p2w0gsyyk0 = localB ->
n5ko0l2kof + localB -> ora2iiobyk ; localB -> dfbls3gsww = abopqckbgq . P_51
* localB -> p2w0gsyyk0 ; localB -> konfpetli3 = localB -> dfbls3gsww * localB
-> o3usn5t4yn . x_sun_eci [ 2 ] ; localB -> beibupkzbc = ( localB ->
cumsv5eupg + localB -> ffyr5yrwug ) + localB -> konfpetli3 ; localB ->
nm1sbrcjar = localB -> d3otc2dkvn * localB -> j1f5fwnaed ; localB ->
pj22uqxmlg = localB -> g4pmwv35ka * localB -> flpv12x3hz ; localB ->
oyqakhhhh5 = localB -> nm1sbrcjar + localB -> pj22uqxmlg ; localB ->
b2rxz3rgtl = abopqckbgq . P_52 * localB -> oyqakhhhh5 ; localB -> p102jhxxcb
= localB -> o3usn5t4yn . x_sun_eci [ 0 ] * localB -> b2rxz3rgtl ; localB ->
f3ocm4ks5w = localB -> g4pmwv35ka * localB -> d3otc2dkvn ; localB ->
pxaqjqecwr = localB -> flpv12x3hz * localB -> j1f5fwnaed ; localB ->
od40dmgrgr = localB -> pxaqjqecwr - localB -> f3ocm4ks5w ; localB ->
bd2oascp1u = abopqckbgq . P_53 * localB -> od40dmgrgr ; localB -> pmqwpqkvqm
= localB -> bd2oascp1u * localB -> o3usn5t4yn . x_sun_eci [ 1 ] ; localB ->
bj3tkkrh0a = localB -> d3otc2dkvn * localB -> d3otc2dkvn ; localB ->
hr5ydhms0u = localB -> flpv12x3hz * localB -> flpv12x3hz ; localB ->
ixehtm4vge = ( abopqckbgq . P_107 - localB -> bj3tkkrh0a ) - localB ->
hr5ydhms0u ; localB -> iyjv2o0ipz = abopqckbgq . P_54 * localB -> ixehtm4vge
; localB -> c4akrlc3rp = localB -> iyjv2o0ipz * localB -> o3usn5t4yn .
x_sun_eci [ 2 ] ; localB -> aszykea23e = ( localB -> p102jhxxcb + localB ->
pmqwpqkvqm ) + localB -> c4akrlc3rp ; localB -> nvm1bkzhha [ 0 ] = localB ->
lns22e0fq0 ; localB -> nvm1bkzhha [ 1 ] = localB -> beibupkzbc ; localB ->
nvm1bkzhha [ 2 ] = localB -> aszykea23e ; localB -> guelczybwj = localB ->
pqbbeprs4l . q_eci2b [ 0 ] * localB -> pqbbeprs4l . q_eci2b [ 0 ] ; localB ->
ikgaxo3xra = localB -> pqbbeprs4l . q_eci2b [ 1 ] * localB -> pqbbeprs4l .
q_eci2b [ 1 ] ; localB -> mzjr1zulm1 = localB -> pqbbeprs4l . q_eci2b [ 2 ] *
localB -> pqbbeprs4l . q_eci2b [ 2 ] ; localB -> molcubxk5b = localB ->
pqbbeprs4l . q_eci2b [ 3 ] * localB -> pqbbeprs4l . q_eci2b [ 3 ] ; localB ->
f1yolepkbp = ( ( localB -> guelczybwj + localB -> ikgaxo3xra ) + localB ->
mzjr1zulm1 ) + localB -> molcubxk5b ; localB -> oybaiqh1fi =
muDoubleScalarSqrt ( localB -> f1yolepkbp ) ; localB -> d5c1hdgkme = localB
-> pqbbeprs4l . q_eci2b [ 2 ] / localB -> oybaiqh1fi ; localB -> abrkbekg0q =
localB -> d5c1hdgkme * localB -> d5c1hdgkme ; localB -> ls3wualjmp = localB
-> pqbbeprs4l . q_eci2b [ 3 ] / localB -> oybaiqh1fi ; localB -> dueg5i0ccg =
localB -> ls3wualjmp * localB -> ls3wualjmp ; localB -> c5scxxaqvg = (
abopqckbgq . P_108 - localB -> abrkbekg0q ) - localB -> dueg5i0ccg ; localB
-> au0w0sv3dr = abopqckbgq . P_55 * localB -> c5scxxaqvg ; localB ->
ox5j110tvr = abopqckbgq . P_104 [ 0 ] * localB -> au0w0sv3dr ; localB ->
pxpqkep4mq = localB -> pqbbeprs4l . q_eci2b [ 1 ] / localB -> oybaiqh1fi ;
localB -> hasnkfiqxl = localB -> pxpqkep4mq * localB -> d5c1hdgkme ; localB
-> ggphc33exl = localB -> pqbbeprs4l . q_eci2b [ 0 ] / localB -> oybaiqh1fi ;
localB -> blzao4dsmh = localB -> ggphc33exl * localB -> ls3wualjmp ; localB
-> iq55vxeh1l = localB -> hasnkfiqxl + localB -> blzao4dsmh ; localB ->
biws4makmr = abopqckbgq . P_56 * localB -> iq55vxeh1l ; localB -> obcr5pwbuf
= localB -> biws4makmr * abopqckbgq . P_104 [ 1 ] ; localB -> oo3fqjudg2 =
localB -> ggphc33exl * localB -> d5c1hdgkme ; localB -> olv5x54e1p = localB
-> pxpqkep4mq * localB -> ls3wualjmp ; localB -> dejgnbhefo = localB ->
olv5x54e1p - localB -> oo3fqjudg2 ; localB -> eirkjm43dc = abopqckbgq . P_57
* localB -> dejgnbhefo ; localB -> fu4jw2c34k = localB -> eirkjm43dc *
abopqckbgq . P_104 [ 2 ] ; localB -> ch1hygwrdo = ( localB -> ox5j110tvr +
localB -> obcr5pwbuf ) + localB -> fu4jw2c34k ; localB -> la1kgpsxk4 = localB
-> pxpqkep4mq * localB -> d5c1hdgkme ; localB -> kl4gw5wakp = localB ->
ggphc33exl * localB -> ls3wualjmp ; localB -> lwka1rfv43 = localB ->
la1kgpsxk4 - localB -> kl4gw5wakp ; localB -> pfce0y3esg = abopqckbgq . P_58
* localB -> lwka1rfv43 ; localB -> jogawdsu54 = abopqckbgq . P_104 [ 0 ] *
localB -> pfce0y3esg ; localB -> nvkbfph01n = localB -> pxpqkep4mq * localB
-> pxpqkep4mq ; localB -> bxftnuk1ra = localB -> ls3wualjmp * localB ->
ls3wualjmp ; localB -> dpaljsdlwp = ( abopqckbgq . P_109 - localB ->
nvkbfph01n ) - localB -> bxftnuk1ra ; localB -> kxzmvx1fdb = abopqckbgq .
P_59 * localB -> dpaljsdlwp ; localB -> bua0yizyq0 = localB -> kxzmvx1fdb *
abopqckbgq . P_104 [ 1 ] ; localB -> bsheudhisd = localB -> ggphc33exl *
localB -> pxpqkep4mq ; localB -> ac4ys3c5bf = localB -> d5c1hdgkme * localB
-> ls3wualjmp ; localB -> anfhdoinwk = localB -> bsheudhisd + localB ->
ac4ys3c5bf ; localB -> p5pv4ip1oa = abopqckbgq . P_60 * localB -> anfhdoinwk
; localB -> jsegmsryjn = localB -> p5pv4ip1oa * abopqckbgq . P_104 [ 2 ] ;
localB -> l4hw4jxkfm = ( localB -> jogawdsu54 + localB -> bua0yizyq0 ) +
localB -> jsegmsryjn ; localB -> pd4rcd2jtd = localB -> pxpqkep4mq * localB
-> ls3wualjmp ; localB -> kzmska5lpd = localB -> ggphc33exl * localB ->
d5c1hdgkme ; localB -> f2i5ftoz4x = localB -> pd4rcd2jtd + localB ->
kzmska5lpd ; localB -> i4krmgj1v0 = abopqckbgq . P_61 * localB -> f2i5ftoz4x
; localB -> l3phx3jow5 = abopqckbgq . P_104 [ 0 ] * localB -> i4krmgj1v0 ;
localB -> j4wv4xgmxb = localB -> ggphc33exl * localB -> pxpqkep4mq ; localB
-> lccltopkqw = localB -> d5c1hdgkme * localB -> ls3wualjmp ; localB ->
ccixsnw2fc = localB -> lccltopkqw - localB -> j4wv4xgmxb ; localB ->
nbd1b33zwn = abopqckbgq . P_62 * localB -> ccixsnw2fc ; localB -> h3ucgcuyfi
= localB -> nbd1b33zwn * abopqckbgq . P_104 [ 1 ] ; localB -> liwqkar004 =
localB -> pxpqkep4mq * localB -> pxpqkep4mq ; localB -> hxjifcsng0 = localB
-> d5c1hdgkme * localB -> d5c1hdgkme ; localB -> kyojjly2tl = ( abopqckbgq .
P_110 - localB -> liwqkar004 ) - localB -> hxjifcsng0 ; localB -> e0c4e11rni
= abopqckbgq . P_63 * localB -> kyojjly2tl ; localB -> ceyvjmztqi = localB ->
e0c4e11rni * abopqckbgq . P_104 [ 2 ] ; localB -> ahssnuifwd = ( localB ->
l3phx3jow5 + localB -> h3ucgcuyfi ) + localB -> ceyvjmztqi ; localB ->
i1c2wqtoet [ 0 ] = localB -> ch1hygwrdo ; localB -> i1c2wqtoet [ 1 ] = localB
-> l4hw4jxkfm ; localB -> i1c2wqtoet [ 2 ] = localB -> ahssnuifwd ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 0 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 0 ] ; uTmp_p = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 1 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 1 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 2 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
localB -> epzgchngwa = uTmp_idx_2 ; localB -> hzd2xuzbby = uTmp ; localB ->
n53d2qrt4k = uTmp_p ; localB -> bcfpn1davb = localB -> hzd2xuzbby * localB ->
n53d2qrt4k ; localB -> aggpapabvx = muDoubleScalarSqrt ( localB -> bcfpn1davb
) ; localB -> evm4x5kbd5 = localB -> epzgchngwa / localB -> aggpapabvx ;
localB -> hrahqncl30 = localB -> evm4x5kbd5 + abopqckbgq . P_64 ; localB ->
mj1mf02dto = muDoubleScalarAbs ( localB -> hrahqncl30 ) ; localB ->
g1bpg51r2b = localB -> evm4x5kbd5 + abopqckbgq . P_65 ; localB -> gn2snc434b
= muDoubleScalarAbs ( localB -> g1bpg51r2b ) ; if ( localB -> mj1mf02dto <
1.0E-6 ) { ft4vlbdxum ( & localB -> lgoqlnjph1 , & abopqckbgq . hzzxzr44uq )
; } else if ( localB -> gn2snc434b < 1.0E-6 ) { ft4vlbdxum ( & localB ->
lgoqlnjph1 , & abopqckbgq . fyajdrrehx ) ; } else { ft4vlbdxum ( & localB ->
lgoqlnjph1 , & abopqckbgq . fssw3wplvp ) ; } localB -> n4u4jxhsmm = ( localB
-> cbctnmjpjt != abopqckbgq . P_44 ) ; localB -> nqq5h0tu13 = ( localB ->
lgoqlnjph1 != abopqckbgq . P_45 ) ; localB -> g25u1yz10w = ( localB ->
n4u4jxhsmm || localB -> nqq5h0tu13 ) ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq .
P_88 [ 0 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp_p = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 0 ] ; uTmp_e = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq
. P_88 [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp_idx_2 +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 1 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1
] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 1
] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp_e += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 =
localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp
+= uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [
2 ] ; uTmp_e += uTmp_idx_0 * uTmp_idx_1 ; localB -> n0mgunt0gp = uTmp_idx_2 ;
localB -> lnpax3gygz = uTmp ; localB -> c2fzwxqnfq = localB ->
n4hlop4vyd_g1smspu5ke * localB -> lnpax3gygz ; localB -> kzacud3cdb =
muDoubleScalarSqrt ( localB -> c2fzwxqnfq ) ; localB -> gnxcy1z2pw = localB
-> n0mgunt0gp + localB -> kzacud3cdb ; localB -> prrbq1ibfj = localB ->
gnxcy1z2pw * localB -> gnxcy1z2pw ; localB -> mleffpx23l = uTmp_p ; localB ->
lxtq0skkkc = uTmp_e ; localB -> j1urynvqpr = localB -> jgt3sawf5i_g2mlkqadfk
* localB -> lxtq0skkkc ; localB -> ms3t1ooexr = muDoubleScalarSqrt ( localB
-> j1urynvqpr ) ; localB -> fjxrzbc1wq = localB -> mleffpx23l / localB ->
ms3t1ooexr ; localB -> nlgc10ypr3 = localB -> fjxrzbc1wq + abopqckbgq . P_66
; localB -> fe2t3cc0r5 = muDoubleScalarAbs ( localB -> nlgc10ypr3 ) ; localB
-> o25zq55nd1 = localB -> fjxrzbc1wq + abopqckbgq . P_67 ; localB ->
oxgl25rk0e = muDoubleScalarAbs ( localB -> o25zq55nd1 ) ; if ( localB ->
fe2t3cc0r5 < 1.0E-6 ) { ft4vlbdxum ( & localB -> llcwq3deaw , & abopqckbgq .
ahsydtdkov ) ; } else if ( localB -> oxgl25rk0e < 1.0E-6 ) { ft4vlbdxum ( &
localB -> llcwq3deaw , & abopqckbgq . foakyujkvy ) ; } else { ft4vlbdxum ( &
localB -> llcwq3deaw , & abopqckbgq . djprnhjvty ) ; } localB -> lreapqt2fv =
( localB -> llcwq3deaw != abopqckbgq . P_4 ) ; if ( localB -> lreapqt2fv ) {
localB -> pcytwak5us = abopqckbgq . P_88 [ 1 ] * localB -> lns22e0fq0 ;
localB -> ka3d3xflg3 = abopqckbgq . P_88 [ 0 ] * localB -> aszykea23e ;
localB -> m2clsjv5d5 = abopqckbgq . P_88 [ 2 ] * localB -> beibupkzbc ;
localB -> co34fat13s = abopqckbgq . P_88 [ 0 ] * localB -> beibupkzbc ;
localB -> nt5g05m4jd = abopqckbgq . P_88 [ 2 ] * localB -> lns22e0fq0 ;
localB -> kasnsg1qpq = abopqckbgq . P_88 [ 1 ] * localB -> aszykea23e ;
localB -> jrpyoilbzn [ 0 ] = localB -> kasnsg1qpq - localB -> m2clsjv5d5 ;
localB -> jrpyoilbzn [ 1 ] = localB -> nt5g05m4jd - localB -> ka3d3xflg3 ;
localB -> jrpyoilbzn [ 2 ] = localB -> co34fat13s - localB -> pcytwak5us ;
localB -> l0sk34oyjk [ 0 ] = localB -> jrpyoilbzn [ 0 ] ; localB ->
l0sk34oyjk [ 1 ] = localB -> jrpyoilbzn [ 1 ] ; localB -> l0sk34oyjk [ 2 ] =
localB -> jrpyoilbzn [ 2 ] ; } else { localB -> l0sk34oyjk [ 0 ] = localB ->
ora2iiobyk_dypejvacrn [ 0 ] ; localB -> l0sk34oyjk [ 1 ] = localB ->
ora2iiobyk_dypejvacrn [ 1 ] ; localB -> l0sk34oyjk [ 2 ] = localB ->
ora2iiobyk_dypejvacrn [ 2 ] ; } localB -> hm3jswgty5 = localB -> l0sk34oyjk [
0 ] * localB -> l0sk34oyjk [ 0 ] ; localB -> h0cudg4xao = localB ->
l0sk34oyjk [ 1 ] * localB -> l0sk34oyjk [ 1 ] ; localB -> iryn1y1tz0 = localB
-> l0sk34oyjk [ 2 ] * localB -> l0sk34oyjk [ 2 ] ; localB -> ogx402uljh = ( (
localB -> prrbq1ibfj + localB -> hm3jswgty5 ) + localB -> h0cudg4xao ) +
localB -> iryn1y1tz0 ; localB -> n1kdmevc3o = muDoubleScalarSqrt ( localB ->
ogx402uljh ) ; localB -> cma1q5rvnp = localB -> gnxcy1z2pw / localB ->
n1kdmevc3o ; localB -> acvi24mxxj = localB -> l0sk34oyjk [ 1 ] / localB ->
n1kdmevc3o ; localB -> agpr5acmdg = localB -> cma1q5rvnp * localB ->
cma1q5rvnp ; localB -> fyfstsl4vz = localB -> l0sk34oyjk [ 0 ] / localB ->
n1kdmevc3o ; localB -> dqfgbeikbs = localB -> fyfstsl4vz * localB ->
fyfstsl4vz ; localB -> lsfoxxp1mb = localB -> acvi24mxxj * localB ->
acvi24mxxj ; localB -> a4vuvqsiae = localB -> l0sk34oyjk [ 2 ] / localB ->
n1kdmevc3o ; localB -> jjbrykxxr5 = localB -> a4vuvqsiae * localB ->
a4vuvqsiae ; localB -> hpn0pmdgeb = ( ( localB -> agpr5acmdg + localB ->
dqfgbeikbs ) + localB -> lsfoxxp1mb ) + localB -> jjbrykxxr5 ; localB ->
cygaprby0g = muDoubleScalarSqrt ( localB -> hpn0pmdgeb ) ; localB ->
cvagkgqvnq = localB -> acvi24mxxj / localB -> cygaprby0g ; localB ->
ejz1f24vaz = localB -> cvagkgqvnq * localB -> cvagkgqvnq ; localB ->
c4k4gusohk = localB -> a4vuvqsiae / localB -> cygaprby0g ; localB ->
cxpkjm1fp1 = localB -> c4k4gusohk * localB -> c4k4gusohk ; localB ->
gjsc13nz00 = ( abopqckbgq . P_92 - localB -> ejz1f24vaz ) - localB ->
cxpkjm1fp1 ; localB -> hv3hhvwq5z = abopqckbgq . P_68 * localB -> gjsc13nz00
; localB -> cxezcglr2u = localB -> aszykea23e_al00mdgrv4 [ 0 ] * localB ->
hv3hhvwq5z ; localB -> hvxkj5tczq = localB -> fyfstsl4vz / localB ->
cygaprby0g ; localB -> hz1fhgvsxs = localB -> hvxkj5tczq * localB ->
cvagkgqvnq ; localB -> pbd5c4hpid = localB -> cma1q5rvnp / localB ->
cygaprby0g ; localB -> cqu3ifqajp = localB -> pbd5c4hpid * localB ->
c4k4gusohk ; localB -> oaf0d0xk5r = localB -> hz1fhgvsxs + localB ->
cqu3ifqajp ; localB -> alouqa1esd = abopqckbgq . P_69 * localB -> oaf0d0xk5r
; localB -> bqdrik3lup = localB -> alouqa1esd * localB ->
aszykea23e_al00mdgrv4 [ 1 ] ; localB -> hkefk0wxh3 = localB -> pbd5c4hpid *
localB -> cvagkgqvnq ; localB -> ctw3yr0skv = localB -> hvxkj5tczq * localB
-> c4k4gusohk ; localB -> gvkbmfjqfq = localB -> ctw3yr0skv - localB ->
hkefk0wxh3 ; localB -> l51omrq4ou = abopqckbgq . P_70 * localB -> gvkbmfjqfq
; localB -> dgjtt0lrfo = localB -> l51omrq4ou * localB ->
aszykea23e_al00mdgrv4 [ 2 ] ; localB -> ob3gp4h5yo = ( localB -> cxezcglr2u +
localB -> bqdrik3lup ) + localB -> dgjtt0lrfo ; localB -> pxroeqo2od = localB
-> hvxkj5tczq * localB -> cvagkgqvnq ; localB -> f435yutsmz = localB ->
pbd5c4hpid * localB -> c4k4gusohk ; localB -> jb4rx2lt3q = localB ->
pxroeqo2od - localB -> f435yutsmz ; localB -> hapbtyys5t = abopqckbgq . P_71
* localB -> jb4rx2lt3q ; localB -> kg4t13hjnw = localB ->
aszykea23e_al00mdgrv4 [ 0 ] * localB -> hapbtyys5t ; localB -> nr40yg30xf =
localB -> hvxkj5tczq * localB -> hvxkj5tczq ; localB -> eawut1kvet = localB
-> c4k4gusohk * localB -> c4k4gusohk ; localB -> hngf3znxne = ( abopqckbgq .
P_93 - localB -> nr40yg30xf ) - localB -> eawut1kvet ; localB -> ffqosqpbpj =
abopqckbgq . P_72 * localB -> hngf3znxne ; localB -> dt4ff0b0zt = localB ->
ffqosqpbpj * localB -> aszykea23e_al00mdgrv4 [ 1 ] ; localB -> bxaehnjet4 =
localB -> pbd5c4hpid * localB -> hvxkj5tczq ; localB -> ktnhluxnk0 = localB
-> cvagkgqvnq * localB -> c4k4gusohk ; localB -> p0remiojmm = localB ->
bxaehnjet4 + localB -> ktnhluxnk0 ; localB -> lfvmgptwgd = abopqckbgq . P_73
* localB -> p0remiojmm ; localB -> hs115ke0aw = localB -> lfvmgptwgd * localB
-> aszykea23e_al00mdgrv4 [ 2 ] ; localB -> fpbr5y03ni = ( localB ->
kg4t13hjnw + localB -> dt4ff0b0zt ) + localB -> hs115ke0aw ; localB ->
djvkh5qqbi = localB -> hvxkj5tczq * localB -> c4k4gusohk ; localB ->
pgotrhwbz1 = localB -> pbd5c4hpid * localB -> cvagkgqvnq ; localB ->
lje3id5dal = localB -> djvkh5qqbi + localB -> pgotrhwbz1 ; localB ->
jp55x0bean = abopqckbgq . P_74 * localB -> lje3id5dal ; localB -> o40234qo2z
= localB -> aszykea23e_al00mdgrv4 [ 0 ] * localB -> jp55x0bean ; localB ->
d1yt1kccfq = localB -> pbd5c4hpid * localB -> hvxkj5tczq ; localB ->
if1l5c21sl = localB -> cvagkgqvnq * localB -> c4k4gusohk ; localB ->
iojvvnoqdf = localB -> if1l5c21sl - localB -> d1yt1kccfq ; localB ->
pfg5b3tisa = abopqckbgq . P_75 * localB -> iojvvnoqdf ; localB -> kldntd3ung
= localB -> pfg5b3tisa * localB -> aszykea23e_al00mdgrv4 [ 1 ] ; localB ->
fbzi1vq3s2 = localB -> hvxkj5tczq * localB -> hvxkj5tczq ; localB ->
jtgkz30wjs = localB -> cvagkgqvnq * localB -> cvagkgqvnq ; localB ->
hllpipoydi = ( abopqckbgq . P_94 - localB -> fbzi1vq3s2 ) - localB ->
jtgkz30wjs ; localB -> dmo030rxdj = abopqckbgq . P_76 * localB -> hllpipoydi
; localB -> f4nd0as0dr = localB -> dmo030rxdj * localB ->
aszykea23e_al00mdgrv4 [ 2 ] ; localB -> keianq5spu = ( localB -> o40234qo2z +
localB -> kldntd3ung ) + localB -> f4nd0as0dr ; localB -> bz3je0mzvu [ 0 ] =
localB -> ob3gp4h5yo ; localB -> bz3je0mzvu [ 1 ] = localB -> fpbr5y03ni ;
localB -> bz3je0mzvu [ 2 ] = localB -> keianq5spu ; localB -> fk04xhyhym =
localB -> beibupkzbc * localB -> ahssnuifwd ; localB -> hsvisk1j2i = localB
-> aszykea23e * localB -> ch1hygwrdo ; localB -> fc1p4f35rf = localB ->
lns22e0fq0 * localB -> l4hw4jxkfm ; localB -> kfgxdivg4y = localB ->
aszykea23e * localB -> l4hw4jxkfm ; localB -> fpxljpfgk1 = localB ->
lns22e0fq0 * localB -> ahssnuifwd ; localB -> ingy5zk12p = localB ->
beibupkzbc * localB -> ch1hygwrdo ; localB -> i2mqwcm3co [ 0 ] = localB ->
fk04xhyhym - localB -> kfgxdivg4y ; localB -> i2mqwcm3co [ 1 ] = localB ->
hsvisk1j2i - localB -> fpxljpfgk1 ; localB -> i2mqwcm3co [ 2 ] = localB ->
fc1p4f35rf - localB -> ingy5zk12p ; localB -> mi55wqspcv = localB ->
i2mqwcm3co [ 1 ] * localB -> aszykea23e ; localB -> egmrha0z1i = localB ->
i2mqwcm3co [ 2 ] * localB -> lns22e0fq0 ; localB -> c1eo4yjwen = localB ->
i2mqwcm3co [ 0 ] * localB -> beibupkzbc ; localB -> azofm4b11s = localB ->
i2mqwcm3co [ 2 ] * localB -> beibupkzbc ; localB -> mur5nzyveh = localB ->
i2mqwcm3co [ 0 ] * localB -> aszykea23e ; localB -> eetdsa0qym = localB ->
i2mqwcm3co [ 1 ] * localB -> lns22e0fq0 ; localB -> gc0ixjj2ab [ 0 ] = localB
-> mi55wqspcv - localB -> azofm4b11s ; localB -> gc0ixjj2ab [ 1 ] = localB ->
egmrha0z1i - localB -> mur5nzyveh ; localB -> gc0ixjj2ab [ 2 ] = localB ->
c1eo4yjwen - localB -> eetdsa0qym ; localB -> jlnpcdykrv = localB ->
cma1q5rvnp * localB -> cma1q5rvnp ; localB -> dz5uukec4x = localB ->
fyfstsl4vz * localB -> fyfstsl4vz ; localB -> i0b4wukphh = localB ->
acvi24mxxj * localB -> acvi24mxxj ; localB -> mmek1dewwi = localB ->
a4vuvqsiae * localB -> a4vuvqsiae ; localB -> ebyywhggct = ( ( localB ->
jlnpcdykrv + localB -> dz5uukec4x ) + localB -> i0b4wukphh ) + localB ->
mmek1dewwi ; localB -> kwx0wxnmyn = muDoubleScalarSqrt ( localB -> ebyywhggct
) ; localB -> d4cf5k0dbg = localB -> acvi24mxxj / localB -> kwx0wxnmyn ;
localB -> i5oyii5af2 = localB -> d4cf5k0dbg * localB -> d4cf5k0dbg ; localB
-> dvodssx054 = localB -> a4vuvqsiae / localB -> kwx0wxnmyn ; localB ->
acgzb20yrz = localB -> dvodssx054 * localB -> dvodssx054 ; localB ->
cbhhv35xdp = ( abopqckbgq . P_95 - localB -> i5oyii5af2 ) - localB ->
acgzb20yrz ; localB -> pd3lfqr311 = abopqckbgq . P_77 * localB -> cbhhv35xdp
; localB -> jkewou5mx0 = localB -> gc0ixjj2ab [ 0 ] * localB -> pd3lfqr311 ;
localB -> ee4jenrrc3 = localB -> fyfstsl4vz / localB -> kwx0wxnmyn ; localB
-> bjj5nk5qjw = localB -> ee4jenrrc3 * localB -> d4cf5k0dbg ; localB ->
b1xbacdit1 = localB -> cma1q5rvnp / localB -> kwx0wxnmyn ; localB ->
iyjnvhoa05 = localB -> b1xbacdit1 * localB -> dvodssx054 ; localB ->
bnefz23hzt = localB -> bjj5nk5qjw + localB -> iyjnvhoa05 ; localB ->
dfscogdpyy = abopqckbgq . P_78 * localB -> bnefz23hzt ; localB -> jkiegt4yox
= localB -> dfscogdpyy * localB -> gc0ixjj2ab [ 1 ] ; localB -> b2viyxdpgq =
localB -> b1xbacdit1 * localB -> d4cf5k0dbg ; localB -> ibf3oqh104 = localB
-> ee4jenrrc3 * localB -> dvodssx054 ; localB -> bozzjjqiea = localB ->
ibf3oqh104 - localB -> b2viyxdpgq ; localB -> onercwkrg0 = abopqckbgq . P_79
* localB -> bozzjjqiea ; localB -> mrfxiyzlzf = localB -> onercwkrg0 * localB
-> gc0ixjj2ab [ 2 ] ; localB -> cbcmziqkjc = ( localB -> jkewou5mx0 + localB
-> jkiegt4yox ) + localB -> mrfxiyzlzf ; localB -> gtbuvz5jks = localB ->
ee4jenrrc3 * localB -> d4cf5k0dbg ; localB -> jf0k5sr3v3 = localB ->
b1xbacdit1 * localB -> dvodssx054 ; localB -> cniux5e0uy = localB ->
gtbuvz5jks - localB -> jf0k5sr3v3 ; localB -> m0iqaydsks = abopqckbgq . P_80
* localB -> cniux5e0uy ; localB -> prus5ezwp0 = localB -> gc0ixjj2ab [ 0 ] *
localB -> m0iqaydsks ; localB -> ducz1ftqqr = localB -> ee4jenrrc3 * localB
-> ee4jenrrc3 ; localB -> osmvkieqw4 = localB -> dvodssx054 * localB ->
dvodssx054 ; localB -> c51h5m5skd = ( abopqckbgq . P_96 - localB ->
ducz1ftqqr ) - localB -> osmvkieqw4 ; localB -> kbxe0fashs = abopqckbgq .
P_81 * localB -> c51h5m5skd ; localB -> g5do2jwfkj = localB -> kbxe0fashs *
localB -> gc0ixjj2ab [ 1 ] ; localB -> lb34les3au = localB -> b1xbacdit1 *
localB -> ee4jenrrc3 ; localB -> ne2md2xcuw = localB -> d4cf5k0dbg * localB
-> dvodssx054 ; localB -> mtniqmtukt = localB -> lb34les3au + localB ->
ne2md2xcuw ; localB -> lmts1r5zye = abopqckbgq . P_82 * localB -> mtniqmtukt
; localB -> o3sxjyhlgc = localB -> lmts1r5zye * localB -> gc0ixjj2ab [ 2 ] ;
localB -> nvstybkzua = ( localB -> prus5ezwp0 + localB -> g5do2jwfkj ) +
localB -> o3sxjyhlgc ; localB -> f1qtlf4p41 = localB -> ee4jenrrc3 * localB
-> dvodssx054 ; localB -> astrxw02fg = localB -> b1xbacdit1 * localB ->
d4cf5k0dbg ; localB -> n0xf3mvz3c = localB -> f1qtlf4p41 + localB ->
astrxw02fg ; localB -> hgyu3jv2in = abopqckbgq . P_83 * localB -> n0xf3mvz3c
; localB -> lwguafoevi = localB -> gc0ixjj2ab [ 0 ] * localB -> hgyu3jv2in ;
localB -> nms5badcpo = localB -> b1xbacdit1 * localB -> ee4jenrrc3 ; localB
-> husveukrkc = localB -> d4cf5k0dbg * localB -> dvodssx054 ; localB ->
kzdd51l3ru = localB -> husveukrkc - localB -> nms5badcpo ; localB ->
gg43h4jwy1 = abopqckbgq . P_84 * localB -> kzdd51l3ru ; localB -> d0qq1v1l0i
= localB -> gg43h4jwy1 * localB -> gc0ixjj2ab [ 1 ] ; localB -> idztmqu2ce =
localB -> ee4jenrrc3 * localB -> ee4jenrrc3 ; localB -> ekaxcijnoo = localB
-> d4cf5k0dbg * localB -> d4cf5k0dbg ; localB -> n0ofdn3hx5 = ( abopqckbgq .
P_97 - localB -> idztmqu2ce ) - localB -> ekaxcijnoo ; localB -> fed3jox541 =
abopqckbgq . P_85 * localB -> n0ofdn3hx5 ; localB -> aqoi53uxeh = localB ->
fed3jox541 * localB -> gc0ixjj2ab [ 2 ] ; localB -> npos3sjht3 = ( localB ->
lwguafoevi + localB -> d0qq1v1l0i ) + localB -> aqoi53uxeh ; localB ->
i1wahxaxry [ 0 ] = localB -> cbcmziqkjc ; localB -> i1wahxaxry [ 1 ] = localB
-> nvstybkzua ; localB -> i1wahxaxry [ 2 ] = localB -> npos3sjht3 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 0 ] ; uTmp =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 0 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_p = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 1 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 1 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 2 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 2 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
localB -> fa41n5uhqw = uTmp_idx_2 ; localB -> m5eo5oo3rp = uTmp ; localB ->
ljnxdbdhpm = uTmp_p ; localB -> cdr1iz2145 = localB -> m5eo5oo3rp * localB ->
ljnxdbdhpm ; localB -> ekklepchwn = muDoubleScalarSqrt ( localB -> cdr1iz2145
) ; localB -> blmjlkippm = localB -> fa41n5uhqw / localB -> ekklepchwn ;
localB -> irfzeyrypc = localB -> blmjlkippm + abopqckbgq . P_86 ; localB ->
cndroifqmd = muDoubleScalarAbs ( localB -> irfzeyrypc ) ; localB ->
cgzkwpgwua = localB -> blmjlkippm + abopqckbgq . P_87 ; localB -> mxpmgjnupx
= muDoubleScalarAbs ( localB -> cgzkwpgwua ) ; if ( localB -> cndroifqmd <
1.0E-6 ) { ft4vlbdxum ( & localB -> fajiybfjg4 , & abopqckbgq . fnkxrqzxuu )
; } else if ( localB -> mxpmgjnupx < 1.0E-6 ) { ft4vlbdxum ( & localB ->
fajiybfjg4 , & abopqckbgq . n2t4c0y3mo ) ; } else { ft4vlbdxum ( & localB ->
fajiybfjg4 , & abopqckbgq . fospk5am0t ) ; } if ( localB -> g25u1yz10w ) {
localB -> cgmvvubtg2 [ 0 ] = localB -> cma1q5rvnp ; localB -> cgmvvubtg2 [ 1
] = localB -> fyfstsl4vz ; localB -> cgmvvubtg2 [ 2 ] = localB -> acvi24mxxj
; localB -> cgmvvubtg2 [ 3 ] = localB -> a4vuvqsiae ; } else { localB ->
jsksnhy5op = ( localB -> fajiybfjg4 != abopqckbgq . P_5 ) ; if ( localB ->
jsksnhy5op ) { localB -> jxbvbdfq05 = localB -> fpbr5y03ni * localB ->
cbcmziqkjc ; localB -> kny5bwlvsc = localB -> ob3gp4h5yo * localB ->
npos3sjht3 ; localB -> kzzs35npw0 = localB -> keianq5spu * localB ->
nvstybkzua ; localB -> pacq3bl0pk = localB -> ob3gp4h5yo * localB ->
nvstybkzua ; localB -> gqndlgd2aw = localB -> keianq5spu * localB ->
cbcmziqkjc ; localB -> kfpmcsjlkg = localB -> fpbr5y03ni * localB ->
npos3sjht3 ; localB -> lgcr4li0u4 [ 0 ] = localB -> kfpmcsjlkg - localB ->
kzzs35npw0 ; localB -> lgcr4li0u4 [ 1 ] = localB -> gqndlgd2aw - localB ->
kny5bwlvsc ; localB -> lgcr4li0u4 [ 2 ] = localB -> pacq3bl0pk - localB ->
jxbvbdfq05 ; localB -> bytzprrljz [ 0 ] = localB -> lgcr4li0u4 [ 0 ] ; localB
-> bytzprrljz [ 1 ] = localB -> lgcr4li0u4 [ 1 ] ; localB -> bytzprrljz [ 2 ]
= localB -> lgcr4li0u4 [ 2 ] ; } else { localB -> etedczwvjy = ( localB ->
ob3gp4h5yo > localB -> keianq5spu ) ; if ( localB -> etedczwvjy ) { localB ->
mkpyxx5a2k = abopqckbgq . P_41 * localB -> fpbr5y03ni ; localB -> oqknduhq20
[ 0 ] = localB -> mkpyxx5a2k ; localB -> oqknduhq20 [ 1 ] = localB ->
ob3gp4h5yo ; localB -> oqknduhq20 [ 2 ] = abopqckbgq . P_102 ; } else {
localB -> cgkghyrjvj = abopqckbgq . P_40 * localB -> keianq5spu ; localB ->
oqknduhq20 [ 0 ] = abopqckbgq . P_103 ; localB -> oqknduhq20 [ 1 ] = localB
-> cgkghyrjvj ; localB -> oqknduhq20 [ 2 ] = localB -> fpbr5y03ni ; } localB
-> ly0r2hmvg5 = localB -> fpbr5y03ni * localB -> oqknduhq20 [ 0 ] ; localB ->
fqaxk4du2t = localB -> ob3gp4h5yo * localB -> oqknduhq20 [ 2 ] ; localB ->
bjw2c35plc = localB -> keianq5spu * localB -> oqknduhq20 [ 1 ] ; localB ->
mj1bfatefq = localB -> ob3gp4h5yo * localB -> oqknduhq20 [ 1 ] ; localB ->
ld2n3r4eg2 = localB -> keianq5spu * localB -> oqknduhq20 [ 0 ] ; localB ->
out4hfjoax = localB -> fpbr5y03ni * localB -> oqknduhq20 [ 2 ] ; localB ->
bqueynddhy [ 0 ] = localB -> out4hfjoax - localB -> bjw2c35plc ; localB ->
bqueynddhy [ 1 ] = localB -> ld2n3r4eg2 - localB -> fqaxk4du2t ; localB ->
bqueynddhy [ 2 ] = localB -> mj1bfatefq - localB -> ly0r2hmvg5 ; localB ->
bytzprrljz [ 0 ] = localB -> bqueynddhy [ 0 ] ; localB -> bytzprrljz [ 1 ] =
localB -> bqueynddhy [ 1 ] ; localB -> bytzprrljz [ 2 ] = localB ->
bqueynddhy [ 2 ] ; } localB -> eemyz2lbem = localB -> bytzprrljz [ 2 ] *
localB -> bytzprrljz [ 2 ] ; localB -> afknuswabb = localB -> bytzprrljz [ 1
] * localB -> bytzprrljz [ 1 ] ; localB -> a3ma3vfah1 = localB -> bytzprrljz
[ 0 ] * localB -> bytzprrljz [ 0 ] ; uTmp_idx_0 = localB -> i1wahxaxry [ 0 ]
; uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_p =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 1 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 1 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_p +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 2 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 2 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_p +=
uTmp_idx_0 * uTmp_idx_1 ; localB -> kptiyy5d4o = uTmp_idx_2 ; localB ->
fecanjxkao = uTmp ; localB -> c1bxkm552n = localB -> fecanjxkao * localB ->
kptiyy5d4o ; localB -> kbvd3ho5nq = muDoubleScalarSqrt ( localB -> c1bxkm552n
) ; localB -> b5i3yd1o3b = uTmp_p ; localB -> gxi1kloqmc = localB ->
b5i3yd1o3b + localB -> kbvd3ho5nq ; localB -> adqxt3js2y = localB ->
gxi1kloqmc * localB -> gxi1kloqmc ; localB -> bbx5jzu4ti = ( ( localB ->
adqxt3js2y + localB -> a3ma3vfah1 ) + localB -> afknuswabb ) + localB ->
eemyz2lbem ; localB -> mgh2qpgh4o = muDoubleScalarSqrt ( localB -> bbx5jzu4ti
) ; localB -> kqhxx3ajaq = localB -> bytzprrljz [ 2 ] / localB -> mgh2qpgh4o
; localB -> lqyznbr2nm = localB -> a4vuvqsiae * localB -> kqhxx3ajaq ; localB
-> lz51pfwwvi = localB -> bytzprrljz [ 1 ] / localB -> mgh2qpgh4o ; localB ->
alliolhtu0 = localB -> acvi24mxxj * localB -> lz51pfwwvi ; localB ->
bvvblfta2g = localB -> bytzprrljz [ 0 ] / localB -> mgh2qpgh4o ; localB ->
lhwmwnqfzy = localB -> fyfstsl4vz * localB -> bvvblfta2g ; localB ->
luupn5egfo = localB -> gxi1kloqmc / localB -> mgh2qpgh4o ; localB ->
p2dzm2i04q = localB -> cma1q5rvnp * localB -> luupn5egfo ; localB ->
myxsajr3zd = ( ( localB -> p2dzm2i04q - localB -> lhwmwnqfzy ) - localB ->
alliolhtu0 ) - localB -> lqyznbr2nm ; localB -> h2ozld1klp = localB ->
a4vuvqsiae * localB -> lz51pfwwvi ; localB -> ozfh2jstow = localB ->
acvi24mxxj * localB -> kqhxx3ajaq ; localB -> ofeb0zvxvt = localB ->
fyfstsl4vz * localB -> luupn5egfo ; localB -> fau0vxu422 = localB ->
cma1q5rvnp * localB -> bvvblfta2g ; localB -> gwuh0fzkuw = ( ( localB ->
fau0vxu422 + localB -> ofeb0zvxvt ) + localB -> ozfh2jstow ) - localB ->
h2ozld1klp ; localB -> fgwa5kiyko = localB -> a4vuvqsiae * localB ->
bvvblfta2g ; localB -> et342tdyr0 = localB -> acvi24mxxj * localB ->
luupn5egfo ; localB -> h3c2z5ekqq = localB -> fyfstsl4vz * localB ->
kqhxx3ajaq ; localB -> ib12o3y2pc = localB -> cma1q5rvnp * localB ->
lz51pfwwvi ; localB -> fo54yjdwr4 = ( ( localB -> ib12o3y2pc - localB ->
h3c2z5ekqq ) + localB -> et342tdyr0 ) + localB -> fgwa5kiyko ; localB ->
cszfvcavwy = localB -> a4vuvqsiae * localB -> luupn5egfo ; localB ->
pqk3n1enak = localB -> acvi24mxxj * localB -> bvvblfta2g ; localB ->
e1qjvbzqml = localB -> fyfstsl4vz * localB -> lz51pfwwvi ; localB ->
nrfgqfok0m = localB -> cma1q5rvnp * localB -> kqhxx3ajaq ; localB ->
lhxxbcwvtp = ( ( localB -> nrfgqfok0m + localB -> e1qjvbzqml ) - localB ->
pqk3n1enak ) + localB -> cszfvcavwy ; localB -> cgmvvubtg2 [ 0 ] = localB ->
myxsajr3zd ; localB -> cgmvvubtg2 [ 1 ] = localB -> gwuh0fzkuw ; localB ->
cgmvvubtg2 [ 2 ] = localB -> fo54yjdwr4 ; localB -> cgmvvubtg2 [ 3 ] = localB
-> lhxxbcwvtp ; } localB -> mzi5hbsbtw = localB -> cgmvvubtg2 [ 0 ] * localB
-> cgmvvubtg2 [ 0 ] ; localB -> n3fzucbfu3 = localB -> cgmvvubtg2 [ 1 ] *
localB -> cgmvvubtg2 [ 1 ] ; localB -> hsreckybty = localB -> cgmvvubtg2 [ 2
] * localB -> cgmvvubtg2 [ 2 ] ; localB -> lpy1gf3es2 = localB -> cgmvvubtg2
[ 3 ] * localB -> cgmvvubtg2 [ 3 ] ; localB -> clbvq0ey5g = ( ( localB ->
mzi5hbsbtw + localB -> n3fzucbfu3 ) + localB -> hsreckybty ) + localB ->
lpy1gf3es2 ; localB -> gyaq1qidxj = muDoubleScalarSqrt ( localB -> clbvq0ey5g
) ; localB -> ereoiizt2l = localB -> cgmvvubtg2 [ 0 ] / localB -> gyaq1qidxj
; localB -> ftmibtqyuo = localB -> cgmvvubtg2 [ 1 ] / localB -> gyaq1qidxj ;
localB -> heombqu1u0 = localB -> cgmvvubtg2 [ 2 ] / localB -> gyaq1qidxj ;
localB -> hk2rart0rc = localB -> cgmvvubtg2 [ 3 ] / localB -> gyaq1qidxj ;
localB -> a20bonkaqa = ( localB -> ftmibtqyuo * localB -> hk2rart0rc + localB
-> ereoiizt2l * localB -> heombqu1u0 ) * 2.0 ; if ( localB -> a20bonkaqa >
1.0 ) { localB -> eshubtthwa = abopqckbgq . P_42 ; srUpdateBC ( localDW ->
g2u3gf3pir ) ; } else if ( localB -> a20bonkaqa < - 1.0 ) { localB ->
eshubtthwa = abopqckbgq . P_43 ; srUpdateBC ( localDW -> duxa0lwnyy ) ; }
else { localB -> eshubtthwa = localB -> a20bonkaqa ; srUpdateBC ( localDW ->
m4ktsb34zu ) ; } localB -> azkerb0ho4 = ( localB -> heombqu1u0 * localB ->
hk2rart0rc - localB -> ereoiizt2l * localB -> ftmibtqyuo ) * - 2.0 ; localB
-> brz40xbg1f = ( ( localB -> ereoiizt2l * localB -> ereoiizt2l - localB ->
ftmibtqyuo * localB -> ftmibtqyuo ) - localB -> heombqu1u0 * localB ->
heombqu1u0 ) + localB -> hk2rart0rc * localB -> hk2rart0rc ; localB ->
au2rrfanhd [ 0 ] = muDoubleScalarAtan2 ( localB -> azkerb0ho4 , localB ->
brz40xbg1f ) ; localB -> nuazwed1su = ( localB -> ftmibtqyuo * localB ->
heombqu1u0 - localB -> ereoiizt2l * localB -> hk2rart0rc ) * - 2.0 ; localB
-> mh4vd3iequ = ( ( localB -> ereoiizt2l * localB -> ereoiizt2l + localB ->
ftmibtqyuo * localB -> ftmibtqyuo ) - localB -> heombqu1u0 * localB ->
heombqu1u0 ) - localB -> hk2rart0rc * localB -> hk2rart0rc ; localB ->
au2rrfanhd [ 2 ] = muDoubleScalarAtan2 ( localB -> nuazwed1su , localB ->
mh4vd3iequ ) ; uTmp_idx_0 = localB -> eshubtthwa ; if ( uTmp_idx_0 > 1.0 ) {
uTmp_idx_0 = 1.0 ; } else { if ( uTmp_idx_0 < - 1.0 ) { uTmp_idx_0 = - 1.0 ;
} } localB -> au2rrfanhd [ 1 ] = muDoubleScalarAsin ( uTmp_idx_0 ) ;
uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 0 ] ;
uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_89 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 0 ] ;
uTmp_p = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ; uTmp_e = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ;
uTmp_i = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_89 [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1
; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 1 ]
; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_89 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_89 [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 1 ] ;
uTmp_e += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 1 ] ; uTmp_i += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 2 ] ;
uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ]
; uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_89 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 2 ] ;
uTmp_p += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ; uTmp_e += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ;
uTmp_i += uTmp_idx_0 * uTmp_idx_1 ; localB -> evpd02e3dm = uTmp_idx_2 ;
localB -> fcx0mkqxz3 = uTmp ; localB -> cbctnmjpjt_mbvzarwird = uTmp_p ;
localB -> mg3e3f2azc_cl54gopm0x = localB -> fcx0mkqxz3 * localB ->
cbctnmjpjt_mbvzarwird ; localB -> ndpdx5s540_kkiq3xxxve = muDoubleScalarSqrt
( localB -> mg3e3f2azc_cl54gopm0x ) ; localB -> iz0aop4d5l_cxarnvbvui =
localB -> evpd02e3dm / localB -> ndpdx5s540_kkiq3xxxve ; localB ->
ifgliophkp_bhxxfovxdy = localB -> iz0aop4d5l_cxarnvbvui + abopqckbgq . P_90 ;
localB -> gc5pvsxnh5_pbm3vprmfu = muDoubleScalarAbs ( localB ->
ifgliophkp_bhxxfovxdy ) ; localB -> kxk4gev0hm_cv5hdgrwft = localB ->
iz0aop4d5l_cxarnvbvui + abopqckbgq . P_91 ; localB -> flpv12x3hz_fqdqrf4qbc =
muDoubleScalarAbs ( localB -> kxk4gev0hm_cv5hdgrwft ) ; localB ->
jgt3sawf5i_g2mlkqadfk = uTmp_e ; localB -> n4hlop4vyd_g1smspu5ke = uTmp_i ;
localB -> lns22e0fq0_merlcviukg = abopqckbgq . P_98 * abopqckbgq . P_88 [ 1 ]
; localB -> ekc1hhwybn_ju13rw2h0m = ( abopqckbgq . P_88 [ 0 ] > abopqckbgq .
P_88 [ 2 ] ) ; localB -> ht4c4tg5yn_nz4o0shxby = abopqckbgq . P_101 *
abopqckbgq . P_88 [ 2 ] ; if ( localB -> ekc1hhwybn_ju13rw2h0m ) { localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] = localB -> lns22e0fq0_merlcviukg ; localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] = abopqckbgq . P_88 [ 0 ] ; localB ->
cumsv5eupg_ppxrqq0gsf [ 2 ] = abopqckbgq . P_99 ; } else { localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] = abopqckbgq . P_100 ; localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] = localB -> ht4c4tg5yn_nz4o0shxby ; localB ->
cumsv5eupg_ppxrqq0gsf [ 2 ] = abopqckbgq . P_88 [ 1 ] ; } localB ->
pt5fpkxfmr_llw0u2ae0v = abopqckbgq . P_88 [ 0 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] ; localB -> mjnug2avlo_jwzvbuczlb = abopqckbgq .
P_88 [ 1 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 2 ] ; localB ->
cvagzwmrwp_dhmrxtyqop = abopqckbgq . P_88 [ 2 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] ; localB -> mzh1r2z3sd_guugdwf2m3 = abopqckbgq .
P_88 [ 0 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 2 ] ; localB ->
ffyr5yrwug_ldqodwenvz = abopqckbgq . P_88 [ 1 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] ; localB -> n5ko0l2kof_dhamdvybc1 = abopqckbgq .
P_88 [ 2 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 1 ] ; localB ->
ora2iiobyk_dypejvacrn [ 0 ] = localB -> mjnug2avlo_jwzvbuczlb - localB ->
n5ko0l2kof_dhamdvybc1 ; localB -> ora2iiobyk_dypejvacrn [ 1 ] = localB ->
cvagzwmrwp_dhmrxtyqop - localB -> mzh1r2z3sd_guugdwf2m3 ; localB ->
ora2iiobyk_dypejvacrn [ 2 ] = localB -> pt5fpkxfmr_llw0u2ae0v - localB ->
ffyr5yrwug_ldqodwenvz ; localB -> oyqakhhhh5_lxo5edjg3c = abopqckbgq . P_88 [
0 ] * abopqckbgq . P_89 [ 1 ] ; localB -> b2rxz3rgtl_owjr1h1vqy = abopqckbgq
. P_88 [ 1 ] * abopqckbgq . P_89 [ 2 ] ; localB -> p102jhxxcb_bjbgfqrolh =
abopqckbgq . P_88 [ 2 ] * abopqckbgq . P_89 [ 0 ] ; localB ->
f3ocm4ks5w_nuebgmauvi = abopqckbgq . P_88 [ 0 ] * abopqckbgq . P_89 [ 2 ] ;
localB -> pxaqjqecwr_bsqwvugooi = abopqckbgq . P_88 [ 1 ] * abopqckbgq . P_89
[ 0 ] ; localB -> od40dmgrgr_lnjdk5wtww = abopqckbgq . P_88 [ 2 ] *
abopqckbgq . P_89 [ 1 ] ; localB -> bd2oascp1u_hv2ho1zopz [ 0 ] = localB ->
b2rxz3rgtl_owjr1h1vqy - localB -> od40dmgrgr_lnjdk5wtww ; localB ->
bd2oascp1u_hv2ho1zopz [ 1 ] = localB -> p102jhxxcb_bjbgfqrolh - localB ->
f3ocm4ks5w_nuebgmauvi ; localB -> bd2oascp1u_hv2ho1zopz [ 2 ] = localB ->
oyqakhhhh5_lxo5edjg3c - localB -> pxaqjqecwr_bsqwvugooi ; localB ->
pmqwpqkvqm_bnlywzniup = localB -> bd2oascp1u_hv2ho1zopz [ 0 ] * abopqckbgq .
P_88 [ 1 ] ; localB -> bj3tkkrh0a_dapv3jlyq5 = localB ->
bd2oascp1u_hv2ho1zopz [ 1 ] * abopqckbgq . P_88 [ 2 ] ; localB ->
hr5ydhms0u_ezqlmfzvpq = localB -> bd2oascp1u_hv2ho1zopz [ 2 ] * abopqckbgq .
P_88 [ 0 ] ; localB -> ixehtm4vge_bjvjhhzy4i = localB ->
bd2oascp1u_hv2ho1zopz [ 0 ] * abopqckbgq . P_88 [ 2 ] ; localB ->
iyjv2o0ipz_jzx3amusab = localB -> bd2oascp1u_hv2ho1zopz [ 1 ] * abopqckbgq .
P_88 [ 0 ] ; localB -> c4akrlc3rp_fdinthrxmb = localB ->
bd2oascp1u_hv2ho1zopz [ 2 ] * abopqckbgq . P_88 [ 1 ] ; localB ->
aszykea23e_al00mdgrv4 [ 0 ] = localB -> bj3tkkrh0a_dapv3jlyq5 - localB ->
c4akrlc3rp_fdinthrxmb ; localB -> aszykea23e_al00mdgrv4 [ 1 ] = localB ->
hr5ydhms0u_ezqlmfzvpq - localB -> ixehtm4vge_bjvjhhzy4i ; localB ->
aszykea23e_al00mdgrv4 [ 2 ] = localB -> pmqwpqkvqm_bnlywzniup - localB ->
iyjv2o0ipz_jzx3amusab ; } break ; default : if ( * mdjemta0zc == 1.0 ) {
localB -> j2m0wlkbaa = 2.0 ; localDW -> ck3q4trat2 = oajnnejtzp ; localB ->
ptmfsrn2ct = localB -> pqbbeprs4l . V_ecef [ 1 ] * localB -> pqbbeprs4l .
X_ecef [ 2 ] ; localB -> iac52adxma = localB -> pqbbeprs4l . V_ecef [ 2 ] *
localB -> pqbbeprs4l . X_ecef [ 0 ] ; localB -> es2wmzeevd = localB ->
pqbbeprs4l . V_ecef [ 0 ] * localB -> pqbbeprs4l . X_ecef [ 1 ] ; localB ->
l3fkd1dx2n = localB -> pqbbeprs4l . V_ecef [ 2 ] * localB -> pqbbeprs4l .
X_ecef [ 1 ] ; localB -> b410ppllxu = localB -> pqbbeprs4l . V_ecef [ 0 ] *
localB -> pqbbeprs4l . X_ecef [ 2 ] ; localB -> hngjfbfpdn = localB ->
pqbbeprs4l . V_ecef [ 1 ] * localB -> pqbbeprs4l . X_ecef [ 0 ] ; localB ->
d2szlnfpsw [ 0 ] = localB -> ptmfsrn2ct - localB -> l3fkd1dx2n ; localB ->
d2szlnfpsw [ 1 ] = localB -> iac52adxma - localB -> b410ppllxu ; localB ->
d2szlnfpsw [ 2 ] = localB -> es2wmzeevd - localB -> hngjfbfpdn ; localB ->
hcc0twsvkr [ 0 ] = abopqckbgq . P_38 * localB -> pqbbeprs4l . X_ecef [ 0 ] ;
localB -> hcc0twsvkr [ 1 ] = abopqckbgq . P_38 * localB -> pqbbeprs4l .
X_ecef [ 1 ] ; localB -> hcc0twsvkr [ 2 ] = abopqckbgq . P_38 * localB ->
pqbbeprs4l . X_ecef [ 2 ] ; localB -> bx05lnxw1s = localB -> d2szlnfpsw [ 0 ]
* localB -> hcc0twsvkr [ 1 ] ; localB -> gjxnzadavs = localB -> d2szlnfpsw [
1 ] * localB -> hcc0twsvkr [ 2 ] ; localB -> auvpppbez4 = localB ->
d2szlnfpsw [ 2 ] * localB -> hcc0twsvkr [ 0 ] ; localB -> az1ozuqqa3 = localB
-> d2szlnfpsw [ 0 ] * localB -> hcc0twsvkr [ 2 ] ; localB -> hfn2gtiwqb =
localB -> d2szlnfpsw [ 1 ] * localB -> hcc0twsvkr [ 0 ] ; localB ->
oghscabnwv = localB -> d2szlnfpsw [ 2 ] * localB -> hcc0twsvkr [ 1 ] ; localB
-> ett0ysz14h [ 0 ] = localB -> gjxnzadavs - localB -> oghscabnwv ; localB ->
ett0ysz14h [ 1 ] = localB -> auvpppbez4 - localB -> az1ozuqqa3 ; localB ->
ett0ysz14h [ 2 ] = localB -> bx05lnxw1s - localB -> hfn2gtiwqb ; uTmp_idx_0 =
localB -> ett0ysz14h [ 0 ] ; uTmp_idx_1 = localB -> ett0ysz14h [ 0 ] ;
uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> ett0ysz14h [ 1
] ; uTmp_idx_1 = localB -> ett0ysz14h [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> ett0ysz14h [ 2 ] ; uTmp_idx_1 = localB ->
ett0ysz14h [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB ->
ndqopehfku = uTmp_idx_2 ; uTmp_idx_0 = localB -> ndqopehfku ; localB ->
pmzwdqbdhc = uTmp_idx_0 ; uTmp_idx_0 = localB -> pmzwdqbdhc ; if ( uTmp_idx_0
< 0.0 ) { localB -> evui23vo1t = - muDoubleScalarSqrt ( muDoubleScalarAbs (
uTmp_idx_0 ) ) ; } else { localB -> evui23vo1t = muDoubleScalarSqrt (
uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 0 ] = localB -> ett0ysz14h [ 0 ] /
localB -> evui23vo1t ; uTmp_idx_0 = localB -> d2szlnfpsw [ 0 ] ; uTmp_idx_1 =
localB -> d2szlnfpsw [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; localB ->
ajgwhha0vo [ 1 ] = localB -> ett0ysz14h [ 1 ] / localB -> evui23vo1t ;
uTmp_idx_0 = localB -> d2szlnfpsw [ 1 ] ; uTmp_idx_1 = localB -> d2szlnfpsw [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB -> ajgwhha0vo [ 2 ] =
localB -> ett0ysz14h [ 2 ] / localB -> evui23vo1t ; uTmp_idx_0 = localB ->
d2szlnfpsw [ 2 ] ; uTmp_idx_1 = localB -> d2szlnfpsw [ 2 ] ; uTmp_idx_2 +=
uTmp_idx_0 * uTmp_idx_1 ; localB -> p1j0vveypv = uTmp_idx_2 ; uTmp_idx_0 =
localB -> p1j0vveypv ; localB -> mag0q3tmvq = uTmp_idx_0 ; uTmp_idx_0 =
localB -> mag0q3tmvq ; if ( uTmp_idx_0 < 0.0 ) { localB -> bdbm0zeqye = -
muDoubleScalarSqrt ( muDoubleScalarAbs ( uTmp_idx_0 ) ) ; } else { localB ->
bdbm0zeqye = muDoubleScalarSqrt ( uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 3 ]
= localB -> d2szlnfpsw [ 0 ] / localB -> bdbm0zeqye ; uTmp_idx_0 = localB ->
hcc0twsvkr [ 0 ] ; uTmp_idx_1 = localB -> hcc0twsvkr [ 0 ] ; uTmp_idx_2 =
uTmp_idx_0 * uTmp_idx_1 ; localB -> ajgwhha0vo [ 4 ] = localB -> d2szlnfpsw [
1 ] / localB -> bdbm0zeqye ; uTmp_idx_0 = localB -> hcc0twsvkr [ 1 ] ;
uTmp_idx_1 = localB -> hcc0twsvkr [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; localB -> ajgwhha0vo [ 5 ] = localB -> d2szlnfpsw [ 2 ] / localB
-> bdbm0zeqye ; uTmp_idx_0 = localB -> hcc0twsvkr [ 2 ] ; uTmp_idx_1 = localB
-> hcc0twsvkr [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; localB ->
dxao5mqflq = uTmp_idx_2 ; uTmp_idx_0 = localB -> dxao5mqflq ; localB ->
as5s104yv3 = uTmp_idx_0 ; uTmp_idx_0 = localB -> as5s104yv3 ; if ( uTmp_idx_0
< 0.0 ) { localB -> ancb5wsbic = - muDoubleScalarSqrt ( muDoubleScalarAbs (
uTmp_idx_0 ) ) ; } else { localB -> ancb5wsbic = muDoubleScalarSqrt (
uTmp_idx_0 ) ; } localB -> ajgwhha0vo [ 6 ] = localB -> hcc0twsvkr [ 0 ] /
localB -> ancb5wsbic ; localB -> ajgwhha0vo [ 7 ] = localB -> hcc0twsvkr [ 1
] / localB -> ancb5wsbic ; localB -> ajgwhha0vo [ 8 ] = localB -> hcc0twsvkr
[ 2 ] / localB -> ancb5wsbic ; for ( i = 0 ; i < 3 ; i ++ ) { localB ->
chwm3nx1de [ 3 * i ] = localB -> ajgwhha0vo [ i ] ; localB -> chwm3nx1de [ 3
* i + 1 ] = localB -> ajgwhha0vo [ i + 3 ] ; localB -> chwm3nx1de [ 3 * i + 2
] = localB -> ajgwhha0vo [ i + 6 ] ; } if ( abopqckbgq . P_3 != 1.0 ) {
uTmp_idx_0 = localB -> chwm3nx1de [ 0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [
4 ] ; uTmp_idx_2 = localB -> chwm3nx1de [ 8 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> jeuezbh53e = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 5 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 7 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> hbmlrd3li0 = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 1 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 3 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 8 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> pzkyhpk2mi = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 2 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 3 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 7 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> f5xk34wflu = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 1 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 5 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 6 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> bilgg10n54 = uTmp_idx_0 ; uTmp_idx_0 =
localB -> chwm3nx1de [ 2 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 4 ] ;
uTmp_idx_2 = localB -> chwm3nx1de [ 6 ] ; uTmp_idx_0 *= uTmp_idx_1 ;
uTmp_idx_0 *= uTmp_idx_2 ; localB -> d3tyu2leur = uTmp_idx_0 ; localB ->
c1i1qspkb3 = ( ( ( ( localB -> jeuezbh53e - localB -> hbmlrd3li0 ) - localB
-> pzkyhpk2mi ) + localB -> f5xk34wflu ) + localB -> bilgg10n54 ) - localB ->
d3tyu2leur ; localB -> llfqgps3ze = localB -> c1i1qspkb3 + abopqckbgq . P_34
; localB -> c4r13qkgfk = muDoubleScalarAbs ( localB -> llfqgps3ze ) ; localB
-> obvo01vjhr = ( localB -> c4r13qkgfk > abopqckbgq . P_6 ) ; for ( i = 0 ; i
< 3 ; i ++ ) { localB -> dagsyifhtl [ 3 * i ] = localB -> chwm3nx1de [ i ] ;
localB -> dagsyifhtl [ 3 * i + 1 ] = localB -> chwm3nx1de [ i + 3 ] ; localB
-> dagsyifhtl [ 3 * i + 2 ] = localB -> chwm3nx1de [ i + 6 ] ; } tmp_p = &
localB -> dagsyifhtl [ 0 ] ; tmp_e = & localB -> chwm3nx1de [ 0 ] ; for ( i =
0 ; i < 3 ; i ++ ) { for ( i_p = 0 ; i_p < 3 ; i_p ++ ) { localB ->
k4wxy4haes [ i_p + 3 * i ] = 0.0 ; localB -> k4wxy4haes [ i_p + 3 * i ] +=
tmp_e [ 3 * i ] * tmp_p [ i_p ] ; localB -> k4wxy4haes [ i_p + 3 * i ] +=
tmp_e [ 3 * i + 1 ] * tmp_p [ i_p + 3 ] ; localB -> k4wxy4haes [ i_p + 3 * i
] += tmp_e [ 3 * i + 2 ] * tmp_p [ i_p + 6 ] ; } } for ( i = 0 ; i < 9 ; i ++
) { localB -> bktac2t5qf [ i ] = localB -> k4wxy4haes [ i ] + abopqckbgq .
P_35 [ i ] ; localB -> k0jasfxbw4 [ i ] = muDoubleScalarAbs ( localB ->
bktac2t5qf [ i ] ) ; localB -> lzuk335wwg [ i ] = ( localB -> k0jasfxbw4 [ i
] > abopqckbgq . P_6 ) ; } tmp = localB -> lzuk335wwg [ 0 ] ; for ( i = 0 ; i
< 8 ; i ++ ) { tmp = ( tmp || localB -> lzuk335wwg [ i + 1 ] ) ; } localB ->
axb0wkwyqt = tmp ; if ( localB -> obvo01vjhr ) { if ( abopqckbgq . P_3 == 2.0
) { assessmentPtrVar = ( void * ) & assessmentVar ; if ( abopqckbgq . P_32 !=
0.0 ) { assessmentVar = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
kb3srtthe1 , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Warning/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssReportDiagnosticAsWarning ( S , diag ) ;
assessmentVar = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> kb3srtthe1 ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> fevx5o0jny ) ; } else { if ( abopqckbgq . P_3 == 3.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_e ; if ( abopqckbgq . P_32 !=
0.0 ) { assessmentVar_e = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
hunrq3wyal , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Error/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssSet_slErrMsg ( S , diag ) ; ssSetStopRequested (
fprqfujhwe -> _mdlRefSfcnS , ( int ) rtmGetTaskTime ( fprqfujhwe , 0 ) ) ;
assessmentVar_e = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> hunrq3wyal ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> i41lks3yol ) ; } } srUpdateBC ( localDW -> hmuqbllyba ) ; } else {
if ( localB -> axb0wkwyqt ) { if ( abopqckbgq . P_3 == 2.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_p ; if ( abopqckbgq . P_33 !=
0.0 ) { assessmentVar_p = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
o0zwdfrkn4 , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Warning/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssReportDiagnosticAsWarning ( S , diag ) ;
assessmentVar_p = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> o0zwdfrkn4 ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> hbhtccbgcn ) ; } else { if ( abopqckbgq . P_3 == 3.0 ) {
assessmentPtrVar = ( void * ) & assessmentVar_i ; if ( abopqckbgq . P_33 !=
0.0 ) { assessmentVar_i = 0 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW ->
kohckdzmxe , rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } else
{ S = fprqfujhwe -> _mdlRefSfcnS ; arg1 = rt_CreateFullPathToTop ( fprqfujhwe
-> DataMapInfo . mmi . InstanceMap . fullPath ,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Error/Assertion"
) ; uTmp_idx_0 = rtmGetTaskTime ( fprqfujhwe , 0 ) ; diag =
CreateDiagnosticAsVoidPtr ( "Simulink:blocks:AssertionAssert" , 2 , 5 , arg1
, 2 , uTmp_idx_0 ) ; rt_ssSet_slErrMsg ( S , diag ) ; ssSetStopRequested (
fprqfujhwe -> _mdlRefSfcnS , ( int ) rtmGetTaskTime ( fprqfujhwe , 0 ) ) ;
assessmentVar_i = 1 ; rt_SlioAccessorUpdate ( 1 , 3 , localDW -> kohckdzmxe ,
rtmGetTaskTime ( fprqfujhwe , 0 ) , assessmentPtrVar ) ; } srUpdateBC (
localDW -> pj0n0u4s05 ) ; } } srUpdateBC ( localDW -> jkc1cp3f5y ) ; } }
srUpdateBC ( localDW -> pnnvwfsy4q ) ; } uTmp_idx_0 = localB -> chwm3nx1de [
0 ] ; uTmp_idx_1 = localB -> chwm3nx1de [ 4 ] ; uTmp_idx_2 = localB ->
chwm3nx1de [ 8 ] ; uTmp_idx_0 += uTmp_idx_1 ; uTmp_idx_0 += uTmp_idx_2 ;
localB -> li3s2bpkyl = uTmp_idx_0 ; if ( localB -> li3s2bpkyl > 0.0 ) {
localB -> dpx2qbz3y1 = localB -> li3s2bpkyl + abopqckbgq . P_10 ; localB ->
aupjmejpoz = muDoubleScalarSqrt ( localB -> dpx2qbz3y1 ) ; localB ->
kisoy4t2cf [ 0 ] = abopqckbgq . P_8 * localB -> aupjmejpoz ; localB ->
nlbqn3ve2x = abopqckbgq . P_9 * localB -> aupjmejpoz ; localB -> jjzn0i4cnb =
localB -> chwm3nx1de [ 7 ] - localB -> chwm3nx1de [ 5 ] ; localB ->
lbecua1lw5 = localB -> chwm3nx1de [ 2 ] - localB -> chwm3nx1de [ 6 ] ; localB
-> kqs21bqzfd = localB -> chwm3nx1de [ 3 ] - localB -> chwm3nx1de [ 1 ] ;
localB -> kisoy4t2cf [ 1 ] = localB -> jjzn0i4cnb / localB -> nlbqn3ve2x ;
localB -> kisoy4t2cf [ 2 ] = localB -> lbecua1lw5 / localB -> nlbqn3ve2x ;
localB -> kisoy4t2cf [ 3 ] = localB -> kqs21bqzfd / localB -> nlbqn3ve2x ;
srUpdateBC ( localDW -> eqke51jlea ) ; } else { if ( ( localB -> chwm3nx1de [
4 ] > localB -> chwm3nx1de [ 0 ] ) && ( localB -> chwm3nx1de [ 4 ] > localB
-> chwm3nx1de [ 8 ] ) ) { localB -> pi5rmuvids = ( ( localB -> chwm3nx1de [ 4
] - localB -> chwm3nx1de [ 0 ] ) - localB -> chwm3nx1de [ 8 ] ) + abopqckbgq
. P_17 ; localB -> ityqvceuan = muDoubleScalarSqrt ( localB -> pi5rmuvids ) ;
localB -> kisoy4t2cf [ 2 ] = abopqckbgq . P_11 * localB -> ityqvceuan ;
localB -> da0yfcpj3q = localB -> chwm3nx1de [ 1 ] + localB -> chwm3nx1de [ 3
] ; localB -> cujzh0ksdj = localB -> chwm3nx1de [ 5 ] + localB -> chwm3nx1de
[ 7 ] ; localB -> miijbvu3or = localB -> chwm3nx1de [ 2 ] - localB ->
chwm3nx1de [ 6 ] ; if ( localB -> ityqvceuan != 0.0 ) { localB -> ei23othzol
[ 0 ] = abopqckbgq . P_15 ; localB -> ei23othzol [ 1 ] = localB -> ityqvceuan
; } else { localB -> ei23othzol [ 0 ] = abopqckbgq . P_16 [ 0 ] ; localB ->
ei23othzol [ 1 ] = abopqckbgq . P_16 [ 1 ] ; } localB -> a5gqfzjt2h = localB
-> ei23othzol [ 0 ] / localB -> ei23othzol [ 1 ] ; localB -> abdrly3jp0 [ 0 ]
= localB -> da0yfcpj3q * localB -> a5gqfzjt2h ; localB -> abdrly3jp0 [ 1 ] =
localB -> cujzh0ksdj * localB -> a5gqfzjt2h ; localB -> abdrly3jp0 [ 2 ] =
localB -> miijbvu3or * localB -> a5gqfzjt2h ; localB -> kisoy4t2cf [ 1 ] =
abopqckbgq . P_12 * localB -> abdrly3jp0 [ 0 ] ; localB -> kisoy4t2cf [ 3 ] =
abopqckbgq . P_13 * localB -> abdrly3jp0 [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_14 * localB -> abdrly3jp0 [ 2 ] ; srUpdateBC ( localDW ->
oaw4iyr2ye ) ; } else if ( localB -> chwm3nx1de [ 8 ] > localB -> chwm3nx1de
[ 0 ] ) { localB -> cgndjbnbcm = ( ( localB -> chwm3nx1de [ 8 ] - localB ->
chwm3nx1de [ 0 ] ) - localB -> chwm3nx1de [ 4 ] ) + abopqckbgq . P_24 ;
localB -> mxuvygxdg1 = muDoubleScalarSqrt ( localB -> cgndjbnbcm ) ; localB
-> kisoy4t2cf [ 3 ] = abopqckbgq . P_18 * localB -> mxuvygxdg1 ; localB ->
hcxxucabac = localB -> chwm3nx1de [ 2 ] + localB -> chwm3nx1de [ 6 ] ; localB
-> n25v12lx5j = localB -> chwm3nx1de [ 5 ] + localB -> chwm3nx1de [ 7 ] ;
localB -> jdudwnuxtj = localB -> chwm3nx1de [ 3 ] - localB -> chwm3nx1de [ 1
] ; if ( localB -> mxuvygxdg1 != 0.0 ) { localB -> lspyhlp2gk [ 0 ] =
abopqckbgq . P_22 ; localB -> lspyhlp2gk [ 1 ] = localB -> mxuvygxdg1 ; }
else { localB -> lspyhlp2gk [ 0 ] = abopqckbgq . P_23 [ 0 ] ; localB ->
lspyhlp2gk [ 1 ] = abopqckbgq . P_23 [ 1 ] ; } localB -> nr0mlbxf2n = localB
-> lspyhlp2gk [ 0 ] / localB -> lspyhlp2gk [ 1 ] ; localB -> o55jssatf5 [ 0 ]
= localB -> hcxxucabac * localB -> nr0mlbxf2n ; localB -> o55jssatf5 [ 1 ] =
localB -> n25v12lx5j * localB -> nr0mlbxf2n ; localB -> o55jssatf5 [ 2 ] =
localB -> jdudwnuxtj * localB -> nr0mlbxf2n ; localB -> kisoy4t2cf [ 1 ] =
abopqckbgq . P_19 * localB -> o55jssatf5 [ 0 ] ; localB -> kisoy4t2cf [ 2 ] =
abopqckbgq . P_20 * localB -> o55jssatf5 [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_21 * localB -> o55jssatf5 [ 2 ] ; srUpdateBC ( localDW ->
dgwobdrrst ) ; } else { localB -> miz1cf522w = ( ( localB -> chwm3nx1de [ 0 ]
- localB -> chwm3nx1de [ 4 ] ) - localB -> chwm3nx1de [ 8 ] ) + abopqckbgq .
P_31 ; localB -> ma31qnyf55 = muDoubleScalarSqrt ( localB -> miz1cf522w ) ;
localB -> kisoy4t2cf [ 1 ] = abopqckbgq . P_25 * localB -> ma31qnyf55 ; if (
localB -> ma31qnyf55 != 0.0 ) { localB -> imkid1zpxb [ 0 ] = abopqckbgq .
P_29 ; localB -> imkid1zpxb [ 1 ] = localB -> ma31qnyf55 ; } else { localB ->
imkid1zpxb [ 0 ] = abopqckbgq . P_30 [ 0 ] ; localB -> imkid1zpxb [ 1 ] =
abopqckbgq . P_30 [ 1 ] ; } localB -> cd1v4qteg4 = localB -> imkid1zpxb [ 0 ]
/ localB -> imkid1zpxb [ 1 ] ; localB -> fbn4dwnxru = localB -> chwm3nx1de [
1 ] + localB -> chwm3nx1de [ 3 ] ; localB -> lxirnp32u5 = localB ->
chwm3nx1de [ 2 ] + localB -> chwm3nx1de [ 6 ] ; localB -> fetanale5g = localB
-> chwm3nx1de [ 7 ] - localB -> chwm3nx1de [ 5 ] ; localB -> dmbfizzhoy [ 0 ]
= localB -> cd1v4qteg4 * localB -> fbn4dwnxru ; localB -> dmbfizzhoy [ 1 ] =
localB -> cd1v4qteg4 * localB -> lxirnp32u5 ; localB -> dmbfizzhoy [ 2 ] =
localB -> cd1v4qteg4 * localB -> fetanale5g ; localB -> kisoy4t2cf [ 2 ] =
abopqckbgq . P_26 * localB -> dmbfizzhoy [ 0 ] ; localB -> kisoy4t2cf [ 3 ] =
abopqckbgq . P_27 * localB -> dmbfizzhoy [ 1 ] ; localB -> kisoy4t2cf [ 0 ] =
abopqckbgq . P_28 * localB -> dmbfizzhoy [ 2 ] ; srUpdateBC ( localDW ->
gdtw35bz52 ) ; } srUpdateBC ( localDW -> cd1ggdrce0 ) ; } localB ->
othf40niz3 = localB -> pqbbeprs4l . q_ecef2b [ 0 ] * localB -> pqbbeprs4l .
q_ecef2b [ 0 ] ; localB -> g42ibolh2u = localB -> pqbbeprs4l . q_ecef2b [ 1 ]
* localB -> pqbbeprs4l . q_ecef2b [ 1 ] ; localB -> eijfujey1y = localB ->
pqbbeprs4l . q_ecef2b [ 2 ] * localB -> pqbbeprs4l . q_ecef2b [ 2 ] ; localB
-> h1pmvsmynu = localB -> pqbbeprs4l . q_ecef2b [ 3 ] * localB -> pqbbeprs4l
. q_ecef2b [ 3 ] ; localB -> kv1sbp011m = ( ( localB -> othf40niz3 + localB
-> g42ibolh2u ) + localB -> eijfujey1y ) + localB -> h1pmvsmynu ; localB ->
pc25fybu4k = localB -> pqbbeprs4l . q_ecef2b [ 0 ] / localB -> kv1sbp011m ;
localB -> f4tqdb5o3i = - localB -> pqbbeprs4l . q_ecef2b [ 1 ] ; localB ->
p4i01phfgx = localB -> f4tqdb5o3i / localB -> kv1sbp011m ; localB ->
aqrr43mbpr = - localB -> pqbbeprs4l . q_ecef2b [ 2 ] ; localB -> gklfi1kdl5 =
localB -> aqrr43mbpr / localB -> kv1sbp011m ; localB -> auuomm3be3 = - localB
-> pqbbeprs4l . q_ecef2b [ 3 ] ; localB -> irobrjzkwn = localB -> auuomm3be3
/ localB -> kv1sbp011m ; localB -> nf0jivsnr0 = localB -> pc25fybu4k * localB
-> kisoy4t2cf [ 0 ] ; localB -> cavz4oxykx = localB -> p4i01phfgx * localB ->
kisoy4t2cf [ 1 ] ; localB -> oyvh2jd13w = localB -> gklfi1kdl5 * localB ->
kisoy4t2cf [ 2 ] ; localB -> nnrzflsyha = localB -> irobrjzkwn * localB ->
kisoy4t2cf [ 3 ] ; localB -> geedq5yudt = ( ( localB -> nf0jivsnr0 - localB
-> cavz4oxykx ) - localB -> oyvh2jd13w ) - localB -> nnrzflsyha ; localB ->
bz2dqftj5o = localB -> pc25fybu4k * localB -> kisoy4t2cf [ 1 ] ; localB ->
mkyhn0hn34 = localB -> p4i01phfgx * localB -> kisoy4t2cf [ 0 ] ; localB ->
pt23uwsxrx = localB -> gklfi1kdl5 * localB -> kisoy4t2cf [ 3 ] ; localB ->
dzskq5ups0 = localB -> irobrjzkwn * localB -> kisoy4t2cf [ 2 ] ; localB ->
efvpi3kpft = ( ( localB -> bz2dqftj5o + localB -> mkyhn0hn34 ) + localB ->
pt23uwsxrx ) - localB -> dzskq5ups0 ; localB -> enxkcnmlol = localB ->
pc25fybu4k * localB -> kisoy4t2cf [ 2 ] ; localB -> ghszcpbmp2 = localB ->
p4i01phfgx * localB -> kisoy4t2cf [ 3 ] ; localB -> ngemudnybi = localB ->
gklfi1kdl5 * localB -> kisoy4t2cf [ 0 ] ; localB -> f2pgiglrfx = localB ->
irobrjzkwn * localB -> kisoy4t2cf [ 1 ] ; localB -> dotnnrn0mt = ( ( localB
-> enxkcnmlol - localB -> ghszcpbmp2 ) + localB -> ngemudnybi ) + localB ->
f2pgiglrfx ; localB -> jpwlfp1qfr = localB -> pc25fybu4k * localB ->
kisoy4t2cf [ 3 ] ; localB -> l5eqtelpjy = localB -> p4i01phfgx * localB ->
kisoy4t2cf [ 2 ] ; localB -> nbzu4nl53q = localB -> gklfi1kdl5 * localB ->
kisoy4t2cf [ 1 ] ; localB -> fmilqdljui = localB -> irobrjzkwn * localB ->
kisoy4t2cf [ 0 ] ; localB -> mjbiv50z2q = ( ( localB -> jpwlfp1qfr + localB
-> l5eqtelpjy ) - localB -> nbzu4nl53q ) + localB -> fmilqdljui ; localB ->
gwprbrbwhf = localB -> geedq5yudt * localB -> geedq5yudt ; localB ->
pwaj3lur5c = localB -> efvpi3kpft * localB -> efvpi3kpft ; localB ->
g2nimep1p5 = localB -> dotnnrn0mt * localB -> dotnnrn0mt ; localB ->
fjpeg4isms = localB -> mjbiv50z2q * localB -> mjbiv50z2q ; localB ->
msga0mx05j = ( ( localB -> gwprbrbwhf + localB -> pwaj3lur5c ) + localB ->
g2nimep1p5 ) + localB -> fjpeg4isms ; localB -> kuprjkwqeb =
muDoubleScalarSqrt ( localB -> msga0mx05j ) ; localB -> hnom3fn0oe = localB
-> geedq5yudt / localB -> kuprjkwqeb ; localB -> pod1oyk1bu = localB ->
efvpi3kpft / localB -> kuprjkwqeb ; localB -> kdhrhevjum = localB ->
dotnnrn0mt / localB -> kuprjkwqeb ; localB -> eqqfdw0pcv = localB ->
mjbiv50z2q / localB -> kuprjkwqeb ; localB -> gew4afwhiu = ( localB ->
pod1oyk1bu * localB -> eqqfdw0pcv + localB -> hnom3fn0oe * localB ->
kdhrhevjum ) * 2.0 ; if ( localB -> gew4afwhiu > 1.0 ) { localB -> byzzmz3jix
= abopqckbgq . P_36 ; srUpdateBC ( localDW -> kw1ggasixl ) ; } else if (
localB -> gew4afwhiu < - 1.0 ) { localB -> byzzmz3jix = abopqckbgq . P_37 ;
srUpdateBC ( localDW -> fvctynab0j ) ; } else { localB -> byzzmz3jix = localB
-> gew4afwhiu ; srUpdateBC ( localDW -> fyislxta05 ) ; } localB -> god220qgbo
= ( localB -> kdhrhevjum * localB -> eqqfdw0pcv - localB -> hnom3fn0oe *
localB -> pod1oyk1bu ) * - 2.0 ; localB -> aoa1pcyyzq = ( ( localB ->
hnom3fn0oe * localB -> hnom3fn0oe - localB -> pod1oyk1bu * localB ->
pod1oyk1bu ) - localB -> kdhrhevjum * localB -> kdhrhevjum ) + localB ->
eqqfdw0pcv * localB -> eqqfdw0pcv ; localB -> h0f0eu2pdu [ 0 ] =
muDoubleScalarAtan2 ( localB -> god220qgbo , localB -> aoa1pcyyzq ) ; localB
-> m3z4w45but = ( localB -> pod1oyk1bu * localB -> kdhrhevjum - localB ->
hnom3fn0oe * localB -> eqqfdw0pcv ) * - 2.0 ; localB -> kqq0bxks3j = ( (
localB -> hnom3fn0oe * localB -> hnom3fn0oe + localB -> pod1oyk1bu * localB
-> pod1oyk1bu ) - localB -> kdhrhevjum * localB -> kdhrhevjum ) - localB ->
eqqfdw0pcv * localB -> eqqfdw0pcv ; localB -> h0f0eu2pdu [ 2 ] =
muDoubleScalarAtan2 ( localB -> m3z4w45but , localB -> kqq0bxks3j ) ;
uTmp_idx_0 = localB -> byzzmz3jix ; if ( uTmp_idx_0 > 1.0 ) { uTmp_idx_0 =
1.0 ; } else { if ( uTmp_idx_0 < - 1.0 ) { uTmp_idx_0 = - 1.0 ; } } localB ->
h0f0eu2pdu [ 1 ] = muDoubleScalarAsin ( uTmp_idx_0 ) ; localB -> au2rrfanhd [
0 ] = localB -> h0f0eu2pdu [ 0 ] ; localB -> au2rrfanhd [ 1 ] = localB ->
h0f0eu2pdu [ 1 ] ; localB -> au2rrfanhd [ 2 ] = localB -> h0f0eu2pdu [ 2 ] -
1.5708 ; } else { if ( * mdjemta0zc == 2.0 ) { localB -> j2m0wlkbaa = 2.0 ;
localDW -> ck3q4trat2 = bzbppujgmh ; if ( localB -> gc5pvsxnh5_pbm3vprmfu <
1.0E-6 ) { ft4vlbdxum ( & localB -> cbctnmjpjt , & abopqckbgq . ft4vlbdxumf )
; } else if ( localB -> flpv12x3hz_fqdqrf4qbc < 1.0E-6 ) { ft4vlbdxum ( &
localB -> cbctnmjpjt , & abopqckbgq . atfx0t2smt ) ; } else { ft4vlbdxum ( &
localB -> cbctnmjpjt , & abopqckbgq . lvsoakle5c ) ; } localB -> mg3e3f2azc =
localB -> pqbbeprs4l . q_eci2b [ 0 ] * localB -> pqbbeprs4l . q_eci2b [ 0 ] ;
localB -> ndpdx5s540 = localB -> pqbbeprs4l . q_eci2b [ 1 ] * localB ->
pqbbeprs4l . q_eci2b [ 1 ] ; localB -> iz0aop4d5l = localB -> pqbbeprs4l .
q_eci2b [ 2 ] * localB -> pqbbeprs4l . q_eci2b [ 2 ] ; localB -> ifgliophkp =
localB -> pqbbeprs4l . q_eci2b [ 3 ] * localB -> pqbbeprs4l . q_eci2b [ 3 ] ;
localB -> gc5pvsxnh5 = ( ( localB -> mg3e3f2azc + localB -> ndpdx5s540 ) +
localB -> iz0aop4d5l ) + localB -> ifgliophkp ; localB -> kxk4gev0hm =
muDoubleScalarSqrt ( localB -> gc5pvsxnh5 ) ; localB -> flpv12x3hz = localB
-> pqbbeprs4l . q_eci2b [ 2 ] / localB -> kxk4gev0hm ; localB -> kqsghauiwo =
localB -> flpv12x3hz * localB -> flpv12x3hz ; localB -> j1f5fwnaed = localB
-> pqbbeprs4l . q_eci2b [ 3 ] / localB -> kxk4gev0hm ; localB -> fxzazlwsdi =
localB -> j1f5fwnaed * localB -> j1f5fwnaed ; localB -> b4afctu403 = (
abopqckbgq . P_105 - localB -> kqsghauiwo ) - localB -> fxzazlwsdi ; localB
-> ccu14oeslu = abopqckbgq . P_46 * localB -> b4afctu403 ; localB ->
dag30omkol = localB -> o3usn5t4yn . x_sun_eci [ 0 ] * localB -> ccu14oeslu ;
localB -> d3otc2dkvn = localB -> pqbbeprs4l . q_eci2b [ 1 ] / localB ->
kxk4gev0hm ; localB -> nwvrpnrwrq = localB -> d3otc2dkvn * localB ->
flpv12x3hz ; localB -> g4pmwv35ka = localB -> pqbbeprs4l . q_eci2b [ 0 ] /
localB -> kxk4gev0hm ; localB -> ai2d5pbcxj = localB -> g4pmwv35ka * localB
-> j1f5fwnaed ; localB -> bacajx3vjq = localB -> nwvrpnrwrq + localB ->
ai2d5pbcxj ; localB -> eljr2k52n1 = abopqckbgq . P_47 * localB -> bacajx3vjq
; localB -> jgt3sawf5i = localB -> eljr2k52n1 * localB -> o3usn5t4yn .
x_sun_eci [ 1 ] ; localB -> iwp0fe0b2p = localB -> g4pmwv35ka * localB ->
flpv12x3hz ; localB -> acn0p1ytar = localB -> d3otc2dkvn * localB ->
j1f5fwnaed ; localB -> ajdngegxdt = localB -> acn0p1ytar - localB ->
iwp0fe0b2p ; localB -> kwhrditlo0 = abopqckbgq . P_48 * localB -> ajdngegxdt
; localB -> n4hlop4vyd = localB -> kwhrditlo0 * localB -> o3usn5t4yn .
x_sun_eci [ 2 ] ; localB -> lns22e0fq0 = ( localB -> dag30omkol + localB ->
jgt3sawf5i ) + localB -> n4hlop4vyd ; localB -> em5tyjv3wn = localB ->
d3otc2dkvn * localB -> flpv12x3hz ; localB -> ekc1hhwybn = localB ->
g4pmwv35ka * localB -> j1f5fwnaed ; localB -> fbpazf2nhl = localB ->
em5tyjv3wn - localB -> ekc1hhwybn ; localB -> ht4c4tg5yn = abopqckbgq . P_49
* localB -> fbpazf2nhl ; localB -> cumsv5eupg = localB -> o3usn5t4yn .
x_sun_eci [ 0 ] * localB -> ht4c4tg5yn ; localB -> pt5fpkxfmr = localB ->
d3otc2dkvn * localB -> d3otc2dkvn ; localB -> mjnug2avlo = localB ->
j1f5fwnaed * localB -> j1f5fwnaed ; localB -> cvagzwmrwp = ( abopqckbgq .
P_106 - localB -> pt5fpkxfmr ) - localB -> mjnug2avlo ; localB -> mzh1r2z3sd
= abopqckbgq . P_50 * localB -> cvagzwmrwp ; localB -> ffyr5yrwug = localB ->
mzh1r2z3sd * localB -> o3usn5t4yn . x_sun_eci [ 1 ] ; localB -> n5ko0l2kof =
localB -> g4pmwv35ka * localB -> d3otc2dkvn ; localB -> ora2iiobyk = localB
-> flpv12x3hz * localB -> j1f5fwnaed ; localB -> p2w0gsyyk0 = localB ->
n5ko0l2kof + localB -> ora2iiobyk ; localB -> dfbls3gsww = abopqckbgq . P_51
* localB -> p2w0gsyyk0 ; localB -> konfpetli3 = localB -> dfbls3gsww * localB
-> o3usn5t4yn . x_sun_eci [ 2 ] ; localB -> beibupkzbc = ( localB ->
cumsv5eupg + localB -> ffyr5yrwug ) + localB -> konfpetli3 ; localB ->
nm1sbrcjar = localB -> d3otc2dkvn * localB -> j1f5fwnaed ; localB ->
pj22uqxmlg = localB -> g4pmwv35ka * localB -> flpv12x3hz ; localB ->
oyqakhhhh5 = localB -> nm1sbrcjar + localB -> pj22uqxmlg ; localB ->
b2rxz3rgtl = abopqckbgq . P_52 * localB -> oyqakhhhh5 ; localB -> p102jhxxcb
= localB -> o3usn5t4yn . x_sun_eci [ 0 ] * localB -> b2rxz3rgtl ; localB ->
f3ocm4ks5w = localB -> g4pmwv35ka * localB -> d3otc2dkvn ; localB ->
pxaqjqecwr = localB -> flpv12x3hz * localB -> j1f5fwnaed ; localB ->
od40dmgrgr = localB -> pxaqjqecwr - localB -> f3ocm4ks5w ; localB ->
bd2oascp1u = abopqckbgq . P_53 * localB -> od40dmgrgr ; localB -> pmqwpqkvqm
= localB -> bd2oascp1u * localB -> o3usn5t4yn . x_sun_eci [ 1 ] ; localB ->
bj3tkkrh0a = localB -> d3otc2dkvn * localB -> d3otc2dkvn ; localB ->
hr5ydhms0u = localB -> flpv12x3hz * localB -> flpv12x3hz ; localB ->
ixehtm4vge = ( abopqckbgq . P_107 - localB -> bj3tkkrh0a ) - localB ->
hr5ydhms0u ; localB -> iyjv2o0ipz = abopqckbgq . P_54 * localB -> ixehtm4vge
; localB -> c4akrlc3rp = localB -> iyjv2o0ipz * localB -> o3usn5t4yn .
x_sun_eci [ 2 ] ; localB -> aszykea23e = ( localB -> p102jhxxcb + localB ->
pmqwpqkvqm ) + localB -> c4akrlc3rp ; localB -> nvm1bkzhha [ 0 ] = localB ->
lns22e0fq0 ; localB -> nvm1bkzhha [ 1 ] = localB -> beibupkzbc ; localB ->
nvm1bkzhha [ 2 ] = localB -> aszykea23e ; localB -> guelczybwj = localB ->
pqbbeprs4l . q_eci2b [ 0 ] * localB -> pqbbeprs4l . q_eci2b [ 0 ] ; localB ->
ikgaxo3xra = localB -> pqbbeprs4l . q_eci2b [ 1 ] * localB -> pqbbeprs4l .
q_eci2b [ 1 ] ; localB -> mzjr1zulm1 = localB -> pqbbeprs4l . q_eci2b [ 2 ] *
localB -> pqbbeprs4l . q_eci2b [ 2 ] ; localB -> molcubxk5b = localB ->
pqbbeprs4l . q_eci2b [ 3 ] * localB -> pqbbeprs4l . q_eci2b [ 3 ] ; localB ->
f1yolepkbp = ( ( localB -> guelczybwj + localB -> ikgaxo3xra ) + localB ->
mzjr1zulm1 ) + localB -> molcubxk5b ; localB -> oybaiqh1fi =
muDoubleScalarSqrt ( localB -> f1yolepkbp ) ; localB -> d5c1hdgkme = localB
-> pqbbeprs4l . q_eci2b [ 2 ] / localB -> oybaiqh1fi ; localB -> abrkbekg0q =
localB -> d5c1hdgkme * localB -> d5c1hdgkme ; localB -> ls3wualjmp = localB
-> pqbbeprs4l . q_eci2b [ 3 ] / localB -> oybaiqh1fi ; localB -> dueg5i0ccg =
localB -> ls3wualjmp * localB -> ls3wualjmp ; localB -> c5scxxaqvg = (
abopqckbgq . P_108 - localB -> abrkbekg0q ) - localB -> dueg5i0ccg ; localB
-> au0w0sv3dr = abopqckbgq . P_55 * localB -> c5scxxaqvg ; localB ->
ox5j110tvr = abopqckbgq . P_104 [ 0 ] * localB -> au0w0sv3dr ; localB ->
pxpqkep4mq = localB -> pqbbeprs4l . q_eci2b [ 1 ] / localB -> oybaiqh1fi ;
localB -> hasnkfiqxl = localB -> pxpqkep4mq * localB -> d5c1hdgkme ; localB
-> ggphc33exl = localB -> pqbbeprs4l . q_eci2b [ 0 ] / localB -> oybaiqh1fi ;
localB -> blzao4dsmh = localB -> ggphc33exl * localB -> ls3wualjmp ; localB
-> iq55vxeh1l = localB -> hasnkfiqxl + localB -> blzao4dsmh ; localB ->
biws4makmr = abopqckbgq . P_56 * localB -> iq55vxeh1l ; localB -> obcr5pwbuf
= localB -> biws4makmr * abopqckbgq . P_104 [ 1 ] ; localB -> oo3fqjudg2 =
localB -> ggphc33exl * localB -> d5c1hdgkme ; localB -> olv5x54e1p = localB
-> pxpqkep4mq * localB -> ls3wualjmp ; localB -> dejgnbhefo = localB ->
olv5x54e1p - localB -> oo3fqjudg2 ; localB -> eirkjm43dc = abopqckbgq . P_57
* localB -> dejgnbhefo ; localB -> fu4jw2c34k = localB -> eirkjm43dc *
abopqckbgq . P_104 [ 2 ] ; localB -> ch1hygwrdo = ( localB -> ox5j110tvr +
localB -> obcr5pwbuf ) + localB -> fu4jw2c34k ; localB -> la1kgpsxk4 = localB
-> pxpqkep4mq * localB -> d5c1hdgkme ; localB -> kl4gw5wakp = localB ->
ggphc33exl * localB -> ls3wualjmp ; localB -> lwka1rfv43 = localB ->
la1kgpsxk4 - localB -> kl4gw5wakp ; localB -> pfce0y3esg = abopqckbgq . P_58
* localB -> lwka1rfv43 ; localB -> jogawdsu54 = abopqckbgq . P_104 [ 0 ] *
localB -> pfce0y3esg ; localB -> nvkbfph01n = localB -> pxpqkep4mq * localB
-> pxpqkep4mq ; localB -> bxftnuk1ra = localB -> ls3wualjmp * localB ->
ls3wualjmp ; localB -> dpaljsdlwp = ( abopqckbgq . P_109 - localB ->
nvkbfph01n ) - localB -> bxftnuk1ra ; localB -> kxzmvx1fdb = abopqckbgq .
P_59 * localB -> dpaljsdlwp ; localB -> bua0yizyq0 = localB -> kxzmvx1fdb *
abopqckbgq . P_104 [ 1 ] ; localB -> bsheudhisd = localB -> ggphc33exl *
localB -> pxpqkep4mq ; localB -> ac4ys3c5bf = localB -> d5c1hdgkme * localB
-> ls3wualjmp ; localB -> anfhdoinwk = localB -> bsheudhisd + localB ->
ac4ys3c5bf ; localB -> p5pv4ip1oa = abopqckbgq . P_60 * localB -> anfhdoinwk
; localB -> jsegmsryjn = localB -> p5pv4ip1oa * abopqckbgq . P_104 [ 2 ] ;
localB -> l4hw4jxkfm = ( localB -> jogawdsu54 + localB -> bua0yizyq0 ) +
localB -> jsegmsryjn ; localB -> pd4rcd2jtd = localB -> pxpqkep4mq * localB
-> ls3wualjmp ; localB -> kzmska5lpd = localB -> ggphc33exl * localB ->
d5c1hdgkme ; localB -> f2i5ftoz4x = localB -> pd4rcd2jtd + localB ->
kzmska5lpd ; localB -> i4krmgj1v0 = abopqckbgq . P_61 * localB -> f2i5ftoz4x
; localB -> l3phx3jow5 = abopqckbgq . P_104 [ 0 ] * localB -> i4krmgj1v0 ;
localB -> j4wv4xgmxb = localB -> ggphc33exl * localB -> pxpqkep4mq ; localB
-> lccltopkqw = localB -> d5c1hdgkme * localB -> ls3wualjmp ; localB ->
ccixsnw2fc = localB -> lccltopkqw - localB -> j4wv4xgmxb ; localB ->
nbd1b33zwn = abopqckbgq . P_62 * localB -> ccixsnw2fc ; localB -> h3ucgcuyfi
= localB -> nbd1b33zwn * abopqckbgq . P_104 [ 1 ] ; localB -> liwqkar004 =
localB -> pxpqkep4mq * localB -> pxpqkep4mq ; localB -> hxjifcsng0 = localB
-> d5c1hdgkme * localB -> d5c1hdgkme ; localB -> kyojjly2tl = ( abopqckbgq .
P_110 - localB -> liwqkar004 ) - localB -> hxjifcsng0 ; localB -> e0c4e11rni
= abopqckbgq . P_63 * localB -> kyojjly2tl ; localB -> ceyvjmztqi = localB ->
e0c4e11rni * abopqckbgq . P_104 [ 2 ] ; localB -> ahssnuifwd = ( localB ->
l3phx3jow5 + localB -> h3ucgcuyfi ) + localB -> ceyvjmztqi ; localB ->
i1c2wqtoet [ 0 ] = localB -> ch1hygwrdo ; localB -> i1c2wqtoet [ 1 ] = localB
-> l4hw4jxkfm ; localB -> i1c2wqtoet [ 2 ] = localB -> ahssnuifwd ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 0 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 0 ] ; uTmp_p = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 1 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 1 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> i1c2wqtoet [
2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1c2wqtoet [ 2 ] ;
uTmp_idx_1 = localB -> i1c2wqtoet [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
localB -> epzgchngwa = uTmp_idx_2 ; localB -> hzd2xuzbby = uTmp ; localB ->
n53d2qrt4k = uTmp_p ; localB -> bcfpn1davb = localB -> hzd2xuzbby * localB ->
n53d2qrt4k ; localB -> aggpapabvx = muDoubleScalarSqrt ( localB -> bcfpn1davb
) ; localB -> evm4x5kbd5 = localB -> epzgchngwa / localB -> aggpapabvx ;
localB -> hrahqncl30 = localB -> evm4x5kbd5 + abopqckbgq . P_64 ; localB ->
mj1mf02dto = muDoubleScalarAbs ( localB -> hrahqncl30 ) ; localB ->
g1bpg51r2b = localB -> evm4x5kbd5 + abopqckbgq . P_65 ; localB -> gn2snc434b
= muDoubleScalarAbs ( localB -> g1bpg51r2b ) ; if ( localB -> mj1mf02dto <
1.0E-6 ) { ft4vlbdxum ( & localB -> lgoqlnjph1 , & abopqckbgq . hzzxzr44uq )
; } else if ( localB -> gn2snc434b < 1.0E-6 ) { ft4vlbdxum ( & localB ->
lgoqlnjph1 , & abopqckbgq . fyajdrrehx ) ; } else { ft4vlbdxum ( & localB ->
lgoqlnjph1 , & abopqckbgq . fssw3wplvp ) ; } localB -> n4u4jxhsmm = ( localB
-> cbctnmjpjt != abopqckbgq . P_44 ) ; localB -> nqq5h0tu13 = ( localB ->
lgoqlnjph1 != abopqckbgq . P_45 ) ; localB -> g25u1yz10w = ( localB ->
n4u4jxhsmm || localB -> nqq5h0tu13 ) ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq .
P_88 [ 0 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 0 ] ; uTmp_p = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 0 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 0 ] ; uTmp_e = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq
. P_88 [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp_idx_2 +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 1 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1
] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> nvm1bkzhha [ 1
] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 1 ] ; uTmp_e += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = localB ->
nvm1bkzhha [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 =
localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp
+= uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ;
uTmp_idx_1 = localB -> nvm1bkzhha [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> nvm1bkzhha [ 2 ] ; uTmp_idx_1 = localB -> nvm1bkzhha [
2 ] ; uTmp_e += uTmp_idx_0 * uTmp_idx_1 ; localB -> n0mgunt0gp = uTmp_idx_2 ;
localB -> lnpax3gygz = uTmp ; localB -> c2fzwxqnfq = localB ->
n4hlop4vyd_g1smspu5ke * localB -> lnpax3gygz ; localB -> kzacud3cdb =
muDoubleScalarSqrt ( localB -> c2fzwxqnfq ) ; localB -> gnxcy1z2pw = localB
-> n0mgunt0gp + localB -> kzacud3cdb ; localB -> prrbq1ibfj = localB ->
gnxcy1z2pw * localB -> gnxcy1z2pw ; localB -> mleffpx23l = uTmp_p ; localB ->
lxtq0skkkc = uTmp_e ; localB -> j1urynvqpr = localB -> jgt3sawf5i_g2mlkqadfk
* localB -> lxtq0skkkc ; localB -> ms3t1ooexr = muDoubleScalarSqrt ( localB
-> j1urynvqpr ) ; localB -> fjxrzbc1wq = localB -> mleffpx23l / localB ->
ms3t1ooexr ; localB -> nlgc10ypr3 = localB -> fjxrzbc1wq + abopqckbgq . P_66
; localB -> fe2t3cc0r5 = muDoubleScalarAbs ( localB -> nlgc10ypr3 ) ; localB
-> o25zq55nd1 = localB -> fjxrzbc1wq + abopqckbgq . P_67 ; localB ->
oxgl25rk0e = muDoubleScalarAbs ( localB -> o25zq55nd1 ) ; if ( localB ->
fe2t3cc0r5 < 1.0E-6 ) { ft4vlbdxum ( & localB -> llcwq3deaw , & abopqckbgq .
ahsydtdkov ) ; } else if ( localB -> oxgl25rk0e < 1.0E-6 ) { ft4vlbdxum ( &
localB -> llcwq3deaw , & abopqckbgq . foakyujkvy ) ; } else { ft4vlbdxum ( &
localB -> llcwq3deaw , & abopqckbgq . djprnhjvty ) ; } localB -> lreapqt2fv =
( localB -> llcwq3deaw != abopqckbgq . P_4 ) ; if ( localB -> lreapqt2fv ) {
localB -> pcytwak5us = abopqckbgq . P_88 [ 1 ] * localB -> lns22e0fq0 ;
localB -> ka3d3xflg3 = abopqckbgq . P_88 [ 0 ] * localB -> aszykea23e ;
localB -> m2clsjv5d5 = abopqckbgq . P_88 [ 2 ] * localB -> beibupkzbc ;
localB -> co34fat13s = abopqckbgq . P_88 [ 0 ] * localB -> beibupkzbc ;
localB -> nt5g05m4jd = abopqckbgq . P_88 [ 2 ] * localB -> lns22e0fq0 ;
localB -> kasnsg1qpq = abopqckbgq . P_88 [ 1 ] * localB -> aszykea23e ;
localB -> jrpyoilbzn [ 0 ] = localB -> kasnsg1qpq - localB -> m2clsjv5d5 ;
localB -> jrpyoilbzn [ 1 ] = localB -> nt5g05m4jd - localB -> ka3d3xflg3 ;
localB -> jrpyoilbzn [ 2 ] = localB -> co34fat13s - localB -> pcytwak5us ;
localB -> l0sk34oyjk [ 0 ] = localB -> jrpyoilbzn [ 0 ] ; localB ->
l0sk34oyjk [ 1 ] = localB -> jrpyoilbzn [ 1 ] ; localB -> l0sk34oyjk [ 2 ] =
localB -> jrpyoilbzn [ 2 ] ; } else { localB -> l0sk34oyjk [ 0 ] = localB ->
ora2iiobyk_dypejvacrn [ 0 ] ; localB -> l0sk34oyjk [ 1 ] = localB ->
ora2iiobyk_dypejvacrn [ 1 ] ; localB -> l0sk34oyjk [ 2 ] = localB ->
ora2iiobyk_dypejvacrn [ 2 ] ; } localB -> hm3jswgty5 = localB -> l0sk34oyjk [
0 ] * localB -> l0sk34oyjk [ 0 ] ; localB -> h0cudg4xao = localB ->
l0sk34oyjk [ 1 ] * localB -> l0sk34oyjk [ 1 ] ; localB -> iryn1y1tz0 = localB
-> l0sk34oyjk [ 2 ] * localB -> l0sk34oyjk [ 2 ] ; localB -> ogx402uljh = ( (
localB -> prrbq1ibfj + localB -> hm3jswgty5 ) + localB -> h0cudg4xao ) +
localB -> iryn1y1tz0 ; localB -> n1kdmevc3o = muDoubleScalarSqrt ( localB ->
ogx402uljh ) ; localB -> cma1q5rvnp = localB -> gnxcy1z2pw / localB ->
n1kdmevc3o ; localB -> acvi24mxxj = localB -> l0sk34oyjk [ 1 ] / localB ->
n1kdmevc3o ; localB -> agpr5acmdg = localB -> cma1q5rvnp * localB ->
cma1q5rvnp ; localB -> fyfstsl4vz = localB -> l0sk34oyjk [ 0 ] / localB ->
n1kdmevc3o ; localB -> dqfgbeikbs = localB -> fyfstsl4vz * localB ->
fyfstsl4vz ; localB -> lsfoxxp1mb = localB -> acvi24mxxj * localB ->
acvi24mxxj ; localB -> a4vuvqsiae = localB -> l0sk34oyjk [ 2 ] / localB ->
n1kdmevc3o ; localB -> jjbrykxxr5 = localB -> a4vuvqsiae * localB ->
a4vuvqsiae ; localB -> hpn0pmdgeb = ( ( localB -> agpr5acmdg + localB ->
dqfgbeikbs ) + localB -> lsfoxxp1mb ) + localB -> jjbrykxxr5 ; localB ->
cygaprby0g = muDoubleScalarSqrt ( localB -> hpn0pmdgeb ) ; localB ->
cvagkgqvnq = localB -> acvi24mxxj / localB -> cygaprby0g ; localB ->
ejz1f24vaz = localB -> cvagkgqvnq * localB -> cvagkgqvnq ; localB ->
c4k4gusohk = localB -> a4vuvqsiae / localB -> cygaprby0g ; localB ->
cxpkjm1fp1 = localB -> c4k4gusohk * localB -> c4k4gusohk ; localB ->
gjsc13nz00 = ( abopqckbgq . P_92 - localB -> ejz1f24vaz ) - localB ->
cxpkjm1fp1 ; localB -> hv3hhvwq5z = abopqckbgq . P_68 * localB -> gjsc13nz00
; localB -> cxezcglr2u = localB -> aszykea23e_al00mdgrv4 [ 0 ] * localB ->
hv3hhvwq5z ; localB -> hvxkj5tczq = localB -> fyfstsl4vz / localB ->
cygaprby0g ; localB -> hz1fhgvsxs = localB -> hvxkj5tczq * localB ->
cvagkgqvnq ; localB -> pbd5c4hpid = localB -> cma1q5rvnp / localB ->
cygaprby0g ; localB -> cqu3ifqajp = localB -> pbd5c4hpid * localB ->
c4k4gusohk ; localB -> oaf0d0xk5r = localB -> hz1fhgvsxs + localB ->
cqu3ifqajp ; localB -> alouqa1esd = abopqckbgq . P_69 * localB -> oaf0d0xk5r
; localB -> bqdrik3lup = localB -> alouqa1esd * localB ->
aszykea23e_al00mdgrv4 [ 1 ] ; localB -> hkefk0wxh3 = localB -> pbd5c4hpid *
localB -> cvagkgqvnq ; localB -> ctw3yr0skv = localB -> hvxkj5tczq * localB
-> c4k4gusohk ; localB -> gvkbmfjqfq = localB -> ctw3yr0skv - localB ->
hkefk0wxh3 ; localB -> l51omrq4ou = abopqckbgq . P_70 * localB -> gvkbmfjqfq
; localB -> dgjtt0lrfo = localB -> l51omrq4ou * localB ->
aszykea23e_al00mdgrv4 [ 2 ] ; localB -> ob3gp4h5yo = ( localB -> cxezcglr2u +
localB -> bqdrik3lup ) + localB -> dgjtt0lrfo ; localB -> pxroeqo2od = localB
-> hvxkj5tczq * localB -> cvagkgqvnq ; localB -> f435yutsmz = localB ->
pbd5c4hpid * localB -> c4k4gusohk ; localB -> jb4rx2lt3q = localB ->
pxroeqo2od - localB -> f435yutsmz ; localB -> hapbtyys5t = abopqckbgq . P_71
* localB -> jb4rx2lt3q ; localB -> kg4t13hjnw = localB ->
aszykea23e_al00mdgrv4 [ 0 ] * localB -> hapbtyys5t ; localB -> nr40yg30xf =
localB -> hvxkj5tczq * localB -> hvxkj5tczq ; localB -> eawut1kvet = localB
-> c4k4gusohk * localB -> c4k4gusohk ; localB -> hngf3znxne = ( abopqckbgq .
P_93 - localB -> nr40yg30xf ) - localB -> eawut1kvet ; localB -> ffqosqpbpj =
abopqckbgq . P_72 * localB -> hngf3znxne ; localB -> dt4ff0b0zt = localB ->
ffqosqpbpj * localB -> aszykea23e_al00mdgrv4 [ 1 ] ; localB -> bxaehnjet4 =
localB -> pbd5c4hpid * localB -> hvxkj5tczq ; localB -> ktnhluxnk0 = localB
-> cvagkgqvnq * localB -> c4k4gusohk ; localB -> p0remiojmm = localB ->
bxaehnjet4 + localB -> ktnhluxnk0 ; localB -> lfvmgptwgd = abopqckbgq . P_73
* localB -> p0remiojmm ; localB -> hs115ke0aw = localB -> lfvmgptwgd * localB
-> aszykea23e_al00mdgrv4 [ 2 ] ; localB -> fpbr5y03ni = ( localB ->
kg4t13hjnw + localB -> dt4ff0b0zt ) + localB -> hs115ke0aw ; localB ->
djvkh5qqbi = localB -> hvxkj5tczq * localB -> c4k4gusohk ; localB ->
pgotrhwbz1 = localB -> pbd5c4hpid * localB -> cvagkgqvnq ; localB ->
lje3id5dal = localB -> djvkh5qqbi + localB -> pgotrhwbz1 ; localB ->
jp55x0bean = abopqckbgq . P_74 * localB -> lje3id5dal ; localB -> o40234qo2z
= localB -> aszykea23e_al00mdgrv4 [ 0 ] * localB -> jp55x0bean ; localB ->
d1yt1kccfq = localB -> pbd5c4hpid * localB -> hvxkj5tczq ; localB ->
if1l5c21sl = localB -> cvagkgqvnq * localB -> c4k4gusohk ; localB ->
iojvvnoqdf = localB -> if1l5c21sl - localB -> d1yt1kccfq ; localB ->
pfg5b3tisa = abopqckbgq . P_75 * localB -> iojvvnoqdf ; localB -> kldntd3ung
= localB -> pfg5b3tisa * localB -> aszykea23e_al00mdgrv4 [ 1 ] ; localB ->
fbzi1vq3s2 = localB -> hvxkj5tczq * localB -> hvxkj5tczq ; localB ->
jtgkz30wjs = localB -> cvagkgqvnq * localB -> cvagkgqvnq ; localB ->
hllpipoydi = ( abopqckbgq . P_94 - localB -> fbzi1vq3s2 ) - localB ->
jtgkz30wjs ; localB -> dmo030rxdj = abopqckbgq . P_76 * localB -> hllpipoydi
; localB -> f4nd0as0dr = localB -> dmo030rxdj * localB ->
aszykea23e_al00mdgrv4 [ 2 ] ; localB -> keianq5spu = ( localB -> o40234qo2z +
localB -> kldntd3ung ) + localB -> f4nd0as0dr ; localB -> bz3je0mzvu [ 0 ] =
localB -> ob3gp4h5yo ; localB -> bz3je0mzvu [ 1 ] = localB -> fpbr5y03ni ;
localB -> bz3je0mzvu [ 2 ] = localB -> keianq5spu ; localB -> fk04xhyhym =
localB -> beibupkzbc * localB -> ahssnuifwd ; localB -> hsvisk1j2i = localB
-> aszykea23e * localB -> ch1hygwrdo ; localB -> fc1p4f35rf = localB ->
lns22e0fq0 * localB -> l4hw4jxkfm ; localB -> kfgxdivg4y = localB ->
aszykea23e * localB -> l4hw4jxkfm ; localB -> fpxljpfgk1 = localB ->
lns22e0fq0 * localB -> ahssnuifwd ; localB -> ingy5zk12p = localB ->
beibupkzbc * localB -> ch1hygwrdo ; localB -> i2mqwcm3co [ 0 ] = localB ->
fk04xhyhym - localB -> kfgxdivg4y ; localB -> i2mqwcm3co [ 1 ] = localB ->
hsvisk1j2i - localB -> fpxljpfgk1 ; localB -> i2mqwcm3co [ 2 ] = localB ->
fc1p4f35rf - localB -> ingy5zk12p ; localB -> mi55wqspcv = localB ->
i2mqwcm3co [ 1 ] * localB -> aszykea23e ; localB -> egmrha0z1i = localB ->
i2mqwcm3co [ 2 ] * localB -> lns22e0fq0 ; localB -> c1eo4yjwen = localB ->
i2mqwcm3co [ 0 ] * localB -> beibupkzbc ; localB -> azofm4b11s = localB ->
i2mqwcm3co [ 2 ] * localB -> beibupkzbc ; localB -> mur5nzyveh = localB ->
i2mqwcm3co [ 0 ] * localB -> aszykea23e ; localB -> eetdsa0qym = localB ->
i2mqwcm3co [ 1 ] * localB -> lns22e0fq0 ; localB -> gc0ixjj2ab [ 0 ] = localB
-> mi55wqspcv - localB -> azofm4b11s ; localB -> gc0ixjj2ab [ 1 ] = localB ->
egmrha0z1i - localB -> mur5nzyveh ; localB -> gc0ixjj2ab [ 2 ] = localB ->
c1eo4yjwen - localB -> eetdsa0qym ; localB -> jlnpcdykrv = localB ->
cma1q5rvnp * localB -> cma1q5rvnp ; localB -> dz5uukec4x = localB ->
fyfstsl4vz * localB -> fyfstsl4vz ; localB -> i0b4wukphh = localB ->
acvi24mxxj * localB -> acvi24mxxj ; localB -> mmek1dewwi = localB ->
a4vuvqsiae * localB -> a4vuvqsiae ; localB -> ebyywhggct = ( ( localB ->
jlnpcdykrv + localB -> dz5uukec4x ) + localB -> i0b4wukphh ) + localB ->
mmek1dewwi ; localB -> kwx0wxnmyn = muDoubleScalarSqrt ( localB -> ebyywhggct
) ; localB -> d4cf5k0dbg = localB -> acvi24mxxj / localB -> kwx0wxnmyn ;
localB -> i5oyii5af2 = localB -> d4cf5k0dbg * localB -> d4cf5k0dbg ; localB
-> dvodssx054 = localB -> a4vuvqsiae / localB -> kwx0wxnmyn ; localB ->
acgzb20yrz = localB -> dvodssx054 * localB -> dvodssx054 ; localB ->
cbhhv35xdp = ( abopqckbgq . P_95 - localB -> i5oyii5af2 ) - localB ->
acgzb20yrz ; localB -> pd3lfqr311 = abopqckbgq . P_77 * localB -> cbhhv35xdp
; localB -> jkewou5mx0 = localB -> gc0ixjj2ab [ 0 ] * localB -> pd3lfqr311 ;
localB -> ee4jenrrc3 = localB -> fyfstsl4vz / localB -> kwx0wxnmyn ; localB
-> bjj5nk5qjw = localB -> ee4jenrrc3 * localB -> d4cf5k0dbg ; localB ->
b1xbacdit1 = localB -> cma1q5rvnp / localB -> kwx0wxnmyn ; localB ->
iyjnvhoa05 = localB -> b1xbacdit1 * localB -> dvodssx054 ; localB ->
bnefz23hzt = localB -> bjj5nk5qjw + localB -> iyjnvhoa05 ; localB ->
dfscogdpyy = abopqckbgq . P_78 * localB -> bnefz23hzt ; localB -> jkiegt4yox
= localB -> dfscogdpyy * localB -> gc0ixjj2ab [ 1 ] ; localB -> b2viyxdpgq =
localB -> b1xbacdit1 * localB -> d4cf5k0dbg ; localB -> ibf3oqh104 = localB
-> ee4jenrrc3 * localB -> dvodssx054 ; localB -> bozzjjqiea = localB ->
ibf3oqh104 - localB -> b2viyxdpgq ; localB -> onercwkrg0 = abopqckbgq . P_79
* localB -> bozzjjqiea ; localB -> mrfxiyzlzf = localB -> onercwkrg0 * localB
-> gc0ixjj2ab [ 2 ] ; localB -> cbcmziqkjc = ( localB -> jkewou5mx0 + localB
-> jkiegt4yox ) + localB -> mrfxiyzlzf ; localB -> gtbuvz5jks = localB ->
ee4jenrrc3 * localB -> d4cf5k0dbg ; localB -> jf0k5sr3v3 = localB ->
b1xbacdit1 * localB -> dvodssx054 ; localB -> cniux5e0uy = localB ->
gtbuvz5jks - localB -> jf0k5sr3v3 ; localB -> m0iqaydsks = abopqckbgq . P_80
* localB -> cniux5e0uy ; localB -> prus5ezwp0 = localB -> gc0ixjj2ab [ 0 ] *
localB -> m0iqaydsks ; localB -> ducz1ftqqr = localB -> ee4jenrrc3 * localB
-> ee4jenrrc3 ; localB -> osmvkieqw4 = localB -> dvodssx054 * localB ->
dvodssx054 ; localB -> c51h5m5skd = ( abopqckbgq . P_96 - localB ->
ducz1ftqqr ) - localB -> osmvkieqw4 ; localB -> kbxe0fashs = abopqckbgq .
P_81 * localB -> c51h5m5skd ; localB -> g5do2jwfkj = localB -> kbxe0fashs *
localB -> gc0ixjj2ab [ 1 ] ; localB -> lb34les3au = localB -> b1xbacdit1 *
localB -> ee4jenrrc3 ; localB -> ne2md2xcuw = localB -> d4cf5k0dbg * localB
-> dvodssx054 ; localB -> mtniqmtukt = localB -> lb34les3au + localB ->
ne2md2xcuw ; localB -> lmts1r5zye = abopqckbgq . P_82 * localB -> mtniqmtukt
; localB -> o3sxjyhlgc = localB -> lmts1r5zye * localB -> gc0ixjj2ab [ 2 ] ;
localB -> nvstybkzua = ( localB -> prus5ezwp0 + localB -> g5do2jwfkj ) +
localB -> o3sxjyhlgc ; localB -> f1qtlf4p41 = localB -> ee4jenrrc3 * localB
-> dvodssx054 ; localB -> astrxw02fg = localB -> b1xbacdit1 * localB ->
d4cf5k0dbg ; localB -> n0xf3mvz3c = localB -> f1qtlf4p41 + localB ->
astrxw02fg ; localB -> hgyu3jv2in = abopqckbgq . P_83 * localB -> n0xf3mvz3c
; localB -> lwguafoevi = localB -> gc0ixjj2ab [ 0 ] * localB -> hgyu3jv2in ;
localB -> nms5badcpo = localB -> b1xbacdit1 * localB -> ee4jenrrc3 ; localB
-> husveukrkc = localB -> d4cf5k0dbg * localB -> dvodssx054 ; localB ->
kzdd51l3ru = localB -> husveukrkc - localB -> nms5badcpo ; localB ->
gg43h4jwy1 = abopqckbgq . P_84 * localB -> kzdd51l3ru ; localB -> d0qq1v1l0i
= localB -> gg43h4jwy1 * localB -> gc0ixjj2ab [ 1 ] ; localB -> idztmqu2ce =
localB -> ee4jenrrc3 * localB -> ee4jenrrc3 ; localB -> ekaxcijnoo = localB
-> d4cf5k0dbg * localB -> d4cf5k0dbg ; localB -> n0ofdn3hx5 = ( abopqckbgq .
P_97 - localB -> idztmqu2ce ) - localB -> ekaxcijnoo ; localB -> fed3jox541 =
abopqckbgq . P_85 * localB -> n0ofdn3hx5 ; localB -> aqoi53uxeh = localB ->
fed3jox541 * localB -> gc0ixjj2ab [ 2 ] ; localB -> npos3sjht3 = ( localB ->
lwguafoevi + localB -> d0qq1v1l0i ) + localB -> aqoi53uxeh ; localB ->
i1wahxaxry [ 0 ] = localB -> cbcmziqkjc ; localB -> i1wahxaxry [ 1 ] = localB
-> nvstybkzua ; localB -> i1wahxaxry [ 2 ] = localB -> npos3sjht3 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
0 ] ; uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 0 ] ; uTmp =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 0 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_p = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 1 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 1 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = localB -> bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> i1wahxaxry [
2 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> bz3je0mzvu [ 2 ] ; uTmp +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 2 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
localB -> fa41n5uhqw = uTmp_idx_2 ; localB -> m5eo5oo3rp = uTmp ; localB ->
ljnxdbdhpm = uTmp_p ; localB -> cdr1iz2145 = localB -> m5eo5oo3rp * localB ->
ljnxdbdhpm ; localB -> ekklepchwn = muDoubleScalarSqrt ( localB -> cdr1iz2145
) ; localB -> blmjlkippm = localB -> fa41n5uhqw / localB -> ekklepchwn ;
localB -> irfzeyrypc = localB -> blmjlkippm + abopqckbgq . P_86 ; localB ->
cndroifqmd = muDoubleScalarAbs ( localB -> irfzeyrypc ) ; localB ->
cgzkwpgwua = localB -> blmjlkippm + abopqckbgq . P_87 ; localB -> mxpmgjnupx
= muDoubleScalarAbs ( localB -> cgzkwpgwua ) ; if ( localB -> cndroifqmd <
1.0E-6 ) { ft4vlbdxum ( & localB -> fajiybfjg4 , & abopqckbgq . fnkxrqzxuu )
; } else if ( localB -> mxpmgjnupx < 1.0E-6 ) { ft4vlbdxum ( & localB ->
fajiybfjg4 , & abopqckbgq . n2t4c0y3mo ) ; } else { ft4vlbdxum ( & localB ->
fajiybfjg4 , & abopqckbgq . fospk5am0t ) ; } if ( localB -> g25u1yz10w ) {
localB -> cgmvvubtg2 [ 0 ] = localB -> cma1q5rvnp ; localB -> cgmvvubtg2 [ 1
] = localB -> fyfstsl4vz ; localB -> cgmvvubtg2 [ 2 ] = localB -> acvi24mxxj
; localB -> cgmvvubtg2 [ 3 ] = localB -> a4vuvqsiae ; } else { localB ->
jsksnhy5op = ( localB -> fajiybfjg4 != abopqckbgq . P_5 ) ; if ( localB ->
jsksnhy5op ) { localB -> jxbvbdfq05 = localB -> fpbr5y03ni * localB ->
cbcmziqkjc ; localB -> kny5bwlvsc = localB -> ob3gp4h5yo * localB ->
npos3sjht3 ; localB -> kzzs35npw0 = localB -> keianq5spu * localB ->
nvstybkzua ; localB -> pacq3bl0pk = localB -> ob3gp4h5yo * localB ->
nvstybkzua ; localB -> gqndlgd2aw = localB -> keianq5spu * localB ->
cbcmziqkjc ; localB -> kfpmcsjlkg = localB -> fpbr5y03ni * localB ->
npos3sjht3 ; localB -> lgcr4li0u4 [ 0 ] = localB -> kfpmcsjlkg - localB ->
kzzs35npw0 ; localB -> lgcr4li0u4 [ 1 ] = localB -> gqndlgd2aw - localB ->
kny5bwlvsc ; localB -> lgcr4li0u4 [ 2 ] = localB -> pacq3bl0pk - localB ->
jxbvbdfq05 ; localB -> bytzprrljz [ 0 ] = localB -> lgcr4li0u4 [ 0 ] ; localB
-> bytzprrljz [ 1 ] = localB -> lgcr4li0u4 [ 1 ] ; localB -> bytzprrljz [ 2 ]
= localB -> lgcr4li0u4 [ 2 ] ; } else { localB -> etedczwvjy = ( localB ->
ob3gp4h5yo > localB -> keianq5spu ) ; if ( localB -> etedczwvjy ) { localB ->
mkpyxx5a2k = abopqckbgq . P_41 * localB -> fpbr5y03ni ; localB -> oqknduhq20
[ 0 ] = localB -> mkpyxx5a2k ; localB -> oqknduhq20 [ 1 ] = localB ->
ob3gp4h5yo ; localB -> oqknduhq20 [ 2 ] = abopqckbgq . P_102 ; } else {
localB -> cgkghyrjvj = abopqckbgq . P_40 * localB -> keianq5spu ; localB ->
oqknduhq20 [ 0 ] = abopqckbgq . P_103 ; localB -> oqknduhq20 [ 1 ] = localB
-> cgkghyrjvj ; localB -> oqknduhq20 [ 2 ] = localB -> fpbr5y03ni ; } localB
-> ly0r2hmvg5 = localB -> fpbr5y03ni * localB -> oqknduhq20 [ 0 ] ; localB ->
fqaxk4du2t = localB -> ob3gp4h5yo * localB -> oqknduhq20 [ 2 ] ; localB ->
bjw2c35plc = localB -> keianq5spu * localB -> oqknduhq20 [ 1 ] ; localB ->
mj1bfatefq = localB -> ob3gp4h5yo * localB -> oqknduhq20 [ 1 ] ; localB ->
ld2n3r4eg2 = localB -> keianq5spu * localB -> oqknduhq20 [ 0 ] ; localB ->
out4hfjoax = localB -> fpbr5y03ni * localB -> oqknduhq20 [ 2 ] ; localB ->
bqueynddhy [ 0 ] = localB -> out4hfjoax - localB -> bjw2c35plc ; localB ->
bqueynddhy [ 1 ] = localB -> ld2n3r4eg2 - localB -> fqaxk4du2t ; localB ->
bqueynddhy [ 2 ] = localB -> mj1bfatefq - localB -> ly0r2hmvg5 ; localB ->
bytzprrljz [ 0 ] = localB -> bqueynddhy [ 0 ] ; localB -> bytzprrljz [ 1 ] =
localB -> bqueynddhy [ 1 ] ; localB -> bytzprrljz [ 2 ] = localB ->
bqueynddhy [ 2 ] ; } localB -> eemyz2lbem = localB -> bytzprrljz [ 2 ] *
localB -> bytzprrljz [ 2 ] ; localB -> afknuswabb = localB -> bytzprrljz [ 1
] * localB -> bytzprrljz [ 1 ] ; localB -> a3ma3vfah1 = localB -> bytzprrljz
[ 0 ] * localB -> bytzprrljz [ 0 ] ; uTmp_idx_0 = localB -> i1wahxaxry [ 0 ]
; uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_idx_2 = uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 0 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 0 ] ; uTmp_p =
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 1 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 1 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 1 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 1 ] ; uTmp_p +=
uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB -> i1wahxaxry [ 2 ] ;
uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_idx_2 += uTmp_idx_0 *
uTmp_idx_1 ; uTmp_idx_0 = localB -> bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB ->
bz3je0mzvu [ 2 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = localB ->
bz3je0mzvu [ 2 ] ; uTmp_idx_1 = localB -> i1wahxaxry [ 2 ] ; uTmp_p +=
uTmp_idx_0 * uTmp_idx_1 ; localB -> kptiyy5d4o = uTmp_idx_2 ; localB ->
fecanjxkao = uTmp ; localB -> c1bxkm552n = localB -> fecanjxkao * localB ->
kptiyy5d4o ; localB -> kbvd3ho5nq = muDoubleScalarSqrt ( localB -> c1bxkm552n
) ; localB -> b5i3yd1o3b = uTmp_p ; localB -> gxi1kloqmc = localB ->
b5i3yd1o3b + localB -> kbvd3ho5nq ; localB -> adqxt3js2y = localB ->
gxi1kloqmc * localB -> gxi1kloqmc ; localB -> bbx5jzu4ti = ( ( localB ->
adqxt3js2y + localB -> a3ma3vfah1 ) + localB -> afknuswabb ) + localB ->
eemyz2lbem ; localB -> mgh2qpgh4o = muDoubleScalarSqrt ( localB -> bbx5jzu4ti
) ; localB -> kqhxx3ajaq = localB -> bytzprrljz [ 2 ] / localB -> mgh2qpgh4o
; localB -> lqyznbr2nm = localB -> a4vuvqsiae * localB -> kqhxx3ajaq ; localB
-> lz51pfwwvi = localB -> bytzprrljz [ 1 ] / localB -> mgh2qpgh4o ; localB ->
alliolhtu0 = localB -> acvi24mxxj * localB -> lz51pfwwvi ; localB ->
bvvblfta2g = localB -> bytzprrljz [ 0 ] / localB -> mgh2qpgh4o ; localB ->
lhwmwnqfzy = localB -> fyfstsl4vz * localB -> bvvblfta2g ; localB ->
luupn5egfo = localB -> gxi1kloqmc / localB -> mgh2qpgh4o ; localB ->
p2dzm2i04q = localB -> cma1q5rvnp * localB -> luupn5egfo ; localB ->
myxsajr3zd = ( ( localB -> p2dzm2i04q - localB -> lhwmwnqfzy ) - localB ->
alliolhtu0 ) - localB -> lqyznbr2nm ; localB -> h2ozld1klp = localB ->
a4vuvqsiae * localB -> lz51pfwwvi ; localB -> ozfh2jstow = localB ->
acvi24mxxj * localB -> kqhxx3ajaq ; localB -> ofeb0zvxvt = localB ->
fyfstsl4vz * localB -> luupn5egfo ; localB -> fau0vxu422 = localB ->
cma1q5rvnp * localB -> bvvblfta2g ; localB -> gwuh0fzkuw = ( ( localB ->
fau0vxu422 + localB -> ofeb0zvxvt ) + localB -> ozfh2jstow ) - localB ->
h2ozld1klp ; localB -> fgwa5kiyko = localB -> a4vuvqsiae * localB ->
bvvblfta2g ; localB -> et342tdyr0 = localB -> acvi24mxxj * localB ->
luupn5egfo ; localB -> h3c2z5ekqq = localB -> fyfstsl4vz * localB ->
kqhxx3ajaq ; localB -> ib12o3y2pc = localB -> cma1q5rvnp * localB ->
lz51pfwwvi ; localB -> fo54yjdwr4 = ( ( localB -> ib12o3y2pc - localB ->
h3c2z5ekqq ) + localB -> et342tdyr0 ) + localB -> fgwa5kiyko ; localB ->
cszfvcavwy = localB -> a4vuvqsiae * localB -> luupn5egfo ; localB ->
pqk3n1enak = localB -> acvi24mxxj * localB -> bvvblfta2g ; localB ->
e1qjvbzqml = localB -> fyfstsl4vz * localB -> lz51pfwwvi ; localB ->
nrfgqfok0m = localB -> cma1q5rvnp * localB -> kqhxx3ajaq ; localB ->
lhxxbcwvtp = ( ( localB -> nrfgqfok0m + localB -> e1qjvbzqml ) - localB ->
pqk3n1enak ) + localB -> cszfvcavwy ; localB -> cgmvvubtg2 [ 0 ] = localB ->
myxsajr3zd ; localB -> cgmvvubtg2 [ 1 ] = localB -> gwuh0fzkuw ; localB ->
cgmvvubtg2 [ 2 ] = localB -> fo54yjdwr4 ; localB -> cgmvvubtg2 [ 3 ] = localB
-> lhxxbcwvtp ; } localB -> mzi5hbsbtw = localB -> cgmvvubtg2 [ 0 ] * localB
-> cgmvvubtg2 [ 0 ] ; localB -> n3fzucbfu3 = localB -> cgmvvubtg2 [ 1 ] *
localB -> cgmvvubtg2 [ 1 ] ; localB -> hsreckybty = localB -> cgmvvubtg2 [ 2
] * localB -> cgmvvubtg2 [ 2 ] ; localB -> lpy1gf3es2 = localB -> cgmvvubtg2
[ 3 ] * localB -> cgmvvubtg2 [ 3 ] ; localB -> clbvq0ey5g = ( ( localB ->
mzi5hbsbtw + localB -> n3fzucbfu3 ) + localB -> hsreckybty ) + localB ->
lpy1gf3es2 ; localB -> gyaq1qidxj = muDoubleScalarSqrt ( localB -> clbvq0ey5g
) ; localB -> ereoiizt2l = localB -> cgmvvubtg2 [ 0 ] / localB -> gyaq1qidxj
; localB -> ftmibtqyuo = localB -> cgmvvubtg2 [ 1 ] / localB -> gyaq1qidxj ;
localB -> heombqu1u0 = localB -> cgmvvubtg2 [ 2 ] / localB -> gyaq1qidxj ;
localB -> hk2rart0rc = localB -> cgmvvubtg2 [ 3 ] / localB -> gyaq1qidxj ;
localB -> a20bonkaqa = ( localB -> ftmibtqyuo * localB -> hk2rart0rc + localB
-> ereoiizt2l * localB -> heombqu1u0 ) * 2.0 ; if ( localB -> a20bonkaqa >
1.0 ) { localB -> eshubtthwa = abopqckbgq . P_42 ; srUpdateBC ( localDW ->
g2u3gf3pir ) ; } else if ( localB -> a20bonkaqa < - 1.0 ) { localB ->
eshubtthwa = abopqckbgq . P_43 ; srUpdateBC ( localDW -> duxa0lwnyy ) ; }
else { localB -> eshubtthwa = localB -> a20bonkaqa ; srUpdateBC ( localDW ->
m4ktsb34zu ) ; } localB -> azkerb0ho4 = ( localB -> heombqu1u0 * localB ->
hk2rart0rc - localB -> ereoiizt2l * localB -> ftmibtqyuo ) * - 2.0 ; localB
-> brz40xbg1f = ( ( localB -> ereoiizt2l * localB -> ereoiizt2l - localB ->
ftmibtqyuo * localB -> ftmibtqyuo ) - localB -> heombqu1u0 * localB ->
heombqu1u0 ) + localB -> hk2rart0rc * localB -> hk2rart0rc ; localB ->
au2rrfanhd [ 0 ] = muDoubleScalarAtan2 ( localB -> azkerb0ho4 , localB ->
brz40xbg1f ) ; localB -> nuazwed1su = ( localB -> ftmibtqyuo * localB ->
heombqu1u0 - localB -> ereoiizt2l * localB -> hk2rart0rc ) * - 2.0 ; localB
-> mh4vd3iequ = ( ( localB -> ereoiizt2l * localB -> ereoiizt2l + localB ->
ftmibtqyuo * localB -> ftmibtqyuo ) - localB -> heombqu1u0 * localB ->
heombqu1u0 ) - localB -> hk2rart0rc * localB -> hk2rart0rc ; localB ->
au2rrfanhd [ 2 ] = muDoubleScalarAtan2 ( localB -> nuazwed1su , localB ->
mh4vd3iequ ) ; uTmp_idx_0 = localB -> eshubtthwa ; if ( uTmp_idx_0 > 1.0 ) {
uTmp_idx_0 = 1.0 ; } else { if ( uTmp_idx_0 < - 1.0 ) { uTmp_idx_0 = - 1.0 ;
} } localB -> au2rrfanhd [ 1 ] = muDoubleScalarAsin ( uTmp_idx_0 ) ;
uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 0 ] ;
uTmp_idx_2 = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ; uTmp = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_89 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 0 ] ;
uTmp_p = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ; uTmp_e = uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 0 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 0 ] ;
uTmp_i = uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_89 [ 1 ] ; uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1
; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 1 ]
; uTmp += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_89 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_89 [ 1 ] ; uTmp_p += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 1 ] ;
uTmp_e += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 1 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 1 ] ; uTmp_i += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 2 ] ;
uTmp_idx_2 += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ]
; uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ; uTmp += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_89 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_89 [ 2 ] ;
uTmp_p += uTmp_idx_0 * uTmp_idx_1 ; uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ;
uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ; uTmp_e += uTmp_idx_0 * uTmp_idx_1 ;
uTmp_idx_0 = abopqckbgq . P_88 [ 2 ] ; uTmp_idx_1 = abopqckbgq . P_88 [ 2 ] ;
uTmp_i += uTmp_idx_0 * uTmp_idx_1 ; localB -> evpd02e3dm = uTmp_idx_2 ;
localB -> fcx0mkqxz3 = uTmp ; localB -> cbctnmjpjt_mbvzarwird = uTmp_p ;
localB -> mg3e3f2azc_cl54gopm0x = localB -> fcx0mkqxz3 * localB ->
cbctnmjpjt_mbvzarwird ; localB -> ndpdx5s540_kkiq3xxxve = muDoubleScalarSqrt
( localB -> mg3e3f2azc_cl54gopm0x ) ; localB -> iz0aop4d5l_cxarnvbvui =
localB -> evpd02e3dm / localB -> ndpdx5s540_kkiq3xxxve ; localB ->
ifgliophkp_bhxxfovxdy = localB -> iz0aop4d5l_cxarnvbvui + abopqckbgq . P_90 ;
localB -> gc5pvsxnh5_pbm3vprmfu = muDoubleScalarAbs ( localB ->
ifgliophkp_bhxxfovxdy ) ; localB -> kxk4gev0hm_cv5hdgrwft = localB ->
iz0aop4d5l_cxarnvbvui + abopqckbgq . P_91 ; localB -> flpv12x3hz_fqdqrf4qbc =
muDoubleScalarAbs ( localB -> kxk4gev0hm_cv5hdgrwft ) ; localB ->
jgt3sawf5i_g2mlkqadfk = uTmp_e ; localB -> n4hlop4vyd_g1smspu5ke = uTmp_i ;
localB -> lns22e0fq0_merlcviukg = abopqckbgq . P_98 * abopqckbgq . P_88 [ 1 ]
; localB -> ekc1hhwybn_ju13rw2h0m = ( abopqckbgq . P_88 [ 0 ] > abopqckbgq .
P_88 [ 2 ] ) ; localB -> ht4c4tg5yn_nz4o0shxby = abopqckbgq . P_101 *
abopqckbgq . P_88 [ 2 ] ; if ( localB -> ekc1hhwybn_ju13rw2h0m ) { localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] = localB -> lns22e0fq0_merlcviukg ; localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] = abopqckbgq . P_88 [ 0 ] ; localB ->
cumsv5eupg_ppxrqq0gsf [ 2 ] = abopqckbgq . P_99 ; } else { localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] = abopqckbgq . P_100 ; localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] = localB -> ht4c4tg5yn_nz4o0shxby ; localB ->
cumsv5eupg_ppxrqq0gsf [ 2 ] = abopqckbgq . P_88 [ 1 ] ; } localB ->
pt5fpkxfmr_llw0u2ae0v = abopqckbgq . P_88 [ 0 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 1 ] ; localB -> mjnug2avlo_jwzvbuczlb = abopqckbgq .
P_88 [ 1 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 2 ] ; localB ->
cvagzwmrwp_dhmrxtyqop = abopqckbgq . P_88 [ 2 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] ; localB -> mzh1r2z3sd_guugdwf2m3 = abopqckbgq .
P_88 [ 0 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 2 ] ; localB ->
ffyr5yrwug_ldqodwenvz = abopqckbgq . P_88 [ 1 ] * localB ->
cumsv5eupg_ppxrqq0gsf [ 0 ] ; localB -> n5ko0l2kof_dhamdvybc1 = abopqckbgq .
P_88 [ 2 ] * localB -> cumsv5eupg_ppxrqq0gsf [ 1 ] ; localB ->
ora2iiobyk_dypejvacrn [ 0 ] = localB -> mjnug2avlo_jwzvbuczlb - localB ->
n5ko0l2kof_dhamdvybc1 ; localB -> ora2iiobyk_dypejvacrn [ 1 ] = localB ->
cvagzwmrwp_dhmrxtyqop - localB -> mzh1r2z3sd_guugdwf2m3 ; localB ->
ora2iiobyk_dypejvacrn [ 2 ] = localB -> pt5fpkxfmr_llw0u2ae0v - localB ->
ffyr5yrwug_ldqodwenvz ; localB -> oyqakhhhh5_lxo5edjg3c = abopqckbgq . P_88 [
0 ] * abopqckbgq . P_89 [ 1 ] ; localB -> b2rxz3rgtl_owjr1h1vqy = abopqckbgq
. P_88 [ 1 ] * abopqckbgq . P_89 [ 2 ] ; localB -> p102jhxxcb_bjbgfqrolh =
abopqckbgq . P_88 [ 2 ] * abopqckbgq . P_89 [ 0 ] ; localB ->
f3ocm4ks5w_nuebgmauvi = abopqckbgq . P_88 [ 0 ] * abopqckbgq . P_89 [ 2 ] ;
localB -> pxaqjqecwr_bsqwvugooi = abopqckbgq . P_88 [ 1 ] * abopqckbgq . P_89
[ 0 ] ; localB -> od40dmgrgr_lnjdk5wtww = abopqckbgq . P_88 [ 2 ] *
abopqckbgq . P_89 [ 1 ] ; localB -> bd2oascp1u_hv2ho1zopz [ 0 ] = localB ->
b2rxz3rgtl_owjr1h1vqy - localB -> od40dmgrgr_lnjdk5wtww ; localB ->
bd2oascp1u_hv2ho1zopz [ 1 ] = localB -> p102jhxxcb_bjbgfqrolh - localB ->
f3ocm4ks5w_nuebgmauvi ; localB -> bd2oascp1u_hv2ho1zopz [ 2 ] = localB ->
oyqakhhhh5_lxo5edjg3c - localB -> pxaqjqecwr_bsqwvugooi ; localB ->
pmqwpqkvqm_bnlywzniup = localB -> bd2oascp1u_hv2ho1zopz [ 0 ] * abopqckbgq .
P_88 [ 1 ] ; localB -> bj3tkkrh0a_dapv3jlyq5 = localB ->
bd2oascp1u_hv2ho1zopz [ 1 ] * abopqckbgq . P_88 [ 2 ] ; localB ->
hr5ydhms0u_ezqlmfzvpq = localB -> bd2oascp1u_hv2ho1zopz [ 2 ] * abopqckbgq .
P_88 [ 0 ] ; localB -> ixehtm4vge_bjvjhhzy4i = localB ->
bd2oascp1u_hv2ho1zopz [ 0 ] * abopqckbgq . P_88 [ 2 ] ; localB ->
iyjv2o0ipz_jzx3amusab = localB -> bd2oascp1u_hv2ho1zopz [ 1 ] * abopqckbgq .
P_88 [ 0 ] ; localB -> c4akrlc3rp_fdinthrxmb = localB ->
bd2oascp1u_hv2ho1zopz [ 2 ] * abopqckbgq . P_88 [ 1 ] ; localB ->
aszykea23e_al00mdgrv4 [ 0 ] = localB -> bj3tkkrh0a_dapv3jlyq5 - localB ->
c4akrlc3rp_fdinthrxmb ; localB -> aszykea23e_al00mdgrv4 [ 1 ] = localB ->
hr5ydhms0u_ezqlmfzvpq - localB -> ixehtm4vge_bjvjhhzy4i ; localB ->
aszykea23e_al00mdgrv4 [ 2 ] = localB -> pmqwpqkvqm_bnlywzniup - localB ->
iyjv2o0ipz_jzx3amusab ; } } break ; } } } localB -> ik2arsnaov . Roll =
localB -> au2rrfanhd [ 0 ] ; localB -> ik2arsnaov . Pitch = localB ->
au2rrfanhd [ 1 ] ; localB -> ik2arsnaov . Yaw = localB -> au2rrfanhd [ 2 ] ;
a5dz0igc5a -> AttitudeError = localB -> ik2arsnaov ; a5dz0igc5a -> NavMode =
* mdjemta0zc ; localB -> erphr2iktt [ 0 ] = rtP_gains . Kp * localB ->
au2rrfanhd [ 0 ] ; localB -> kszoo5bute [ 0 ] = localDW -> csgaj2fyjn [ 0 ] ;
localB -> ihjapaygkc [ 0 ] = rtP_gains . Kd * localB -> au2rrfanhd [ 0 ] ;
localB -> fqswxjg43p [ 0 ] = localB -> ihjapaygkc [ 0 ] ; localB ->
dnt2mjbmie [ 0 ] = localDW -> drbjvug1h2 [ 0 ] ; localB -> ab3sjio4vu [ 0 ] =
localB -> fqswxjg43p [ 0 ] - localB -> dnt2mjbmie [ 0 ] ; localB ->
jnvhsuowwq [ 0 ] = ( localB -> erphr2iktt [ 0 ] + localB -> kszoo5bute [ 0 ]
) + localB -> ab3sjio4vu [ 0 ] ; a5dz0igc5a -> TorqueCmds [ 0 ] = localB ->
jnvhsuowwq [ 0 ] ; localB -> n30vglgwom [ 0 ] = rtP_gains . Ki * localB ->
au2rrfanhd [ 0 ] ; localB -> erphr2iktt [ 1 ] = rtP_gains . Kp * localB ->
au2rrfanhd [ 1 ] ; localB -> kszoo5bute [ 1 ] = localDW -> csgaj2fyjn [ 1 ] ;
localB -> ihjapaygkc [ 1 ] = rtP_gains . Kd * localB -> au2rrfanhd [ 1 ] ;
localB -> fqswxjg43p [ 1 ] = localB -> ihjapaygkc [ 1 ] ; localB ->
dnt2mjbmie [ 1 ] = localDW -> drbjvug1h2 [ 1 ] ; localB -> ab3sjio4vu [ 1 ] =
localB -> fqswxjg43p [ 1 ] - localB -> dnt2mjbmie [ 1 ] ; localB ->
jnvhsuowwq [ 1 ] = ( localB -> erphr2iktt [ 1 ] + localB -> kszoo5bute [ 1 ]
) + localB -> ab3sjio4vu [ 1 ] ; a5dz0igc5a -> TorqueCmds [ 1 ] = localB ->
jnvhsuowwq [ 1 ] ; localB -> n30vglgwom [ 1 ] = rtP_gains . Ki * localB ->
au2rrfanhd [ 1 ] ; localB -> erphr2iktt [ 2 ] = rtP_gains . Kp * localB ->
au2rrfanhd [ 2 ] ; localB -> kszoo5bute [ 2 ] = localDW -> csgaj2fyjn [ 2 ] ;
localB -> ihjapaygkc [ 2 ] = rtP_gains . Kd * localB -> au2rrfanhd [ 2 ] ;
localB -> fqswxjg43p [ 2 ] = localB -> ihjapaygkc [ 2 ] ; localB ->
dnt2mjbmie [ 2 ] = localDW -> drbjvug1h2 [ 2 ] ; localB -> ab3sjio4vu [ 2 ] =
localB -> fqswxjg43p [ 2 ] - localB -> dnt2mjbmie [ 2 ] ; localB ->
jnvhsuowwq [ 2 ] = ( localB -> erphr2iktt [ 2 ] + localB -> kszoo5bute [ 2 ]
) + localB -> ab3sjio4vu [ 2 ] ; a5dz0igc5a -> TorqueCmds [ 2 ] = localB ->
jnvhsuowwq [ 2 ] ; localB -> n30vglgwom [ 2 ] = rtP_gains . Ki * localB ->
au2rrfanhd [ 2 ] ; } void asbCubeSatACSTID1 ( void ) { } void jj0if5albh (
ophodr0x0g * localB , due31ddxq5 * localDW ) { localDW -> csgaj2fyjn [ 0 ] +=
abopqckbgq . P_111 * localB -> n30vglgwom [ 0 ] ; localDW -> drbjvug1h2 [ 0 ]
= localB -> fqswxjg43p [ 0 ] ; localDW -> csgaj2fyjn [ 1 ] += abopqckbgq .
P_111 * localB -> n30vglgwom [ 1 ] ; localDW -> drbjvug1h2 [ 1 ] = localB ->
fqswxjg43p [ 1 ] ; localDW -> csgaj2fyjn [ 2 ] += abopqckbgq . P_111 * localB
-> n30vglgwom [ 2 ] ; localDW -> drbjvug1h2 [ 2 ] = localB -> fqswxjg43p [ 2
] ; } void jj0if5albhTID1 ( void ) { } void h1ucxuq2iv ( due31ddxq5 * localDW
, dgtzqiy1yy * const fprqfujhwe ) { localDW -> kohckdzmxe =
rt_SlioAccessorRelease ( 1 , 1 , localDW -> kohckdzmxe ) ; localDW ->
o0zwdfrkn4 = rt_SlioAccessorRelease ( 1 , 1 , localDW -> o0zwdfrkn4 ) ;
localDW -> hunrq3wyal = rt_SlioAccessorRelease ( 1 , 1 , localDW ->
hunrq3wyal ) ; localDW -> kb3srtthe1 = rt_SlioAccessorRelease ( 1 , 1 ,
localDW -> kb3srtthe1 ) ; if ( ! slIsRapidAcceleratorSimulating ( ) ) {
slmrRunPluginEvent ( fprqfujhwe -> _mdlRefSfcnS , "asbCubeSatACS" ,
"SIMSTATUS_TERMINATING_MODELREF_ACCEL_EVENT" ) ; } } void b4vxdooov4 (
SimStruct * _mdlRefSfcnS , int_T mdlref_TID0 , int_T mdlref_TID1 , dgtzqiy1yy
* const fprqfujhwe , ophodr0x0g * localB , due31ddxq5 * localDW , void *
sysRanPtr , int contextTid , rtwCAPI_ModelMappingInfo * rt_ParentMMI , const
char_T * rt_ChildPath , int_T rt_ChildMMIIdx , int_T rt_CSTATEIdx ) {
rt_InitInfAndNaN ( sizeof ( real_T ) ) ; ( void ) memset ( ( void * )
fprqfujhwe , 0 , sizeof ( dgtzqiy1yy ) ) ; fprqfujhwe -> Timing .
mdlref_GlobalTID [ 0 ] = mdlref_TID0 ; fprqfujhwe -> Timing .
mdlref_GlobalTID [ 1 ] = mdlref_TID1 ; fprqfujhwe -> _mdlRefSfcnS = (
_mdlRefSfcnS ) ; if ( ! slIsRapidAcceleratorSimulating ( ) ) {
slmrRunPluginEvent ( fprqfujhwe -> _mdlRefSfcnS , "asbCubeSatACS" ,
"START_OF_SIM_MODEL_MODELREF_ACCEL_EVENT" ) ; } ( void ) memset ( ( ( void *
) localB ) , 0 , sizeof ( ophodr0x0g ) ) ; { int32_T i ; for ( i = 0 ; i < 9
; i ++ ) { localB -> ajgwhha0vo [ i ] = 0.0 ; } for ( i = 0 ; i < 9 ; i ++ )
{ localB -> chwm3nx1de [ i ] = 0.0 ; } for ( i = 0 ; i < 9 ; i ++ ) { localB
-> dagsyifhtl [ i ] = 0.0 ; } for ( i = 0 ; i < 9 ; i ++ ) { localB ->
k4wxy4haes [ i ] = 0.0 ; } for ( i = 0 ; i < 9 ; i ++ ) { localB ->
bktac2t5qf [ i ] = 0.0 ; } for ( i = 0 ; i < 9 ; i ++ ) { localB ->
k0jasfxbw4 [ i ] = 0.0 ; } localB -> pqbbeprs4l =
asbCubeSatACS_rtZStatesOutBus ; localB -> o3usn5t4yn =
asbCubeSatACS_rtZEnvBus ; localB -> ik2arsnaov =
asbCubeSatACS_rtZAttitudeErrorBus ; localB -> erphr2iktt [ 0 ] = 0.0 ; localB
-> erphr2iktt [ 1 ] = 0.0 ; localB -> erphr2iktt [ 2 ] = 0.0 ; localB ->
kszoo5bute [ 0 ] = 0.0 ; localB -> kszoo5bute [ 1 ] = 0.0 ; localB ->
kszoo5bute [ 2 ] = 0.0 ; localB -> ihjapaygkc [ 0 ] = 0.0 ; localB ->
ihjapaygkc [ 1 ] = 0.0 ; localB -> ihjapaygkc [ 2 ] = 0.0 ; localB ->
fqswxjg43p [ 0 ] = 0.0 ; localB -> fqswxjg43p [ 1 ] = 0.0 ; localB ->
fqswxjg43p [ 2 ] = 0.0 ; localB -> dnt2mjbmie [ 0 ] = 0.0 ; localB ->
dnt2mjbmie [ 1 ] = 0.0 ; localB -> dnt2mjbmie [ 2 ] = 0.0 ; localB ->
ab3sjio4vu [ 0 ] = 0.0 ; localB -> ab3sjio4vu [ 1 ] = 0.0 ; localB ->
ab3sjio4vu [ 2 ] = 0.0 ; localB -> jnvhsuowwq [ 0 ] = 0.0 ; localB ->
jnvhsuowwq [ 1 ] = 0.0 ; localB -> jnvhsuowwq [ 2 ] = 0.0 ; localB ->
n30vglgwom [ 0 ] = 0.0 ; localB -> n30vglgwom [ 1 ] = 0.0 ; localB ->
n30vglgwom [ 2 ] = 0.0 ; localB -> j2m0wlkbaa = 0.0 ; localB -> au2rrfanhd [
0 ] = 0.0 ; localB -> au2rrfanhd [ 1 ] = 0.0 ; localB -> au2rrfanhd [ 2 ] =
0.0 ; localB -> cbctnmjpjt = 0.0 ; localB -> mg3e3f2azc = 0.0 ; localB ->
ndpdx5s540 = 0.0 ; localB -> iz0aop4d5l = 0.0 ; localB -> ifgliophkp = 0.0 ;
localB -> gc5pvsxnh5 = 0.0 ; localB -> kxk4gev0hm = 0.0 ; localB ->
flpv12x3hz = 0.0 ; localB -> kqsghauiwo = 0.0 ; localB -> j1f5fwnaed = 0.0 ;
localB -> fxzazlwsdi = 0.0 ; localB -> b4afctu403 = 0.0 ; localB ->
ccu14oeslu = 0.0 ; localB -> dag30omkol = 0.0 ; localB -> d3otc2dkvn = 0.0 ;
localB -> nwvrpnrwrq = 0.0 ; localB -> g4pmwv35ka = 0.0 ; localB ->
ai2d5pbcxj = 0.0 ; localB -> bacajx3vjq = 0.0 ; localB -> eljr2k52n1 = 0.0 ;
localB -> jgt3sawf5i = 0.0 ; localB -> iwp0fe0b2p = 0.0 ; localB ->
acn0p1ytar = 0.0 ; localB -> ajdngegxdt = 0.0 ; localB -> kwhrditlo0 = 0.0 ;
localB -> n4hlop4vyd = 0.0 ; localB -> lns22e0fq0 = 0.0 ; localB ->
em5tyjv3wn = 0.0 ; localB -> ekc1hhwybn = 0.0 ; localB -> fbpazf2nhl = 0.0 ;
localB -> ht4c4tg5yn = 0.0 ; localB -> cumsv5eupg = 0.0 ; localB ->
pt5fpkxfmr = 0.0 ; localB -> mjnug2avlo = 0.0 ; localB -> cvagzwmrwp = 0.0 ;
localB -> mzh1r2z3sd = 0.0 ; localB -> ffyr5yrwug = 0.0 ; localB ->
n5ko0l2kof = 0.0 ; localB -> ora2iiobyk = 0.0 ; localB -> p2w0gsyyk0 = 0.0 ;
localB -> dfbls3gsww = 0.0 ; localB -> konfpetli3 = 0.0 ; localB ->
beibupkzbc = 0.0 ; localB -> nm1sbrcjar = 0.0 ; localB -> pj22uqxmlg = 0.0 ;
localB -> oyqakhhhh5 = 0.0 ; localB -> b2rxz3rgtl = 0.0 ; localB ->
p102jhxxcb = 0.0 ; localB -> f3ocm4ks5w = 0.0 ; localB -> pxaqjqecwr = 0.0 ;
localB -> od40dmgrgr = 0.0 ; localB -> bd2oascp1u = 0.0 ; localB ->
pmqwpqkvqm = 0.0 ; localB -> bj3tkkrh0a = 0.0 ; localB -> hr5ydhms0u = 0.0 ;
localB -> ixehtm4vge = 0.0 ; localB -> iyjv2o0ipz = 0.0 ; localB ->
c4akrlc3rp = 0.0 ; localB -> aszykea23e = 0.0 ; localB -> nvm1bkzhha [ 0 ] =
0.0 ; localB -> nvm1bkzhha [ 1 ] = 0.0 ; localB -> nvm1bkzhha [ 2 ] = 0.0 ;
localB -> guelczybwj = 0.0 ; localB -> ikgaxo3xra = 0.0 ; localB ->
mzjr1zulm1 = 0.0 ; localB -> molcubxk5b = 0.0 ; localB -> f1yolepkbp = 0.0 ;
localB -> oybaiqh1fi = 0.0 ; localB -> d5c1hdgkme = 0.0 ; localB ->
abrkbekg0q = 0.0 ; localB -> ls3wualjmp = 0.0 ; localB -> dueg5i0ccg = 0.0 ;
localB -> c5scxxaqvg = 0.0 ; localB -> au0w0sv3dr = 0.0 ; localB ->
ox5j110tvr = 0.0 ; localB -> pxpqkep4mq = 0.0 ; localB -> hasnkfiqxl = 0.0 ;
localB -> ggphc33exl = 0.0 ; localB -> blzao4dsmh = 0.0 ; localB ->
iq55vxeh1l = 0.0 ; localB -> biws4makmr = 0.0 ; localB -> obcr5pwbuf = 0.0 ;
localB -> oo3fqjudg2 = 0.0 ; localB -> olv5x54e1p = 0.0 ; localB ->
dejgnbhefo = 0.0 ; localB -> eirkjm43dc = 0.0 ; localB -> fu4jw2c34k = 0.0 ;
localB -> ch1hygwrdo = 0.0 ; localB -> la1kgpsxk4 = 0.0 ; localB ->
kl4gw5wakp = 0.0 ; localB -> lwka1rfv43 = 0.0 ; localB -> pfce0y3esg = 0.0 ;
localB -> jogawdsu54 = 0.0 ; localB -> nvkbfph01n = 0.0 ; localB ->
bxftnuk1ra = 0.0 ; localB -> dpaljsdlwp = 0.0 ; localB -> kxzmvx1fdb = 0.0 ;
localB -> bua0yizyq0 = 0.0 ; localB -> bsheudhisd = 0.0 ; localB ->
ac4ys3c5bf = 0.0 ; localB -> anfhdoinwk = 0.0 ; localB -> p5pv4ip1oa = 0.0 ;
localB -> jsegmsryjn = 0.0 ; localB -> l4hw4jxkfm = 0.0 ; localB ->
pd4rcd2jtd = 0.0 ; localB -> kzmska5lpd = 0.0 ; localB -> f2i5ftoz4x = 0.0 ;
localB -> i4krmgj1v0 = 0.0 ; localB -> l3phx3jow5 = 0.0 ; localB ->
j4wv4xgmxb = 0.0 ; localB -> lccltopkqw = 0.0 ; localB -> ccixsnw2fc = 0.0 ;
localB -> nbd1b33zwn = 0.0 ; localB -> h3ucgcuyfi = 0.0 ; localB ->
liwqkar004 = 0.0 ; localB -> hxjifcsng0 = 0.0 ; localB -> kyojjly2tl = 0.0 ;
localB -> e0c4e11rni = 0.0 ; localB -> ceyvjmztqi = 0.0 ; localB ->
ahssnuifwd = 0.0 ; localB -> i1c2wqtoet [ 0 ] = 0.0 ; localB -> i1c2wqtoet [
1 ] = 0.0 ; localB -> i1c2wqtoet [ 2 ] = 0.0 ; localB -> epzgchngwa = 0.0 ;
localB -> hzd2xuzbby = 0.0 ; localB -> n53d2qrt4k = 0.0 ; localB ->
bcfpn1davb = 0.0 ; localB -> aggpapabvx = 0.0 ; localB -> evm4x5kbd5 = 0.0 ;
localB -> hrahqncl30 = 0.0 ; localB -> mj1mf02dto = 0.0 ; localB ->
g1bpg51r2b = 0.0 ; localB -> gn2snc434b = 0.0 ; localB -> lgoqlnjph1 = 0.0 ;
localB -> n0mgunt0gp = 0.0 ; localB -> lnpax3gygz = 0.0 ; localB ->
c2fzwxqnfq = 0.0 ; localB -> kzacud3cdb = 0.0 ; localB -> gnxcy1z2pw = 0.0 ;
localB -> prrbq1ibfj = 0.0 ; localB -> mleffpx23l = 0.0 ; localB ->
lxtq0skkkc = 0.0 ; localB -> j1urynvqpr = 0.0 ; localB -> ms3t1ooexr = 0.0 ;
localB -> fjxrzbc1wq = 0.0 ; localB -> nlgc10ypr3 = 0.0 ; localB ->
fe2t3cc0r5 = 0.0 ; localB -> o25zq55nd1 = 0.0 ; localB -> oxgl25rk0e = 0.0 ;
localB -> llcwq3deaw = 0.0 ; localB -> l0sk34oyjk [ 0 ] = 0.0 ; localB ->
l0sk34oyjk [ 1 ] = 0.0 ; localB -> l0sk34oyjk [ 2 ] = 0.0 ; localB ->
hm3jswgty5 = 0.0 ; localB -> h0cudg4xao = 0.0 ; localB -> iryn1y1tz0 = 0.0 ;
localB -> ogx402uljh = 0.0 ; localB -> n1kdmevc3o = 0.0 ; localB ->
cma1q5rvnp = 0.0 ; localB -> acvi24mxxj = 0.0 ; localB -> agpr5acmdg = 0.0 ;
localB -> fyfstsl4vz = 0.0 ; localB -> dqfgbeikbs = 0.0 ; localB ->
lsfoxxp1mb = 0.0 ; localB -> a4vuvqsiae = 0.0 ; localB -> jjbrykxxr5 = 0.0 ;
localB -> hpn0pmdgeb = 0.0 ; localB -> cygaprby0g = 0.0 ; localB ->
cvagkgqvnq = 0.0 ; localB -> ejz1f24vaz = 0.0 ; localB -> c4k4gusohk = 0.0 ;
localB -> cxpkjm1fp1 = 0.0 ; localB -> gjsc13nz00 = 0.0 ; localB ->
hv3hhvwq5z = 0.0 ; localB -> cxezcglr2u = 0.0 ; localB -> hvxkj5tczq = 0.0 ;
localB -> hz1fhgvsxs = 0.0 ; localB -> pbd5c4hpid = 0.0 ; localB ->
cqu3ifqajp = 0.0 ; localB -> oaf0d0xk5r = 0.0 ; localB -> alouqa1esd = 0.0 ;
localB -> bqdrik3lup = 0.0 ; localB -> hkefk0wxh3 = 0.0 ; localB ->
ctw3yr0skv = 0.0 ; localB -> gvkbmfjqfq = 0.0 ; localB -> l51omrq4ou = 0.0 ;
localB -> dgjtt0lrfo = 0.0 ; localB -> ob3gp4h5yo = 0.0 ; localB ->
pxroeqo2od = 0.0 ; localB -> f435yutsmz = 0.0 ; localB -> jb4rx2lt3q = 0.0 ;
localB -> hapbtyys5t = 0.0 ; localB -> kg4t13hjnw = 0.0 ; localB ->
nr40yg30xf = 0.0 ; localB -> eawut1kvet = 0.0 ; localB -> hngf3znxne = 0.0 ;
localB -> ffqosqpbpj = 0.0 ; localB -> dt4ff0b0zt = 0.0 ; localB ->
bxaehnjet4 = 0.0 ; localB -> ktnhluxnk0 = 0.0 ; localB -> p0remiojmm = 0.0 ;
localB -> lfvmgptwgd = 0.0 ; localB -> hs115ke0aw = 0.0 ; localB ->
fpbr5y03ni = 0.0 ; localB -> djvkh5qqbi = 0.0 ; localB -> pgotrhwbz1 = 0.0 ;
localB -> lje3id5dal = 0.0 ; localB -> jp55x0bean = 0.0 ; localB ->
o40234qo2z = 0.0 ; localB -> d1yt1kccfq = 0.0 ; localB -> if1l5c21sl = 0.0 ;
localB -> iojvvnoqdf = 0.0 ; localB -> pfg5b3tisa = 0.0 ; localB ->
kldntd3ung = 0.0 ; localB -> fbzi1vq3s2 = 0.0 ; localB -> jtgkz30wjs = 0.0 ;
localB -> hllpipoydi = 0.0 ; localB -> dmo030rxdj = 0.0 ; localB ->
f4nd0as0dr = 0.0 ; localB -> keianq5spu = 0.0 ; localB -> bz3je0mzvu [ 0 ] =
0.0 ; localB -> bz3je0mzvu [ 1 ] = 0.0 ; localB -> bz3je0mzvu [ 2 ] = 0.0 ;
localB -> fk04xhyhym = 0.0 ; localB -> hsvisk1j2i = 0.0 ; localB ->
fc1p4f35rf = 0.0 ; localB -> kfgxdivg4y = 0.0 ; localB -> fpxljpfgk1 = 0.0 ;
localB -> ingy5zk12p = 0.0 ; localB -> i2mqwcm3co [ 0 ] = 0.0 ; localB ->
i2mqwcm3co [ 1 ] = 0.0 ; localB -> i2mqwcm3co [ 2 ] = 0.0 ; localB ->
mi55wqspcv = 0.0 ; localB -> egmrha0z1i = 0.0 ; localB -> c1eo4yjwen = 0.0 ;
localB -> azofm4b11s = 0.0 ; localB -> mur5nzyveh = 0.0 ; localB ->
eetdsa0qym = 0.0 ; localB -> gc0ixjj2ab [ 0 ] = 0.0 ; localB -> gc0ixjj2ab [
1 ] = 0.0 ; localB -> gc0ixjj2ab [ 2 ] = 0.0 ; localB -> jlnpcdykrv = 0.0 ;
localB -> dz5uukec4x = 0.0 ; localB -> i0b4wukphh = 0.0 ; localB ->
mmek1dewwi = 0.0 ; localB -> ebyywhggct = 0.0 ; localB -> kwx0wxnmyn = 0.0 ;
localB -> d4cf5k0dbg = 0.0 ; localB -> i5oyii5af2 = 0.0 ; localB ->
dvodssx054 = 0.0 ; localB -> acgzb20yrz = 0.0 ; localB -> cbhhv35xdp = 0.0 ;
localB -> pd3lfqr311 = 0.0 ; localB -> jkewou5mx0 = 0.0 ; localB ->
ee4jenrrc3 = 0.0 ; localB -> bjj5nk5qjw = 0.0 ; localB -> b1xbacdit1 = 0.0 ;
localB -> iyjnvhoa05 = 0.0 ; localB -> bnefz23hzt = 0.0 ; localB ->
dfscogdpyy = 0.0 ; localB -> jkiegt4yox = 0.0 ; localB -> b2viyxdpgq = 0.0 ;
localB -> ibf3oqh104 = 0.0 ; localB -> bozzjjqiea = 0.0 ; localB ->
onercwkrg0 = 0.0 ; localB -> mrfxiyzlzf = 0.0 ; localB -> cbcmziqkjc = 0.0 ;
localB -> gtbuvz5jks = 0.0 ; localB -> jf0k5sr3v3 = 0.0 ; localB ->
cniux5e0uy = 0.0 ; localB -> m0iqaydsks = 0.0 ; localB -> prus5ezwp0 = 0.0 ;
localB -> ducz1ftqqr = 0.0 ; localB -> osmvkieqw4 = 0.0 ; localB ->
c51h5m5skd = 0.0 ; localB -> kbxe0fashs = 0.0 ; localB -> g5do2jwfkj = 0.0 ;
localB -> lb34les3au = 0.0 ; localB -> ne2md2xcuw = 0.0 ; localB ->
mtniqmtukt = 0.0 ; localB -> lmts1r5zye = 0.0 ; localB -> o3sxjyhlgc = 0.0 ;
localB -> nvstybkzua = 0.0 ; localB -> f1qtlf4p41 = 0.0 ; localB ->
astrxw02fg = 0.0 ; localB -> n0xf3mvz3c = 0.0 ; localB -> hgyu3jv2in = 0.0 ;
localB -> lwguafoevi = 0.0 ; localB -> nms5badcpo = 0.0 ; localB ->
husveukrkc = 0.0 ; localB -> kzdd51l3ru = 0.0 ; localB -> gg43h4jwy1 = 0.0 ;
localB -> d0qq1v1l0i = 0.0 ; localB -> idztmqu2ce = 0.0 ; localB ->
ekaxcijnoo = 0.0 ; localB -> n0ofdn3hx5 = 0.0 ; localB -> fed3jox541 = 0.0 ;
localB -> aqoi53uxeh = 0.0 ; localB -> npos3sjht3 = 0.0 ; localB ->
i1wahxaxry [ 0 ] = 0.0 ; localB -> i1wahxaxry [ 1 ] = 0.0 ; localB ->
i1wahxaxry [ 2 ] = 0.0 ; localB -> fa41n5uhqw = 0.0 ; localB -> m5eo5oo3rp =
0.0 ; localB -> ljnxdbdhpm = 0.0 ; localB -> cdr1iz2145 = 0.0 ; localB ->
ekklepchwn = 0.0 ; localB -> blmjlkippm = 0.0 ; localB -> irfzeyrypc = 0.0 ;
localB -> cndroifqmd = 0.0 ; localB -> cgzkwpgwua = 0.0 ; localB ->
mxpmgjnupx = 0.0 ; localB -> fajiybfjg4 = 0.0 ; localB -> cgmvvubtg2 [ 0 ] =
0.0 ; localB -> cgmvvubtg2 [ 1 ] = 0.0 ; localB -> cgmvvubtg2 [ 2 ] = 0.0 ;
localB -> cgmvvubtg2 [ 3 ] = 0.0 ; localB -> mzi5hbsbtw = 0.0 ; localB ->
n3fzucbfu3 = 0.0 ; localB -> hsreckybty = 0.0 ; localB -> lpy1gf3es2 = 0.0 ;
localB -> clbvq0ey5g = 0.0 ; localB -> gyaq1qidxj = 0.0 ; localB ->
ereoiizt2l = 0.0 ; localB -> ftmibtqyuo = 0.0 ; localB -> heombqu1u0 = 0.0 ;
localB -> hk2rart0rc = 0.0 ; localB -> a20bonkaqa = 0.0 ; localB ->
eshubtthwa = 0.0 ; localB -> azkerb0ho4 = 0.0 ; localB -> brz40xbg1f = 0.0 ;
localB -> nuazwed1su = 0.0 ; localB -> mh4vd3iequ = 0.0 ; localB ->
evpd02e3dm = 0.0 ; localB -> fcx0mkqxz3 = 0.0 ; localB ->
cbctnmjpjt_mbvzarwird = 0.0 ; localB -> mg3e3f2azc_cl54gopm0x = 0.0 ; localB
-> ndpdx5s540_kkiq3xxxve = 0.0 ; localB -> iz0aop4d5l_cxarnvbvui = 0.0 ;
localB -> ifgliophkp_bhxxfovxdy = 0.0 ; localB -> gc5pvsxnh5_pbm3vprmfu = 0.0
; localB -> kxk4gev0hm_cv5hdgrwft = 0.0 ; localB -> flpv12x3hz_fqdqrf4qbc =
0.0 ; localB -> jgt3sawf5i_g2mlkqadfk = 0.0 ; localB -> n4hlop4vyd_g1smspu5ke
= 0.0 ; localB -> lns22e0fq0_merlcviukg = 0.0 ; localB ->
ht4c4tg5yn_nz4o0shxby = 0.0 ; localB -> cumsv5eupg_ppxrqq0gsf [ 0 ] = 0.0 ;
localB -> cumsv5eupg_ppxrqq0gsf [ 1 ] = 0.0 ; localB -> cumsv5eupg_ppxrqq0gsf
[ 2 ] = 0.0 ; localB -> pt5fpkxfmr_llw0u2ae0v = 0.0 ; localB ->
mjnug2avlo_jwzvbuczlb = 0.0 ; localB -> cvagzwmrwp_dhmrxtyqop = 0.0 ; localB
-> mzh1r2z3sd_guugdwf2m3 = 0.0 ; localB -> ffyr5yrwug_ldqodwenvz = 0.0 ;
localB -> n5ko0l2kof_dhamdvybc1 = 0.0 ; localB -> ora2iiobyk_dypejvacrn [ 0 ]
= 0.0 ; localB -> ora2iiobyk_dypejvacrn [ 1 ] = 0.0 ; localB ->
ora2iiobyk_dypejvacrn [ 2 ] = 0.0 ; localB -> oyqakhhhh5_lxo5edjg3c = 0.0 ;
localB -> b2rxz3rgtl_owjr1h1vqy = 0.0 ; localB -> p102jhxxcb_bjbgfqrolh = 0.0
; localB -> f3ocm4ks5w_nuebgmauvi = 0.0 ; localB -> pxaqjqecwr_bsqwvugooi =
0.0 ; localB -> od40dmgrgr_lnjdk5wtww = 0.0 ; localB -> bd2oascp1u_hv2ho1zopz
[ 0 ] = 0.0 ; localB -> bd2oascp1u_hv2ho1zopz [ 1 ] = 0.0 ; localB ->
bd2oascp1u_hv2ho1zopz [ 2 ] = 0.0 ; localB -> pmqwpqkvqm_bnlywzniup = 0.0 ;
localB -> bj3tkkrh0a_dapv3jlyq5 = 0.0 ; localB -> hr5ydhms0u_ezqlmfzvpq = 0.0
; localB -> ixehtm4vge_bjvjhhzy4i = 0.0 ; localB -> iyjv2o0ipz_jzx3amusab =
0.0 ; localB -> c4akrlc3rp_fdinthrxmb = 0.0 ; localB -> aszykea23e_al00mdgrv4
[ 0 ] = 0.0 ; localB -> aszykea23e_al00mdgrv4 [ 1 ] = 0.0 ; localB ->
aszykea23e_al00mdgrv4 [ 2 ] = 0.0 ; localB -> pcytwak5us = 0.0 ; localB ->
ka3d3xflg3 = 0.0 ; localB -> m2clsjv5d5 = 0.0 ; localB -> co34fat13s = 0.0 ;
localB -> nt5g05m4jd = 0.0 ; localB -> kasnsg1qpq = 0.0 ; localB ->
jrpyoilbzn [ 0 ] = 0.0 ; localB -> jrpyoilbzn [ 1 ] = 0.0 ; localB ->
jrpyoilbzn [ 2 ] = 0.0 ; localB -> bytzprrljz [ 0 ] = 0.0 ; localB ->
bytzprrljz [ 1 ] = 0.0 ; localB -> bytzprrljz [ 2 ] = 0.0 ; localB ->
eemyz2lbem = 0.0 ; localB -> afknuswabb = 0.0 ; localB -> a3ma3vfah1 = 0.0 ;
localB -> kptiyy5d4o = 0.0 ; localB -> fecanjxkao = 0.0 ; localB ->
c1bxkm552n = 0.0 ; localB -> kbvd3ho5nq = 0.0 ; localB -> b5i3yd1o3b = 0.0 ;
localB -> gxi1kloqmc = 0.0 ; localB -> adqxt3js2y = 0.0 ; localB ->
bbx5jzu4ti = 0.0 ; localB -> mgh2qpgh4o = 0.0 ; localB -> kqhxx3ajaq = 0.0 ;
localB -> lqyznbr2nm = 0.0 ; localB -> lz51pfwwvi = 0.0 ; localB ->
alliolhtu0 = 0.0 ; localB -> bvvblfta2g = 0.0 ; localB -> lhwmwnqfzy = 0.0 ;
localB -> luupn5egfo = 0.0 ; localB -> p2dzm2i04q = 0.0 ; localB ->
myxsajr3zd = 0.0 ; localB -> h2ozld1klp = 0.0 ; localB -> ozfh2jstow = 0.0 ;
localB -> ofeb0zvxvt = 0.0 ; localB -> fau0vxu422 = 0.0 ; localB ->
gwuh0fzkuw = 0.0 ; localB -> fgwa5kiyko = 0.0 ; localB -> et342tdyr0 = 0.0 ;
localB -> h3c2z5ekqq = 0.0 ; localB -> ib12o3y2pc = 0.0 ; localB ->
fo54yjdwr4 = 0.0 ; localB -> cszfvcavwy = 0.0 ; localB -> pqk3n1enak = 0.0 ;
localB -> e1qjvbzqml = 0.0 ; localB -> nrfgqfok0m = 0.0 ; localB ->
lhxxbcwvtp = 0.0 ; localB -> jxbvbdfq05 = 0.0 ; localB -> kny5bwlvsc = 0.0 ;
localB -> kzzs35npw0 = 0.0 ; localB -> pacq3bl0pk = 0.0 ; localB ->
gqndlgd2aw = 0.0 ; localB -> kfpmcsjlkg = 0.0 ; localB -> lgcr4li0u4 [ 0 ] =
0.0 ; localB -> lgcr4li0u4 [ 1 ] = 0.0 ; localB -> lgcr4li0u4 [ 2 ] = 0.0 ;
localB -> oqknduhq20 [ 0 ] = 0.0 ; localB -> oqknduhq20 [ 1 ] = 0.0 ; localB
-> oqknduhq20 [ 2 ] = 0.0 ; localB -> ly0r2hmvg5 = 0.0 ; localB -> fqaxk4du2t
= 0.0 ; localB -> bjw2c35plc = 0.0 ; localB -> mj1bfatefq = 0.0 ; localB ->
ld2n3r4eg2 = 0.0 ; localB -> out4hfjoax = 0.0 ; localB -> bqueynddhy [ 0 ] =
0.0 ; localB -> bqueynddhy [ 1 ] = 0.0 ; localB -> bqueynddhy [ 2 ] = 0.0 ;
localB -> mkpyxx5a2k = 0.0 ; localB -> cgkghyrjvj = 0.0 ; localB ->
ptmfsrn2ct = 0.0 ; localB -> iac52adxma = 0.0 ; localB -> es2wmzeevd = 0.0 ;
localB -> l3fkd1dx2n = 0.0 ; localB -> b410ppllxu = 0.0 ; localB ->
hngjfbfpdn = 0.0 ; localB -> d2szlnfpsw [ 0 ] = 0.0 ; localB -> d2szlnfpsw [
1 ] = 0.0 ; localB -> d2szlnfpsw [ 2 ] = 0.0 ; localB -> hcc0twsvkr [ 0 ] =
0.0 ; localB -> hcc0twsvkr [ 1 ] = 0.0 ; localB -> hcc0twsvkr [ 2 ] = 0.0 ;
localB -> bx05lnxw1s = 0.0 ; localB -> gjxnzadavs = 0.0 ; localB ->
auvpppbez4 = 0.0 ; localB -> az1ozuqqa3 = 0.0 ; localB -> hfn2gtiwqb = 0.0 ;
localB -> oghscabnwv = 0.0 ; localB -> ett0ysz14h [ 0 ] = 0.0 ; localB ->
ett0ysz14h [ 1 ] = 0.0 ; localB -> ett0ysz14h [ 2 ] = 0.0 ; localB ->
ndqopehfku = 0.0 ; localB -> pmzwdqbdhc = 0.0 ; localB -> evui23vo1t = 0.0 ;
localB -> p1j0vveypv = 0.0 ; localB -> mag0q3tmvq = 0.0 ; localB ->
bdbm0zeqye = 0.0 ; localB -> dxao5mqflq = 0.0 ; localB -> as5s104yv3 = 0.0 ;
localB -> ancb5wsbic = 0.0 ; localB -> li3s2bpkyl = 0.0 ; localB ->
kisoy4t2cf [ 0 ] = 0.0 ; localB -> kisoy4t2cf [ 1 ] = 0.0 ; localB ->
kisoy4t2cf [ 2 ] = 0.0 ; localB -> kisoy4t2cf [ 3 ] = 0.0 ; localB ->
othf40niz3 = 0.0 ; localB -> g42ibolh2u = 0.0 ; localB -> eijfujey1y = 0.0 ;
localB -> h1pmvsmynu = 0.0 ; localB -> kv1sbp011m = 0.0 ; localB ->
pc25fybu4k = 0.0 ; localB -> f4tqdb5o3i = 0.0 ; localB -> p4i01phfgx = 0.0 ;
localB -> aqrr43mbpr = 0.0 ; localB -> gklfi1kdl5 = 0.0 ; localB ->
auuomm3be3 = 0.0 ; localB -> irobrjzkwn = 0.0 ; localB -> nf0jivsnr0 = 0.0 ;
localB -> cavz4oxykx = 0.0 ; localB -> oyvh2jd13w = 0.0 ; localB ->
nnrzflsyha = 0.0 ; localB -> geedq5yudt = 0.0 ; localB -> bz2dqftj5o = 0.0 ;
localB -> mkyhn0hn34 = 0.0 ; localB -> pt23uwsxrx = 0.0 ; localB ->
dzskq5ups0 = 0.0 ; localB -> efvpi3kpft = 0.0 ; localB -> enxkcnmlol = 0.0 ;
localB -> ghszcpbmp2 = 0.0 ; localB -> ngemudnybi = 0.0 ; localB ->
f2pgiglrfx = 0.0 ; localB -> dotnnrn0mt = 0.0 ; localB -> jpwlfp1qfr = 0.0 ;
localB -> l5eqtelpjy = 0.0 ; localB -> nbzu4nl53q = 0.0 ; localB ->
fmilqdljui = 0.0 ; localB -> mjbiv50z2q = 0.0 ; localB -> gwprbrbwhf = 0.0 ;
localB -> pwaj3lur5c = 0.0 ; localB -> g2nimep1p5 = 0.0 ; localB ->
fjpeg4isms = 0.0 ; localB -> msga0mx05j = 0.0 ; localB -> kuprjkwqeb = 0.0 ;
localB -> hnom3fn0oe = 0.0 ; localB -> pod1oyk1bu = 0.0 ; localB ->
kdhrhevjum = 0.0 ; localB -> eqqfdw0pcv = 0.0 ; localB -> gew4afwhiu = 0.0 ;
localB -> byzzmz3jix = 0.0 ; localB -> god220qgbo = 0.0 ; localB ->
aoa1pcyyzq = 0.0 ; localB -> m3z4w45but = 0.0 ; localB -> kqq0bxks3j = 0.0 ;
localB -> h0f0eu2pdu [ 0 ] = 0.0 ; localB -> h0f0eu2pdu [ 1 ] = 0.0 ; localB
-> h0f0eu2pdu [ 2 ] = 0.0 ; localB -> jeuezbh53e = 0.0 ; localB -> hbmlrd3li0
= 0.0 ; localB -> pzkyhpk2mi = 0.0 ; localB -> f5xk34wflu = 0.0 ; localB ->
bilgg10n54 = 0.0 ; localB -> d3tyu2leur = 0.0 ; localB -> c1i1qspkb3 = 0.0 ;
localB -> llfqgps3ze = 0.0 ; localB -> c4r13qkgfk = 0.0 ; localB ->
miz1cf522w = 0.0 ; localB -> ma31qnyf55 = 0.0 ; localB -> imkid1zpxb [ 0 ] =
0.0 ; localB -> imkid1zpxb [ 1 ] = 0.0 ; localB -> cd1v4qteg4 = 0.0 ; localB
-> fbn4dwnxru = 0.0 ; localB -> lxirnp32u5 = 0.0 ; localB -> fetanale5g = 0.0
; localB -> dmbfizzhoy [ 0 ] = 0.0 ; localB -> dmbfizzhoy [ 1 ] = 0.0 ;
localB -> dmbfizzhoy [ 2 ] = 0.0 ; localB -> cgndjbnbcm = 0.0 ; localB ->
mxuvygxdg1 = 0.0 ; localB -> hcxxucabac = 0.0 ; localB -> n25v12lx5j = 0.0 ;
localB -> jdudwnuxtj = 0.0 ; localB -> lspyhlp2gk [ 0 ] = 0.0 ; localB ->
lspyhlp2gk [ 1 ] = 0.0 ; localB -> nr0mlbxf2n = 0.0 ; localB -> o55jssatf5 [
0 ] = 0.0 ; localB -> o55jssatf5 [ 1 ] = 0.0 ; localB -> o55jssatf5 [ 2 ] =
0.0 ; localB -> pi5rmuvids = 0.0 ; localB -> ityqvceuan = 0.0 ; localB ->
da0yfcpj3q = 0.0 ; localB -> cujzh0ksdj = 0.0 ; localB -> miijbvu3or = 0.0 ;
localB -> ei23othzol [ 0 ] = 0.0 ; localB -> ei23othzol [ 1 ] = 0.0 ; localB
-> a5gqfzjt2h = 0.0 ; localB -> abdrly3jp0 [ 0 ] = 0.0 ; localB -> abdrly3jp0
[ 1 ] = 0.0 ; localB -> abdrly3jp0 [ 2 ] = 0.0 ; localB -> dpx2qbz3y1 = 0.0 ;
localB -> aupjmejpoz = 0.0 ; localB -> nlbqn3ve2x = 0.0 ; localB ->
jjzn0i4cnb = 0.0 ; localB -> lbecua1lw5 = 0.0 ; localB -> kqs21bqzfd = 0.0 ;
} ( void ) memset ( ( void * ) localDW , 0 , sizeof ( due31ddxq5 ) ) ;
localDW -> csgaj2fyjn [ 0 ] = 0.0 ; localDW -> csgaj2fyjn [ 1 ] = 0.0 ;
localDW -> csgaj2fyjn [ 2 ] = 0.0 ; localDW -> drbjvug1h2 [ 0 ] = 0.0 ;
localDW -> drbjvug1h2 [ 1 ] = 0.0 ; localDW -> drbjvug1h2 [ 2 ] = 0.0 ;
asbCubeSatACS_InitializeDataMapInfo ( fprqfujhwe , localDW , sysRanPtr ,
contextTid ) ; if ( ( rt_ParentMMI != ( NULL ) ) && ( rt_ChildPath != ( NULL
) ) ) { rtwCAPI_SetChildMMI ( * rt_ParentMMI , rt_ChildMMIIdx , & (
fprqfujhwe -> DataMapInfo . mmi ) ) ; rtwCAPI_SetPath ( fprqfujhwe ->
DataMapInfo . mmi , rt_ChildPath ) ; rtwCAPI_MMISetContStateStartIndex (
fprqfujhwe -> DataMapInfo . mmi , rt_CSTATEIdx ) ; } } void
mr_asbCubeSatACS_MdlInfoRegFcn ( SimStruct * mdlRefSfcnS , char_T * modelName
, int_T * retVal ) { * retVal = 0 ; { boolean_T regSubmodelsMdlinfo = false ;
ssGetRegSubmodelsMdlinfo ( mdlRefSfcnS , & regSubmodelsMdlinfo ) ; if (
regSubmodelsMdlinfo ) { } } * retVal = 0 ; ssRegModelRefMdlInfo ( mdlRefSfcnS
, modelName , rtMdlInfo_asbCubeSatACS , 66 ) ; * retVal = 1 ; } static void
mr_asbCubeSatACS_cacheDataAsMxArray ( mxArray * destArray , mwIndex i , int j
, const void * srcData , size_t numBytes ) ; static void
mr_asbCubeSatACS_cacheDataAsMxArray ( mxArray * destArray , mwIndex i , int j
, const void * srcData , size_t numBytes ) { mxArray * newArray =
mxCreateUninitNumericMatrix ( ( size_t ) 1 , numBytes , mxUINT8_CLASS ,
mxREAL ) ; memcpy ( ( uint8_T * ) mxGetData ( newArray ) , ( const uint8_T *
) srcData , numBytes ) ; mxSetFieldByNumber ( destArray , i , j , newArray )
; } static void mr_asbCubeSatACS_restoreDataFromMxArray ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , size_t numBytes ) ; static
void mr_asbCubeSatACS_restoreDataFromMxArray ( void * destData , const
mxArray * srcArray , mwIndex i , int j , size_t numBytes ) { memcpy ( (
uint8_T * ) destData , ( const uint8_T * ) mxGetData ( mxGetFieldByNumber (
srcArray , i , j ) ) , numBytes ) ; } static void
mr_asbCubeSatACS_cacheBitFieldToMxArray ( mxArray * destArray , mwIndex i ,
int j , uint_T bitVal ) ; static void mr_asbCubeSatACS_cacheBitFieldToMxArray
( mxArray * destArray , mwIndex i , int j , uint_T bitVal ) {
mxSetFieldByNumber ( destArray , i , j , mxCreateDoubleScalar ( ( double )
bitVal ) ) ; } static uint_T mr_asbCubeSatACS_extractBitFieldFromMxArray (
const mxArray * srcArray , mwIndex i , int j , uint_T numBits ) ; static
uint_T mr_asbCubeSatACS_extractBitFieldFromMxArray ( const mxArray * srcArray
, mwIndex i , int j , uint_T numBits ) { const uint_T varVal = ( uint_T )
mxGetScalar ( mxGetFieldByNumber ( srcArray , i , j ) ) ; return varVal & ( (
1u << numBits ) - 1u ) ; } static void
mr_asbCubeSatACS_cacheDataToMxArrayWithOffset ( mxArray * destArray , mwIndex
i , int j , mwIndex offset , const void * srcData , size_t numBytes ) ;
static void mr_asbCubeSatACS_cacheDataToMxArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , const void * srcData ,
size_t numBytes ) { uint8_T * varData = ( uint8_T * ) mxGetData (
mxGetFieldByNumber ( destArray , i , j ) ) ; memcpy ( ( uint8_T * ) & varData
[ offset * numBytes ] , ( const uint8_T * ) srcData , numBytes ) ; } static
void mr_asbCubeSatACS_restoreDataFromMxArrayWithOffset ( void * destData ,
const mxArray * srcArray , mwIndex i , int j , mwIndex offset , size_t
numBytes ) ; static void mr_asbCubeSatACS_restoreDataFromMxArrayWithOffset (
void * destData , const mxArray * srcArray , mwIndex i , int j , mwIndex
offset , size_t numBytes ) { const uint8_T * varData = ( const uint8_T * )
mxGetData ( mxGetFieldByNumber ( srcArray , i , j ) ) ; memcpy ( ( uint8_T *
) destData , ( const uint8_T * ) & varData [ offset * numBytes ] , numBytes )
; } static void mr_asbCubeSatACS_cacheBitFieldToCellArrayWithOffset ( mxArray
* destArray , mwIndex i , int j , mwIndex offset , uint_T fieldVal ) ; static
void mr_asbCubeSatACS_cacheBitFieldToCellArrayWithOffset ( mxArray *
destArray , mwIndex i , int j , mwIndex offset , uint_T fieldVal ) {
mxSetCell ( mxGetFieldByNumber ( destArray , i , j ) , offset ,
mxCreateDoubleScalar ( ( double ) fieldVal ) ) ; } static uint_T
mr_asbCubeSatACS_extractBitFieldFromCellArrayWithOffset ( const mxArray *
srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) ; static
uint_T mr_asbCubeSatACS_extractBitFieldFromCellArrayWithOffset ( const
mxArray * srcArray , mwIndex i , int j , mwIndex offset , uint_T numBits ) {
const uint_T fieldVal = ( uint_T ) mxGetScalar ( mxGetCell (
mxGetFieldByNumber ( srcArray , i , j ) , offset ) ) ; return fieldVal & ( (
1u << numBits ) - 1u ) ; } mxArray * mr_asbCubeSatACS_GetDWork ( const
obi5idc0yut * mdlrefDW ) { static const char * ssDWFieldNames [ 3 ] = { "rtb"
, "rtdw" , "NULL->rtzce" , } ; mxArray * ssDW = mxCreateStructMatrix ( 1 , 1
, 3 , ssDWFieldNames ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( ssDW , 0 , 0 ,
& ( mdlrefDW -> rtb ) , sizeof ( mdlrefDW -> rtb ) ) ; { static const char *
rtdwDataFieldNames [ 42 ] = { "mdlrefDW->rtdw.csgaj2fyjn" ,
"mdlrefDW->rtdw.drbjvug1h2" , "mdlrefDW->rtdw.av04t2xdo5" ,
"mdlrefDW->rtdw.n1rybaxsz3" , "mdlrefDW->rtdw.avpcp2zyrv" ,
"mdlrefDW->rtdw.di3dwrdmzi" , "mdlrefDW->rtdw.aspvqi5kaq" ,
"mdlrefDW->rtdw.m4ktsb34zu" , "mdlrefDW->rtdw.duxa0lwnyy" ,
"mdlrefDW->rtdw.g2u3gf3pir" , "mdlrefDW->rtdw.hm1z23ie2k" ,
"mdlrefDW->rtdw.fyislxta05" , "mdlrefDW->rtdw.fvctynab0j" ,
"mdlrefDW->rtdw.kw1ggasixl" , "mdlrefDW->rtdw.pnnvwfsy4q" ,
"mdlrefDW->rtdw.jkc1cp3f5y" , "mdlrefDW->rtdw.pj0n0u4s05" ,
"mdlrefDW->rtdw.hbhtccbgcn" , "mdlrefDW->rtdw.hmuqbllyba" ,
"mdlrefDW->rtdw.i41lks3yol" , "mdlrefDW->rtdw.fevx5o0jny" ,
"mdlrefDW->rtdw.cd1ggdrce0" , "mdlrefDW->rtdw.gdtw35bz52" ,
"mdlrefDW->rtdw.dgwobdrrst" , "mdlrefDW->rtdw.oaw4iyr2ye" ,
"mdlrefDW->rtdw.eqke51jlea" , "mdlrefDW->rtdw.btx3klejj4" ,
"mdlrefDW->rtdw.jrxil14s5x" , "mdlrefDW->rtdw.gvwlamizy1" ,
"mdlrefDW->rtdw.ck3q4trat2" , "mdlrefDW->rtdw.fospk5am0t.imqwlljh0m" ,
"mdlrefDW->rtdw.n2t4c0y3mo.imqwlljh0m" ,
"mdlrefDW->rtdw.fnkxrqzxuu.imqwlljh0m" ,
"mdlrefDW->rtdw.djprnhjvty.imqwlljh0m" ,
"mdlrefDW->rtdw.foakyujkvy.imqwlljh0m" ,
"mdlrefDW->rtdw.ahsydtdkov.imqwlljh0m" ,
"mdlrefDW->rtdw.fssw3wplvp.imqwlljh0m" ,
"mdlrefDW->rtdw.fyajdrrehx.imqwlljh0m" ,
"mdlrefDW->rtdw.hzzxzr44uq.imqwlljh0m" ,
"mdlrefDW->rtdw.lvsoakle5c.imqwlljh0m" ,
"mdlrefDW->rtdw.atfx0t2smt.imqwlljh0m" ,
"mdlrefDW->rtdw.ft4vlbdxumf.imqwlljh0m" , } ; mxArray * rtdwData =
mxCreateStructMatrix ( 1 , 1 , 42 , rtdwDataFieldNames ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 0 , & ( mdlrefDW -> rtdw
. csgaj2fyjn ) , sizeof ( mdlrefDW -> rtdw . csgaj2fyjn ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 1 , & ( mdlrefDW -> rtdw
. drbjvug1h2 ) , sizeof ( mdlrefDW -> rtdw . drbjvug1h2 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 2 , & ( mdlrefDW -> rtdw
. av04t2xdo5 ) , sizeof ( mdlrefDW -> rtdw . av04t2xdo5 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 3 , & ( mdlrefDW -> rtdw
. n1rybaxsz3 ) , sizeof ( mdlrefDW -> rtdw . n1rybaxsz3 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 4 , & ( mdlrefDW -> rtdw
. avpcp2zyrv ) , sizeof ( mdlrefDW -> rtdw . avpcp2zyrv ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 5 , & ( mdlrefDW -> rtdw
. di3dwrdmzi ) , sizeof ( mdlrefDW -> rtdw . di3dwrdmzi ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 6 , & ( mdlrefDW -> rtdw
. aspvqi5kaq ) , sizeof ( mdlrefDW -> rtdw . aspvqi5kaq ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 7 , & ( mdlrefDW -> rtdw
. m4ktsb34zu ) , sizeof ( mdlrefDW -> rtdw . m4ktsb34zu ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 8 , & ( mdlrefDW -> rtdw
. duxa0lwnyy ) , sizeof ( mdlrefDW -> rtdw . duxa0lwnyy ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 9 , & ( mdlrefDW -> rtdw
. g2u3gf3pir ) , sizeof ( mdlrefDW -> rtdw . g2u3gf3pir ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 10 , & ( mdlrefDW ->
rtdw . hm1z23ie2k ) , sizeof ( mdlrefDW -> rtdw . hm1z23ie2k ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 11 , & ( mdlrefDW ->
rtdw . fyislxta05 ) , sizeof ( mdlrefDW -> rtdw . fyislxta05 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 12 , & ( mdlrefDW ->
rtdw . fvctynab0j ) , sizeof ( mdlrefDW -> rtdw . fvctynab0j ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 13 , & ( mdlrefDW ->
rtdw . kw1ggasixl ) , sizeof ( mdlrefDW -> rtdw . kw1ggasixl ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 14 , & ( mdlrefDW ->
rtdw . pnnvwfsy4q ) , sizeof ( mdlrefDW -> rtdw . pnnvwfsy4q ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 15 , & ( mdlrefDW ->
rtdw . jkc1cp3f5y ) , sizeof ( mdlrefDW -> rtdw . jkc1cp3f5y ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 16 , & ( mdlrefDW ->
rtdw . pj0n0u4s05 ) , sizeof ( mdlrefDW -> rtdw . pj0n0u4s05 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 17 , & ( mdlrefDW ->
rtdw . hbhtccbgcn ) , sizeof ( mdlrefDW -> rtdw . hbhtccbgcn ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 18 , & ( mdlrefDW ->
rtdw . hmuqbllyba ) , sizeof ( mdlrefDW -> rtdw . hmuqbllyba ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 19 , & ( mdlrefDW ->
rtdw . i41lks3yol ) , sizeof ( mdlrefDW -> rtdw . i41lks3yol ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 20 , & ( mdlrefDW ->
rtdw . fevx5o0jny ) , sizeof ( mdlrefDW -> rtdw . fevx5o0jny ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 21 , & ( mdlrefDW ->
rtdw . cd1ggdrce0 ) , sizeof ( mdlrefDW -> rtdw . cd1ggdrce0 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 22 , & ( mdlrefDW ->
rtdw . gdtw35bz52 ) , sizeof ( mdlrefDW -> rtdw . gdtw35bz52 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 23 , & ( mdlrefDW ->
rtdw . dgwobdrrst ) , sizeof ( mdlrefDW -> rtdw . dgwobdrrst ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 24 , & ( mdlrefDW ->
rtdw . oaw4iyr2ye ) , sizeof ( mdlrefDW -> rtdw . oaw4iyr2ye ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 25 , & ( mdlrefDW ->
rtdw . eqke51jlea ) , sizeof ( mdlrefDW -> rtdw . eqke51jlea ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 26 , & ( mdlrefDW ->
rtdw . btx3klejj4 ) , sizeof ( mdlrefDW -> rtdw . btx3klejj4 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 27 , & ( mdlrefDW ->
rtdw . jrxil14s5x ) , sizeof ( mdlrefDW -> rtdw . jrxil14s5x ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 28 , & ( mdlrefDW ->
rtdw . gvwlamizy1 ) , sizeof ( mdlrefDW -> rtdw . gvwlamizy1 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 29 , & ( mdlrefDW ->
rtdw . ck3q4trat2 ) , sizeof ( mdlrefDW -> rtdw . ck3q4trat2 ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 30 , & ( mdlrefDW ->
rtdw . fospk5am0t . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw . fospk5am0t .
imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 31 , &
( mdlrefDW -> rtdw . n2t4c0y3mo . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw .
n2t4c0y3mo . imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData
, 0 , 32 , & ( mdlrefDW -> rtdw . fnkxrqzxuu . imqwlljh0m ) , sizeof (
mdlrefDW -> rtdw . fnkxrqzxuu . imqwlljh0m ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 33 , & ( mdlrefDW ->
rtdw . djprnhjvty . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw . djprnhjvty .
imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 34 , &
( mdlrefDW -> rtdw . foakyujkvy . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw .
foakyujkvy . imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData
, 0 , 35 , & ( mdlrefDW -> rtdw . ahsydtdkov . imqwlljh0m ) , sizeof (
mdlrefDW -> rtdw . ahsydtdkov . imqwlljh0m ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 36 , & ( mdlrefDW ->
rtdw . fssw3wplvp . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw . fssw3wplvp .
imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 37 , &
( mdlrefDW -> rtdw . fyajdrrehx . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw .
fyajdrrehx . imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData
, 0 , 38 , & ( mdlrefDW -> rtdw . hzzxzr44uq . imqwlljh0m ) , sizeof (
mdlrefDW -> rtdw . hzzxzr44uq . imqwlljh0m ) ) ;
mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 39 , & ( mdlrefDW ->
rtdw . lvsoakle5c . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw . lvsoakle5c .
imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData , 0 , 40 , &
( mdlrefDW -> rtdw . atfx0t2smt . imqwlljh0m ) , sizeof ( mdlrefDW -> rtdw .
atfx0t2smt . imqwlljh0m ) ) ; mr_asbCubeSatACS_cacheDataAsMxArray ( rtdwData
, 0 , 41 , & ( mdlrefDW -> rtdw . ft4vlbdxumf . imqwlljh0m ) , sizeof (
mdlrefDW -> rtdw . ft4vlbdxumf . imqwlljh0m ) ) ; mxSetFieldByNumber ( ssDW ,
0 , 1 , rtdwData ) ; } ( void ) mdlrefDW ; return ssDW ; } void
mr_asbCubeSatACS_SetDWork ( obi5idc0yut * mdlrefDW , const mxArray * ssDW ) {
( void ) ssDW ; ( void ) mdlrefDW ; mr_asbCubeSatACS_restoreDataFromMxArray (
& ( mdlrefDW -> rtb ) , ssDW , 0 , 0 , sizeof ( mdlrefDW -> rtb ) ) ; { const
mxArray * rtdwData = mxGetFieldByNumber ( ssDW , 0 , 1 ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . csgaj2fyjn )
, rtdwData , 0 , 0 , sizeof ( mdlrefDW -> rtdw . csgaj2fyjn ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . drbjvug1h2 )
, rtdwData , 0 , 1 , sizeof ( mdlrefDW -> rtdw . drbjvug1h2 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . av04t2xdo5 )
, rtdwData , 0 , 2 , sizeof ( mdlrefDW -> rtdw . av04t2xdo5 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . n1rybaxsz3 )
, rtdwData , 0 , 3 , sizeof ( mdlrefDW -> rtdw . n1rybaxsz3 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . avpcp2zyrv )
, rtdwData , 0 , 4 , sizeof ( mdlrefDW -> rtdw . avpcp2zyrv ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . di3dwrdmzi )
, rtdwData , 0 , 5 , sizeof ( mdlrefDW -> rtdw . di3dwrdmzi ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . aspvqi5kaq )
, rtdwData , 0 , 6 , sizeof ( mdlrefDW -> rtdw . aspvqi5kaq ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . m4ktsb34zu )
, rtdwData , 0 , 7 , sizeof ( mdlrefDW -> rtdw . m4ktsb34zu ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . duxa0lwnyy )
, rtdwData , 0 , 8 , sizeof ( mdlrefDW -> rtdw . duxa0lwnyy ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . g2u3gf3pir )
, rtdwData , 0 , 9 , sizeof ( mdlrefDW -> rtdw . g2u3gf3pir ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . hm1z23ie2k )
, rtdwData , 0 , 10 , sizeof ( mdlrefDW -> rtdw . hm1z23ie2k ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . fyislxta05 )
, rtdwData , 0 , 11 , sizeof ( mdlrefDW -> rtdw . fyislxta05 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . fvctynab0j )
, rtdwData , 0 , 12 , sizeof ( mdlrefDW -> rtdw . fvctynab0j ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . kw1ggasixl )
, rtdwData , 0 , 13 , sizeof ( mdlrefDW -> rtdw . kw1ggasixl ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . pnnvwfsy4q )
, rtdwData , 0 , 14 , sizeof ( mdlrefDW -> rtdw . pnnvwfsy4q ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . jkc1cp3f5y )
, rtdwData , 0 , 15 , sizeof ( mdlrefDW -> rtdw . jkc1cp3f5y ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . pj0n0u4s05 )
, rtdwData , 0 , 16 , sizeof ( mdlrefDW -> rtdw . pj0n0u4s05 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . hbhtccbgcn )
, rtdwData , 0 , 17 , sizeof ( mdlrefDW -> rtdw . hbhtccbgcn ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . hmuqbllyba )
, rtdwData , 0 , 18 , sizeof ( mdlrefDW -> rtdw . hmuqbllyba ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . i41lks3yol )
, rtdwData , 0 , 19 , sizeof ( mdlrefDW -> rtdw . i41lks3yol ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . fevx5o0jny )
, rtdwData , 0 , 20 , sizeof ( mdlrefDW -> rtdw . fevx5o0jny ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . cd1ggdrce0 )
, rtdwData , 0 , 21 , sizeof ( mdlrefDW -> rtdw . cd1ggdrce0 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . gdtw35bz52 )
, rtdwData , 0 , 22 , sizeof ( mdlrefDW -> rtdw . gdtw35bz52 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . dgwobdrrst )
, rtdwData , 0 , 23 , sizeof ( mdlrefDW -> rtdw . dgwobdrrst ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . oaw4iyr2ye )
, rtdwData , 0 , 24 , sizeof ( mdlrefDW -> rtdw . oaw4iyr2ye ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . eqke51jlea )
, rtdwData , 0 , 25 , sizeof ( mdlrefDW -> rtdw . eqke51jlea ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . btx3klejj4 )
, rtdwData , 0 , 26 , sizeof ( mdlrefDW -> rtdw . btx3klejj4 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . jrxil14s5x )
, rtdwData , 0 , 27 , sizeof ( mdlrefDW -> rtdw . jrxil14s5x ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . gvwlamizy1 )
, rtdwData , 0 , 28 , sizeof ( mdlrefDW -> rtdw . gvwlamizy1 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . ck3q4trat2 )
, rtdwData , 0 , 29 , sizeof ( mdlrefDW -> rtdw . ck3q4trat2 ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . fospk5am0t .
imqwlljh0m ) , rtdwData , 0 , 30 , sizeof ( mdlrefDW -> rtdw . fospk5am0t .
imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW ->
rtdw . n2t4c0y3mo . imqwlljh0m ) , rtdwData , 0 , 31 , sizeof ( mdlrefDW ->
rtdw . n2t4c0y3mo . imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray
( & ( mdlrefDW -> rtdw . fnkxrqzxuu . imqwlljh0m ) , rtdwData , 0 , 32 ,
sizeof ( mdlrefDW -> rtdw . fnkxrqzxuu . imqwlljh0m ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . djprnhjvty .
imqwlljh0m ) , rtdwData , 0 , 33 , sizeof ( mdlrefDW -> rtdw . djprnhjvty .
imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW ->
rtdw . foakyujkvy . imqwlljh0m ) , rtdwData , 0 , 34 , sizeof ( mdlrefDW ->
rtdw . foakyujkvy . imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray
( & ( mdlrefDW -> rtdw . ahsydtdkov . imqwlljh0m ) , rtdwData , 0 , 35 ,
sizeof ( mdlrefDW -> rtdw . ahsydtdkov . imqwlljh0m ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . fssw3wplvp .
imqwlljh0m ) , rtdwData , 0 , 36 , sizeof ( mdlrefDW -> rtdw . fssw3wplvp .
imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW ->
rtdw . fyajdrrehx . imqwlljh0m ) , rtdwData , 0 , 37 , sizeof ( mdlrefDW ->
rtdw . fyajdrrehx . imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray
( & ( mdlrefDW -> rtdw . hzzxzr44uq . imqwlljh0m ) , rtdwData , 0 , 38 ,
sizeof ( mdlrefDW -> rtdw . hzzxzr44uq . imqwlljh0m ) ) ;
mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW -> rtdw . lvsoakle5c .
imqwlljh0m ) , rtdwData , 0 , 39 , sizeof ( mdlrefDW -> rtdw . lvsoakle5c .
imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray ( & ( mdlrefDW ->
rtdw . atfx0t2smt . imqwlljh0m ) , rtdwData , 0 , 40 , sizeof ( mdlrefDW ->
rtdw . atfx0t2smt . imqwlljh0m ) ) ; mr_asbCubeSatACS_restoreDataFromMxArray
( & ( mdlrefDW -> rtdw . ft4vlbdxumf . imqwlljh0m ) , rtdwData , 0 , 41 ,
sizeof ( mdlrefDW -> rtdw . ft4vlbdxumf . imqwlljh0m ) ) ; } } void
mr_asbCubeSatACS_RegisterSimStateChecksum ( SimStruct * S ) { const uint32_T
chksum [ 4 ] = { 2360799958U , 3555719335U , 4290613391U , 2309692633U , } ;
slmrModelRefRegisterSimStateChecksum ( S , "asbCubeSatACS" , & chksum [ 0 ] )
; } mxArray * mr_asbCubeSatACS_GetSimStateDisallowedBlocks ( ) { mxArray *
data = mxCreateCellMatrix ( 4 , 3 ) ; mwIndex subs [ 2 ] , offset ; { static
const char * blockType [ 4 ] = { "Assertion" , "Assertion" , "Assertion" ,
"Assertion" , } ; static const char * blockPath [ 4 ] = {
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Error/Assertion"
,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/Else If Not Orthogonal/Warning/Assertion"
,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Error/Assertion"
,
 "asbCubeSatACS/Attitude Control/Pointing Mode Selection/On.Earth/Calculate Quaternion ECEF to ORF/Direction Cosine Matrix  to Quaternions/Validate DCM/If Warning//Error/If Not Proper/Warning/Assertion"
, } ; static const int reason [ 4 ] = { 0 , 0 , 0 , 0 , } ; for ( subs [ 0 ]
= 0 ; subs [ 0 ] < 4 ; ++ ( subs [ 0 ] ) ) { subs [ 1 ] = 0 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateString ( blockType [ subs [ 0 ] ] ) ) ; subs [ 1 ] = 1 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateString ( blockPath [ subs [ 0 ] ] ) ) ; subs [ 1 ] = 2 ; offset =
mxCalcSingleSubscript ( data , 2 , subs ) ; mxSetCell ( data , offset ,
mxCreateDoubleScalar ( ( double ) reason [ subs [ 0 ] ] ) ) ; } } return data
; }
