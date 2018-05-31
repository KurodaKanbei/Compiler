package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class StupidMoveKiller {
    public static void uselessMoveRemove(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i < block.getInstructionList().size(); i++) {
                Instruction instruction = block.getInstructionList().get(i);
                if (instruction instanceof MoveInstruction) {
                    Operand target = ((MoveInstruction) instruction).getTarget();
                    Operand source = ((MoveInstruction) instruction).getSource();
                    if (target instanceof VirtualRegister && source instanceof VirtualRegister
                            && functionIR.getRegisterStringMap().containsKey(target)
                            && functionIR.getRegisterStringMap().containsKey(source)
                            && functionIR.getRegisterStringMap().get(target).equals(functionIR.getRegisterStringMap().get(source))) {
                        block.getInstructionList().remove(i--);
                    }
                }
            }
        }
    }
}
