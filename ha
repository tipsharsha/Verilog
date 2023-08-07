#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_0000026658af52a0 .scope module, "HalfAdd_Test" "HalfAdd_Test" 2 2;
 .timescale 0 0;
v0000026658af55c0_0 .var "a", 0 0;
v0000026658af5660_0 .var "b", 0 0;
v0000026658af1de0_0 .net "c", 0 0, L_0000026658be8580;  1 drivers
v0000026658af2690_0 .net "s", 0 0, L_0000026658be7200;  1 drivers
S_0000026658af5430 .scope module, "ha1" "HalfAdd" 2 10, 3 1 0, S_0000026658af52a0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /OUTPUT 1 "c";
    .port_info 3 /OUTPUT 1 "s";
L_0000026658be8580 .functor XOR 1, v0000026658af55c0_0, v0000026658af5660_0, C4<0>, C4<0>;
L_0000026658be7200 .functor AND 1, v0000026658af55c0_0, v0000026658af5660_0, C4<1>, C4<1>;
v0000026658be84e0_0 .net "a", 0 0, v0000026658af55c0_0;  1 drivers
v0000026658bebf20_0 .net "b", 0 0, v0000026658af5660_0;  1 drivers
v0000026658be6fa0_0 .net "c", 0 0, L_0000026658be7200;  alias, 1 drivers
v0000026658be8b50_0 .net "s", 0 0, L_0000026658be8580;  alias, 1 drivers
    .scope S_0000026658af52a0;
T_0 ;
    %vpi_call 2 13 "$dumpfile", "HalfAdd_output.vcd" {0 0 0};
    %vpi_call 2 14 "$dumpvars", 32'sb00000000000000000000000000000000, S_0000026658af52a0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0000026658af55c0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0000026658af5660_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0000026658af55c0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0000026658af5660_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0000026658af55c0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0000026658af5660_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0000026658af55c0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0000026658af5660_0, 0, 1;
    %delay 10, 0;
    %vpi_call 2 37 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "ha-test.v";
    "ha.v";
