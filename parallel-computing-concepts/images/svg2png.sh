#!/bin/bash
# convert SVGs to PNGs with a correct size
inkscape compp.svg -e compp.png -w 511
inkscape parallel-sum-0.svg -e parallel-sum-0.png -h 1060
inkscape parallel-sum-1.1.svg -e parallel-sum-1.1.png -w 1240
inkscape parallel-sum-1.2.svg -e parallel-sum-1.2.png -w 1240
inkscape parallel-sum-2.svg -e parallel-sum-2.png -w 1240
inkscape parallel-sum-3.1.svg -e parallel-sum-3.1.png -w 1240
inkscape parallel-sum-3.2.svg -e parallel-sum-3.2.png -w 1240
inkscape parallel-sum-4.svg -e parallel-sum-4.png -w 1240
