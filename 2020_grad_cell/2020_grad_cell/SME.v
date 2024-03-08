module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;
//output [7:0] s;
//output [7:0] p;
reg match;
reg [4:0] match_index;
// reg valid;

reg [7:0] String [0:32];
reg [7:0] Pattern [0:8];
reg [1:0] state, nextState;
reg [5:0] Judge_String_count, String_count, String_count_Record;
reg [3:0] Judge_Pattern_count, Pattern_count,Judge_Pattern_count_begin;
reg first_FS, finishGetData, finishJudge;
parameter GETDATA = 3'b001;
parameter JUDGE = 3'b010;
parameter RESE = 3'b011;

assign valid = (state == RESE);
wire needStart, needEnd, is_C_Star, is_FS;
assign needStart = ((Pattern[Judge_Pattern_count] == 8'h5E) && (String[Judge_String_count] == 8'h20 || Judge_String_count == 0));
assign needEnd = ((Pattern[Judge_Pattern_count] == 8'h24) && (String[Judge_String_count] == 8'h20 || Judge_String_count == String_count));
assign is_C_Star = (Pattern[Judge_Pattern_count] == 8'h2A) ;
assign is_FS = (Pattern[Judge_Pattern_count] == 8'h2E);
//wire s = String[0];
//wire p = Pattern[0];

//assign finishJudge = (Judge_Pattern_count == Pattern_count || Judge_String_count == String_count);
//assign finishGetData = (!ispattern && (state == GETDATA));

always@(finishJudge, finishGetData)begin
	case(state)
		GETDATA:begin
			if(finishGetData)
				nextState = JUDGE;
			else
				nextState = GETDATA;
		end
		
		JUDGE:begin
			if(finishJudge)
				nextState = RESE;
			else
				nextState = JUDGE;
		end
		RESE:begin
			nextState = GETDATA;
		end
		default
			nextState = 1;
	endcase
	
end

/*always@(posedge clk)begin
	if(reset)
		state <= 1;
	else
		state <= nextState;
end*/
integer i;
always@(posedge clk)begin
	if(reset)
		state = 1;
	else
		state = nextState;
	finishGetData <= 0;
	finishJudge <= 0;
	
	if(reset)begin
		match <= 0;
		String_count_Record <= 0;
		match_index <= 0;
		String_count <= 6'd0;
		Pattern_count <= 6'd0;
		Judge_Pattern_count <= 4'd0;
		Judge_String_count <= 6'd0;
		Judge_Pattern_count_begin <= 4'd0;
		
		first_FS <= 1'b1;
		for(i = 0;i < 33;i = i + 1)begin
			String[i] <= 8'b0;
		end
		for(i = 0;i < 9;i = i + 1)begin
			Pattern[i] <= 8'b0;
		end
	end
	else
		case(state)
			GETDATA:begin
				
				if(isstring == 1'b1)begin
					String[String_count] <= chardata;
					String_count <= String_count + 6'd1;
				end
				else if(ispattern == 1'b1)begin
					if(String_count == 6'd0)
						String_count <= String_count_Record;
					else
						String_count <= String_count;
					Pattern[Pattern_count] <= chardata;
					Pattern_count <= Pattern_count + 4'd1;
				end
				else if(Pattern_count != 4'd0)
					finishGetData <= 1'b1;
				else begin
					String_count <= String_count;
					Pattern_count <= Pattern_count;
				end
					
			end
			JUDGE:begin
				if((String[Judge_String_count] == Pattern[Judge_Pattern_count]) || is_FS)begin
					if(Judge_Pattern_count == 4'd0)
						match_index <= Judge_String_count[4:0];
					else
						match_index <= match_index;
					
					Judge_String_count <= Judge_String_count + 6'd1;
					Judge_Pattern_count <= Judge_Pattern_count + 4'd1;
				end
				else if(is_C_Star)begin
					
					Judge_Pattern_count_begin <= Judge_Pattern_count + 4'd1;
					Judge_Pattern_count <= Judge_Pattern_count + 4'd1;
					Judge_String_count <= Judge_String_count;
				end
				else if(needEnd || needStart)begin
					
					if(Judge_Pattern_count == 4'd0)begin
						if(String[Judge_String_count] == 8'h20)
							match_index <= Judge_String_count[4:0] + 5'd1;
						else
							match_index <= Judge_String_count[4:0];
					end
					else
						match_index <= match_index;
					
					Judge_Pattern_count <= Judge_Pattern_count + 4'b1;
					if(Judge_String_count == 6'b0)
						Judge_String_count <= Judge_String_count;
					else
						Judge_String_count <= Judge_String_count + 6'd1;
					
				end
				else begin
					
					if(Pattern[Judge_Pattern_count_begin] == 8'h2E)
						Judge_String_count <= Judge_String_count;
					else
						Judge_String_count <= Judge_String_count + 6'd1;
					Judge_Pattern_count <= Judge_Pattern_count_begin;
					
				end
				
				if(Pattern_count == Judge_Pattern_count)begin
					match <= 1'b1;
					finishJudge <= 1'b1;
					
					/*String_count <= 6'd0;
					Pattern_count <= 4'd0;
					Judge_Pattern_count <= 4'd0;
					Judge_String_count <= 6'd0;*/
				end
				else if(Judge_String_count > String_count)begin
					match <= 1'b0;
					finishJudge <= 1'b1;
						
					
				end
				else begin
					finishJudge <= 1'b0;
					match <= 1'b0;
				end
			end
			RESE:begin
				String_count_Record <= String_count;

				String_count <= 6'd0;
				Pattern_count <= 4'd0;
				Judge_Pattern_count <= 4'd0;
				Judge_String_count <= 6'd0;
				
				Judge_Pattern_count_begin <= 4'd0;
				first_FS <= 1'b1;
				match <= match;
				match_index <= match_index;
			end
			default:begin
				String_count_Record <= String_count;
				String_count <= String_count;
				Pattern_count <= Pattern_count;
				Judge_Pattern_count <= Judge_Pattern_count;
				Judge_String_count <= Judge_String_count;
				Judge_Pattern_count_begin <= Judge_Pattern_count_begin;
				first_FS <= 1;
				match <= match;
				match_index <= match_index;
			end
			
		endcase
end
endmodule
