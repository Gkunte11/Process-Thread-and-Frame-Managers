! Name of package being compiled: Main
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
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_MonitorMutex
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_23:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_22:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_21:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_20:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_19:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_18:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_17:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_16:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_15:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_14:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_13:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_12:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_11:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_10:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_9:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_8:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_7:
	.word	81			! length
	.ascii	"\n\n**************** Process Manager With Mesa Semantics ************************\n\n"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_33		! .
	ret				! .
_Label_33:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_34
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
_Label_34:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_35
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_35
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_35
! Make sure _P_Kernel_ has hash value 0x50859607 (decimal 1350931975)
	set	_packageName,r2
	set	0x50859607,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_35
_Label_35:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	8,r1
_Label_483:
	push	r0
	sub	r1,1,r1
	bne	_Label_483
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_36 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_484:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_484
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_38 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_485:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_485
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_40 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_486:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_486
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_42 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_31_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_29_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_27_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_43
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_44
	.word	-12
	.word	4
	.word	_Label_45
	.word	-16
	.word	4
	.word	_Label_46
	.word	-20
	.word	4
	.word	_Label_47
	.word	-24
	.word	4
	.word	_Label_48
	.word	-28
	.word	4
	.word	_Label_49
	.word	-32
	.word	4
	.word	_Label_50
	.word	-36
	.word	4
	.word	0
_Label_43:
	.ascii	"main\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_32_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_487:
	push	r0
	sub	r1,1,r1
	bne	_Label_487
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_51 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_52 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
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
	mov	140,r13		! source line 140
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_53
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_54
	.word	8
	.word	4
	.word	_Label_55
	.word	-12
	.word	4
	.word	_Label_56
	.word	-16
	.word	4
	.word	_Label_57
	.word	-20
	.word	4
	.word	0
_Label_53:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_54:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_57:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_31_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_488:
	push	r0
	sub	r1,1,r1
	bne	_Label_488
	mov	171,r13		! source line 171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_58 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_59 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_60 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_61 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_61  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_66 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_67 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_66  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_62:
!   Perform the FOR-LOOP termination test
!   if i > _temp_67 then goto _Label_65		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_65
_Label_63:
	mov	182,r13		! source line 182
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_68)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_489:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_489
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_70 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
!   _temp_71 = _function_30_TestThreadManager
	set	_function_30_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_71  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_64:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_62
! END FOR
_Label_65:
! FOR STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_76 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_77 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_76  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_72:
!   Perform the FOR-LOOP termination test
!   if i > _temp_77 then goto _Label_75		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_75
_Label_73:
	mov	190,r13		! source line 190
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   _temp_78 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_74:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_72
! END FOR
_Label_75:
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CA",r10
	call	_function_32_GetUniqueNumber
!   Retrieve Result: targetName=_temp_81  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_81 == 401 then goto _Label_80		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_80
!	jmp	_Label_79
_Label_79:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_82 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	195,r13		! source line 195
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_80:
! CALL STATEMENT...
!   _temp_83 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_83  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_84
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_85
	.word	-12
	.word	4
	.word	_Label_86
	.word	-16
	.word	4
	.word	_Label_87
	.word	-20
	.word	4
	.word	_Label_88
	.word	-24
	.word	4
	.word	_Label_89
	.word	-28
	.word	4
	.word	_Label_90
	.word	-32
	.word	4
	.word	_Label_91
	.word	-36
	.word	4
	.word	_Label_92
	.word	-40
	.word	4
	.word	_Label_93
	.word	-44
	.word	4
	.word	_Label_94
	.word	-48
	.word	4
	.word	_Label_95
	.word	-52
	.word	4
	.word	_Label_96
	.word	-56
	.word	4
	.word	_Label_97
	.word	-60
	.word	4
	.word	_Label_98
	.word	-64
	.word	4
	.word	_Label_99
	.word	-68
	.word	4
	.word	_Label_100
	.word	-72
	.word	4
	.word	_Label_101
	.word	-76
	.word	4
	.word	_Label_102
	.word	-80
	.word	4
	.word	0
