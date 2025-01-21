
class mem_sqr extends uvm_sequencer#(mem_tx);
//1.factory registartion
	`uvm_component_utils(mem_sqr);
	int count_t;
	//2.instatio of sub component
//3.fnction new
	function new(string name="",uvm_component parent);
		super.new(name,parent);
	endfunction
//execution of required phases
	task run_phase(uvm_phase phase);
		`uvm_info("mem_sqr","run_phase of mem_sqr",UVM_NONE)
		/*if(uvm_config_db#(int)::get(this,"","COUNT",count_t)==0)begin
		`uvm_error("mem_sqr","failed to retrive vlaues")
		end
		else begin
		`uvm_info("mem_sqr",$sformatf("###value_retrived=%0d",count_t),UVM_NONE)
		end<F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9><F9>*/
		//functionality
		//1.dvr send req to sqr via port
		//2.sqr gets the req via export
		//3.now sqr will get item from seq
		//4.this is given to drv then drv drives the items to dut
		//5.drv will send ack to sqr
		//this implementation is done by base classes

	endtask


endclass
