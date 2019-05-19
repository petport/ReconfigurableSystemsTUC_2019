#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <stdint.h>

using namespace hls;

struct axiWord {
   ap_uint<32>  data;
   ap_uint<4>   strb;
   ap_uint<1>   last;
};


typedef ap_uint<32> uint32;
typedef ap_uint<1> uint1;
typedef ap_uint<2> uint2;



void ps2ip_fifo(stream<axiWord> &ps2ip,stream<axiWord> &ps2ipIntFifo);
void ip2ps_fifo(stream<axiWord> &ip2psIntFifo,stream<axiWord> &ip2ps);
void core(stream<axiWord> &ps2ipIntFifo,stream<axiWord> &ip2psIntFifo,uint32 rule0_reg,uint32 rule1_reg,uint32 rule2_reg,
		uint32 &rule0_cnt,uint32 &rule1_cnt,uint32 &rule2_cnt);
void my_ip_hls(stream<axiWord> &slaveIn,stream<axiWord> &masterOut,uint32 rule0, uint32 rule1, uint32 rule2,
		uint32 &rule0_cnt,uint32 &rule1_cnt,uint32 &rule2_cnt);
void rules(uint32 rule0,uint32 rule1,uint32 rule2, uint32 &rule0_reg,uint32 &rule1_reg,uint32 &rule2_reg);
