

    /*
  * asbCubeSatACS_types.h
  *
    * Academic License - for use in teaching, academic research, and meeting
* course requirements at degree granting institutions only.  Not for
* government, commercial, or other organizational use. 
  * 
  * Code generation for model "asbCubeSatACS".
  *
  * Model version              : 1.191
  * Simulink Coder version : 9.3 (R2020a) 18-Nov-2019
  * C source code generated on : Mon Jul 13 10:51:48 2020
 * 
 * Target selection: modelrefsim.tlc
 * Embedded hardware selection: 32-bit Generic
 * Emulation hardware selection: 
 *    Differs from embedded hardware (MATLAB Host)
 * Code generation objectives: Unspecified
 * Validation result: Not run
  */


  #ifndef RTW_HEADER_asbCubeSatACS_types_h_
  #define RTW_HEADER_asbCubeSatACS_types_h_
  

    

  
#include "rtwtypes.h"

#include "builtin_typeid_types.h"

#include "multiword_types.h"
      /* Model Code Variants */
    





  

  

  

  

  

  

  

  

  #ifndef DEFINED_TYPEDEF_FOR_StatesOutBus_
#define DEFINED_TYPEDEF_FOR_StatesOutBus_

typedef struct
{
    real_T V_ecef[3];
    real_T X_ecef[3];
    real_T q_ecef2b[4];
    real_T q_eci2b[4];
    real_T Euler[3];
    real_T LatLonAlt[3];
    real_T x_sun_eci[3];
} StatesOutBus;

#endif
#ifndef DEFINED_TYPEDEF_FOR_EnvBus_
#define DEFINED_TYPEDEF_FOR_EnvBus_

typedef struct
{
    real_T envForces_body[3];
    real_T envTorques_body[3];
    real_T x_sun_eci[3];
    real_T earthAngRate;
} EnvBus;

#endif
#ifndef DEFINED_TYPEDEF_FOR_AttitudeErrorBus_
#define DEFINED_TYPEDEF_FOR_AttitudeErrorBus_

typedef struct
{
    real_T Roll;
    real_T Pitch;
    real_T Yaw;
} AttitudeErrorBus;

#endif
#ifndef DEFINED_TYPEDEF_FOR_ACSOutBus_
#define DEFINED_TYPEDEF_FOR_ACSOutBus_

typedef struct
{
    AttitudeErrorBus AttitudeError;
    real_T TorqueCmds[3];
    real_T NavMode;
} ACSOutBus;

#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_9iDbyyjfBL0Y1ELTIVXdBC_
#define DEFINED_TYPEDEF_FOR_struct_9iDbyyjfBL0Y1ELTIVXdBC_

typedef struct
{
    real_T Kp;
    real_T Ki;
    real_T Kd;
} struct_9iDbyyjfBL0Y1ELTIVXdBC;

#endif
      
              /* Parameters for system: '<S77>/B_27_0' */
         typedef struct p2cri44k0h_ p2cri44k0h;
      
              /* Parameters (default storage) */
         typedef struct abopqckbgqo_ abopqckbgqo;
          /* Forward declaration for rtModel */
        typedef struct isesex4x31 dgtzqiy1yy;


  

  

  

  

  

  

  

  

  

  

  

    #endif /* RTW_HEADER_asbCubeSatACS_types_h_ */
