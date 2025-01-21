
class mem_agent extends uvm_agent;
//1.factory registartion
	`uvm_component_utils(mem_agent);
//2.sub component instation
	mem_sqr mem_sqr_h;
	mem_driver mem_drv_h;
//3.functionality new
	function new(string name="",uvm_component parent);
		super.new(name,parent);
	endfunction

//4 common phase implememtation
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		//all mem to sqr and drv
		mem_sqr_h=mem_sqr::type_id::create("mem_sqr_h",this);
			mem_drv_h=mem_driver::type_id::create("mem_drv_h",this);
		`uvm_info("mem_env","mem_agent of build_phase",UVM_NONE)
	endfunction
	//in connect phase of agnet export of sqr connected to port of drv
		function void connect_phase(uvm_phase phase);
			//sqr has exopt name as drv has port
			mem_drv_h.seq_item_port.connect(mem_sqr_h.seq_item_export);
			`uvm_info("mem_agent","connect_phase from mem_agnet",UVM_NONE)
		endfunction


endclass
