#360 T7 abt_asr3000 cetron_ct3003 clt_r30b1 cmcc_rax3000m imou_lc-hx3001 jcg_q30 konka_komi-a31 wr30u redmi_ax6000
#ÇÐ»»Îªuboot-mtk-20220606
if [[ $uboot_TARGET == *"u-boot-20220606"* ]] ; then
  sed -i 's/#UBOOT_DIR=uboot-mtk-20220606/UBOOT_DIR=uboot-mtk-20220606/g' ./build.sh
  sed -i 's/UBOOT_DIR=uboot-mtk-20230718-09eda825/#UBOOT_DIR=uboot-mtk-20230718-09eda825/g' ./build.sh
fi
SOC=mt7981 BOARD=360t7 ./build.sh
SOC=mt7981 BOARD=abt_asr3000 ./build.sh
SOC=mt7981 BOARD=cetron_ct3003 ./build.sh
SOC=mt7981 BOARD=clt_r30b1 ./build.sh
SOC=mt7981 BOARD=clt_r30b1 MULTI_LAYOUT=1 ./build.sh
SOC=mt7981 BOARD=cmcc_rax3000m ./build.sh
SOC=mt7981 BOARD=imou_lc-hx3001 ./build.sh
SOC=mt7981 BOARD=jcg_q30 ./build.sh
SOC=mt7981 BOARD=konka_komi-a31 ./build.sh
SOC=mt7981 BOARD=wr30u ./build.sh
SOC=mt7981 BOARD=wr30u MULTI_LAYOUT=1 ./build.sh
SOC=mt7986 BOARD=redmi_ax6000 ./build.sh
SOC=mt7986 BOARD=redmi_ax6000 MULTI_LAYOUT=1 ./build.sh
