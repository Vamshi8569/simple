
class mem_driver extends uvm_driver#(mem_tx);
//1.factory registartion
	`uvm_component_utils(mem_driver)
	int count_t;
//2.sub component instation
	//3.function new
		function new(string name="",uvm_component parent);
			super.new(name,parent);
		endfunction
	//required phases
		task run_phase(uvm_phase phase);
				`uvm_info("mem_driver","RUN_PHASE FROM MEM_DRIVER",UVM_NONE)
			/*	if(uvm_config_db#(int)::get(this,"","COUNT",count_t)==0)begin
			`uvm_error("mem_driver","failed to retrive")
				end
				else begin
		`uvm_info("mem_driver",$sformatf("###value_retrived=%0d",count_t),UVM_NONE)
		end*/
		uvm_config_db#(int)::get(this,"","COUNT",count_t);
			`uvm_info("mem_driver",$sformatf("###value_retrived=%0d",count_t),UVM_NONE)

			//1.send req to sqr
			seq_item_port.get_next_item(req);//req is instance of mem_tx
			//drives items to dut
				drive_tx(req);
			//2.send ack to sqr
			seq_item_port.item_done();
		endtask

		task drive_tx(mem_tx tx);
			`uvm_info("mem_driver","DRIVE_TX METHOD FROM MEM_DRIVER",UVM_NONE)
		endtask



endclass
