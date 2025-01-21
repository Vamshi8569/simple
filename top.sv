
import uvm_pkg::*;
`include "uvm_macros.svh"

typedef class mem_tx;
typedef class mem_seq;
typedef class mem_sqr;
typedef class mem_driver;
typedef class mem_agent;
typedef class mem_env;
typedef class mem_test;
//`include  top.sv


`include "mem_tx.sv"
`include "mem_seq.sv"
`include "mem_sqr.sv"
`include "mem_driver.sv"
`include "mem_agent.sv"
`include "mem_env.sv"
`include "mem_test.sv"
//`include "top.sv"

//import uvm_pkg::*;
//`include "uvm_macros.svh"



module top;
//functionality
//1.clk,rst generation
//2.interface instation
//3.dut insattion
//4.assertion module instaton
//5.calling global run_test method

initial begin
	run_test("mem_test");
	//uvm_config_db#(datatype)::set(uvm_component context,instance_name,fiedl_name,value);
	uvm_config_db#(int)::set(null,"*","COUNT",10);

	/*global task
		task run_test(string name="");

			uvm_root top;
			uvm_coreservices cs;
			cs=uvm_coreservices::get();
			top=cs::get_root();
			top.run_test(testname);

		endtask
	


	*/

end


endmodule
