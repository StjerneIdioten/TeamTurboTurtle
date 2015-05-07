;Mapping of the data memory
;SRAM starts at 0x60

;Accelerometer dataset from the MPU6050
.equ ACCEL_XOUT_H = 0x0060
.equ ACCEL_XOUT_L = 0x0061
.equ ACCEL_YOUT_H = 0x0062
.equ ACCEL_YOUT_L = 0x0063
.equ ACCEL_ZOUT_H = 0x0064
.equ ACCEL_ZOUT_L = 0x0065

;Temperature dataset from the MPU6050
.equ TEMP_OUT_H   = 0x0066
.equ TEMP_OUT_L   = 0x0067

;Gyro dataset from the MPU6050
.equ GYRO_XOUT_H  = 0x0068
.equ GYRO_XOUT_L  = 0x0069
.equ GYRO_YOUT_H  = 0x006A
.equ GYRO_YOUT_L  = 0x006B
.equ GYRO_ZOUT_H  = 0x006C
.equ GYRO_ZOUT_L  = 0x006D

;Time0 variables
.equ Timer_1ms_H  = 0x006E
.equ Timer_1ms_M  = 0x006F
.equ Timer_1ms_L  = 0x0070

;Finish line time stamp
.equ Time_Stamp_H = 0x0071
.equ Time_Stamp_M = 0x0072
.equ Time_Stamp_L = 0x0073

;Latest lap time
.equ Lap_time_L   = 0x0074
.equ Lap_time_M	  = 0x0075
.equ Lap_time_H	  = 0x0076

;Pulse Stuphs
.equ Edge1_L		= 0x0083
.equ Edge1_H		= 0x0084
.equ Pulse_Time_L	= 0x0085
.equ Pulse_Time_H	= 0x0086
.equ Pulse_Time_L1	= 0x0087
.equ Pulse_Time_H1	= 0x0088
.equ Pulse_Time_L2	= 0x0089
.equ Pulse_Time_H2	= 0x008A

.equ Ticks_L		= 0x008B
.equ Ticks_H		= 0x008C

.equ Ticks_Lap_L	= 0x008D
.equ Ticks_Lap_H	= 0x008E

;Status Register
.equ SREG_1			= 0x007B
.equ Program_Running = 0x0080

;Communication Protocol stuff
.equ Comm_Received_Byte_Num = 0x007C
.equ Comm_Received_Byte_1 = 0x007D
.equ Comm_Received_Byte_2 = 0x007E
.equ Comm_Received_Byte_3 = 0x007F

;Wheel Speed
.equ Wheel_speed_L = 0x0081
.equ Wheel_speed_H = 0x0082

;AI Hastighed
.equ AI_Check_Lap	= 0x0083
.equ AI_Hastighed_out	= 0x0084
.equ AI_Hastighed_set	= 0x0085
.equ AI_Hastighed_D	= 0x0086

;Mapping start -- Alt herefter skal holdes frit
.equ Map_Start		= 0x00C8

