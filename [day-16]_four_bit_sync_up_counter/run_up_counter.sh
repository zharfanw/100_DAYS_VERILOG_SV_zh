#!/usr/bin/env sh

set -eu

DESIGN_FILE="up_counter.v"
TESTBENCH_FILE="up_counter_tb.v"
OUTPUT_FILE="up_counter_tb.out"
VCD_FILE="up_counter_tb.vcd"

if [ ! -f "$DESIGN_FILE" ]; then
  echo "Design file not found: $DESIGN_FILE"
  exit 1
fi

if [ ! -f "$TESTBENCH_FILE" ]; then
  echo "Testbench file not found: $TESTBENCH_FILE"
  exit 1
fi

iverilog -o "$OUTPUT_FILE" "$DESIGN_FILE" "$TESTBENCH_FILE"
vvp "$OUTPUT_FILE"
gtkwave "$VCD_FILE"
