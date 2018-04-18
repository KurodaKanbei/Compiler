package test.Compiler.AST.Type; 

import Compiler.AST.Type.IntType;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After; 

/** 
* IntType Tester. 
* 
* @author <Authors name> 
* @since <pre>Apr 18, 2018</pre> 
* @version 1.0 
*/ 
public class IntTypeTest { 

@Before
public void before() throws Exception { 
    System.out.println("Begin Test");
}

@After
public void after() throws Exception { 
    System.out.println("End Test");
}

/** 
* 
* Method: getInstance() 
* 
*/ 
@Test
public void testGetInstance() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: compatibleWith(Type rhs) 
* 
*/ 
@Test
public void testCompatibleWith() throws Exception {
    IntType A = new IntType();
    IntType B = new IntType();
    if (A.compatibleWith(B)) {
        System.out.println("Yes");
    } else {
        System.out.println("No");
    }
}

/** 
* 
* Method: toString() 
* 
*/ 
@Test
public void testToString() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: toString(int indents) 
* 
*/ 
@Test
public void testToStringIndents() throws Exception { 
//TODO: Test goes here... 
} 


} 