_Label_84:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_101:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_102:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_30_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_490:
	push	r0
	sub	r1,1,r1
	bne	_Label_490
	mov	209,r13		! source line 209
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_107 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_108 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_107  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_108 then goto _Label_106		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_106
_Label_104:
	mov	213,r13		! source line 213
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_function_32_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_109 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_110 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_110 [0 ] into _temp_111
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_111 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_116 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_117 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_116  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_112:
!   Perform the FOR-LOOP termination test
!   if j > _temp_117 then goto _Label_115		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_115
_Label_113:
	mov	218,r13		! source line 218
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	219,r13		! source line 219
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
!   Increment the FOR-LOOP index variable and jump back
_Label_114:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_112
! END FOR
_Label_115:
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_121 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_121 [0 ] into _temp_122
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
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
	store	r2,[r14+-36]
!   Data Move: _temp_120 = *_temp_122  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_120 then goto _Label_119		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_119
!	jmp	_Label_118
_Label_118:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_123 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_123  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	222,r13		! source line 222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_119:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   _temp_124 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_129 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_130 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_129  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_125:
!   Perform the FOR-LOOP termination test
!   if j > _temp_130 then goto _Label_128		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_128
_Label_126:
	mov	226,r13		! source line 226
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	227,r13		! source line 227
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
!   Increment the FOR-LOOP index variable and jump back
_Label_127:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_125
! END FOR
_Label_128:
!   Increment the FOR-LOOP index variable and jump back
_Label_105:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_103
! END FOR
_Label_106:
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   _temp_131 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_132 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_133
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_134
	.word	8
	.word	4
	.word	_Label_135
	.word	-12
	.word	4
	.word	_Label_136
	.word	-16
	.word	4
	.word	_Label_137
	.word	-20
	.word	4
	.word	_Label_138
	.word	-24
	.word	4
	.word	_Label_139
	.word	-28
	.word	4
	.word	_Label_140
	.word	-32
	.word	4
	.word	_Label_141
	.word	-36
	.word	4
	.word	_Label_142
	.word	-40
	.word	4
	.word	_Label_143
	.word	-44
	.word	4
	.word	_Label_144
	.word	-48
	.word	4
	.word	_Label_145
	.word	-52
	.word	4
	.word	_Label_146
	.word	-56
	.word	4
	.word	_Label_147
	.word	-60
	.word	4
	.word	_Label_148
	.word	-64
	.word	4
	.word	_Label_149
	.word	-68
	.word	4
	.word	_Label_150
	.word	-72
	.word	4
	.word	_Label_151
	.word	-76
	.word	4
	.word	_Label_152
	.word	-80
	.word	4
	.word	_Label_153
	.word	-84
	.word	4
	.word	_Label_154
	.word	-88
	.word	4
	.word	0
_Label_133:
	.ascii	"TestThreadManager\0"
	.align
_Label_134:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_151:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_152:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_153:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_154:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_29_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_RunProcessManagerTests,r1
	push	r1
	mov	22,r1
_Label_491:
	push	r0
	sub	r1,1,r1
	bne	_Label_491
	mov	251,r13		! source line 251
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_155 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_156 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	257,r13		! source line 257
	mov	"\0\0SE",r10
!   _temp_157 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_158 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_158  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_159 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_159  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_164 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_165 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_164  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-80]
_Label_160:
!   Perform the FOR-LOOP termination test
!   if i > _temp_165 then goto _Label_163		
	load	[r14+-80],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_163
_Label_161:
	mov	263,r13		! source line 263
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_166)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-84]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-84],r4
	mov	1041,r3
_Label_492:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_492
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-84],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_168 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_168  sizeInBytes=4
	load	[r14+-40],r1
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
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
!   _temp_169 = _function_28_TestProcessManager
	set	_function_28_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_169  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_162:
