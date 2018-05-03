! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_MonitorMutex
	.export	_Method_P_Kernel_MonitorMutex_1
	.export	_Method_P_Kernel_MonitorMutex_2
	.export	_Method_P_Kernel_MonitorMutex_3
	.export	_Method_P_Kernel_MonitorMutex_4
	.export	_Method_P_Kernel_MonitorMutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_136:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_121:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_117:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_116:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_114:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_113:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_112:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_111:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_109:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_108:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_107:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_106:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_105:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_102:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_101:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_100:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_99:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_98:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_97:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_96:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_95:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_94:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_93:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_92:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_87:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_86:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_76:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_75:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_74:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_67:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_65:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_64:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_61:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_60:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_59:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_58:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_57:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_56:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_55:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_53:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_51:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x50859607,r4		! myHashVal = 1350931975
	cmp	r3,r4
	be	_Label_141
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_141:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_142
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_142
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_142
_Label_142:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_143 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_143  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1898:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1898
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_147 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_148 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_147  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_149 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_150 = _temp_149 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_150 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1899:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1899
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_152 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_153 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_152  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_154 = _function_140_IdleFunction
	set	_function_140_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_155 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_154  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_156
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_157
	.word	-12
	.word	4
	.word	_Label_158
	.word	-16
	.word	4
	.word	_Label_159
	.word	-20
	.word	4
	.word	_Label_160
	.word	-24
	.word	4
	.word	_Label_161
	.word	-28
	.word	4
	.word	_Label_162
	.word	-32
	.word	4
	.word	_Label_163
	.word	-36
	.word	4
	.word	_Label_164
	.word	-40
	.word	4
	.word	_Label_165
	.word	-44
	.word	4
	.word	_Label_166
	.word	-48
	.word	4
	.word	_Label_167
	.word	-52
	.word	4
	.word	_Label_168
	.word	-56
	.word	4
	.word	_Label_169
	.word	-60
	.word	4
	.word	0
_Label_156:
	.ascii	"InitializeScheduler\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_140_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_140_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_170:
!	jmp	_Label_171
_Label_171:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_175 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_173 else goto _Label_174
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_174
	jmp	_Label_173
_Label_173:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_176
_Label_174:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_176:
! END WHILE...
	jmp	_Label_170
_Label_172:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_140_IdleFunction:
	.word	_sourceFileName
	.word	_Label_177
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_178
	.word	8
	.word	4
	.word	_Label_179
	.word	-12
	.word	4
	.word	_Label_180
	.word	-16
	.word	4
	.word	0
_Label_177:
	.ascii	"IdleFunction\0"
	.align
_Label_178:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_180:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1901:
	push	r0
	sub	r1,1,r1
	bne	_Label_1901
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_183 ) then goto _Label_182		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_182
!	jmp	_Label_181
_Label_181:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_185 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_185 [0 ] into _temp_186
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_184 = _temp_186		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_182:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_187 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_187 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_188:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_192 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_191  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_191 then goto _Label_190 else goto _Label_189
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_189
	jmp	_Label_190
_Label_189:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_193 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_194 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_188
_Label_190:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_197 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_197 ) then goto _Label_196		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_196
!	jmp	_Label_195
_Label_195:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_199 [0 ] into _temp_200
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_198 = _temp_200		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_198  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_202 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_201 = *_temp_202  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_201) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_203 = _temp_201 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_196:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_204
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_205
	.word	8
	.word	4
	.word	_Label_206
	.word	-16
	.word	4
	.word	_Label_207
	.word	-20
	.word	4
	.word	_Label_208
	.word	-24
	.word	4
	.word	_Label_209
	.word	-28
	.word	4
	.word	_Label_210
	.word	-32
	.word	4
	.word	_Label_211
	.word	-36
	.word	4
	.word	_Label_212
	.word	-40
	.word	4
	.word	_Label_213
	.word	-44
	.word	4
	.word	_Label_214
	.word	-48
	.word	4
	.word	_Label_215
	.word	-52
	.word	4
	.word	_Label_216
	.word	-9
	.word	1
	.word	_Label_217
	.word	-56
	.word	4
	.word	_Label_218
	.word	-60
	.word	4
	.word	_Label_219
	.word	-64
	.word	4
	.word	_Label_220
	.word	-68
	.word	4
	.word	_Label_221
	.word	-72
	.word	4
	.word	_Label_222
	.word	-76
	.word	4
	.word	_Label_223
	.word	-80
	.word	4
	.word	0
_Label_204:
	.ascii	"Run\0"
	.align
_Label_205:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_216:
	.byte	'C'
	.ascii	"_temp_191\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_222:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_223:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1902:
	push	r0
	sub	r1,1,r1
	bne	_Label_1902
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_224 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_225 = _function_139_ThreadPrintShort
	set	_function_139_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_226 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_227
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	0
_Label_227:
	.ascii	"PrintReadyList\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_231:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1903:
	push	r0
	sub	r1,1,r1
	bne	_Label_1903
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_232  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_234 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_233 = *_temp_234  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_235 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_236
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_237
	.word	-12
	.word	4
	.word	_Label_238
	.word	-16
	.word	4
	.word	_Label_239
	.word	-20
	.word	4
	.word	_Label_240
	.word	-24
	.word	4
	.word	_Label_241
	.word	-28
	.word	4
	.word	_Label_242
	.word	-32
	.word	4
	.word	0
_Label_236:
	.ascii	"ThreadStartMain\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_241:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_242:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1904:
	push	r0
	sub	r1,1,r1
	bne	_Label_1904
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_243 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_244 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_245
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	0
_Label_245:
	.ascii	"ThreadFinish\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1905:
	push	r0
	sub	r1,1,r1
	bne	_Label_1905
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_249 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_251		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_251
!	jmp	_Label_250
_Label_250:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_252 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_253 = *_temp_254  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_251:
! CALL STATEMENT...
!   _temp_255 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_256 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_257 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_257  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	_Label_261
	.word	-16
	.word	4
	.word	_Label_262
	.word	-20
	.word	4
	.word	_Label_263
	.word	-24
	.word	4
	.word	_Label_264
	.word	-28
	.word	4
	.word	_Label_265
	.word	-32
	.word	4
	.word	_Label_266
	.word	-36
	.word	4
	.word	_Label_267
	.word	-40
	.word	4
	.word	0
_Label_258:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_259:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_267:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1906:
	push	r0
	sub	r1,1,r1
	bne	_Label_1906
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_269		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_269
!	jmp	_Label_268
_Label_268:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_270
_Label_269:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_270:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_271
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_272
	.word	8
	.word	4
	.word	_Label_273
	.word	-12
	.word	4
	.word	0
_Label_271:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_273:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_139_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_139_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1907:
	push	r0
	sub	r1,1,r1
	bne	_Label_1907
	mov	780,r13		! source line 780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_277		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_277
!   _temp_276 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_278
_Label_277:
!   _temp_276 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_278:
!   if _temp_276 then goto _Label_275 else goto _Label_274
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_274
	jmp	_Label_275
_Label_274:
! THEN...
	mov	789,r13		! source line 789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_279 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_275:
! CALL STATEMENT...
!   _temp_280 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_281 = *_temp_282  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_283 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	795,r13		! source line 795
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_291 = *_temp_292  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_286
	cmp	r1,2
	be	_Label_287
	cmp	r1,3
	be	_Label_288
	cmp	r1,4
	be	_Label_289
	cmp	r1,5
	be	_Label_290
	jmp	_Label_284
! CASE 1...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0BR",r10
	jmp	_Label_285
! CASE 2...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0BR",r10
	jmp	_Label_285
! CASE 3...
_Label_288:
! CALL STATEMENT...
!   _temp_295 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0BR",r10
	jmp	_Label_285
! CASE 4...
_Label_289:
! CALL STATEMENT...
!   _temp_296 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0BR",r10
	jmp	_Label_285
! CASE 5...
_Label_290:
! CALL STATEMENT...
!   _temp_297 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0BR",r10
	jmp	_Label_285
! DEFAULT CASE...
_Label_284:
! CALL STATEMENT...
!   _temp_298 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	812,r13		! source line 812
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_285:
! CALL STATEMENT...
!   _temp_299 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_300 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_301 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_139_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_302
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_303
	.word	8
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	_Label_307
	.word	-28
	.word	4
	.word	_Label_308
	.word	-32
	.word	4
	.word	_Label_309
	.word	-36
	.word	4
	.word	_Label_310
	.word	-40
	.word	4
	.word	_Label_311
	.word	-44
	.word	4
	.word	_Label_312
	.word	-48
	.word	4
	.word	_Label_313
	.word	-52
	.word	4
	.word	_Label_314
	.word	-56
	.word	4
	.word	_Label_315
	.word	-60
	.word	4
	.word	_Label_316
	.word	-64
	.word	4
	.word	_Label_317
	.word	-68
	.word	4
	.word	_Label_318
	.word	-72
	.word	4
	.word	_Label_319
	.word	-76
	.word	4
	.word	_Label_320
	.word	-9
	.word	1
	.word	_Label_321
	.word	-80
	.word	4
	.word	0
_Label_302:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_303:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_320:
	.byte	'C'
	.ascii	"_temp_276\0"
	.align
_Label_321:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_138_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_138_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1908:
	push	r0
	sub	r1,1,r1
	bne	_Label_1908
	mov	1174,r13		! source line 1174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_322 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_138_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_323
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	8
	.word	4
	.word	_Label_325
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_324:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1909:
	push	r0
	sub	r1,1,r1
	bne	_Label_1909
	mov	1184,r13		! source line 1184
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_326 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1190,r13		! source line 1190
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_327
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_328
	.word	8
	.word	4
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_327:
	.ascii	"ProcessFinish\0"
	.align
_Label_328:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
	mov	1685,r13		! source line 1685
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_330
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_330:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1911:
	push	r0
	sub	r1,1,r1
	bne	_Label_1911
	mov	1703,r13		! source line 1703
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_331 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1713,r13		! source line 1713
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_334:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1912:
	push	r0
	sub	r1,1,r1
	bne	_Label_1912
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_335 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_336:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
	mov	1751,r13		! source line 1751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_338 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_339
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1914:
	push	r0
	sub	r1,1,r1
	bne	_Label_1914
	mov	1763,r13		! source line 1763
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_341 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_342
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_343
	.word	-12
	.word	4
	.word	0
_Label_342:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
	mov	1775,r13		! source line 1775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_344 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_346
	.word	-12
	.word	4
	.word	0
_Label_345:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
	mov	1787,r13		! source line 1787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_347 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_348
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_348:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_350 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_351
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_352
	.word	-12
	.word	4
	.word	0
_Label_351:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_353 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_function_137_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_354
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_355
	.word	-12
	.word	4
	.word	0
_Label_354:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_137_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_137_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1919:
	push	r0
	sub	r1,1,r1
	bne	_Label_1919
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_356 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_357 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_360 == 0 then goto _Label_359		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_359
!	jmp	_Label_358
_Label_358:
! THEN...
	mov	1834,r13		! source line 1834
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_363 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_362 = *_temp_363  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_362) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_364
_Label_359:
! ELSE...
	mov	1836,r13		! source line 1836
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_365 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_364:
! SEND STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_137_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_366
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-12
	.word	4
	.word	_Label_369
	.word	-16
	.word	4
	.word	_Label_370
	.word	-20
	.word	4
	.word	_Label_371
	.word	-24
	.word	4
	.word	_Label_372
	.word	-28
	.word	4
	.word	_Label_373
	.word	-32
	.word	4
	.word	_Label_374
	.word	-36
	.word	4
	.word	0
