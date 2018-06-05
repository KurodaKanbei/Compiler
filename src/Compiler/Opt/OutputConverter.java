package Compiler.Opt;

import Compiler.AST.ProgramAST;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.FunctionCallInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class OutputConverter {
    private static boolean hasAssigned(Operand operand, String systemRegister) {
        if (!(operand instanceof VirtualRegister)) return false;
        VirtualRegister virtualRegister = (VirtualRegister) operand;
        return virtualRegister.getSystemRegister() != null && virtualRegister.getSystemRegister().equals(systemRegister);
    }

    public static void convertOutput(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i + 3 < block.getInstructionList().size(); i++) {
                if (block.getInstructionList().get(i) instanceof FunctionCallInstruction &&
                        block.getInstructionList().get(i + 1) instanceof MoveInstruction &&
                        block.getInstructionList().get(i + 2) instanceof MoveInstruction &&
                        block.getInstructionList().get(i + 3) instanceof FunctionCallInstruction) {
                    FunctionCallInstruction functionCallInstruction1 = (FunctionCallInstruction) block.getInstructionList().get(i);
                    MoveInstruction moveInstruction1 = (MoveInstruction) block.getInstructionList().get(i + 1);
                    MoveInstruction moveInstruction2 = (MoveInstruction) block.getInstructionList().get(i + 2);
                    Operand source = moveInstruction1.getSource();
                    Operand target = moveInstruction2.getTarget();
                    FunctionCallInstruction functionCallInstruction2 = (FunctionCallInstruction) block.getInstructionList().get(i + 3);
                    if (functionCallInstruction1.getFunctionType().getOriginName().equals("toString")
                            && hasAssigned(source, "rax") && hasAssigned(target, "rdi")
                            && moveInstruction1.getTarget() == moveInstruction2.getSource()) {
                        if (functionCallInstruction2.getFunctionType().getOriginName().equals("print")) {
                            for (int k = 0; k < 3; k++) {
                                block.getInstructionList().remove(i + 1);
                            }
                            functionCallInstruction1.convertFunctionType(ProgramAST.globalFunctionTable.getFunctionMap().get("print_Int"));
                        }
                        if (functionCallInstruction2.getFunctionType().getOriginName().equals("println")) {
                            for (int k = 0; k < 3; k++) {
                                block.getInstructionList().remove(i + 1);
                            }
                            functionCallInstruction1.convertFunctionType(ProgramAST.globalFunctionTable.getFunctionMap().get("println_Int"));
                        }
                    }
                }
                //if (block.getInstructionList().get(i) instanceof )
            }
        }
    }
}
