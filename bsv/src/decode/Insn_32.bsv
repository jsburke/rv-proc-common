//////////////////////////////////////////////////
//                                              //
// file   Insn32.bsv                            //
//                                              //
// author John Burke                            //
// date   2020 July 4                           //
// notes  This file provides several functions  //
//        and constants that are used for       //
//        decoding riscv insctructions that     //
//        are 32 bits wide. At this point it    //
//        only excludes the C extension.        //
//                                              //
//////////////////////////////////////////////////

package Insn_32;

//////////////////////////////////////////////////////
//                                                  //
//  Instruction Subfields and Functions             //
//                                                  //
//////////////////////////////////////////////////////

import RV_Common :: *;

//////////////////////////////////////////////////////
//                                                  //
//  Instruction Subfields and Functions             //
//                                                  //
//////////////////////////////////////////////////////

typedef Bit #(32) Insn32;   // Is there a way to restrict this
typedef Bit #(7)  Opcode;

function Opcode insn32_opcode_get  (Insn32 insn);
  return insn[6:0];
endfunction

//////////////////////////////////////////////////////
//                                                  //
//  Extract Register Addresses                      //
//                                                  //
//////////////////////////////////////////////////////

function RegAddr insn32_rs1_get    (Insn32 insn);
   return insn[19:15];
endfunction

function RegAddr insn32_rs2_get    (Insn32 insn);
   return insn[24:20];
endfunction

function RegAddr insn32_rs3_get    (Insn32 insn);
   return insn[31:27];
endfunction

function RegAddr insn32_rd_get     (Insn32 insn);
   return insn[11:7];
endfunction

function CsrAddr insn32_csr_get    (Insn32 insn);
   return insn[31:20];
endfunction

//////////////////////////////////////////////////////
//                                                  //
//  Extract and Construct Immediate Values          //
//                                                  //
//////////////////////////////////////////////////////

function

endpackage 
