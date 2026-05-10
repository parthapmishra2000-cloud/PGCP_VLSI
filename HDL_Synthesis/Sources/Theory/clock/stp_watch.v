`timescale 1s/100ms

module Stp_watch(input rst, start, clk, pause,
output reg [4:0]hours,
output reg [5:0]minutes, seconds
);

reg running;

always @(posedge clk or posedge rst)begin
if(rst)begin
hours <= 0;
minutes <= 0;
seconds <= 0;
running <= 0;
end else begin
if (start)
running <= 1;
else if (pause)
running <= 0;

if (running) begin
	if(seconds==59) begin
		seconds<=0;
		if(minutes==59) begin
			minutes<=0;
			if(hours==23)
			hours<=0;
			else hours <= hours +1;
		end else minutes <= minutes +1;
	end else seconds <= seconds +1;
end
end
end
endmodule