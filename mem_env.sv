
class mem_env extends uvm_env;
	//1.factory registartion
	`uvm_component_utils(mem_env)
	//2.sub component instatoion
	mem_agent mem_agent_h;
	//function new 
	function new(string name="",uvm_component parent);
		super.new(name,parent);
	endfunction
	
	//4.phases execution
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		mem_agent_h=mem_agent::type_id::create("mem_agent_h",this);
		`uvm_info("mem_env","build_phase of mem_env",UVM_NONE)
	endfunction


endclass
