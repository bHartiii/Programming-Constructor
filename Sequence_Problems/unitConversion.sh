#! /bin/bash 
echo "1feet=12"
inch=`awk 'BEGIN { print ( 42*0.08333 ) }'`
echo "42 Inches = " $inch
length_in_feets=60
width_in_feets=40
length_in_meter=`awk 'BEGIN { print (60*0.3048) }'`
width_in_meter=`awk 'BEGIN {print (40*0.3048)}'`
area=`awk 'BEGIN { print ("'$length_in_meter'"*"'$width_in_meter'")}'`
echo "Area of ractangular plot in meter= "$area
echo "Area of 25 ractangular plots in meters =" awk 'BEGIN { print ("'$area'"*25) }' 