_Label_366:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1920:
	push	r0
	sub	r1,1,r1
	bne	_Label_1920
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1870,r13		! source line 1870
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1921
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_375
_Label_1921:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_375
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_375
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_389,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_389:
	jmp	_Label_381	! 1:	
	jmp	_Label_388	! 2:	
	jmp	_Label_378	! 3:	
	jmp	_Label_377	! 4:	
	jmp	_Label_380	! 5:	
	jmp	_Label_379	! 6:	
	jmp	_Label_382	! 7:	
	jmp	_Label_383	! 8:	
	jmp	_Label_384	! 9:	
	jmp	_Label_385	! 10:	
	jmp	_Label_386	! 11:	
	jmp	_Label_387	! 12:	
! CASE 4...
_Label_377:
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_378:
! CALL STATEMENT...
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_379:
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_380:
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_381:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_382:
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_383:
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_384:
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_395  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_385:
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_396  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_396  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_386:
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_397  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_397  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_387:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_388:
! CALL STATEMENT...
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_375:
! CALL STATEMENT...
!   _temp_398 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_399 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1903,r13		! source line 1903
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_376:
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_400
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_401
	.word	8
	.word	4
	.word	_Label_402
	.word	12
	.word	4
	.word	_Label_403
	.word	16
	.word	4
	.word	_Label_404
	.word	20
	.word	4
	.word	_Label_405
	.word	24
	.word	4
	.word	_Label_406
	.word	-12
	.word	4
	.word	_Label_407
	.word	-16
	.word	4
	.word	_Label_408
	.word	-20
	.word	4
	.word	_Label_409
	.word	-24
	.word	4
	.word	_Label_410
	.word	-28
	.word	4
	.word	_Label_411
	.word	-32
	.word	4
	.word	_Label_412
	.word	-36
	.word	4
	.word	_Label_413
	.word	-40
	.word	4
	.word	_Label_414
	.word	-44
	.word	4
	.word	_Label_415
	.word	-48
	.word	4
	.word	0
_Label_400:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_405:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1910,r13		! source line 1910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1916,r13		! source line 1916
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_418
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1922,r13		! source line 1922
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_419
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_420
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_422
	.word	8
	.word	4
	.word	0
_Label_421:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1942,r13		! source line 1942
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1949,r13		! source line 1949
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_425
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_426
	.word	8
	.word	4
	.word	0
_Label_425:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_426:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1956,r13		! source line 1956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_429
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_430
	.word	8
	.word	4
	.word	_Label_431
	.word	12
	.word	4
	.word	_Label_432
	.word	16
	.word	4
	.word	0
_Label_429:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1970,r13		! source line 1970
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_433
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_434
	.word	8
	.word	4
	.word	_Label_435
	.word	12
	.word	4
	.word	_Label_436
	.word	16
	.word	4
	.word	0
_Label_433:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_435:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1977,r13		! source line 1977
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_437
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_438
	.word	8
	.word	4
	.word	_Label_439
	.word	12
	.word	4
	.word	0
_Label_437:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1984,r13		! source line 1984
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_440
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_441
	.word	8
	.word	4
	.word	0
_Label_440:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_442
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_442:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_443
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_443:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1922:
	push	r0
	sub	r1,1,r1
	bne	_Label_1922
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_445		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_445
!	jmp	_Label_444
_Label_444:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_446 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_445:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_448
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_450
	.word	12
	.word	4
	.word	_Label_451
	.word	-12
	.word	4
	.word	_Label_452
	.word	-16
	.word	4
	.word	0
_Label_448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_449:
	.ascii	"Pself\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1923:
	push	r0
	sub	r1,1,r1
	bne	_Label_1923
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_454		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_455 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_458 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_459 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_460 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_457:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_461
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	_Label_466
	.word	-24
	.word	4
	.word	_Label_467
	.word	-28
	.word	4
	.word	_Label_468
	.word	-32
	.word	4
	.word	0
_Label_461:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_462:
	.ascii	"Pself\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_468:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1924:
	push	r0
	sub	r1,1,r1
	bne	_Label_1924
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_470		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_470
!	jmp	_Label_469
_Label_469:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_471 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_470:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_473		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_473
!	jmp	_Label_472
_Label_472:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_474 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_473:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_475
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	0
_Label_475:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_476:
	.ascii	"Pself\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_480
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_480:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_481
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_481:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1925:
	push	r0
	sub	r1,1,r1
	bne	_Label_1925
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_483
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1926:
	push	r0
	sub	r1,1,r1
	bne	_Label_1926
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_487		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_487
!	jmp	_Label_486
_Label_486:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_488 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_487:
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_492		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_492
!   _temp_491 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_493
_Label_492:
!   _temp_491 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_493:
!   if _temp_491 then goto _Label_490 else goto _Label_489
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_489
	jmp	_Label_490
_Label_489:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_494
_Label_490:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_495 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_494:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_496
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_498
	.word	-16
	.word	4
	.word	_Label_499
	.word	-9
	.word	1
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	0
_Label_496:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_497:
	.ascii	"Pself\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_499:
	.byte	'C'
	.ascii	"_temp_491\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1927:
	push	r0
	sub	r1,1,r1
	bne	_Label_1927
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_503		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_503
!	jmp	_Label_502
_Label_502:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_504 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_503:
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_505 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_507		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_507
!	jmp	_Label_506
_Label_506:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_508 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_508 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_509 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_510
_Label_507:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_510:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_511
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_513
	.word	-12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	_Label_517
	.word	-28
	.word	4
	.word	_Label_518
	.word	-32
	.word	4
	.word	0
_Label_511:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_512:
	.ascii	"Pself\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_517:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_518:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_521		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_521
!	jmp	_Label_520
_Label_520:
!   _temp_519 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_522
_Label_521:
!   _temp_519 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_522:
!   ReturnResult: _temp_519  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_523
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_525
	.word	-9
	.word	1
	.word	0
_Label_523:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_524:
	.ascii	"Pself\0"
	.align
_Label_525:
	.byte	'C'
	.ascii	"_temp_519\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_526
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_526:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_527
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_527:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1929:
	push	r0
	sub	r1,1,r1
	bne	_Label_1929
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_529
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_529:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_530:
	.ascii	"Pself\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1930:
	push	r0
	sub	r1,1,r1
	bne	_Label_1930
	mov	392,r13		! source line 392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_534  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_534 then goto _Label_533 else goto _Label_532
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_532
	jmp	_Label_533
_Label_532:
! THEN...
	mov	397,r13		! source line 397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_535 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	397,r13		! source line 397
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_533:
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   _temp_536 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_537
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_539
	.word	12
	.word	4
	.word	_Label_540
	.word	-16
	.word	4
	.word	_Label_541
	.word	-20
	.word	4
	.word	_Label_542
	.word	-9
	.word	1
	.word	_Label_543
	.word	-24
	.word	4
	.word	0
_Label_537:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_538:
	.ascii	"Pself\0"
	.align
_Label_539:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_542:
	.byte	'C'
	.ascii	"_temp_534\0"
	.align
_Label_543:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1931:
	push	r0
	sub	r1,1,r1
	bne	_Label_1931
	mov	409,r13		! source line 409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0IF",r10
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_546  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_546 then goto _Label_545 else goto _Label_544
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_544
	jmp	_Label_545
_Label_544:
! THEN...
	mov	415,r13		! source line 415
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_547 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	415,r13		! source line 415
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_545:
! ASSIGNMENT STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0AS",r10
	mov	418,r13		! source line 418
	mov	"\0\0SE",r10
!   _temp_548 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_550		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_550
!	jmp	_Label_549
_Label_549:
! THEN...
	mov	420,r13		! source line 420
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_551 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_551 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0SE",r10
!   _temp_552 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_550:
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_553
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_555
	.word	12
	.word	4
	.word	_Label_556
	.word	-16
	.word	4
	.word	_Label_557
	.word	-20
	.word	4
	.word	_Label_558
	.word	-24
	.word	4
	.word	_Label_559
	.word	-28
	.word	4
	.word	_Label_560
	.word	-9
	.word	1
	.word	_Label_561
	.word	-32
	.word	4
	.word	_Label_562
	.word	-36
	.word	4
	.word	0
_Label_553:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_554:
	.ascii	"Pself\0"
	.align
_Label_555:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_560:
	.byte	'C'
	.ascii	"_temp_546\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_562:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1932:
	push	r0
	sub	r1,1,r1
	bne	_Label_1932
	mov	430,r13		! source line 430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_565  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_565 then goto _Label_564 else goto _Label_563
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_563
	jmp	_Label_564
_Label_563:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_566 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	436,r13		! source line 436
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_564:
! WHILE STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0WH",r10
_Label_567:
!	jmp	_Label_568
_Label_568:
	mov	439,r13		! source line 439
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   _temp_570 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_571
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_571
	jmp	_Label_572
_Label_571:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0BR",r10
	jmp	_Label_569
! END IF...
_Label_572:
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_573 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_567
_Label_569:
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_575
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_577
	.word	12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-9
	.word	1
	.word	_Label_583
	.word	-32
	.word	4
	.word	_Label_584
	.word	-36
	.word	4
	.word	0
_Label_575:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_576:
	.ascii	"Pself\0"
	.align
_Label_577:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_582:
	.byte	'C'
	.ascii	"_temp_565\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_584:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS MonitorMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_MonitorMutex:
	.word	_Label_585
	jmp	_Method_P_Kernel_MonitorMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_MonitorMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_MonitorMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_MonitorMutex_4	! 16:	LockTo
	jmp	_Method_P_Kernel_MonitorMutex_5	! 20:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_585:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_586
	.word	_sourceFileName
	.word	166		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_MonitorMutex
	.word	_P_System_Object
	.word	0
_Label_586:
	.ascii	"MonitorMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_MonitorMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MonitorMutex_1,r1
	push	r1
	mov	1,r1
_Label_1933:
	push	r0
	sub	r1,1,r1
	bne	_Label_1933
	mov	457,r13		! source line 457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MonitorMutex_1:
	.word	_sourceFileName
	.word	_Label_588
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_590
	.word	-12
	.word	4
	.word	0
_Label_588:
	.ascii	"MonitorMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_589:
	.ascii	"Pself\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_MonitorMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MonitorMutex_2,r1
	push	r1
	mov	6,r1
_Label_1934:
	push	r0
	sub	r1,1,r1
	bne	_Label_1934
	mov	461,r13		! source line 461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_592		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_592
!	jmp	_Label_591
_Label_591:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_593 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	468,r13		! source line 468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_592:
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_597		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_597
!   _temp_596 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_598
_Label_597:
!   _temp_596 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_598:
!   if _temp_596 then goto _Label_595 else goto _Label_594
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_594
	jmp	_Label_595
_Label_594:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_599
_Label_595:
! ELSE...
	mov	475,r13		! source line 475
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_600 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_599:
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MonitorMutex_2:
	.word	_sourceFileName
	.word	_Label_601
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-9
	.word	1
	.word	_Label_605
	.word	-20
	.word	4
	.word	_Label_606
	.word	-24
	.word	4
	.word	0
_Label_601:
	.ascii	"MonitorMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_602:
	.ascii	"Pself\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_604:
	.byte	'C'
	.ascii	"_temp_596\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_606:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_MonitorMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MonitorMutex_3,r1
	push	r1
	mov	8,r1