!   i = i + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_160
! END FOR
_Label_163:
! FOR STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_174 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_175 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_174  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-80]
_Label_170:
!   Perform the FOR-LOOP termination test
!   if i > _temp_175 then goto _Label_173		
	load	[r14+-80],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_173
_Label_171:
	mov	271,r13		! source line 271
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_176 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_172:
!   i = i + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_170
! END FOR
_Label_173:
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_function_32_GetUniqueNumber
!   Retrieve Result: targetName=_temp_179  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_179 == 401 then goto _Label_178		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_178
!	jmp	_Label_177
_Label_177:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_180 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_180  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	276,r13		! source line 276
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_178:
! CALL STATEMENT...
!   _temp_181 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_182
	.word	0		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_183
	.word	-12
	.word	4
	.word	_Label_184
	.word	-16
	.word	4
	.word	_Label_185
	.word	-20
	.word	4
	.word	_Label_186
	.word	-24
	.word	4
	.word	_Label_187
	.word	-28
	.word	4
	.word	_Label_188
	.word	-32
	.word	4
	.word	_Label_189
	.word	-36
	.word	4
	.word	_Label_190
	.word	-40
	.word	4
	.word	_Label_191
	.word	-44
	.word	4
	.word	_Label_192
	.word	-48
	.word	4
	.word	_Label_193
	.word	-52
	.word	4
	.word	_Label_194
	.word	-56
	.word	4
	.word	_Label_195
	.word	-60
	.word	4
	.word	_Label_196
	.word	-64
	.word	4
	.word	_Label_197
	.word	-68
	.word	4
	.word	_Label_198
	.word	-72
	.word	4
	.word	_Label_199
	.word	-76
	.word	4
	.word	_Label_200
	.word	-80
	.word	4
	.word	_Label_201
	.word	-84
	.word	4
	.word	0
_Label_182:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_200:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_201:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_28_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_493:
	push	r0
	sub	r1,1,r1
	bne	_Label_493
	mov	291,r13		! source line 291
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_206 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_207 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_206  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_202:
!   Perform the FOR-LOOP termination test
!   if i > _temp_207 then goto _Label_205		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_205
_Label_203:
	mov	297,r13		! source line 297
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_function_32_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_208 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_209 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_209 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_214 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_215 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_214  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_210:
!   Perform the FOR-LOOP termination test
!   if j > _temp_215 then goto _Label_213		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_213
_Label_211:
	mov	302,r13		! source line 302
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	303,r13		! source line 303
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
!   Increment the FOR-LOOP index variable and jump back
_Label_212:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_210
! END FOR
_Label_213:
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_218 = *_temp_219  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_218 then goto _Label_217		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_217
!	jmp	_Label_216
_Label_216:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_220 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_217:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_221 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_226 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_227 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_226  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_222:
!   Perform the FOR-LOOP termination test
!   if j > _temp_227 then goto _Label_225		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_225
_Label_223:
	mov	310,r13		! source line 310
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
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
!   Increment the FOR-LOOP index variable and jump back
_Label_224:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_222
! END FOR
_Label_225:
!   Increment the FOR-LOOP index variable and jump back
_Label_204:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_202
! END FOR
_Label_205:
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_228 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_229 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_230
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_231
	.word	8
	.word	4
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	_Label_234
	.word	-20
	.word	4
	.word	_Label_235
	.word	-24
	.word	4
	.word	_Label_236
	.word	-28
	.word	4
	.word	_Label_237
	.word	-32
	.word	4
	.word	_Label_238
	.word	-36
	.word	4
	.word	_Label_239
	.word	-40
	.word	4
	.word	_Label_240
	.word	-44
	.word	4
	.word	_Label_241
	.word	-48
	.word	4
	.word	_Label_242
	.word	-52
	.word	4
	.word	_Label_243
	.word	-56
	.word	4
	.word	_Label_244
	.word	-60
	.word	4
	.word	_Label_245
	.word	-64
	.word	4
	.word	_Label_246
	.word	-68
	.word	4
	.word	_Label_247
	.word	-72
	.word	4
	.word	_Label_248
	.word	-76
	.word	4
	.word	_Label_249
	.word	-80
	.word	4
	.word	0
