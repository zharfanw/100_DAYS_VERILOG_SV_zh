#!/usr/bin/env sh

set -eu

OUTPUT_FILE="simp_comm_sys_tb.out"
VCD_FILE="simp_comm_sys_tb.vcd"

for required_file in \
  "simp_comm_system.v" \
  "simp_comm_sys_tb.v" \
  "enco_4to2.v" \
  "mux_4to1.v" \
  "demux_1to4.v" \
  "deco_2to4.v"
do
  if [ ! -f "$required_file" ]; then
    echo "Required file not found: $required_file"
    exit 1
  fi
done

iverilog -o "$OUTPUT_FILE" \
  "simp_comm_system.v" \
  "simp_comm_sys_tb.v" \
  "enco_4to2.v" \
  "mux_4to1.v" \
  "demux_1to4.v" \
  "deco_2to4.v"
vvp "$OUTPUT_FILE"
gtkwave "$VCD_FILE"
