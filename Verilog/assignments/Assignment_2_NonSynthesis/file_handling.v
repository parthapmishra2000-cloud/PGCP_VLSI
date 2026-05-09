module FileOperations;

    integer file, file2, status, i;
    reg [31:0] data_reg;
    reg [31:0] sum;
    reg [31:0] my_array [0:4];
    integer line_count;

    initial begin

        file = $fopen("data.txt", "w"); 
        if (file == 0) begin
            $display("Error: Could not open file.");
        end else begin
            $fdisplay(file, "Line 1: 100");
            $fdisplay(file, "Line 2: 200");
            $fdisplay(file, "Line 3: 300");
            $fclose(file);
        end

  
        file = $fopen("data.txt", "a"); 
        $fdisplay(file, "Line 4: 400");
        $fclose(file);

        
        file = $fopen("data.txt", "r");
        while (!$feof(file)) begin
            status = $fgets(data_reg, file); 
            $display("Read content: %s", data_reg);
        end
        $fclose(file);

      
        my_array[0] = 10; my_array[1] = 20; my_array[2] = 30; 
        my_array[3] = 40; my_array[4] = 50;
        file = $fopen("array.txt", "w");
        for (i = 0; i < 5; i = i + 1) begin
            $fdisplay(file, "%d", my_array[i]);
        end
        $fclose(file);

    
        file = $fopen("array.txt", "r");
        line_count = 0;
        sum = 0;
        while ($fscanf(file, "%d\n", data_reg) == 1) begin
            sum = sum + data_reg;
            line_count = line_count + 1;
        end
        $display("Total Lines: %0d, Total Sum: %0d", line_count, sum);
        $fclose(file);

     
        file = $fopen("array.txt", "r");
        file2 = $fopen("copy.txt", "w");
        while ($fscanf(file, "%d\n", data_reg) == 1) begin
            $fdisplay(file2, "%d", data_reg);
        end
        $fclose(file);
        $fclose(file2);
    end

endmodule