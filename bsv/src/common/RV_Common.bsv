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

package RV_Common;

//////////////////////////////////////////////////
//                                              //
//                                              //
//                                              //
//////////////////////////////////////////////////

typedef Bit #(5)  RegAddr;
typedef Bit #(12) CsrAddr;

endpackage 
