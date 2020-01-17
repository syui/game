#!/bin/zsh

d=${0:a:h:h}/data/scenario
APP_ID=AKfycbz3geFe7AX7a_grWyvMia4sclhja4AQYhQFg7NZcECHPWo6VKc

t=`zsh -c "ls $d/s*"`
n=`echo "$t"|wc -l`
for (( i=1;i<=$n;i++ ))
do
    tt=`echo "$t"|awk "NR==$i"`
    body=`cat $tt`
    nn=`echo "$body"|wc -l`
    su=`printf %02d $i`
    more=`expr $i + 1`
    more=`printf %02d $more`
    file_en=$d/e${su}.ks
    file_zh=$d/c${su}.ks
    file_ja=$d/s${su}.ks
    echo $file_en
    if [ -f $file_en ];then
    	#for (( ii=1;ii<=$nn;ii++ ))
    	#do

    	#    body_l=`echo "$body"|awk "NR==$ii"`
    	#    if echo "$body_l"|grep -e "^\[" -e "^\*" -e "^\@";then
    	#    	echo $body_l >> $file_en
    	#    	echo $body_l >> $file_zh
    	#    else
    	#        if echo $body_l|grep -e "^\#";then
    	#    	body_s=`echo $body_l|cut -d '#' -f 2-`
    	#    	en=`curl -sL -d "{\"txt\":\"${body_s}\",\"src\":\"ja\",\"tar\":\"en\"}" https://script.google.com/macros/s/${APP_ID}/exec`
    	#    	zh=`curl -sL -d "{\"txt\":\"${body_s}\",\"src\":\"ja\",\"tar\":\"zh-CN\"}" https://script.google.com/macros/s/${APP_ID}/exec`
    	#            echo "#${en}" >> $file_en
    	#    	echo "#${zh}" >> $file_zh
    	#    	echo $en
    	#    	echo $zh
    	#        else
    	#    	if [ -n "$body_l" ];then
    	#    	echo $body_l
    	#        	echo no
    	#        	body_s=`echo $body_l|cut -d '[' -f -1`
    	#    	body_e=`echo $body_l|cut -d '[' -f 2-`
    	#    	echo start $body_s
    	#    	echo end "["$body_e
    	#    	en=`curl -sL -d "{\"txt\":\"${body_s}\",\"src\":\"ja\",\"tar\":\"en\"}" https://script.google.com/macros/s/${APP_ID}/exec`
    	#    	zh=`curl -sL -d "{\"txt\":\"${body_s}\",\"src\":\"ja\",\"tar\":\"zh-CN\"}" https://script.google.com/macros/s/${APP_ID}/exec`
    	#            echo "${en}[${body_e}" >> $file_en
    	#    	echo "${zh}[${body_e}" >> $file_zh
    	#    	echo $en
    	#    	echo $zh
    	#    	fi
    	#        fi
    	#    fi
    	#done
    	sed -i "" "s/\&\#39;/\'/g" $file_en
    	sed -i "" "s/\&quot;/\"/g" $file_en
    	sed -i "" "s/アイちゃん/アイくん/g" $file_ja
	#sed -i "" "s/\[chara_show name=\"c_octo_hakase\" width=400 top=50\]/\[chara_show name=\"c_octo_hakase\" width=500 top=10\]/g" $file_ja
	#sed -i "" "s/\[chara_show name=\"c_octo_ou\" width=400 top=50\]/\[chara_show name=\"c_octo_ou\" width=500 top=10\]/g" $file_ja
	#sed -i "" "s/\[chara_show name=\"c_octo_hei\" width=400 top=50\]/\[chara_show name=\"c_octo_hei\" width=500 top=10\]/g" $file_ja
	#sed -i "" "s/\[chara_show name=\"c_yui_tensi\" width=400 top=50\]/\[chara_show name=\"c_yui_tensi\" width=400 top=30\]/g" $file_ja
	#sed -i "" "s/\[chara_show name=\"m_sinou\" width=500 top=0\]/\[chara_show name=\"m_sinou\" width=600 top=0\]/g" $file_ja
    fi
done
