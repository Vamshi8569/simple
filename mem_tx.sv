
class mem_tx extends uvm_sequence_item;

rand bit wr_rd;
rand bit[7:0]addr;
rand bit[15:0]data;

	//object registartion nad field registartion
		`uvm_object_utils_begin(mem_tx)
			`uvm_field_int(wr_rd,UVM_ALL_ON)
			`uvm_field_int(addr,UVM_ALL_ON)
			`uvm_field_int(data,UVM_ALL_ON)
		`uvm_object_utils_end

		function new(string name="");
			super.new(name);
		endfunction

endclass
