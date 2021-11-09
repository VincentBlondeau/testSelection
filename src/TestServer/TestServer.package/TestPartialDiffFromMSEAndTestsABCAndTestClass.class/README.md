Model:
public class A {
	public void mA() {	System.out.println("toto");}
}		
public class B {
	public void mB() {	new A().mA();}
}
public class C {
	public void mC() {	new B().mB();} 
}  
import org.junit.Test;
public class Tests {
	@Test
	public void t1(){new B().mB();}	
	@Test
	public void t2(){new C().mC();}
}
Changes:
Base: no test class.
Partial 1: add test class (and create annotation @Test as a stub...)