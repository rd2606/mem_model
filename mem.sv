// SystemVerilog memory class

class mem;
    // simple memory example
    rand bit [7:0] data[];
    rand int mem_size;

    //Constraints
    constraint memory {
        mem_size == 256;

        data.size() == mem_size;

        foreach(data[i]) {
         if(i==0)
           data[i] == 'h0;

         else if(i<16)
           data[i] == data[i-1] + 1;

         else if(i>=mem_size - 16)
           data[i] == 8'hFF;

        else
          data[i] inside {[0:'hFF]};

        }
    }

    function new();
    endfunction

endclass
