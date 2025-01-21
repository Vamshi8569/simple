
//functionality of mem_test class
//1.usef class is extended to uvm_test
//2.factory registartion,sub component instation
//3.function new definiton
//4.necessary phases implementation

class mem_test extends uvm_test;
//2.factory registartion
	`uvm_component_utils(mem_test)
	mem_env mem_env_h;
//3.function new definition
	function new(string name="",uvm_component parent);
		super.new(name,parent);
	endfunction
//4.common phases implementation
//mem_seq will be parallen to test
//we need to map seq to sqr 
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		//mem_seq instatoion
		//
		//allocate mem to seq
				//mapping seq to sqr
			mem_env_h=mem_env::type_id::create("mem_env_h",this);
		`uvm_info("mem_test","mem_test build_phase",UVM_NONE)
	endfunction

	function void end_of_elaboration_phase(uvm_phase phase);
		`uvm_info("mem_test","end_of_elaboration_phase of mem_test",UVM_NONE)
		uvm_top.print_topology();
	endfunction

	task run_phase(uvm_phase phase);
		//functionality
		//map seq to sqr
		mem_seq mem_seq_h;
		mem_seq_h=mem_seq::type_id::create("mem_seq_h");


			mem_seq_h.start(mem_env_h.mem_agent_h.mem_sqr_h);
			//uvm_start method is used to map it
			`uvm_info("mem_test","run_phase from mem_test",UVM_NONE)

	endtask

	function void report_phase(uvm_phase phase);
		`uvm_info("mem_test","report_phase of mem_tets",UVM_NONE)

	endfunction


endclass
