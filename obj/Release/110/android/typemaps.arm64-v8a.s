	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	9
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	299
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: b244922b-5380-4aba-9242-fd33e01acd4e */
	.byte	0x2b, 0x92, 0x44, 0xb2, 0x80, 0x53, 0xba, 0x4a, 0x92, 0x42, 0xfd, 0x33, 0xe0, 0x1a, 0xcd, 0x4e
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.GooglePlayServices.Basement */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: bebbab34-576d-454e-b811-b907e7299bad */
	.byte	0x34, 0xab, 0xbb, 0xbe, 0x6d, 0x57, 0x4e, 0x45, 0xb8, 0x11, 0xb9, 0x07, 0xe7, 0x29, 0x9b, 0xad
	/* entry_count */
	.word	240
	/* duplicate_count */
	.word	127
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: fa46ff4b-d2e0-4696-a4ae-f95e0b07a3db */
	.byte	0x4b, 0xff, 0x46, 0xfa, 0xe0, 0xd2, 0x96, 0x46, 0xa4, 0xae, 0xf9, 0x5e, 0x0b, 0x07, 0xa3, 0xdb
	/* entry_count */
	.word	7
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Firebase.Common */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 9fd2ee64-8bae-44b4-bdfb-d2d085e5551f */
	.byte	0x64, 0xee, 0xd2, 0x9f, 0xae, 0x8b, 0xb4, 0x44, 0xbd, 0xfb, 0xd2, 0xd0, 0x85, 0xe5, 0x55, 0x1f
	/* entry_count */
	.word	11
	/* duplicate_count */
	.word	9
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.GooglePlayServices.Tasks */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: cb736f6c-e77f-4e09-a6d0-114b4f3d02a6 */
	.byte	0x6c, 0x6f, 0x73, 0xcb, 0x7f, 0xe7, 0x09, 0x4e, 0xa6, 0xd0, 0x11, 0x4b, 0x4f, 0x3d, 0x02, 0xa6
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Firebase.Auth.Interop */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b06c52b2-7b46-4822-92c3-47218664e7ff */
	.byte	0xb2, 0x52, 0x6c, 0xb0, 0x46, 0x7b, 0x22, 0x48, 0x92, 0xc3, 0x47, 0x21, 0x86, 0x64, 0xe7, 0xff
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.Core */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: a7ba4eb8-4ba2-4ff7-8c12-40c477d7aa96 */
	.byte	0xb8, 0x4e, 0xba, 0xa7, 0xa2, 0x4b, 0xf7, 0x4f, 0x8c, 0x12, 0x40, 0xc4, 0x77, 0xd7, 0xaa, 0x96
	/* entry_count */
	.word	28
	/* duplicate_count */
	.word	16
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Firebase.Auth */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5907e2ce-0ca3-4d6f-a124-31178d4a3654 */
	.byte	0xce, 0xe2, 0x07, 0x59, 0xa3, 0x0c, 0x6f, 0x4d, 0xa1, 0x24, 0x31, 0x17, 0x8d, 0x4a, 0x36, 0x54
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: LIst_App */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 648
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554785
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	59
	.zero	3

	/* #1 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554786
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	56
	.zero	3

	/* #2 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554787
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	48
	.zero	3

	/* #3 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"android/app/Application"
	.zero	56
	.zero	3

	/* #4 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554789
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	61
	.zero	3

	/* #5 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	45
	.zero	3

	/* #6 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	44
	.zero	3

	/* #7 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554794
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	50
	.zero	3

	/* #8 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554795
	/* java_name */
	.ascii	"android/content/Context"
	.zero	56
	.zero	3

	/* #9 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554797
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	49
	.zero	3

	/* #10 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	48
	.zero	3

	/* #11 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	32
	.zero	3

	/* #12 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554808
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	57
	.zero	3

	/* #13 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	46
	.zero	3

	/* #14 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	39
	.zero	3

	/* #15 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	13
	.zero	3

	/* #16 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554820
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	49
	.zero	3

	/* #17 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	46
	.zero	3

	/* #18 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	45
	.zero	3

	/* #19 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554818
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	46
	.zero	3

	/* #20 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	50
	.zero	3

	/* #21 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554782
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	47
	.zero	3

	/* #22 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554767
	/* java_name */
	.ascii	"android/graphics/BlendMode"
	.zero	53
	.zero	3

	/* #23 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	57
	.zero	3

	/* #24 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554769
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	52
	.zero	3

	/* #25 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	47
	.zero	3

	/* #26 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	58
	.zero	3

	/* #27 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554772
	/* java_name */
	.ascii	"android/graphics/Typeface"
	.zero	54
	.zero	3

	/* #28 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	45
	.zero	3

	/* #29 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	36
	.zero	3

	/* #30 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554765
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	64
	.zero	3

	/* #31 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554745
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	58
	.zero	3

	/* #32 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554746
	/* java_name */
	.ascii	"android/os/Build"
	.zero	63
	.zero	3

	/* #33 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554747
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	55
	.zero	3

	/* #34 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	62
	.zero	3

	/* #35 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554749
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	61
	.zero	3

	/* #36 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/IBinder"
	.zero	61
	.zero	3

	/* #37 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/IBinder$DeathRecipient"
	.zero	46
	.zero	3

	/* #38 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/IInterface"
	.zero	58
	.zero	3

	/* #39 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554760
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	62
	.zero	3

	/* #40 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554761
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	62
	.zero	3

	/* #41 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	58
	.zero	3

	/* #42 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	50
	.zero	3

	/* #43 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554744
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	43
	.zero	3

	/* #44 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554869
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	45
	.zero	3

	/* #45 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	58
	.zero	3

	/* #46 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	58
	.zero	3

	/* #47 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	55
	.zero	3

	/* #48 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	56
	.zero	3

	/* #49 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	57
	.zero	3

	/* #50 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	59
	.zero	3

	/* #51 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	55
	.zero	3

	/* #52 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	54
	.zero	3

	/* #53 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	52
	.zero	3

	/* #54 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	56
	.zero	3

	/* #55 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	47
	.zero	3

	/* #56 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554637
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	52
	.zero	3

	/* #57 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	55
	.zero	3

	/* #58 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	39
	.zero	3

	/* #59 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554639
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	47
	.zero	3

	/* #60 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/view/Display"
	.zero	59
	.zero	3

	/* #61 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	56
	.zero	3

	/* #62 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554665
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	58
	.zero	3

	/* #63 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	49
	.zero	3

	/* #64 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/view/KeyboardShortcutGroup"
	.zero	45
	.zero	3

	/* #65 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554668
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	52
	.zero	3

	/* #66 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	44
	.zero	3

	/* #67 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	43
	.zero	3

	/* #68 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	62
	.zero	3

	/* #69 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	58
	.zero	3

	/* #70 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	35
	.zero	3

	/* #71 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	34
	.zero	3

	/* #72 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554674
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	55
	.zero	3

	/* #73 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554675
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	55
	.zero	3

	/* #74 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	59
	.zero	3

	/* #75 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554676
	/* java_name */
	.ascii	"android/view/View"
	.zero	62
	.zero	3

	/* #76 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	46
	.zero	3

	/* #77 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	34
	.zero	3

	/* #78 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554684
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	57
	.zero	3

	/* #79 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	44
	.zero	3

	/* #80 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	55
	.zero	3

	/* #81 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	56
	.zero	3

	/* #82 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554687
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	46
	.zero	3

	/* #83 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	50
	.zero	3

	/* #84 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	27
	.zero	3

	/* #85 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	32
	.zero	3

	/* #86 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	24
	.zero	3

	/* #87 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/view/Window"
	.zero	60
	.zero	3

	/* #88 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	51
	.zero	3

	/* #89 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	53
	.zero	3

	/* #90 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554661
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	40
	.zero	3

	/* #91 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/view/WindowMetrics"
	.zero	53
	.zero	3

	/* #92 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	34
	.zero	3

	/* #93 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	28
	.zero	3

	/* #94 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554715
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	33
	.zero	3

	/* #95 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554711
	/* java_name */
	.ascii	"android/view/inputmethod/InputMethodManager"
	.zero	36
	.zero	3

	/* #96 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	53
	.zero	3

	/* #97 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	57
	.zero	3

	/* #98 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	53
	.zero	3

	/* #99 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemClickListener"
	.zero	33
	.zero	3

	/* #100 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"
	.zero	29
	.zero	3

	/* #101 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	53
	.zero	3

	/* #102 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	58
	.zero	3

	/* #103 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	55
	.zero	3

	/* #104 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554607
	/* java_name */
	.ascii	"android/widget/CheckedTextView"
	.zero	49
	.zero	3

	/* #105 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	56
	.zero	3

	/* #106 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554609
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	58
	.zero	3

	/* #107 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	43
	.zero	3

	/* #108 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554621
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	52
	.zero	3

	/* #109 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	53
	.zero	3

	/* #110 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	56
	.zero	3

	/* #111 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	50
	.zero	3

	/* #112 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554623
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	56
	.zero	3

	/* #113 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/TextView$OnEditorActionListener"
	.zero	33
	.zero	3

	/* #114 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"androidx/core/content/pm/PackageInfoCompat"
	.zero	37
	.zero	3

	/* #115 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable"
	.zero	7
	.zero	3

	/* #116 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/common/internal/safeparcel/SafeParcelable"
	.zero	15
	.zero	3

	/* #117 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/google/android/gms/tasks/CancellationToken"
	.zero	33
	.zero	3

	/* #118 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/Continuation"
	.zero	38
	.zero	3

	/* #119 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/OnCanceledListener"
	.zero	32
	.zero	3

	/* #120 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/OnCompleteListener"
	.zero	32
	.zero	3

	/* #121 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/OnFailureListener"
	.zero	33
	.zero	3

	/* #122 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/OnSuccessListener"
	.zero	33
	.zero	3

	/* #123 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/OnTokenCanceledListener"
	.zero	27
	.zero	3

	/* #124 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/gms/tasks/SuccessContinuation"
	.zero	31
	.zero	3

	/* #125 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/google/android/gms/tasks/Task"
	.zero	46
	.zero	3

	/* #126 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/google/android/gms/tasks/TaskCompletionSource"
	.zero	30
	.zero	3

	/* #127 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	29
	.zero	3

	/* #128 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/google/firebase/FirebaseApp"
	.zero	48
	.zero	3

	/* #129 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/FirebaseApp$BackgroundStateChangeListener"
	.zero	18
	.zero	3

	/* #130 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/FirebaseAppLifecycleListener"
	.zero	31
	.zero	3

	/* #131 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"com/google/firebase/FirebaseException"
	.zero	42
	.zero	3

	/* #132 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/google/firebase/FirebaseOptions"
	.zero	44
	.zero	3

	/* #133 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"com/google/firebase/FirebaseOptions$Builder"
	.zero	36
	.zero	3

	/* #134 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"com/google/firebase/auth/ActionCodeSettings"
	.zero	36
	.zero	3

	/* #135 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"com/google/firebase/auth/ActionCodeSettings$Builder"
	.zero	28
	.zero	3

	/* #136 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/AdditionalUserInfo"
	.zero	36
	.zero	3

	/* #137 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"com/google/firebase/auth/AuthCredential"
	.zero	40
	.zero	3

	/* #138 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/AuthResult"
	.zero	44
	.zero	3

	/* #139 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"com/google/firebase/auth/FederatedAuthProvider"
	.zero	33
	.zero	3

	/* #140 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseAuth"
	.zero	42
	.zero	3

	/* #141 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseAuth$AuthStateListener"
	.zero	24
	.zero	3

	/* #142 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseAuth$IdTokenListener"
	.zero	26
	.zero	3

	/* #143 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseAuthSettings"
	.zero	34
	.zero	3

	/* #144 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseUser"
	.zero	42
	.zero	3

	/* #145 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/FirebaseUserMetadata"
	.zero	34
	.zero	3

	/* #146 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"com/google/firebase/auth/MultiFactor"
	.zero	43
	.zero	3

	/* #147 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"com/google/firebase/auth/MultiFactorAssertion"
	.zero	34
	.zero	3

	/* #148 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"com/google/firebase/auth/MultiFactorInfo"
	.zero	39
	.zero	3

	/* #149 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"com/google/firebase/auth/MultiFactorSession"
	.zero	36
	.zero	3

	/* #150 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554490
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthCredential"
	.zero	35
	.zero	3

	/* #151 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthOptions"
	.zero	38
	.zero	3

	/* #152 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthOptions$Builder"
	.zero	30
	.zero	3

	/* #153 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthProvider"
	.zero	37
	.zero	3

	/* #154 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthProvider$ForceResendingToken"
	.zero	17
	.zero	3

	/* #155 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks"
	.zero	1
	.zero	3

	/* #156 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554497
	/* java_name */
	.ascii	"com/google/firebase/auth/PhoneMultiFactorInfo"
	.zero	34
	.zero	3

	/* #157 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/UserInfo"
	.zero	46
	.zero	3

	/* #158 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554498
	/* java_name */
	.ascii	"com/google/firebase/auth/UserProfileChangeRequest"
	.zero	30
	.zero	3

	/* #159 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554499
	/* java_name */
	.ascii	"com/google/firebase/auth/UserProfileChangeRequest$Builder"
	.zero	22
	.zero	3

	/* #160 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/internal/IdTokenListener"
	.zero	30
	.zero	3

	/* #161 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/auth/internal/InternalAuthProvider"
	.zero	25
	.zero	3

	/* #162 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/firebase/internal/InternalTokenProvider"
	.zero	29
	.zero	3

	/* #163 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"com/google/firebase/internal/InternalTokenResult"
	.zero	31
	.zero	3

	/* #164 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc643e1ab29affb4ff98/ItemRowListAdapter"
	.zero	39
	.zero	3

	/* #165 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"crc643e1ab29affb4ff98/ItemsActivity"
	.zero	44
	.zero	3

	/* #166 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"crc643e1ab29affb4ff98/ListRowCustomAdapter"
	.zero	37
	.zero	3

	/* #167 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"crc643e1ab29affb4ff98/ListsActivity"
	.zero	44
	.zero	3

	/* #168 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"crc6495d4f5d63cc5c882/AwaitableTaskCompleteListener_1"
	.zero	26
	.zero	3

	/* #169 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	62
	.zero	3

	/* #170 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555018
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	57
	.zero	3

	/* #171 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555019
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	56
	.zero	3

	/* #172 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	62
	.zero	3

	/* #173 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555027
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	60
	.zero	3

	/* #174 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555024
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	60
	.zero	3

	/* #175 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555026
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	49
	.zero	3

	/* #176 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555030
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	59
	.zero	3

	/* #177 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555032
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	60
	.zero	3

	/* #178 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	59
	.zero	3

	/* #179 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555033
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	59
	.zero	3

	/* #180 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555034
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	65
	.zero	3

	/* #181 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	59
	.zero	3

	/* #182 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554963
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	62
	.zero	3

	/* #183 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554964
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	65
	.zero	3

	/* #184 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	57
	.zero	3

	/* #185 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554965
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	60
	.zero	3

	/* #186 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554966
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	64
	.zero	3

	/* #187 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554967
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	51
	.zero	3

	/* #188 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554968
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	47
	.zero	3

	/* #189 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	60
	.zero	3

	/* #190 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	59
	.zero	3

	/* #191 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	63
	.zero	3

	/* #192 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554970
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	65
	.zero	3

	/* #193 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554972
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	64
	.zero	3

	/* #194 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554973
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	60
	.zero	3

	/* #195 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554974
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	64
	.zero	3

	/* #196 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554984
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	45
	.zero	3

	/* #197 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554985
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	48
	.zero	3

	/* #198 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554986
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	44
	.zero	3

	/* #199 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	62
	.zero	3

	/* #200 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554990
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	57
	.zero	3

	/* #201 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554991
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	65
	.zero	3

	/* #202 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554992
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	49
	.zero	3

	/* #203 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554993
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	49
	.zero	3

	/* #204 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554994
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	63
	.zero	3

	/* #205 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	63
	.zero	3

	/* #206 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554997
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	41
	.zero	3

	/* #207 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	61
	.zero	3

	/* #208 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554998
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	53
	.zero	3

	/* #209 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554999
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	52
	.zero	3

	/* #210 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555000
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	64
	.zero	3

	/* #211 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555001
	/* java_name */
	.ascii	"java/lang/String"
	.zero	63
	.zero	3

	/* #212 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555003
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	63
	.zero	3

	/* #213 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555005
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	60
	.zero	3

	/* #214 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555006
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	40
	.zero	3

	/* #215 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	48
	.zero	3

	/* #216 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	45
	.zero	3

	/* #217 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	43
	.zero	3

	/* #218 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	57
	.zero	3

	/* #219 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	49
	.zero	3

	/* #220 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554944
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	54
	.zero	3

	/* #221 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554945
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	53
	.zero	3

	/* #222 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554947
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	53
	.zero	3

	/* #223 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554948
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	53
	.zero	3

	/* #224 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554949
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	65
	.zero	3

	/* #225 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554950
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	60
	.zero	3

	/* #226 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554951
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	57
	.zero	3

	/* #227 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554953
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	57
	.zero	3

	/* #228 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554955
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	55
	.zero	3

	/* #229 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	48
	.zero	3

	/* #230 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554958
	/* java_name */
	.ascii	"java/net/URI"
	.zero	67
	.zero	3

	/* #231 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554959
	/* java_name */
	.ascii	"java/net/URL"
	.zero	67
	.zero	3

	/* #232 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	57
	.zero	3

	/* #233 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554957
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	47
	.zero	3

	/* #234 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	64
	.zero	3

	/* #235 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554922
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	60
	.zero	3

	/* #236 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	50
	.zero	3

	/* #237 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	54
	.zero	3

	/* #238 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554924
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	50
	.zero	3

	/* #239 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	41
	.zero	3

	/* #240 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	41
	.zero	3

	/* #241 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	42
	.zero	3

	/* #242 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	40
	.zero	3

	/* #243 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	42
	.zero	3

	/* #244 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	42
	.zero	3

	/* #245 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554942
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	29
	.zero	3

	/* #246 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	57
	.zero	3

	/* #247 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	38
	.zero	3

	/* #248 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	37
	.zero	3

	/* #249 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	56
	.zero	3

	/* #250 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	53
	.zero	3

	/* #251 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554913
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	49
	.zero	3

	/* #252 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554915
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	42
	.zero	3

	/* #253 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	45
	.zero	3

	/* #254 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	47
	.zero	3

	/* #255 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	60
	.zero	3

	/* #256 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554850
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	59
	.zero	3

	/* #257 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	58
	.zero	3

	/* #258 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554852
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	62
	.zero	3

	/* #259 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554870
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	62
	.zero	3

	/* #260 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	61
	.zero	3

	/* #261 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"java/util/Random"
	.zero	63
	.zero	3

	/* #262 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	50
	.zero	3

	/* #263 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	52
	.zero	3

	/* #264 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554904
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	50
	.zero	3

	/* #265 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/Consumer"
	.zero	52
	.zero	3

	/* #266 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554560
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	56
	.zero	3

	/* #267 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	49
	.zero	3

	/* #268 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	47
	.zero	3

	/* #269 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	55
	.zero	3

	/* #270 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	48
	.zero	3

	/* #271 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	55
	.zero	3

	/* #272 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	55
	.zero	3

	/* #273 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	48
	.zero	3

	/* #274 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	49
	.zero	3

	/* #275 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	53
	.zero	3

	/* #276 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	46
	.zero	3

	/* #277 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	49
	.zero	3

	/* #278 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"javax/security/auth/Subject"
	.zero	52
	.zero	3

	/* #279 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554555
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	48
	.zero	3

	/* #280 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	44
	.zero	3

	/* #281 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555058
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	55
	.zero	3

	/* #282 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	16
	.zero	3

	/* #283 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554846
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	40
	.zero	3

	/* #284 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	49
	.zero	3

	/* #285 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554867
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	48
	.zero	3

	/* #286 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	39
	.zero	3

	/* #287 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	30
	.zero	3

	/* #288 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemClickListenerImplementor"
	.zero	17
	.zero	3

	/* #289 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemLongClickListenerImplementor"
	.zero	13
	.zero	3

	/* #290 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554627
	/* java_name */
	.ascii	"mono/android/widget/TextView_OnEditorActionListenerImplementor"
	.zero	17
	.zero	3

	/* #291 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"mono/com/google/firebase/FirebaseAppLifecycleListenerImplementor"
	.zero	15
	.zero	3

	/* #292 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/com/google/firebase/FirebaseApp_BackgroundStateChangeListenerImplementor"
	.zero	2
	.zero	3

	/* #293 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"mono/com/google/firebase/auth/FirebaseAuth_AuthStateListenerImplementor"
	.zero	8
	.zero	3

	/* #294 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"mono/com/google/firebase/auth/FirebaseAuth_IdTokenListenerImplementor"
	.zero	10
	.zero	3

	/* #295 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555007
	/* java_name */
	.ascii	"mono/java/lang/Runnable"
	.zero	56
	.zero	3

	/* #296 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33555004
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	45
	.zero	3

	/* #297 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"org/json/JSONObject"
	.zero	60
	.zero	3

	/* #298 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	33
	.zero	3

	.size	map_java, 26910
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	82
/* java_name_width: END */
