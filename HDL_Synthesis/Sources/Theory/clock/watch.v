`timescale 1s/100ms

module Digital_watch(input clk, rst, 
input [1:0]mode,
output reg [4:0]hours,
output reg [5:0]minutes, seconds);

always @ (posedge clk or posedge rst)begin
if (rst)begin
hours <= 0;
minutes <= 0;
seconds <= 0;
end
else begin
// Increment Seconds
            if (seconds == 59) begin
                seconds <= 0;
                
                // Increment Minutes
                if (minutes == 59) begin
                    minutes <= 0;
                    
                    // Increment Hours
                    if (hours == 23) begin
                        hours <= 0;
                    end else begin
                        hours <= hours + 1;
                    end
                end else begin
                    minutes <= minutes + 1;
                end
            end else begin
                seconds <= seconds + 1;
            end

end
end

endmodule