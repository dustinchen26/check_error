## How to use
use windows command window to run "check_error.sh" or "parse_du_stats.sh"

```
C:\Users\Dustin_Chen\Desktop\check_error>wsl ./check_error.sh
Processing file: du_24_11_28_06_11_39_part_0.log
No errors found in file: du_24_11_28_06_11_39_part_0.log
Processing file: du_24_11_28_06_11_39_part_1.log
No errors found in file: du_24_11_28_06_11_39_part_1.log
Processing file: du_24_11_28_06_11_39_part_2.log
Error found in file: du_24_11_28_06_11_39_part_2.log
Line: [28/11/2024 08:26:31.260457][DUMGR][FTL][gnb_du_mgr_msg_comm.cpp:198] TTI_IND_TIMER_EXPIRED:TTI_VALUE:1
Processing file: du_24_11_28_06_11_39_part_3.log
No errors found in file: du_24_11_28_06_11_39_part_3.log
Processing file: du_24_11_28_06_11_39_part_4.log
No errors found in file: du_24_11_28_06_11_39_part_4.log

C:\Users\Dustin_Chen\Desktop\check_error>wsl ./parse_du_stats.sh
Processing file: /mnt/c/Users/Dustin_Chen/Desktop/check_error/du_stats_24_11_28_06_11_39.txt
Last GNB Statistics Line: 603765
GNB DU Statistics  Thu Nov 28 08:26:30 2024
UE-ID=17067 DL-Throughput=0.0001 UL-Throughput=0.0001
UE-ID=17162 DL-Throughput=0.0000 UL-Throughput=0.0000
UE-ID=17188 DL-Throughput=0.1459 UL-Throughput=9.0289
UE-ID=17214 DL-Throughput=0.0000 UL-Throughput=24.9865
UE-ID=17241 DL-Throughput=0.1592 UL-Throughput=9.8222
EGTP DL Tpt : 0.31  UL Tpt 43.84
X2 EGTP DL Tpt : 0.00  UL Tpt 0.00
SCH  DL Tpt : 0.66  UL Tpt 43.94
UE-ID=17067 dl_mcs=0 ul_mcs=12 dlbler=0.333 ulbler=0.000
UE-ID=17162 dl_mcs=0 ul_mcs=0 dlbler=0.000 ulbler=1.000
UE-ID=17188 dl_mcs=8 ul_mcs=11 dlbler=0.012 ulbler=0.048
UE-ID=17214 dl_mcs=8 ul_mcs=11 dlbler=0.003 ulbler=0.008
UE-ID=17241 dl_mcs=8 ul_mcs=12 dlbler=0.018 ulbler=0.000
Finished processing file: /mnt/c/Users/Dustin_Chen/Desktop/check_error/du_stats_24_11_28_06_11_39.txt
```
