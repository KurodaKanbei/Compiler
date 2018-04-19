package Compiler.AST.Type;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

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
} 

@After
public void after() throws Exception { 
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
    if (IntType.instance() != IntType.instance()) {
        System.out.println("fuck you!");
    }
    if (A.compatibleWith(B) == false) System.out.println("it sucks");
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
