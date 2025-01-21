
class mem_seq extends uvm_sequence#(mem_tx);
//1.factory registartion
	`uvm_object_utils(mem_seq)
//2.instance sub_component
	mem_tx mem_tx_h;
//3.function new
	function new(string name="");
		super.new(name);
	endfunction

//in objects we dont have phases so we will use body task
	task pre_body();
		`uvm_info("mem_seq","pre_body",UVM_NONE)
	endtask

	task body();
		//allocte mem to tx
		mem_tx_h=mem_tx::type_id::create("mem_tx_h");
		//randomize the tx fields
			`uvm_do(req)
	endtask

task post_body();
	`uvm_info("mem_seq","POST_BODY OF MEM_SEQ",UVM_NONE)
	endtask


endclass