_Label_1935:
	push	r0
	sub	r1,1,r1
	bne	_Label_1935
	mov	482,r13		! source line 482
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_608		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_608
!	jmp	_Label_607
_Label_607:
! THEN...
	mov	490,r13		! source line 490
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_609 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	490,r13		! source line 490
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_608:
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
	mov	493,r13		! source line 493
	mov	"\0\0SE",r10
!   _temp_610 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_612		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_612
!	jmp	_Label_611
_Label_611:
! THEN...
	mov	495,r13		! source line 495
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_613 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0SE",r10
!   _temp_614 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_615
_Label_612:
! ELSE...
	mov	499,r13		! source line 499
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_615:
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MonitorMutex_3:
	.word	_sourceFileName
	.word	_Label_616
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_618
	.word	-12
	.word	4
	.word	_Label_619
	.word	-16
	.word	4
	.word	_Label_620
	.word	-20
	.word	4
	.word	_Label_621
	.word	-24
	.word	4
	.word	_Label_622
	.word	-28
	.word	4
	.word	_Label_623
	.word	-32
	.word	4
	.word	0
_Label_616:
	.ascii	"MonitorMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_617:
	.ascii	"Pself\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_623:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD LockTo  ===============
! 
_Method_P_Kernel_MonitorMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MonitorMutex_4,r1
	push	r1
	mov	504,r13		! source line 504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   heldBy = threadptr		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MonitorMutex_4:
	.word	_sourceFileName
	.word	_Label_624
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_625
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_626
	.word	12
	.word	4
	.word	0
_Label_624:
	.ascii	"MonitorMutex"
	.ascii	"::"
	.ascii	"LockTo\0"
	.align
_Label_625:
	.ascii	"Pself\0"
	.align
_Label_626:
	.byte	'P'
	.ascii	"threadptr\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_MonitorMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MonitorMutex_5,r1
	push	r1
	mov	1,r1
_Label_1936:
	push	r0
	sub	r1,1,r1
	bne	_Label_1936
	mov	515,r13		! source line 515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_629		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_629
!	jmp	_Label_628
_Label_628:
!   _temp_627 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_630
_Label_629:
!   _temp_627 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_630:
!   ReturnResult: _temp_627  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MonitorMutex_5:
	.word	_sourceFileName
	.word	_Label_631
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_633
	.word	-9
	.word	1
	.word	0
_Label_631:
	.ascii	"MonitorMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_632:
	.ascii	"Pself\0"
	.align
_Label_633:
	.byte	'C'
	.ascii	"_temp_627\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_634
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_634:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_635
	.word	_sourceFileName
	.word	182		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_635:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_1937:
	push	r0
	sub	r1,1,r1
	bne	_Label_1937
	mov	526,r13		! source line 526
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_637
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_639
	.word	-12
	.word	4
	.word	0
_Label_637:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_638:
	.ascii	"Pself\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_1938:
	push	r0
	sub	r1,1,r1
	bne	_Label_1938
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0IF",r10
	mov	535,r13		! source line 535
	mov	"\0\0SE",r10
!   if intIsZero (mutex_lock) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_642  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_642 then goto _Label_641 else goto _Label_640
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_640
	jmp	_Label_641
_Label_640:
! THEN...
	mov	536,r13		! source line 536
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_643 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	536,r13		! source line 536
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_641:
! SEND STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0SE",r10
!   if intIsZero (mutex_lock) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
!   _temp_644 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0SE",r10
!   if intIsZero (mutex_lock) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_645
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_647
	.word	12
	.word	4
	.word	_Label_648
	.word	-16
	.word	4
	.word	_Label_649
	.word	-20
	.word	4
	.word	_Label_650
	.word	-9
	.word	1
	.word	_Label_651
	.word	-24
	.word	4
	.word	0
_Label_645:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_646:
	.ascii	"Pself\0"
	.align
_Label_647:
	.byte	'P'
	.ascii	"mutex_lock\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_650:
	.byte	'C'
	.ascii	"_temp_642\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_1939:
	push	r0
	sub	r1,1,r1
	bne	_Label_1939
	mov	546,r13		! source line 546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   if intIsZero (mutex_lock) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_654  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_654 then goto _Label_653 else goto _Label_652
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_652
	jmp	_Label_653
_Label_652:
! THEN...
	mov	554,r13		! source line 554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_655 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	554,r13		! source line 554
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_653:
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
	mov	557,r13		! source line 557
	mov	"\0\0SE",r10
!   _temp_656 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_658		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_658
!	jmp	_Label_657
_Label_657:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_659 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   _temp_660 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0SE",r10
!   if intIsZero (mutex_lock) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message LockTo
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_658:
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_661
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_663
	.word	12
	.word	4
	.word	_Label_664
	.word	-16
	.word	4
	.word	_Label_665
	.word	-20
	.word	4
	.word	_Label_666
	.word	-24
	.word	4
	.word	_Label_667
	.word	-28
	.word	4
	.word	_Label_668
	.word	-9
	.word	1
	.word	_Label_669
	.word	-32
	.word	4
	.word	_Label_670
	.word	-36
	.word	4
	.word	0
_Label_661:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_662:
	.ascii	"Pself\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"mutex_lock\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_668:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_669:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_670:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_671
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_671:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_672
	.word	_sourceFileName
	.word	199		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_672:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1940:
	push	r0
	sub	r1,1,r1
	bne	_Label_1940
	mov	587,r13		! source line 587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   _temp_673 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_673) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_673 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   _temp_674 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_674 [0 ] into _temp_675
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_675 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   _temp_676 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_676 [999 ] into _temp_677
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_677 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   _temp_678 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_678 [999 ] into _temp_679
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_679		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0AS",r10
!   _temp_680 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_682 = &_temp_681
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_682 = _temp_682 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_684:
!   Data Move: *_temp_682 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_682 = _temp_682 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_683 = _temp_683 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_683) then goto _Label_684
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_684
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_685 = &_temp_681
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1941
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1941:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_680 = *_temp_685  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1942:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1942
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   _temp_686 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_688 = &_temp_687
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_688 = _temp_688 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_690:
!   Data Move: *_temp_688 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_688 = _temp_688 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_689 = _temp_689 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_689) then goto _Label_690
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_690
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_691 = &_temp_687
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1943
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1943:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_686 = *_temp_691  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1944:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1944
! RETURN STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_692
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_694
	.word	12
	.word	4
	.word	_Label_695
	.word	-12
	.word	4
	.word	_Label_696
	.word	-16
	.word	4
	.word	_Label_697
	.word	-20
	.word	4
	.word	_Label_698
	.word	-84
	.word	64
	.word	_Label_699
	.word	-88
	.word	4
	.word	_Label_700
	.word	-92
	.word	4
	.word	_Label_701
	.word	-96
	.word	4
	.word	_Label_702
	.word	-100
	.word	4
	.word	_Label_703
	.word	-156
	.word	56
	.word	_Label_704
	.word	-160
	.word	4
	.word	_Label_705
	.word	-164
	.word	4
	.word	_Label_706
	.word	-168
	.word	4
	.word	_Label_707
	.word	-172
	.word	4
	.word	_Label_708
	.word	-176
	.word	4
	.word	_Label_709
	.word	-180
	.word	4
	.word	_Label_710
	.word	-184
	.word	4
	.word	_Label_711
	.word	-188
	.word	4
	.word	0
_Label_692:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_693:
	.ascii	"Pself\0"
	.align
_Label_694:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1945:
	push	r0
	sub	r1,1,r1
	bne	_Label_1945
	mov	606,r13		! source line 606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_712 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_712  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_714 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_713  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_715
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_717
	.word	12
	.word	4
	.word	_Label_718
	.word	16
	.word	4
	.word	_Label_719
	.word	-12
	.word	4
	.word	_Label_720
	.word	-16
	.word	4
	.word	_Label_721
	.word	-20
	.word	4
	.word	_Label_722
	.word	-24
	.word	4
	.word	_Label_723
	.word	-28
	.word	4
	.word	0
_Label_715:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_716:
	.ascii	"Pself\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1946:
	push	r0
	sub	r1,1,r1
	bne	_Label_1946
	mov	630,r13		! source line 630
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_726 == _P_Kernel_currentThread then goto _Label_725		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_725
!	jmp	_Label_724
_Label_724:
! THEN...
	mov	647,r13		! source line 647
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_727 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	647,r13		! source line 647
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_725:
! ASSIGNMENT STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0AS",r10
	mov	653,r13		! source line 653
	mov	"\0\0SE",r10
!   _temp_728 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_730		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_730
!	jmp	_Label_729
_Label_729:
! THEN...
	mov	658,r13		! source line 658
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_732		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_732
!	jmp	_Label_731
_Label_731:
! THEN...
	mov	659,r13		! source line 659
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_733 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	659,r13		! source line 659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_732:
! ASSIGNMENT STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_735 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_734  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_730:
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_736
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_738
	.word	-12
	.word	4
	.word	_Label_739
	.word	-16
	.word	4
	.word	_Label_740
	.word	-20
	.word	4
	.word	_Label_741
	.word	-24
	.word	4
	.word	_Label_742
	.word	-28
	.word	4
	.word	_Label_743
	.word	-32
	.word	4
	.word	_Label_744
	.word	-36
	.word	4
	.word	_Label_745
	.word	-40
	.word	4
	.word	_Label_746
	.word	-44
	.word	4
	.word	0
_Label_736:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_737:
	.ascii	"Pself\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_744:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1947:
	push	r0
	sub	r1,1,r1
	bne	_Label_1947
	mov	670,r13		! source line 670
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_748		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_748
!	jmp	_Label_747
_Label_747:
! THEN...
	mov	683,r13		! source line 683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	683,r13		! source line 683
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_748:
! IF STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_752 == _P_Kernel_currentThread then goto _Label_751		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_751
!	jmp	_Label_750
_Label_750:
! THEN...
	mov	687,r13		! source line 687
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_753 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	687,r13		! source line 687
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_751:
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0AS",r10
	mov	693,r13		! source line 693
	mov	"\0\0SE",r10
!   _temp_754 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_755
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_755
	jmp	_Label_756
_Label_755:
! THEN...
	mov	695,r13		! source line 695
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_757 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	695,r13		! source line 695
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_756:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	_Label_762
	.word	-20
	.word	4
	.word	_Label_763
	.word	-24
	.word	4
	.word	_Label_764
	.word	-28
	.word	4
	.word	_Label_765
	.word	-32
	.word	4
	.word	0
_Label_758:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_759:
	.ascii	"Pself\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_765:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1948:
	push	r0
	sub	r1,1,r1
	bne	_Label_1948
	mov	702,r13		! source line 702
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0IF",r10
!   _temp_769 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_769 [0 ] into _temp_770
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_768 = *_temp_770  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_768 == 606348324 then goto _Label_767		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	709,r13		! source line 709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_771 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	709,r13		! source line 709
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_772
_Label_767:
! ELSE...
	mov	710,r13		! source line 710
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0IF",r10
!   _temp_776 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_776 [999 ] into _temp_777
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_775 = *_temp_777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_775 == 606348324 then goto _Label_774		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_774
!	jmp	_Label_773
_Label_773:
! THEN...
	mov	711,r13		! source line 711
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_778 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	711,r13		! source line 711
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_774:
! END IF...
_Label_772:
! RETURN STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_779
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_781
	.word	-12
	.word	4
	.word	_Label_782
	.word	-16
	.word	4
	.word	_Label_783
	.word	-20
	.word	4
	.word	_Label_784
	.word	-24
	.word	4
	.word	_Label_785
	.word	-28
	.word	4
	.word	_Label_786
	.word	-32
	.word	4
	.word	_Label_787
	.word	-36
	.word	4
	.word	_Label_788
	.word	-40
	.word	4
	.word	0
