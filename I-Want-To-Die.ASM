; ======================================================
Start:
	MOV	AL,0	; 0000 0000
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,1	; 0000 0001
	OUT	02	; Send the data in AL to Port 02

	MOV	DL, FA	; Set BL to FA

Right:
	MOV	AL,FB	; R0
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,B	; R1
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,B7	; R2
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,9F	; R3
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,4F	; R4
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,DD	; R5
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,FD	; R6
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,8B	; R7
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,FF	; R8
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,DF	; R9
	OUT	02	; Send the data in AL to Port 02

	CMP	AL,DF
	JE	Start

Left:
	CMP	DL,FA	; Check if BL equals FA
	JE	Yes0	; Jump to yes0
	CMP	DL, A	; Check if BL equals A
	JE	Yes1	; Jump to yes1
	CMP	DL, B6	; Check if BL equals B6
	JE	Yes2	; Jump to yes2
	CMP	DL, 9E	; Check if BL equals 9E
	JE	Yes3	; Jump to yes3
	CMP	DL, 4E	; Check if BL equals 4E
	JE	Yes4	; Jump to yes4
	CMP	DL, DC	; Check if BL equals DC
	JE	Yes5	; Jump to yes5
	CMP	DL, FC	; Check if BL equals FC
	JE	Yes6	; Jump to yes6
	CMP	DL, 8A	; Check if BL equals 8A
	JE	Yes7	; Jump to yes7
	CMP	DL, FE	; Check if BL equals FE
	JE	Yes8	; Jump to yes8
	JMP	Yes9	; Jump to yes9



Yes0:
	MOV	AL,FA	; L0
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, A	; Set BL to A
	JMP	Right	; Jump to right

Yes1:
	MOV	AL,A	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, B6	; Set BL to B6
	JMP	Right	; Jump to right

Yes2:
	MOV	AL,B6	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, 9E	; Set BL to B6
	JMP	Right	; Jump to right

Yes3:
	MOV	AL,9E	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, 4E	; Set BL to B6
	JMP	Right	; Jump to right

Yes4:
	MOV	AL,4E	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, DC	; Set BL to B6
	JMP	Right	; Jump to right

Yes5:
	MOV	AL,DC	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, FC	; Set BL to B6
	JMP	Right	; Jump to right

Yes6:
	MOV	AL,FC	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, 8A	; Set BL to B6
	JMP	Right	; Jump to right

Yes7:
	MOV	AL,8A	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, FE	; Set BL to B6
	JMP	Right	; Jump to right

Yes8:
	MOV	AL,FE	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, DE	; Set BL to B6
	JMP	Right	; Jump to right

Yes9:
	MOV	AL,DE	; L1
	OUT	02	; Send the data in AL to Port 02
	MOV	DL, FA	; Set BL to B6
	JMP	Right	; Jump to right
	
	END
; ======================================================