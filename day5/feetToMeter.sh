#!/bin/bash

rectangular_plot_width=60
rectangular_plot_length=40

width_in_meters=$(echo "scale=4; $rectangular_plot_width * 0.3048" | bc)
length_in_meters=$(echo "scale=4; $rectangular_plot_length * 0.3048" | bc)

echo "The rectangular plot is $width_in_meters meters wide and $length_in_meters meters long."