_Label_779:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_780:
	.ascii	"Pself\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1949:
	push	r0
	sub	r1,1,r1
	bne	_Label_1949
	mov	717,r13		! source line 717
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_789 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_790 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_792 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_793 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_798 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_799 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_798  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_794:
!   Perform the FOR-LOOP termination test
!   if i > _temp_799 then goto _Label_797		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_797
_Label_795:
	mov	730,r13		! source line 730
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_800 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_801 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_802 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_804 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_804 [i ] into _temp_805
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_803 = *_temp_805  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_806 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_808 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_808 [i ] into _temp_809
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_807 = *_temp_809  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_810 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_796:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_794
! END FOR
_Label_797:
! CALL STATEMENT...
!   _temp_811 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-116]
!   _temp_812 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_812  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_813 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-108]
!   _temp_815 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_815 [0 ] into _temp_816
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_814 = _temp_816		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_814  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	741,r13		! source line 741
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_819
	cmp	r1,2
	be	_Label_820
	cmp	r1,3
	be	_Label_821
	cmp	r1,4
	be	_Label_822
	cmp	r1,5
	be	_Label_823
	jmp	_Label_817
! CASE 1...
_Label_819:
! CALL STATEMENT...
!   _temp_824 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0BR",r10
	jmp	_Label_818
! CASE 2...
_Label_820:
! CALL STATEMENT...
!   _temp_825 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0BR",r10
	jmp	_Label_818
! CASE 3...
_Label_821:
! CALL STATEMENT...
!   _temp_826 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0BR",r10
	jmp	_Label_818
! CASE 4...
_Label_822:
! CALL STATEMENT...
!   _temp_827 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0BR",r10
	jmp	_Label_818
! CASE 5...
_Label_823:
! CALL STATEMENT...
!   _temp_828 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0BR",r10
	jmp	_Label_818
! DEFAULT CASE...
_Label_817:
! CALL STATEMENT...
!   _temp_829 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	758,r13		! source line 758
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_818:
! CALL STATEMENT...
!   _temp_830 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_831 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_836 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_837 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_836  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_832:
!   Perform the FOR-LOOP termination test
!   if i > _temp_837 then goto _Label_835		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_835
_Label_833:
	mov	764,r13		! source line 764
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_839 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_839  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_840 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_842 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_842 [i ] into _temp_843
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_841 = *_temp_843  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_844 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_846 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_846 [i ] into _temp_847
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_845 = *_temp_847  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_848 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_834:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_832
! END FOR
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_849
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	_Label_857
	.word	-36
	.word	4
	.word	_Label_858
	.word	-40
	.word	4
	.word	_Label_859
	.word	-44
	.word	4
	.word	_Label_860
	.word	-48
	.word	4
	.word	_Label_861
	.word	-52
	.word	4
	.word	_Label_862
	.word	-56
	.word	4
	.word	_Label_863
	.word	-60
	.word	4
	.word	_Label_864
	.word	-64
	.word	4
	.word	_Label_865
	.word	-68
	.word	4
	.word	_Label_866
	.word	-72
	.word	4
	.word	_Label_867
	.word	-76
	.word	4
	.word	_Label_868
	.word	-80
	.word	4
	.word	_Label_869
	.word	-84
	.word	4
	.word	_Label_870
	.word	-88
	.word	4
	.word	_Label_871
	.word	-92
	.word	4
	.word	_Label_872
	.word	-96
	.word	4
	.word	_Label_873
	.word	-100
	.word	4
	.word	_Label_874
	.word	-104
	.word	4
	.word	_Label_875
	.word	-108
	.word	4
	.word	_Label_876
	.word	-112
	.word	4
	.word	_Label_877
	.word	-116
	.word	4
	.word	_Label_878
	.word	-120
	.word	4
	.word	_Label_879
	.word	-124
	.word	4
	.word	_Label_880
	.word	-128
	.word	4
	.word	_Label_881
	.word	-132
	.word	4
	.word	_Label_882
	.word	-136
	.word	4
	.word	_Label_883
	.word	-140
	.word	4
	.word	_Label_884
	.word	-144
	.word	4
	.word	_Label_885
	.word	-148
	.word	4
	.word	_Label_886
	.word	-152
	.word	4
	.word	_Label_887
	.word	-156
	.word	4
	.word	_Label_888
	.word	-160
	.word	4
	.word	_Label_889
	.word	-164
	.word	4
	.word	_Label_890
	.word	-168
	.word	4
	.word	_Label_891
	.word	-172
	.word	4
	.word	_Label_892
	.word	-176
	.word	4
	.word	_Label_893
	.word	-180
	.word	4
	.word	_Label_894
	.word	-184
	.word	4
	.word	_Label_895
	.word	-188
	.word	4
	.word	_Label_896
	.word	-192
	.word	4
	.word	_Label_897
	.word	-196
	.word	4
	.word	0
_Label_849:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_850:
	.ascii	"Pself\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_896:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_897:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_898
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_898:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_899
	.word	_sourceFileName
	.word	227		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_899:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11505,r1
_Label_1950:
	push	r0
	sub	r1,1,r1
	bne	_Label_1950
	mov	829,r13		! source line 829
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_900 = _StringConst_78
	set	_StringConst_78,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   _temp_901 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_903 = &_temp_902
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_903 = _temp_903 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_905 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_1951:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1951
!   _temp_905 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_907:
!   Data Move: *_temp_903 = _temp_905  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_1952:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1952
!   _temp_903 = _temp_903 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_904 = _temp_904 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_904) then goto _Label_907
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_907
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_908 = &_temp_902
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1953
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1953:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_901 = *_temp_908  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1954:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1954
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41684,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41684,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41668,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41668,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_912 = &aThreadBecameFree
	set	41668,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0SE",r10
!   _temp_913 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0SE",r10
!   _temp_914 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-164]
!   _temp_915 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_915 [0 ] into _temp_916
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_914  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_917 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   _temp_918 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_918 [1 ] into _temp_919
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_917  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0SE",r10
!   _temp_920 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-140]
!   _temp_921 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_921 [2 ] into _temp_922
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_920  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0SE",r10
!   _temp_923 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-128]
!   _temp_924 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_924 [3 ] into _temp_925
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_923  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0SE",r10
!   _temp_926 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_927 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_927 [4 ] into _temp_928
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_926  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_929 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-104]
!   _temp_930 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_930 [5 ] into _temp_931
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_929  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
!   _temp_932 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   _temp_933 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_933 [6 ] into _temp_934
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
!   _temp_935 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-80]
!   _temp_936 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_936 [7 ] into _temp_937
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_935  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_938 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-68]
!   _temp_939 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_939 [8 ] into _temp_940
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_938  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_941 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-56]
!   _temp_942 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_942 [9 ] into _temp_943
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_941  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_948 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_949 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_948  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_944:
!   Perform the FOR-LOOP termination test
!   if i > _temp_949 then goto _Label_947		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_947
_Label_945:
	mov	861,r13		! source line 861
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   _temp_950 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_950 [i ] into _temp_951
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_952 = _temp_951 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_952 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0SE",r10
!   _temp_954 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_954 [i ] into _temp_955
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_953 = _temp_955		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_956 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_953  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_946:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_944
! END FOR
_Label_947:
! RETURN STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0RE",r10
	set	46024,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_957
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_959
	.word	-12
	.word	4
	.word	_Label_960
	.word	-16
	.word	4
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	_Label_963
	.word	-28
	.word	4
	.word	_Label_964
	.word	-32
	.word	4
	.word	_Label_965
	.word	-36
	.word	4
	.word	_Label_966
	.word	-40
	.word	4
	.word	_Label_967
	.word	-44
	.word	4
	.word	_Label_968
	.word	-48
	.word	4
	.word	_Label_969
	.word	-52
	.word	4
	.word	_Label_970
	.word	-56
	.word	4
	.word	_Label_971
	.word	-60
	.word	4
	.word	_Label_972
	.word	-64
	.word	4
	.word	_Label_973
	.word	-68
	.word	4
	.word	_Label_974
	.word	-72
	.word	4
	.word	_Label_975
	.word	-76
	.word	4
	.word	_Label_976
	.word	-80
	.word	4
	.word	_Label_977
	.word	-84
	.word	4
	.word	_Label_978
	.word	-88
	.word	4
	.word	_Label_979
	.word	-92
	.word	4
	.word	_Label_980
	.word	-96
	.word	4
	.word	_Label_981
	.word	-100
	.word	4
	.word	_Label_982
	.word	-104
	.word	4
	.word	_Label_983
	.word	-108
	.word	4
	.word	_Label_984
	.word	-112
	.word	4
	.word	_Label_985
	.word	-116
	.word	4
	.word	_Label_986
	.word	-120
	.word	4
	.word	_Label_987
	.word	-124
	.word	4
	.word	_Label_988
	.word	-128
	.word	4
	.word	_Label_989
	.word	-132
	.word	4
	.word	_Label_990
	.word	-136
	.word	4
	.word	_Label_991
	.word	-140
	.word	4
	.word	_Label_992
	.word	-144
	.word	4
	.word	_Label_993
	.word	-148
	.word	4
	.word	_Label_994
	.word	-152
	.word	4
	.word	_Label_995
	.word	-156
	.word	4
	.word	_Label_996
	.word	-160
	.word	4
	.word	_Label_997
	.word	-164
	.word	4
	.word	_Label_998
	.word	-168
	.word	4
	.word	_Label_999
	.word	-172
	.word	4
	.word	_Label_1000
	.word	-176
	.word	4
	.word	_Label_1001
	.word	-180
	.word	4
	.word	_Label_1002
	.word	-184
	.word	4
	.word	_Label_1003
	.word	-188
	.word	4
	.word	_Label_1004
	.word	-192
	.word	4
	.word	_Label_1005
	.word	-4356
	.word	4164
	.word	_Label_1006
	.word	-4360
	.word	4
	.word	_Label_1007
	.word	-4364
	.word	4
	.word	_Label_1008
	.word	-46008
	.word	41644
	.word	_Label_1009
	.word	-46012
	.word	4
	.word	_Label_1010
	.word	-46016
	.word	4
	.word	_Label_1011
	.word	-46020
	.word	4
	.word	0
_Label_957:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_958:
	.ascii	"Pself\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_1011:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1955:
	push	r0
	sub	r1,1,r1
	bne	_Label_1955
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1012 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1017 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1018 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1017  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1013:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1018 then goto _Label_1016		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1016
_Label_1014:
	mov	883,r13		! source line 883
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1019 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1020 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1022 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1022 [i ] into _temp_1023
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1021 = _temp_1023		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_function_139_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1015:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1013
! END FOR
_Label_1016:
! CALL STATEMENT...
!   _temp_1024 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_1025 = _function_138_PrintObjectAddr
	set	_function_138_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1026 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1025  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1027
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1029
	.word	-12
	.word	4
	.word	_Label_1030
	.word	-16
	.word	4
	.word	_Label_1031
	.word	-20
	.word	4
	.word	_Label_1032
	.word	-24
	.word	4
	.word	_Label_1033
	.word	-28
	.word	4
	.word	_Label_1034
	.word	-32
	.word	4
	.word	_Label_1035
	.word	-36
	.word	4
	.word	_Label_1036
	.word	-40
	.word	4
	.word	_Label_1037
	.word	-44
	.word	4
	.word	_Label_1038
	.word	-48
	.word	4
	.word	_Label_1039
	.word	-52
	.word	4
	.word	_Label_1040
	.word	-56
	.word	4
	.word	_Label_1041
	.word	-60
	.word	4
	.word	0
