package Compiler.Opt;

import Compiler.CFG.FunctionIR;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.*;

public class RegisterAllocator {
    private static Map<VirtualRegister, String> virtualRegisterStringMap;
    private static Map<VirtualRegister, Integer> countMap;
    private static List<VirtualRegister> criticalRegisterList;
    private static Map<VirtualRegister, Set<VirtualRegister>> conflictEdgeMap;
    private static Map<VirtualRegister, Set<VirtualRegister>> moveFlowMap;
    private static List<String> allocateOrder;

    private static final List<String> normalOrder = new ArrayList<String>() {{
        add("rsi"); add("rbx"); add("rdi"); add("r12");
        add("r8"); add("r13"); add("r9"); add("r14");
        add("r10"); add("r15"); add("r11");
    }};

    private static final List<String> leafOrder = new ArrayList<String>() {{
        add("rsi"); add("rdi"); add("r8"); add("r9"); add("r10");
        add("r11"); add("rbx"); add("r12"); add("r13");
        add("r14"); add("r15");
    }};

    /*class ComparableVirtualRegister extends VirtualRegister implements Comparable<VirtualRegister>{

        public ComparableVirtualRegister(String name) {
            super(name);
        }

        @Override
        public int compareTo(VirtualRegister rhs) {
            int leftValue = countMap.get(this);
            int rightValue = countMap.get(rhs);
            return leftValue > rightValue ? -1 : 1;
        }
    }*/

    public static void naiveAllocate(Map<VirtualRegister, Set<VirtualRegister>> edge, Map<VirtualRegister, Integer> count, FunctionIR functionIR) {
        conflictEdgeMap = edge;
        countMap = count;
        List<VirtualRegister> virtualRegisterList = new ArrayList<>();
        List<VirtualRegister> allocateRegisterList = new ArrayList<>();
        criticalRegisterList = new ArrayList<>();
        for (VirtualRegister virtualRegister : count.keySet()) {
            if (!functionIR.getRegisterIntegerMap().containsKey(virtualRegister)) {
                if (virtualRegister.getSystemRegister() != null) {
                    criticalRegisterList.add(virtualRegister);
                } else {
                    virtualRegisterList.add(virtualRegister);
                }
            }
        }
        allocateOrder = functionIR.isLeaf() ? leafOrder : normalOrder;
        virtualRegisterList.sort((lhs, rhs) -> {
            int leftValue = countMap.get(lhs);
            int rightValue = countMap.get(rhs);
            if (leftValue == rightValue) return 0;
            return leftValue > rightValue ? -1 : 1;
        });
        if (virtualRegisterList.size() < 500) {
            for (VirtualRegister virtualRegister : virtualRegisterList) {
                allocateRegisterList.add(virtualRegister);
                if (!color(allocateRegisterList)) {
                    allocateRegisterList.remove(allocateRegisterList.size() - 1);
                }
            }
            color(allocateRegisterList);
        } else {
            virtualRegisterStringMap = new HashMap<>();
            for (VirtualRegister virtualRegister : criticalRegisterList) {
                tryColor(virtualRegister, virtualRegister.getSystemRegister());
            }
            for (VirtualRegister virtualRegister : allocateRegisterList) {
                for (String systemRegister : allocateOrder) {
                    if (tryColor(virtualRegister, systemRegister)) {
                        break;
                    }
                }
            }
        }
        functionIR.setRegisterStringMap(virtualRegisterStringMap);
    }

    private static boolean color(List<VirtualRegister> virtualRegisterList) {
        List<VirtualRegister> allocateRegisterList = new ArrayList<>(virtualRegisterList);
        virtualRegisterStringMap = new HashMap<>();
        for (VirtualRegister virtualRegister : criticalRegisterList) {
            if (!tryColor(virtualRegister, virtualRegister.getSystemRegister())) {
                throw new InternalError("the critical virtual register has been allocated incorrectly");
            }
        }
        allocateRegisterList.sort((lhs, rhs) -> {
            int leftValue = conflictEdgeMap.get(lhs).size();
            int rightValue = conflictEdgeMap.get(rhs).size();
            if (leftValue == rightValue) return 0;
            return leftValue > rightValue ? -1 : 1;
        });
        for (VirtualRegister virtualRegister : allocateRegisterList) {
            boolean beColored = false;
            for (String systemRegister : allocateOrder) {
                if (tryColor(virtualRegister, systemRegister)) {
                    beColored = true;
                    break;
                }
            }
            if (!beColored) return false;
        }
        return true;
    }

    private static boolean tryColor(VirtualRegister virtualRegister, String systemRegister) {
        for (VirtualRegister neighbor : conflictEdgeMap.get(virtualRegister)) {
            if (neighbor.getSystemRegister().equals(systemRegister)) {
                return false;
            }
        }
        virtualRegisterStringMap.put(virtualRegister, systemRegister);
        return true;
    }
}
