module testbench;

  initial begin
   mem a = new();
   a.randomize();
   $display("mem size", a.mem_size);
   for (int i = 0; i<a.mem_size; i++)
      $display("mem[%0d] : %0h",i,a.data);
  end 

  initial begin
    $dumpfile("dump.vcd"); 
	$dumpvars;
  end

endmodule