_Label_1027:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1028:
	.ascii	"Pself\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1040:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1041:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1956:
	push	r0
	sub	r1,1,r1
	bne	_Label_1956
	mov	897,r13		! source line 897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1042 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0WH",r10
_Label_1043:
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1046 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1044 else goto _Label_1045
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1045
	jmp	_Label_1044
_Label_1044:
	mov	910,r13		! source line 910
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_1047 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1048 = &aThreadBecameFree
	set	41668,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1047  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1043
_Label_1045:
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1049 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadpointer  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   if intIsZero (threadpointer) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = threadpointer + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1050 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1051 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0RE",r10
!   ReturnResult: threadpointer  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1052
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1054
	.word	-12
	.word	4
	.word	_Label_1055
	.word	-16
	.word	4
	.word	_Label_1056
	.word	-20
	.word	4
	.word	_Label_1057
	.word	-24
	.word	4
	.word	_Label_1058
	.word	-28
	.word	4
	.word	_Label_1059
	.word	-32
	.word	4
	.word	_Label_1060
	.word	-36
	.word	4
	.word	_Label_1061
	.word	-40
	.word	4
	.word	0
_Label_1052:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1053:
	.ascii	"Pself\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1061:
	.byte	'P'
	.ascii	"threadpointer\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1957:
	push	r0
	sub	r1,1,r1
	bne	_Label_1957
	mov	925,r13		! source line 925
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1062 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1063 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1064 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1065 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1066 = &aThreadBecameFree
	set	41668,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1065  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1067 = &threadManagerLock
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1068
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1070
	.word	12
	.word	4
	.word	_Label_1071
	.word	-12
	.word	4
	.word	_Label_1072
	.word	-16
	.word	4
	.word	_Label_1073
	.word	-20
	.word	4
	.word	_Label_1074
	.word	-24
	.word	4
	.word	_Label_1075
	.word	-28
	.word	4
	.word	_Label_1076
	.word	-32
	.word	4
	.word	0
_Label_1068:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1069:
	.ascii	"Pself\0"
	.align
_Label_1070:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1077
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1077:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1078
	.word	_sourceFileName
	.word	250		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1078:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1958:
	push	r0
	sub	r1,1,r1
	bne	_Label_1958
	mov	956,r13		! source line 956
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1959:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1959
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1080 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1081
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1083
	.word	-12
	.word	4
	.word	_Label_1084
	.word	-16
	.word	4
	.word	0
_Label_1081:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1082:
	.ascii	"Pself\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1960:
	push	r0
	sub	r1,1,r1
	bne	_Label_1960
	mov	970,r13		! source line 970
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1085) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1086 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1087 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	977,r13		! source line 977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CA",r10
	call	_function_139_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	988,r13		! source line 988
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1088
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1090
	.word	-12
	.word	4
	.word	_Label_1091
	.word	-16
	.word	4
	.word	_Label_1092
	.word	-20
	.word	4
	.word	0
_Label_1088:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1089:
	.ascii	"Pself\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1961:
	push	r0
	sub	r1,1,r1
	bne	_Label_1961
	mov	993,r13		! source line 993
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1093 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1095 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1096 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1098		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1098
!	jmp	_Label_1097
_Label_1097:
! THEN...
	mov	1003,r13		! source line 1003
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1099 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1100
_Label_1098:
! ELSE...
	mov	1004,r13		! source line 1004
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1102		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1102
!	jmp	_Label_1101
_Label_1101:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1103 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1005,r13		! source line 1005
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1104
_Label_1102:
! ELSE...
	mov	1006,r13		! source line 1006
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1106		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	1007,r13		! source line 1007
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1107 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1108
_Label_1106:
! ELSE...
	mov	1009,r13		! source line 1009
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1009,r13		! source line 1009
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1108:
! END IF...
_Label_1104:
! END IF...
_Label_1100:
! CALL STATEMENT...
!   _temp_1110 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1111 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1112
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1114
	.word	-12
	.word	4
	.word	_Label_1115
	.word	-16
	.word	4
	.word	_Label_1116
	.word	-20
	.word	4
	.word	_Label_1117
	.word	-24
	.word	4
	.word	_Label_1118
	.word	-28
	.word	4
	.word	_Label_1119
	.word	-32
	.word	4
	.word	_Label_1120
	.word	-36
	.word	4
	.word	_Label_1121
	.word	-40
	.word	4
	.word	_Label_1122
	.word	-44
	.word	4
	.word	_Label_1123
	.word	-48
	.word	4
	.word	0
_Label_1112:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1113:
	.ascii	"Pself\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1124
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1124:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1125
	.word	_sourceFileName
	.word	270		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1125:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	386,r1
_Label_1962:
	push	r0
	sub	r1,1,r1
	bne	_Label_1962
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0AS",r10
!   _temp_1126 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1540]
!   NEW ARRAY Constructor...
!   _temp_1128 = &_temp_1127
	add	r14,-1536,r1
	store	r1,[r14+-292]
!   _temp_1128 = _temp_1128 + 4
	load	[r14+-292],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1130 = zeros  (sizeInBytes=124)
	add	r14,-284,r4
	mov	31,r3
_Label_1963:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1963
!   _temp_1130 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-284]
	mov	10,r1
	store	r1,[r14+-288]
_Label_1132:
!   Data Move: *_temp_1128 = _temp_1130  (sizeInBytes=124)
	add	r14,-284,r5
	load	[r14+-292],r4
	mov	31,r3
_Label_1964:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1964
!   _temp_1128 = _temp_1128 + 124
	load	[r14+-292],r1
	add	r1,124,r1
	store	r1,[r14+-292]
!   _temp_1129 = _temp_1129 + -1
	load	[r14+-288],r1
	add	r1,-1,r1
	store	r1,[r14+-288]
!   if intNotZero (_temp_1129) then goto _Label_1132
	load	[r14+-288],r1
	cmp	r1,r0
	bne	_Label_1132
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1536]
!   _temp_1133 = &_temp_1127
	add	r14,-1536,r1
	store	r1,[r14+-156]
!   make sure array has size 10
	load	[r14+-1540],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1965
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1965:
!   make sure array has size 10
	load	[r14+-156],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1126 = *_temp_1133  (sizeInBytes=1244)
	load	[r14+-156],r5
	load	[r14+-1540],r4
	mov	311,r3
_Label_1966:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1966
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1136 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-144]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1138 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1140 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-128]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1141 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1141 [0 ] into _temp_1142
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1143 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1143 [1 ] into _temp_1144
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0SE",r10
!   _temp_1145 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1145 [2 ] into _temp_1146
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1147 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1147 [3 ] into _temp_1148
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1149 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1149 [4 ] into _temp_1150
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1151 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1151 [5 ] into _temp_1152
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1153 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1153 [6 ] into _temp_1154
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1155 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1155 [7 ] into _temp_1156
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1157 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1157 [8 ] into _temp_1158
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1159 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1159 [9 ] into _temp_1160
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1165 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1166 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1165  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-1544]
_Label_1161:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1166 then goto _Label_1164		
	load	[r14+-1544],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1164
_Label_1162:
	mov	1059,r13		! source line 1059
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   _temp_1167 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1167 [i ] into _temp_1168
!     make sure index expr is >= 0
	load	[r14+-1544],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1169 = _temp_1168 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1169 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1171 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1171 [i ] into _temp_1172
!     make sure index expr is >= 0
	load	[r14+-1544],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1170 = _temp_1172		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1173 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1170  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1163:
!   i = i + 1
	load	[r14+-1544],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1544]
	jmp	_Label_1161
! END FOR
_Label_1164:
! RETURN STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0RE",r10
	add	r15,1548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1174
	.word	4		! total size of parameters
	.word	1544		! frame size = 1544
	.word	_Label_1175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1176
	.word	-12
	.word	4
	.word	_Label_1177
	.word	-16
	.word	4
	.word	_Label_1178
	.word	-20
	.word	4
	.word	_Label_1179
	.word	-24
	.word	4
	.word	_Label_1180
	.word	-28
	.word	4
	.word	_Label_1181
	.word	-32
	.word	4
	.word	_Label_1182
	.word	-36
	.word	4
	.word	_Label_1183
	.word	-40
	.word	4
	.word	_Label_1184
	.word	-44
	.word	4
	.word	_Label_1185
	.word	-48
	.word	4
	.word	_Label_1186
	.word	-52
	.word	4
	.word	_Label_1187
	.word	-56
	.word	4
	.word	_Label_1188
	.word	-60
	.word	4
	.word	_Label_1189
	.word	-64
	.word	4
	.word	_Label_1190
	.word	-68
	.word	4
	.word	_Label_1191
	.word	-72
	.word	4
	.word	_Label_1192
	.word	-76
	.word	4
	.word	_Label_1193
	.word	-80
	.word	4
	.word	_Label_1194
	.word	-84
	.word	4
	.word	_Label_1195
	.word	-88
	.word	4
	.word	_Label_1196
	.word	-92
	.word	4
	.word	_Label_1197
	.word	-96
	.word	4
	.word	_Label_1198
	.word	-100
	.word	4
	.word	_Label_1199
	.word	-104
	.word	4
	.word	_Label_1200
	.word	-108
	.word	4
	.word	_Label_1201
	.word	-112
	.word	4
	.word	_Label_1202
	.word	-116
	.word	4
	.word	_Label_1203
	.word	-120
	.word	4
	.word	_Label_1204
	.word	-124
	.word	4
	.word	_Label_1205
	.word	-128
	.word	4
	.word	_Label_1206
	.word	-132
	.word	4
	.word	_Label_1207
	.word	-136
	.word	4
	.word	_Label_1208
	.word	-140
	.word	4
	.word	_Label_1209
	.word	-144
	.word	4
	.word	_Label_1210
	.word	-148
	.word	4
	.word	_Label_1211
	.word	-152
	.word	4
	.word	_Label_1212
	.word	-156
	.word	4
	.word	_Label_1213
	.word	-160
	.word	4
	.word	_Label_1214
	.word	-284
	.word	124
	.word	_Label_1215
	.word	-288
	.word	4
	.word	_Label_1216
	.word	-292
	.word	4
	.word	_Label_1217
	.word	-1536
	.word	1244
	.word	_Label_1218
	.word	-1540
	.word	4
	.word	_Label_1219
	.word	-1544
	.word	4
	.word	0
_Label_1174:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1175:
	.ascii	"Pself\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1219:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1967:
	push	r0
	sub	r1,1,r1
	bne	_Label_1967
	mov	1072,r13		! source line 1072
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1220 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1225 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1226 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1225  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1221:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1226 then goto _Label_1224		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1224
_Label_1222:
	mov	1081,r13		! source line 1081
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1082,r13		! source line 1082
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1228 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1229 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1229 [i ] into _temp_1230
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1223:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1221
! END FOR
_Label_1224:
! CALL STATEMENT...
!   _temp_1231 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1232 = _function_138_PrintObjectAddr
	set	_function_138_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1233 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1232  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1089,r13		! source line 1089
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1090,r13		! source line 1090
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1234
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1236
	.word	-12
	.word	4
	.word	_Label_1237
	.word	-16
	.word	4
	.word	_Label_1238
	.word	-20
	.word	4
	.word	_Label_1239
	.word	-24
	.word	4
	.word	_Label_1240
	.word	-28
	.word	4
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	_Label_1244
	.word	-44
	.word	4
	.word	_Label_1245
	.word	-48
	.word	4
	.word	_Label_1246
	.word	-52
	.word	4
	.word	_Label_1247
	.word	-56
	.word	4
	.word	0
