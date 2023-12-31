!/bin/bash

#                        使用方法如下
# 1、把 HaisConfig.sh 放到 内存卡根目录(/sdcard/HaisConfig.sh)
# 2、修改下面 extFiles、backFiles 字段，指定扩展包的位置
# 3、刷入 Hais 2020.08.18 日之后打包的ROM，刷机脚本会自动调用此文件，自动执行
# 4、刷入 Rom后查看 /tmp/mHaisExtended.log 可查看刷入日记

#===============================扩展文件配置=======================================
extFiles="/sdcard/功能自定义扩展文件.zip"	#扩展文件路径，此文件必须存在，不存在以下功能无效。

isReBuildApk=Yes			#重新编译   默认重新编译[Yes]、保留旧的编译数据[No]---重新编译开机约10分钟，不编译可能会由于缓存问题出现莫明其妙的Bug。
apkBuildType=Default	#编译方式	默认完全编译[Default]、系统默认[Miui]、快速编译[Speed]
inputApk=BaiDu			#输入法 	默认讯飞[Default]、搜狗[Sogou]、百度[BaiDu]
homeApk=Default			#桌面		默认Genisys无特效[Default]、雄氏老方[Xslf]、Genisys平滑[Genisys]、系统Miui[Miui]


#===============================备份文件配置=======================================
backFiles="/sdcard/ROM精简文件备份.zip"	#扩展文件路径，此文件必须存在，不存在以下功能无效。

recContentExtension=No		#是否恢复-传送门
recMiShare=Yes				#是否恢复-分享
recVoiceAssist=No			#是否恢复-小爱
recGoogleServer=No			#是否恢复-谷歌服务
recMiuiBrowser=No			#是否恢复-小米浏览器
recMiuiVideo=No				#是否恢复-小米视频
recMiuiMusic=No				#是否恢复-小米音乐
recMiuiHome=No				#是否恢复-Miui桌面
recPersonalAssistant=No		#是否恢复-桌面助理
recQuickSearchBox=No		#是否恢复-搜索
recNewHome=No				#是否恢复-内容中心
recSoundRecorder=No			#是否恢复-录音机


#以下功能需 全新刷入放可生效。
recCleanMaster=No			#是否恢复-垃圾清理
recNotes=No					#是否恢复-记事本
recWeather=No				#是否恢复-天气
recXMPass=No				#是否恢复-指南针




#---------------------------------------------------以下为核心文件，切勿乱动----------------------------------------------------
if [ -n "$1" ]; then return ;fi ; HaisShell="hais_diy_rom.so"; TMP="/tmp/Hais/ReplaceFile/$$"; PROG=$TMP/$HaisShell;mkdir -m=rwx -p "${TMP}";trap 'rm -rf "${TMP}"; exit ${RESULT}' EXIT ; if (tail -n +$(expr `grep -n -m 1 -a HaisShell $0 | cut -d ":" -f 1` + 1) "$0" >$PROG.tmp && unzip -o -d $TMP $PROG.tmp); then chmod 755 "${PROG}" ; sh "${PROG}" ${0} ${1}; RESULT="$?" ; else echo "文件损坏!" && RESULT=1; fi;exit
PK    �Q�}|U�  (    hais_diy_rom.soUT	 ��;_��;_ux �  �  �Y[s�D~�~�P3e�50/�<$��a�)���ZZ�;�%!�i�Ng�@��6$�^!\ZM��.ͥ��X���_`WZ�+i%K���c����~ߞ�:��{�TFj�̚`jMC�b�Td`(�c ��4���̚8�J�P�g?ڳ/�b/��^^�Ǧ���;yl�d5t׾t�u �#��}{�{��s�rk�/A�W�c�~�^�w�|h?��!C>�����I`�F����%��$@���R����WWٰ���{ߎ��`4ĢQC�BcZA�X�#�M��Ţ�<��RA���|���[���[�G׻��O7Dd���MTW���ё���Id`B�K"R�����_(z�Xڅ��wW=|o�ZO�%lTn�semV��J
� ��Ϡ��L�1�L6J:��A���
���s�":k��%����O���b/^�0�%bbS:�J�Z���6��dG�l��g_Ӏ5��IF^�#&T0��D�,��7`M� մ@�>���O>�>~��ѫ#Թ$�>�2������
2L�X�4k`Â��_C��f�! !���C�2k����d̀E����o���tW�q���0�&�:�xA�@M���[�����w:�R��s˵��V�v9�����i�>g��@U�Q}��0V�υƩ��xƪН�Jp ���,����V^R��J
���ܢ9[7��A՛m�O�Q�C��T�jMia���Ҿz; �6ˏ�+kR�~3@'�W�����O��Ī��:�>��
�1�A�y'���e��j�J�=�,��ݪ�zӥپ����5�f�f849xRJ�1	5�����M�1Õ���q˂��r:q���dsӹw���}��5��������#~V�6��Z�չ����gs���E�ֶ��F�=%�G�<��a|"�ߧ��t �JdV���|;
U�M��O���[���\"&��f���%ҤS{ߚ���$�Sr�}�����6}i��~�#���[������@�>��X�QU��F�qN��-�wze���kh�wze���5 �_[{?u?�ؽ�&P>��T�ó��D�::��T?Ę�{��bŏŃ�U�dk`S� �S���>���O� X�hl!�Vq��̋��d���𙌌���8^���[A����ȢN�)ҳ�kI�K�e[96�lL�piJ&9�>����V�ͥ��c{����+�ᔆd8f�ȴ\)�kVv8�$L ~>3���O�Z���4�"/F��a��T���H�A,�	/Z�Z`�GJ!4�`t�<��D6�8�(�v��:�;�ל�E��=�QG5�Z�S��.7��6�B�ْ��ū6Mi�Vh3���{:~sR(f~�a�H�5tg��
O���,��\���$0,S�j�}�`�h�����(���1@�Ռi��݈������4Q���a3{�T����1�n�&lh�N_�B�%I�� �	˘/q�� ��C�3g��T���O!���'��H��ۏ��?�:�k^��D�v֤�9s�z��[&V|C�Q����-V`��dF9�,��k�|8�������}O!j�|�UT<o0�t^�Զ�¦��j>�W҉Ӄ�i��q����k3�4�h�^E���h�Hӆ@���3ɣ	����B�� ļw��A.�:�c�d衧V��@��Y^O�L���+yt�+���D�Ih��
�^T�eE��̦&:%�b�i�q�s���	Qty����~�&MA`ȵqm�2<Ī��QB7V�xa�4墖9d��4��G���K��v�ɺ���D���٠h�oV((��ŀ��DA�
Lr(C}x��p-��Ļ���C��Қ�rʚ��>!4��Q?V�.!�4u"�94
y�
C�/_���u�	�=�h�7����+Ϝ'��;N��3��|���y~����,���E��c���l�\uV~O��B���9h�<BT���#eZ�Շ��&)�K`�������NOL3��8�.ۋ��_/�p��(�9y.<B̭,��PK    �Q�}|U�  (           ��    hais_diy_rom.soUT ��;_ux �  �  PK      U   @    