_Label_230:
	.ascii	"TestProcessManager\0"
	.align
_Label_231:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_247:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_248:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_249:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_27_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_27_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_494:
	push	r0
	sub	r1,1,r1
	bne	_Label_494
	mov	336,r13		! source line 336
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
!   _temp_250 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_251 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_252 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_257 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_258 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_257  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_258 then goto _Label_256		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_256
_Label_254:
	mov	345,r13		! source line 345
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_259)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_495:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_495
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0SE",r10
!   _temp_261 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_261  sizeInBytes=4
	load	[r14+-68],r1
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
	mov	348,r13		! source line 348
	mov	"\0\0SE",r10
!   _temp_262 = _function_26_TestFrameManager
	set	_function_26_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_262  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_255:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_253
! END FOR
_Label_256:
! FOR STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_267 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_268 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_267  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_263:
!   Perform the FOR-LOOP termination test
!   if i > _temp_268 then goto _Label_266		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_266
_Label_264:
	mov	353,r13		! source line 353
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0SE",r10
!   _temp_269 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_265:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_263
! END FOR
_Label_266:
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_275 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_276 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_275  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_271:
!   Perform the FOR-LOOP termination test
!   if i > _temp_276 then goto _Label_274		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_274
_Label_272:
	mov	358,r13		! source line 358
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_277 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_278 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_283 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_285 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_285 [i ] into _temp_286
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
!   Data Move: _temp_284 = *_temp_286  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_283  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_279:
!   Perform the FOR-LOOP termination test
!   if j > _temp_284 then goto _Label_282		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_282
_Label_280:
	mov	362,r13		! source line 362
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_281:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_279
! END FOR
_Label_282:
! CALL STATEMENT...
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_273:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_271
! END FOR
_Label_274:
! CALL STATEMENT...
!   _temp_287 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_27_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_288
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_289
	.word	-12
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	_Label_295
	.word	-36
	.word	4
	.word	_Label_296
	.word	-40
	.word	4
	.word	_Label_297
	.word	-44
	.word	4
	.word	_Label_298
	.word	-48
	.word	4
	.word	_Label_299
	.word	-52
	.word	4
	.word	_Label_300
	.word	-56
	.word	4
	.word	_Label_301
	.word	-60
	.word	4
	.word	_Label_302
	.word	-64
	.word	4
	.word	_Label_303
	.word	-68
	.word	4
	.word	_Label_304
	.word	-72
	.word	4
	.word	_Label_305
	.word	-76
	.word	4
	.word	_Label_306
	.word	-80
	.word	4
	.word	_Label_307
	.word	-84
	.word	4
	.word	_Label_308
	.word	-88
	.word	4
	.word	_Label_309
	.word	-92
	.word	4
	.word	_Label_310
	.word	-96
	.word	4
	.word	_Label_311
	.word	-100
	.word	4
	.word	_Label_312
	.word	-104
	.word	4
	.word	_Label_313
	.word	-108
	.word	4
	.word	0