_Label_1234:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1235:
	.ascii	"Pself\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1246:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1247:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1968:
	push	r0
	sub	r1,1,r1
	bne	_Label_1968
	mov	1095,r13		! source line 1095
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1102,r13		! source line 1102
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1248 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1253 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1254 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1253  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1249:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1254 then goto _Label_1252		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1252
_Label_1250:
	mov	1104,r13		! source line 1104
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1255 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1256 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1256 [i ] into _temp_1257
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1251:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1249
! END FOR
_Label_1252:
! CALL STATEMENT...
!   _temp_1258 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1259 = _function_138_PrintObjectAddr
	set	_function_138_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1260 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1259  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1261
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1263
	.word	-12
	.word	4
	.word	_Label_1264
	.word	-16
	.word	4
	.word	_Label_1265
	.word	-20
	.word	4
	.word	_Label_1266
	.word	-24
	.word	4
	.word	_Label_1267
	.word	-28
	.word	4
	.word	_Label_1268
	.word	-32
	.word	4
	.word	_Label_1269
	.word	-36
	.word	4
	.word	_Label_1270
	.word	-40
	.word	4
	.word	_Label_1271
	.word	-44
	.word	4
	.word	_Label_1272
	.word	-48
	.word	4
	.word	_Label_1273
	.word	-52
	.word	4
	.word	0
_Label_1261:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1262:
	.ascii	"Pself\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1272:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1273:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	14,r1
_Label_1969:
	push	r0
	sub	r1,1,r1
	bne	_Label_1969
	mov	1117,r13		! source line 1117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1274 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! WHILE STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0WH",r10
_Label_1275:
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1278 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1276 else goto _Label_1277
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1277
	jmp	_Label_1276
_Label_1276:
	mov	1131,r13		! source line 1131
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1279 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1280 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1279  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1275
_Label_1277:
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1281 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processpointer  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   if intIsZero (processpointer) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = processpointer + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1282 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0IF",r10
!   if intIsZero (processpointer) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1286 = processpointer + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1285 = *_temp_1286  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1285 != 2 then goto _Label_1284		(int)
	load	[r14+-28],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1284
!	jmp	_Label_1283
_Label_1283:
! THEN...
	mov	1141,r13		! source line 1141
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_1287 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1288 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1284:
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1289 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0RE",r10
!   ReturnResult: processpointer  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1290
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1291
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1292
	.word	-12
	.word	4
	.word	_Label_1293
	.word	-16
	.word	4
	.word	_Label_1294
	.word	-20
	.word	4
	.word	_Label_1295
	.word	-24
	.word	4
	.word	_Label_1296
	.word	-28
	.word	4
	.word	_Label_1297
	.word	-32
	.word	4
	.word	_Label_1298
	.word	-36
	.word	4
	.word	_Label_1299
	.word	-40
	.word	4
	.word	_Label_1300
	.word	-44
	.word	4
	.word	_Label_1301
	.word	-48
	.word	4
	.word	_Label_1302
	.word	-52
	.word	4
	.word	_Label_1303
	.word	-56
	.word	4
	.word	0
_Label_1290:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1291:
	.ascii	"Pself\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1303:
	.byte	'P'
	.ascii	"processpointer\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1970:
	push	r0
	sub	r1,1,r1
	bne	_Label_1970
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1304 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1305 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1306 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1307 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1308 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1307  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_1309 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1310
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1311
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1312
	.word	12
	.word	4
	.word	_Label_1313
	.word	-12
	.word	4
	.word	_Label_1314
	.word	-16
	.word	4
	.word	_Label_1315
	.word	-20
	.word	4
	.word	_Label_1316
	.word	-24
	.word	4
	.word	_Label_1317
	.word	-28
	.word	4
	.word	_Label_1318
	.word	-32
	.word	4
	.word	0
_Label_1310:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1311:
	.ascii	"Pself\0"
	.align
_Label_1312:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1319
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1319:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1320
	.word	_sourceFileName
	.word	293		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1320:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1971:
	push	r0
	sub	r1,1,r1
	bne	_Label_1971
	mov	1199,r13		! source line 1199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1321 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_1323 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0SE",r10
!   _temp_1325 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0SE",r10
!   _temp_1327 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1332 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1333 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1332  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1328:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1333 then goto _Label_1331		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1331
_Label_1329:
	mov	1218,r13		! source line 1218
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1336 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1336) then goto _Label_1335
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1335
!	jmp	_Label_1334
_Label_1334:
! THEN...
	mov	1222,r13		! source line 1222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1337 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1222,r13		! source line 1222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1335:
!   Increment the FOR-LOOP index variable and jump back
_Label_1330:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1328
! END FOR
_Label_1331:
! RETURN STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1338
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1339
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1340
	.word	-12
	.word	4
	.word	_Label_1341
	.word	-16
	.word	4
	.word	_Label_1342
	.word	-20
	.word	4
	.word	_Label_1343
	.word	-24
	.word	4
	.word	_Label_1344
	.word	-28
	.word	4
	.word	_Label_1345
	.word	-32
	.word	4
	.word	_Label_1346
	.word	-36
	.word	4
	.word	_Label_1347
	.word	-40
	.word	4
	.word	_Label_1348
	.word	-44
	.word	4
	.word	_Label_1349
	.word	-48
	.word	4
	.word	_Label_1350
	.word	-52
	.word	4
	.word	_Label_1351
	.word	-56
	.word	4
	.word	0
_Label_1338:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1339:
	.ascii	"Pself\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1351:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1972:
	push	r0
	sub	r1,1,r1
	bne	_Label_1972
	mov	1229,r13		! source line 1229
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1352 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1353 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1354 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1355 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1356 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1357 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1358
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1360
	.word	-12
	.word	4
	.word	_Label_1361
	.word	-16
	.word	4
	.word	_Label_1362
	.word	-20
	.word	4
	.word	_Label_1363
	.word	-24
	.word	4
	.word	_Label_1364
	.word	-28
	.word	4
	.word	_Label_1365
	.word	-32
	.word	4
	.word	0
_Label_1358:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1359:
	.ascii	"Pself\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	1243,r13		! source line 1243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
!   _temp_1366 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0WH",r10
_Label_1367:
!   if numberFreeFrames >= 1 then goto _Label_1369		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1369
!	jmp	_Label_1368
_Label_1368:
	mov	1254,r13		! source line 1254
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
!   _temp_1370 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1371 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1367
_Label_1369:
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
	mov	1259,r13		! source line 1259
	mov	"\0\0SE",r10
!   _temp_1372 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_1373 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0AS",r10
!   _temp_1374 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1374		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1375
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1377
	.word	-12
	.word	4
	.word	_Label_1378
	.word	-16
	.word	4
	.word	_Label_1379
	.word	-20
	.word	4
	.word	_Label_1380
	.word	-24
	.word	4
	.word	_Label_1381
	.word	-28
	.word	4
	.word	_Label_1382
	.word	-32
	.word	4
	.word	_Label_1383
	.word	-36
	.word	4
	.word	_Label_1384
	.word	-40
	.word	4
	.word	0
_Label_1375:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1376:
	.ascii	"Pself\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1383:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1384:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1974:
	push	r0
	sub	r1,1,r1
	bne	_Label_1974
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
!   _temp_1385 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0WH",r10
_Label_1386:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1388		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1388
!	jmp	_Label_1387
_Label_1387:
	mov	1281,r13		! source line 1281
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_1389 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1390 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1389  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1386
_Label_1388:
! FOR STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1395 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1396 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1395  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1391:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1396 then goto _Label_1394		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1394
_Label_1392:
	mov	1285,r13		! source line 1285
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
!   _temp_1397 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_1398 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1398		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1393:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1391
! END FOR
_Label_1394:
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1399 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0SE",r10
!   _temp_1400 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1401
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1403
	.word	12
	.word	4
	.word	_Label_1404
	.word	16
	.word	4
	.word	_Label_1405
	.word	-12
	.word	4
	.word	_Label_1406
	.word	-16
	.word	4
	.word	_Label_1407
	.word	-20
	.word	4
	.word	_Label_1408
	.word	-24
	.word	4
	.word	_Label_1409
	.word	-28
	.word	4
	.word	_Label_1410
	.word	-32
	.word	4
	.word	_Label_1411
	.word	-36
	.word	4
	.word	_Label_1412
	.word	-40
	.word	4
	.word	_Label_1413
	.word	-44
	.word	4
	.word	_Label_1414
	.word	-48
	.word	4
	.word	_Label_1415
	.word	-52
	.word	4
	.word	_Label_1416
	.word	-56
	.word	4
	.word	0
_Label_1401:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1402:
	.ascii	"Pself\0"
	.align
_Label_1403:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1404:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1414:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1416:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1975:
	push	r0
	sub	r1,1,r1
	bne	_Label_1975
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1417 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1418  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1423 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1424 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1423  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1419:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1424 then goto _Label_1422		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1422
_Label_1420:
	mov	1310,r13		! source line 1310
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0AS",r10
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0AS",r10
!   _temp_1425 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   f = _temp_1425 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0SE",r10
!   _temp_1426 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=f  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1421:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1419
! END FOR
_Label_1422:
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-52],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_1427 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1428 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1427  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0SE",r10
!   _temp_1429 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1430
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1432
	.word	12
	.word	4
	.word	_Label_1433
	.word	-12
	.word	4
	.word	_Label_1434
	.word	-16
	.word	4
	.word	_Label_1435
	.word	-20
	.word	4
	.word	_Label_1436
	.word	-24
	.word	4
	.word	_Label_1437
	.word	-28
	.word	4
	.word	_Label_1438
	.word	-32
	.word	4
	.word	_Label_1439
	.word	-36
	.word	4
	.word	_Label_1440
	.word	-40
	.word	4
	.word	_Label_1441
	.word	-44
	.word	4
	.word	_Label_1442
	.word	-48
	.word	4
	.word	_Label_1443
	.word	-52
	.word	4
	.word	_Label_1444
	.word	-56
	.word	4
	.word	_Label_1445
	.word	-60
	.word	4
	.word	0
_Label_1430:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1431:
	.ascii	"Pself\0"
	.align
_Label_1432:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1442:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1443:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1444:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1446
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1446:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1447
	.word	_sourceFileName
	.word	312		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1447:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1976:
	push	r0
	sub	r1,1,r1
	bne	_Label_1976
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   _temp_1448 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1450 = &_temp_1449
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1450 = _temp_1450 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1452:
!   Data Move: *_temp_1450 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1450 = _temp_1450 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1451 = _temp_1451 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1451) then goto _Label_1452
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1452
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1453 = &_temp_1449
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1977
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1977:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1448 = *_temp_1453  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1978:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1978
! RETURN STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1454
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1456
	.word	-12
	.word	4
	.word	_Label_1457
	.word	-16
	.word	4
	.word	_Label_1458
	.word	-20
	.word	4
	.word	_Label_1459
	.word	-104
	.word	84
	.word	_Label_1460
	.word	-108
	.word	4
	.word	0
