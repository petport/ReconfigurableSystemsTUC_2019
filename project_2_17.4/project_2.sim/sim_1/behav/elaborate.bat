@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 9e2ce5b03cf34386aea9708b249be066 -m64 --debug typical --relax --mt 2 -L axi_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L axi_vip_v1_0_1 -L xil_defaultlib -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_0_11 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_11 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_12 -L fifo_generator_v13_1_4 -L axi_data_fifo_v2_1_11 -L axi_crossbar_v2_1_13 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_8 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_14 -L axi_sg_v4_1_6 -L axi_dma_v7_1_13 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_13 -L xlconcat_v2_1_1 -L axi_protocol_converter_v2_1_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_behav xil_defaultlib.tb xil_defaultlib.glbl -log elaborate.log -cc gcc
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