_Label_288:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_311:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_312:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_26_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_26_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_496:
	push	r0
	sub	r1,1,r1
	bne	_Label_496
	mov	392,r13		! source line 392
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_314 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_319 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_320 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_319  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_315:
!   Perform the FOR-LOOP termination test
!   if i > _temp_320 then goto _Label_318		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_318
_Label_316:
	mov	397,r13		! source line 397
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_325 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_326 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_325  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_321:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_326 then goto _Label_324		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_324
_Label_322:
	mov	398,r13		! source line 398
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_function_32_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_327 = _temp_328		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_329 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_327  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_331 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_330 = _temp_331		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_function_25_CheckAddrSpace
! FOR STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_336 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_337 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_336  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_332:
!   Perform the FOR-LOOP termination test
!   if j > _temp_337 then goto _Label_335		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_335
_Label_333:
	mov	403,r13		! source line 403
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	404,r13		! source line 404
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
!   Increment the FOR-LOOP index variable and jump back
_Label_334:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_332
! END FOR
_Label_335:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_338 = _temp_339		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_function_24_CheckAddrSpace2
! SEND STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_341 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_340 = _temp_341		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_342 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_340  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_347 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_348 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_347  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_343:
!   Perform the FOR-LOOP termination test
!   if j > _temp_348 then goto _Label_346		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_346
_Label_344:
	mov	409,r13		! source line 409
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	410,r13		! source line 410
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
!   Increment the FOR-LOOP index variable and jump back
_Label_345:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_343
! END FOR
_Label_346:
!   Increment the FOR-LOOP index variable and jump back
_Label_323:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_321
! END FOR
_Label_324:
!   Increment the FOR-LOOP index variable and jump back
_Label_317:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_315
! END FOR
_Label_318:
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_349 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_350 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_351 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_26_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	_Label_361
	.word	-40
	.word	4
	.word	_Label_362
	.word	-44
	.word	4
	.word	_Label_363
	.word	-48
	.word	4
	.word	_Label_364
	.word	-52
	.word	4
	.word	_Label_365
	.word	-56
	.word	4
	.word	_Label_366
	.word	-60
	.word	4
	.word	_Label_367
	.word	-64
	.word	4
	.word	_Label_368
	.word	-68
	.word	4
	.word	_Label_369
	.word	-72
	.word	4
	.word	_Label_370
	.word	-76
	.word	4
	.word	_Label_371
	.word	-80
	.word	4
	.word	_Label_372
	.word	-84
	.word	4
	.word	_Label_373
	.word	-88
	.word	4
	.word	_Label_374
	.word	-92
	.word	4
	.word	_Label_375
	.word	-96
	.word	4
	.word	_Label_376
	.word	-100
	.word	4
	.word	_Label_377
	.word	-104
	.word	4
	.word	_Label_378
	.word	-108
	.word	4
	.word	_Label_379
	.word	-112
	.word	4
	.word	_Label_380
	.word	-116
	.word	4
	.word	0
_Label_352:
	.ascii	"TestFrameManager\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_377:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_378:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_380:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_25_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_497:
	push	r0
	sub	r1,1,r1
	bne	_Label_497
	mov	424,r13		! source line 424
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_384 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_383 = *_temp_384  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_383 == n then goto _Label_382		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_382
!	jmp	_Label_381
_Label_381:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_385 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_382:
! FOR STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_390 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_391 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_390  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_391 then goto _Label_389		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_389
_Label_387:
	mov	429,r13		! source line 429
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   _temp_392 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_392 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_396		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_396
	jmp	_Label_393
_Label_396:
!   if frameNumber < 27 then goto _Label_395		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_395
	jmp	_Label_393
_Label_395:
!   _temp_397 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_397) then goto _Label_394
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_394
!	jmp	_Label_393
_Label_393:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_398 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-52],r1
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
_Label_394:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   _temp_399 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_399 [frameNumber ] into _temp_400
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
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
	store	r2,[r14+-44]
!   _temp_403 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_403 [frameNumber ] into _temp_404
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: _temp_402 = *_temp_404  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_401 = _temp_402 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_400 = _temp_401  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0IF",r10
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_411  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_411) then goto _Label_410
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_410
	jmp	_Label_405
_Label_410:
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_405 else goto _Label_409
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_409
	jmp	_Label_405
_Label_409:
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_405 else goto _Label_408
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_408
	jmp	_Label_405
_Label_408:
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_412  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_412 then goto _Label_407 else goto _Label_405
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_405
	jmp	_Label_407