_Label_1454:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1455:
	.ascii	"Pself\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1979:
	push	r0
	sub	r1,1,r1
	bne	_Label_1979
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1461 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1462 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1467 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1468 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1467  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1463:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1468 then goto _Label_1466		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1466
_Label_1464:
	mov	1350,r13		! source line 1350
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1469 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1351,r13		! source line 1351
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1471 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1471 [i ] into _temp_1472
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1470 = _temp_1472		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1470  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1473 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1353,r13		! source line 1353
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1475 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1475 [i ] into _temp_1476
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1474 = *_temp_1476  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1477 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1478 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1479 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1480  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1482 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0IF",r10
	mov	1360,r13		! source line 1360
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1486) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1485) then goto _Label_1484
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1484
!	jmp	_Label_1483
_Label_1483:
! THEN...
	mov	1361,r13		! source line 1361
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1488) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1487  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1489
_Label_1484:
! ELSE...
	mov	1363,r13		! source line 1363
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1490 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1489:
! CALL STATEMENT...
!   _temp_1491 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1365,r13		! source line 1365
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
	mov	1366,r13		! source line 1366
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1492 else goto _Label_1493
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1493
	jmp	_Label_1492
_Label_1492:
! THEN...
	mov	1367,r13		! source line 1367
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1495 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1367,r13		! source line 1367
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1496
_Label_1493:
! ELSE...
	mov	1369,r13		! source line 1369
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1497 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1369,r13		! source line 1369
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1496:
! CALL STATEMENT...
!   _temp_1498 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1371,r13		! source line 1371
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0IF",r10
	mov	1372,r13		! source line 1372
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1501) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1499 else goto _Label_1500
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1500
	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	1373,r13		! source line 1373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1373,r13		! source line 1373
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1503
_Label_1500:
! ELSE...
	mov	1375,r13		! source line 1375
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1504 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1503:
! CALL STATEMENT...
!   _temp_1505 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0IF",r10
	mov	1378,r13		! source line 1378
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1508) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1506 else goto _Label_1507
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1507
	jmp	_Label_1506
_Label_1506:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1510
_Label_1507:
! ELSE...
	mov	1381,r13		! source line 1381
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1510:
! CALL STATEMENT...
!   _temp_1512 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0IF",r10
	mov	1384,r13		! source line 1384
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1515) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1513 else goto _Label_1514
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1514
	jmp	_Label_1513
_Label_1513:
! THEN...
	mov	1385,r13		! source line 1385
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1516 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1516  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1385,r13		! source line 1385
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1517
_Label_1514:
! ELSE...
	mov	1387,r13		! source line 1387
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1518 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1517:
! CALL STATEMENT...
!   Call the function
	mov	1389,r13		! source line 1389
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1465:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1463
! END FOR
_Label_1466:
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1519
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1521
	.word	-12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	_Label_1526
	.word	-32
	.word	4
	.word	_Label_1527
	.word	-36
	.word	4
	.word	_Label_1528
	.word	-40
	.word	4
	.word	_Label_1529
	.word	-44
	.word	4
	.word	_Label_1530
	.word	-48
	.word	4
	.word	_Label_1531
	.word	-52
	.word	4
	.word	_Label_1532
	.word	-56
	.word	4
	.word	_Label_1533
	.word	-60
	.word	4
	.word	_Label_1534
	.word	-64
	.word	4
	.word	_Label_1535
	.word	-68
	.word	4
	.word	_Label_1536
	.word	-72
	.word	4
	.word	_Label_1537
	.word	-76
	.word	4
	.word	_Label_1538
	.word	-80
	.word	4
	.word	_Label_1539
	.word	-84
	.word	4
	.word	_Label_1540
	.word	-88
	.word	4
	.word	_Label_1541
	.word	-92
	.word	4
	.word	_Label_1542
	.word	-96
	.word	4
	.word	_Label_1543
	.word	-100
	.word	4
	.word	_Label_1544
	.word	-104
	.word	4
	.word	_Label_1545
	.word	-108
	.word	4
	.word	_Label_1546
	.word	-112
	.word	4
	.word	_Label_1547
	.word	-116
	.word	4
	.word	_Label_1548
	.word	-120
	.word	4
	.word	_Label_1549
	.word	-124
	.word	4
	.word	_Label_1550
	.word	-128
	.word	4
	.word	_Label_1551
	.word	-132
	.word	4
	.word	_Label_1552
	.word	-136
	.word	4
	.word	_Label_1553
	.word	-140
	.word	4
	.word	_Label_1554
	.word	-144
	.word	4
	.word	_Label_1555
	.word	-148
	.word	4
	.word	_Label_1556
	.word	-152
	.word	4
	.word	_Label_1557
	.word	-156
	.word	4
	.word	_Label_1558
	.word	-160
	.word	4
	.word	_Label_1559
	.word	-164
	.word	4
	.word	_Label_1560
	.word	-168
	.word	4
	.word	0
_Label_1519:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1520:
	.ascii	"Pself\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1560:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1980:
	push	r0
	sub	r1,1,r1
	bne	_Label_1980
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0RE",r10
!   _temp_1563 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1563 [entry ] into _temp_1564
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1562 = *_temp_1564  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1561 = _temp_1562 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1561  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1565
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1567
	.word	12
	.word	4
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	_Label_1571
	.word	-24
	.word	4
	.word	0
_Label_1565:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1566:
	.ascii	"Pself\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1981:
	push	r0
	sub	r1,1,r1
	bne	_Label_1981
	mov	1405,r13		! source line 1405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0RE",r10
!   _temp_1574 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1574 [entry ] into _temp_1575
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1573 = *_temp_1575  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1572 = _temp_1573 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1572  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1576
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	12
	.word	4
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	0
_Label_1576:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1982:
	push	r0
	sub	r1,1,r1
	bne	_Label_1982
	mov	1414,r13		! source line 1414
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   _temp_1583 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1583 [entry ] into _temp_1584
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1588 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1588 [entry ] into _temp_1589
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1587 = *_temp_1589  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1586 = _temp_1587 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1585 = _temp_1586 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1584 = _temp_1585  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1590
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	16
	.word	4
	.word	_Label_1594
	.word	-12
	.word	4
	.word	_Label_1595
	.word	-16
	.word	4
	.word	_Label_1596
	.word	-20
	.word	4
	.word	_Label_1597
	.word	-24
	.word	4
	.word	_Label_1598
	.word	-28
	.word	4
	.word	_Label_1599
	.word	-32
	.word	4
	.word	_Label_1600
	.word	-36
	.word	4
	.word	0
_Label_1590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1593:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1983:
	push	r0
	sub	r1,1,r1
	bne	_Label_1983
	mov	1424,r13		! source line 1424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
!   _temp_1604 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1604 [entry ] into _temp_1605
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1603 = *_temp_1605  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1602 = _temp_1603 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1602) then goto _Label_1606
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1606
!   _temp_1601 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1607
_Label_1606:
!   _temp_1601 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1607:
!   ReturnResult: _temp_1601  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1608
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	12
	.word	4
	.word	_Label_1611
	.word	-16
	.word	4
	.word	_Label_1612
	.word	-20
	.word	4
	.word	_Label_1613
	.word	-24
	.word	4
	.word	_Label_1614
	.word	-28
	.word	4
	.word	_Label_1615
	.word	-9
	.word	1
	.word	0
_Label_1608:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1615:
	.byte	'C'
	.ascii	"_temp_1601\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1984:
	push	r0
	sub	r1,1,r1
	bne	_Label_1984
	mov	1433,r13		! source line 1433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   _temp_1619 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1619 [entry ] into _temp_1620
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1618 = *_temp_1620  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1617 = _temp_1618 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1617) then goto _Label_1621
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1621
!   _temp_1616 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1622
_Label_1621:
!   _temp_1616 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1622:
!   ReturnResult: _temp_1616  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1623
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-9
	.word	1
	.word	0
_Label_1623:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1630:
	.byte	'C'
	.ascii	"_temp_1616\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1985:
	push	r0
	sub	r1,1,r1
	bne	_Label_1985
	mov	1442,r13		! source line 1442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
!   _temp_1634 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1634 [entry ] into _temp_1635
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1633 = *_temp_1635  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1632 = _temp_1633 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1632) then goto _Label_1636
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1636
!   _temp_1631 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1637
_Label_1636:
!   _temp_1631 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1637:
!   ReturnResult: _temp_1631  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1638
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1640
	.word	12
	.word	4
	.word	_Label_1641
	.word	-16
	.word	4
	.word	_Label_1642
	.word	-20
	.word	4
	.word	_Label_1643
	.word	-24
	.word	4
	.word	_Label_1644
	.word	-28
	.word	4
	.word	_Label_1645
	.word	-9
	.word	1
	.word	0
_Label_1638:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1639:
	.ascii	"Pself\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1645:
	.byte	'C'
	.ascii	"_temp_1631\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1986:
	push	r0
	sub	r1,1,r1
	bne	_Label_1986
	mov	1451,r13		! source line 1451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0RE",r10
!   _temp_1649 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1649 [entry ] into _temp_1650
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1648 = *_temp_1650  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1647 = _temp_1648 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1647) then goto _Label_1651
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1651
!   _temp_1646 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1652
_Label_1651:
!   _temp_1646 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1652:
!   ReturnResult: _temp_1646  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1653
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1655
	.word	12
	.word	4
	.word	_Label_1656
	.word	-16
	.word	4
	.word	_Label_1657
	.word	-20
	.word	4
	.word	_Label_1658
	.word	-24
	.word	4
	.word	_Label_1659
	.word	-28
	.word	4
	.word	_Label_1660
	.word	-9
	.word	1
	.word	0
_Label_1653:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1654:
	.ascii	"Pself\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1660:
	.byte	'C'
	.ascii	"_temp_1646\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1987:
	push	r0
	sub	r1,1,r1
	bne	_Label_1987
	mov	1460,r13		! source line 1460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   _temp_1661 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1661 [entry ] into _temp_1662
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1665 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1665 [entry ] into _temp_1666
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1664 = *_temp_1666  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1663 = _temp_1664 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1662 = _temp_1663  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1667
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1668
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1669
	.word	12
	.word	4
	.word	_Label_1670
	.word	-12
	.word	4
	.word	_Label_1671
	.word	-16
	.word	4
	.word	_Label_1672
	.word	-20
	.word	4
	.word	_Label_1673
	.word	-24
	.word	4
	.word	_Label_1674
	.word	-28
	.word	4
	.word	_Label_1675
	.word	-32
	.word	4
	.word	0
_Label_1667:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1668:
	.ascii	"Pself\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1988:
	push	r0
	sub	r1,1,r1
	bne	_Label_1988
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   _temp_1676 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1676 [entry ] into _temp_1677
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1680 [entry ] into _temp_1681
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1679 = *_temp_1681  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1678 = _temp_1679 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1677 = _temp_1678  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1682
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1684
	.word	12
	.word	4
	.word	_Label_1685
	.word	-12
	.word	4
	.word	_Label_1686
	.word	-16
	.word	4
	.word	_Label_1687
	.word	-20
	.word	4
	.word	_Label_1688
	.word	-24
	.word	4
	.word	_Label_1689
	.word	-28
	.word	4
	.word	_Label_1690
	.word	-32
	.word	4
	.word	0
_Label_1682:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1683:
	.ascii	"Pself\0"
	.align
_Label_1684:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1989:
	push	r0
	sub	r1,1,r1
	bne	_Label_1989
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   _temp_1691 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1691 [entry ] into _temp_1692
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1695 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1695 [entry ] into _temp_1696
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1694 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1693 = _temp_1694 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1692 = _temp_1693  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1697
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	12
	.word	4
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-24
	.word	4
	.word	_Label_1704
	.word	-28
	.word	4
	.word	_Label_1705
	.word	-32
	.word	4
	.word	0
