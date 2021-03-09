#!/bin/bash 

read -p "enter the values inch" value1

value_in_feet=$(( $value1/12 ))

echo "$value_in_feet";
read -p "enter the value length in  feet" a
read -p "enter the value width in  feet" b
retangular_plot=$(( $a*$b  )) 
plot_in_meter=$(( $retangular_plot/3 ))
echo "$plot_in_meter";

read -p "enter the no of plots" n
area_for_n_plots=$(( $retangular_plot*$n  ))
area_in_acres=$(( $area_for_n_plots/4046 ))
echo "$area_in_acres";