_Label_407:
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_413  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_413 then goto _Label_406 else goto _Label_405
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_405
	jmp	_Label_406
_Label_405:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_414 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	444,r13		! source line 444
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_406:
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_415  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_388:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_386
! END FOR
_Label_389:
! RETURN STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_416
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	12
	.word	4
	.word	_Label_419
	.word	16
	.word	4
	.word	_Label_420
	.word	-16
	.word	4
	.word	_Label_421
	.word	-20
	.word	4
	.word	_Label_422
	.word	-9
	.word	1
	.word	_Label_423
	.word	-10
	.word	1
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	_Label_426
	.word	-32
	.word	4
	.word	_Label_427
	.word	-36
	.word	4
	.word	_Label_428
	.word	-40
	.word	4
	.word	_Label_429
	.word	-44
	.word	4
	.word	_Label_430
	.word	-48
	.word	4
	.word	_Label_431
	.word	-52
	.word	4
	.word	_Label_432
	.word	-56
	.word	4
	.word	_Label_433
	.word	-60
	.word	4
	.word	_Label_434
	.word	-64
	.word	4
	.word	_Label_435
	.word	-68
	.word	4
	.word	_Label_436
	.word	-72
	.word	4
	.word	_Label_437
	.word	-76
	.word	4
	.word	_Label_438
	.word	-80
	.word	4
	.word	_Label_439
	.word	-84
	.word	4
	.word	_Label_440
	.word	-88
	.word	4
	.word	_Label_441
	.word	-92
	.word	4
	.word	0
_Label_416:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_422:
	.byte	'C'
	.ascii	"_temp_413\0"
	.align
_Label_423:
	.byte	'C'
	.ascii	"_temp_412\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_24_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_498:
	push	r0
	sub	r1,1,r1
	bne	_Label_498
	mov	457,r13		! source line 457
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_444 = *_temp_445  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_444 == n then goto _Label_443		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	460,r13		! source line 460
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_446 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	460,r13		! source line 460
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_443:
! FOR STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_451 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_452 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_451  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_447:
!   Perform the FOR-LOOP termination test
!   if i > _temp_452 then goto _Label_450		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_450
_Label_448:
	mov	462,r13		! source line 462
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
	mov	463,r13		! source line 463
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
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
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   _temp_453 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_453 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_457		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_457
	jmp	_Label_454
_Label_457:
!   if frameNumber < 27 then goto _Label_456		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_456
	jmp	_Label_454
_Label_456:
!   _temp_458 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_458) then goto _Label_455
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_455
!	jmp	_Label_454
_Label_454:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_459 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_455:
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_462 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_463 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_462 == _temp_463 then goto _Label_461		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_461
!	jmp	_Label_460
_Label_460:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_464 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	472,r13		! source line 472
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_461:
!   Increment the FOR-LOOP index variable and jump back
_Label_449:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_447
! END FOR
_Label_450:
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_465
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_466
	.word	8
	.word	4
	.word	_Label_467
	.word	12
	.word	4
	.word	_Label_468
	.word	16
	.word	4
	.word	_Label_469
	.word	-12
	.word	4
	.word	_Label_470
	.word	-16
	.word	4
	.word	_Label_471
	.word	-20
	.word	4
	.word	_Label_472
	.word	-24
	.word	4
	.word	_Label_473
	.word	-28
	.word	4
	.word	_Label_474
	.word	-32
	.word	4
	.word	_Label_475
	.word	-36
	.word	4
	.word	_Label_476
	.word	-40
	.word	4
	.word	_Label_477
	.word	-44
	.word	4
	.word	_Label_478
	.word	-48
	.word	4
	.word	_Label_479
	.word	-52
	.word	4
	.word	_Label_480
	.word	-56
	.word	4
	.word	_Label_481
	.word	-60
	.word	4
	.word	_Label_482
	.word	-64
	.word	4
	.word	0
_Label_465:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_466:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_480:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_481:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