_Label_1697:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1990:
	push	r0
	sub	r1,1,r1
	bne	_Label_1990
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   _temp_1706 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1706 [entry ] into _temp_1707
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1710 [entry ] into _temp_1711
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1709 = *_temp_1711  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1708 = _temp_1709 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1707 = _temp_1708  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1712
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	12
	.word	4
	.word	_Label_1715
	.word	-12
	.word	4
	.word	_Label_1716
	.word	-16
	.word	4
	.word	_Label_1717
	.word	-20
	.word	4
	.word	_Label_1718
	.word	-24
	.word	4
	.word	_Label_1719
	.word	-28
	.word	4
	.word	_Label_1720
	.word	-32
	.word	4
	.word	0
_Label_1712:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1991:
	push	r0
	sub	r1,1,r1
	bne	_Label_1991
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   _temp_1721 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1721 [entry ] into _temp_1722
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1725 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1725 [entry ] into _temp_1726
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1724 = *_temp_1726  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1723 = _temp_1724 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1722 = _temp_1723  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1727
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1729
	.word	12
	.word	4
	.word	_Label_1730
	.word	-12
	.word	4
	.word	_Label_1731
	.word	-16
	.word	4
	.word	_Label_1732
	.word	-20
	.word	4
	.word	_Label_1733
	.word	-24
	.word	4
	.word	_Label_1734
	.word	-28
	.word	4
	.word	_Label_1735
	.word	-32
	.word	4
	.word	0
_Label_1727:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1728:
	.ascii	"Pself\0"
	.align
_Label_1729:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1992:
	push	r0
	sub	r1,1,r1
	bne	_Label_1992
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_1736 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1736 [entry ] into _temp_1737
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1740 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1740 [entry ] into _temp_1741
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1739 = *_temp_1741  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1738 = _temp_1739 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1737 = _temp_1738  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1742
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1744
	.word	12
	.word	4
	.word	_Label_1745
	.word	-12
	.word	4
	.word	_Label_1746
	.word	-16
	.word	4
	.word	_Label_1747
	.word	-20
	.word	4
	.word	_Label_1748
	.word	-24
	.word	4
	.word	_Label_1749
	.word	-28
	.word	4
	.word	_Label_1750
	.word	-32
	.word	4
	.word	0
_Label_1742:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1743:
	.ascii	"Pself\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1993:
	push	r0
	sub	r1,1,r1
	bne	_Label_1993
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_1751 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1751 [entry ] into _temp_1752
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1755 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1755 [entry ] into _temp_1756
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1754 = *_temp_1756  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1753 = _temp_1754 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1752 = _temp_1753  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1757
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1759
	.word	12
	.word	4
	.word	_Label_1760
	.word	-12
	.word	4
	.word	_Label_1761
	.word	-16
	.word	4
	.word	_Label_1762
	.word	-20
	.word	4
	.word	_Label_1763
	.word	-24
	.word	4
	.word	_Label_1764
	.word	-28
	.word	4
	.word	_Label_1765
	.word	-32
	.word	4
	.word	0
_Label_1757:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1758:
	.ascii	"Pself\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1994:
	push	r0
	sub	r1,1,r1
	bne	_Label_1994
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_1766 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1766 [entry ] into _temp_1767
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1770 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1770 [entry ] into _temp_1771
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1769 = *_temp_1771  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1768 = _temp_1769 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1767 = _temp_1768  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1772
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1774
	.word	12
	.word	4
	.word	_Label_1775
	.word	-12
	.word	4
	.word	_Label_1776
	.word	-16
	.word	4
	.word	_Label_1777
	.word	-20
	.word	4
	.word	_Label_1778
	.word	-24
	.word	4
	.word	_Label_1779
	.word	-28
	.word	4
	.word	_Label_1780
	.word	-32
	.word	4
	.word	0
_Label_1772:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1773:
	.ascii	"Pself\0"
	.align
_Label_1774:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1995:
	push	r0
	sub	r1,1,r1
	bne	_Label_1995
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1782 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1782 [0 ] into _temp_1783
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1781 = _temp_1783		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1784 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1538,r13		! source line 1538
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1785
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1787
	.word	-12
	.word	4
	.word	_Label_1788
	.word	-16
	.word	4
	.word	_Label_1789
	.word	-20
	.word	4
	.word	_Label_1790
	.word	-24
	.word	4
	.word	0
_Label_1785:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1786:
	.ascii	"Pself\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1996:
	push	r0
	sub	r1,1,r1
	bne	_Label_1996
	mov	1543,r13		! source line 1543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1791
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1791
	jmp	_Label_1792
_Label_1791:
! THEN...
	mov	1559,r13		! source line 1559
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1793
_Label_1792:
! ELSE...
	mov	1560,r13		! source line 1560
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1795		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1795
!	jmp	_Label_1794
_Label_1794:
! THEN...
	mov	1561,r13		! source line 1561
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1795:
! END IF...
_Label_1793:
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0WH",r10
_Label_1796:
!	jmp	_Label_1797
_Label_1797:
	mov	1567,r13		! source line 1567
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1800		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1800
!	jmp	_Label_1799
_Label_1799:
! THEN...
	mov	1569,r13		! source line 1569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1801 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1569,r13		! source line 1569
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1800:
! IF STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0IF",r10
	mov	1572,r13		! source line 1572
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1805) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1804  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1804 then goto _Label_1803 else goto _Label_1802
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1802
	jmp	_Label_1803
_Label_1802:
! THEN...
	mov	1573,r13		! source line 1573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1806 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1803:
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
	mov	1576,r13		! source line 1576
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1808) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1807  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1807 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0WH",r10
_Label_1809:
!   if offset >= 8192 then goto _Label_1811		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1811
!	jmp	_Label_1810
_Label_1810:
	mov	1578,r13		! source line 1578
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1812 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1812  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1814		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1814
!	jmp	_Label_1813
_Label_1813:
! THEN...
	mov	1587,r13		! source line 1587
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1814:
! END WHILE...
	jmp	_Label_1809
_Label_1811:
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1796
_Label_1798:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1815
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	12
	.word	4
	.word	_Label_1818
	.word	16
	.word	4
	.word	_Label_1819
	.word	20
	.word	4
	.word	_Label_1820
	.word	-9
	.word	1
	.word	_Label_1821
	.word	-16
	.word	4
	.word	_Label_1822
	.word	-20
	.word	4
	.word	_Label_1823
	.word	-24
	.word	4
	.word	_Label_1824
	.word	-28
	.word	4
	.word	_Label_1825
	.word	-10
	.word	1
	.word	_Label_1826
	.word	-32
	.word	4
	.word	_Label_1827
	.word	-36
	.word	4
	.word	_Label_1828
	.word	-40
	.word	4
	.word	_Label_1829
	.word	-44
	.word	4
	.word	_Label_1830
	.word	-48
	.word	4
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1818:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1819:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1820:
	.byte	'C'
	.ascii	"_temp_1812\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1825:
	.byte	'C'
	.ascii	"_temp_1804\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1827:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1829:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1997:
	push	r0
	sub	r1,1,r1
	bne	_Label_1997
	mov	1597,r13		! source line 1597
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1831
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1831
	jmp	_Label_1832
_Label_1831:
! THEN...
	mov	1609,r13		! source line 1609
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1833
_Label_1832:
! ELSE...
	mov	1610,r13		! source line 1610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1835		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1835
!	jmp	_Label_1834
_Label_1834:
! THEN...
	mov	1611,r13		! source line 1611
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1835:
! END IF...
_Label_1833:
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0WH",r10
_Label_1836:
!	jmp	_Label_1837
_Label_1837:
	mov	1615,r13		! source line 1615
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1842		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1842
	jmp	_Label_1839
_Label_1842:
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1844) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1843  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1843 then goto _Label_1841 else goto _Label_1839
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1839
	jmp	_Label_1841
_Label_1841:
	mov	1618,r13		! source line 1618
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1846) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1845  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1845 then goto _Label_1840 else goto _Label_1839
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1839
	jmp	_Label_1840
_Label_1839:
! THEN...
	mov	1619,r13		! source line 1619
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1840:
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1848) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1847  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1847 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0WH",r10
_Label_1849:
!   if offset >= 8192 then goto _Label_1851		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1851
!	jmp	_Label_1850
_Label_1850:
	mov	1622,r13		! source line 1622
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1852 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1852  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1854		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1854
!	jmp	_Label_1853
_Label_1853:
! THEN...
	mov	1629,r13		! source line 1629
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1854:
! END WHILE...
	jmp	_Label_1849
_Label_1851:
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1836
_Label_1838:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1855
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1857
	.word	12
	.word	4
	.word	_Label_1858
	.word	16
	.word	4
	.word	_Label_1859
	.word	20
	.word	4
	.word	_Label_1860
	.word	-9
	.word	1
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-20
	.word	4
	.word	_Label_1863
	.word	-24
	.word	4
	.word	_Label_1864
	.word	-10
	.word	1
	.word	_Label_1865
	.word	-28
	.word	4
	.word	_Label_1866
	.word	-11
	.word	1
	.word	_Label_1867
	.word	-32
	.word	4
	.word	_Label_1868
	.word	-36
	.word	4
	.word	_Label_1869
	.word	-40
	.word	4
	.word	_Label_1870
	.word	-44
	.word	4
	.word	0
_Label_1855:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1856:
	.ascii	"Pself\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1858:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1859:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1860:
	.byte	'C'
	.ascii	"_temp_1852\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1864:
	.byte	'C'
	.ascii	"_temp_1845\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1866:
	.byte	'C'
	.ascii	"_temp_1843\0"
	.align
_Label_1867:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1870:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1998:
	push	r0
	sub	r1,1,r1
	bne	_Label_1998
	mov	1639,r13		! source line 1639
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
	mov	1663,r13		! source line 1663
	mov	"\0\0SE",r10
!   _temp_1874 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1875) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1874  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1873  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1873 >= 4 then goto _Label_1872		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1872
!	jmp	_Label_1871
_Label_1871:
! THEN...
	mov	1666,r13		! source line 1666
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1872:
! IF STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1877		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1877
!	jmp	_Label_1876
_Label_1876:
! THEN...
	mov	1671,r13		! source line 1671
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1877:
! ASSIGNMENT STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
	mov	1676,r13		! source line 1676
	mov	"\0\0SE",r10
!   _temp_1880 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1879 = _temp_1880 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1881 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1882) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1879  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1881  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1878  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1878  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1883
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1885
	.word	12
	.word	4
	.word	_Label_1886
	.word	16
	.word	4
	.word	_Label_1887
	.word	20
	.word	4
	.word	_Label_1888
	.word	-12
	.word	4
	.word	_Label_1889
	.word	-16
	.word	4
	.word	_Label_1890
	.word	-20
	.word	4
	.word	_Label_1891
	.word	-24
	.word	4
	.word	_Label_1892
	.word	-28
	.word	4
	.word	_Label_1893
	.word	-32
	.word	4
	.word	_Label_1894
	.word	-36
	.word	4
	.word	_Label_1895
	.word	-40
	.word	4
	.word	_Label_1896
	.word	-44
	.word	4
	.word	0
_Label_1883:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1884:
	.ascii	"Pself\0"
	.align
_Label_1885:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1886:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1887:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1896:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
