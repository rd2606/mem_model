# mem_model
system verilog randomization use to create mem model

Write a class to model a memory:

• rand bit [7:0] mem[256];
Constraints:
• Memory size = 256 bytes
• First 16 locations must contain incremental pattern (0,1,2,...15)
• Last 16 locations must contain 8'hFF
• Remaining memory should be random
• Exactly 10 locations (excluding first/last 16) must contain value 8'hAA
• No two 8'hAA locations should be adjacent
