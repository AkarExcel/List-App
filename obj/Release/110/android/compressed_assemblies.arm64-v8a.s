	.arch	armv8-a
	.file	"compressed_assemblies.arm64-v8a.arm64-v8a.s"
	.include	"compressed_assemblies.arm64-v8a-data.inc"

	.section	.data.compressed_assembly_descriptors,"aw",@progbits
	.type	.L.compressed_assembly_descriptors, @object
	.p2align	3
.L.compressed_assembly_descriptors:
	/* 0: Firebase.dll */
	/* uncompressed_file_size */
	.word	86016
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_0

	/* 1: Java.Interop.dll */
	/* uncompressed_file_size */
	.word	162304
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_1

	/* 2: LIst_App.dll */
	/* uncompressed_file_size */
	.word	167936
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_2

	/* 3: LiteDB.dll */
	/* uncompressed_file_size */
	.word	358912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_3

	/* 4: Microsoft.Bcl.AsyncInterfaces.dll */
	/* uncompressed_file_size */
	.word	5120
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_4

	/* 5: Mono.Android.dll */
	/* uncompressed_file_size */
	.word	1104896
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_5

	/* 6: Mono.Security.dll */
	/* uncompressed_file_size */
	.word	121856
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_6

	/* 7: Newtonsoft.Json.dll */
	/* uncompressed_file_size */
	.word	684544
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_7

	/* 8: System.Buffers.dll */
	/* uncompressed_file_size */
	.word	13688
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_8

	/* 9: System.Core.dll */
	/* uncompressed_file_size */
	.word	549888
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_9

	/* 10: System.Data.dll */
	/* uncompressed_file_size */
	.word	747008
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_10

	/* 11: System.Net.Http.dll */
	/* uncompressed_file_size */
	.word	219648
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_11

	/* 12: System.Numerics.dll */
	/* uncompressed_file_size */
	.word	38912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_12

	/* 13: System.Reactive.dll */
	/* uncompressed_file_size */
	.word	1177088
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_13

	/* 14: System.Runtime.CompilerServices.Unsafe.dll */
	/* uncompressed_file_size */
	.word	7680
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_14

	/* 15: System.Runtime.Serialization.dll */
	/* uncompressed_file_size */
	.word	6144
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_15

	/* 16: System.Text.Encodings.Web.dll */
	/* uncompressed_file_size */
	.word	57344
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_16

	/* 17: System.Text.Json.dll */
	/* uncompressed_file_size */
	.word	340992
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_17

	/* 18: System.Threading.Tasks.Extensions.dll */
	/* uncompressed_file_size */
	.word	14208
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_18

	/* 19: System.Xml.Linq.dll */
	/* uncompressed_file_size */
	.word	65024
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_19

	/* 20: System.Xml.dll */
	/* uncompressed_file_size */
	.word	1318912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_20

	/* 21: System.dll */
	/* uncompressed_file_size */
	.word	869888
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_21

	/* 22: Xamarin.AndroidX.Core.dll */
	/* uncompressed_file_size */
	.word	8704
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_22

	/* 23: Xamarin.Essentials.dll */
	/* uncompressed_file_size */
	.word	22528
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_23

	/* 24: Xamarin.Firebase.Auth.Interop.dll */
	/* uncompressed_file_size */
	.word	18432
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_24

	/* 25: Xamarin.Firebase.Auth.dll */
	/* uncompressed_file_size */
	.word	153600
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_25

	/* 26: Xamarin.Firebase.Common.dll */
	/* uncompressed_file_size */
	.word	36352
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_26

	/* 27: Xamarin.Google.Guava.ListenableFuture.dll */
	/* uncompressed_file_size */
	.word	18072
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_27

	/* 28: Xamarin.GooglePlayServices.Basement.dll */
	/* uncompressed_file_size */
	.word	15360
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_28

	/* 29: Xamarin.GooglePlayServices.Tasks.dll */
	/* uncompressed_file_size */
	.word	50688
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_29

	/* 30: mscorlib.dll */
	/* uncompressed_file_size */
	.word	2151424
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_30

	.size	.L.compressed_assembly_descriptors, 496
	.section	.data.compressed_assemblies,"aw",@progbits
	.type	compressed_assemblies, @object
	.p2align	3
	.global	compressed_assemblies
compressed_assemblies:
	/* count */
	.word	31
	/* descriptors */
	.zero	4
	.xword	.L.compressed_assembly_descriptors
	.size	compressed_assemblies, 16
