package edu.ntu.eee.csn.ism.egene.config;

import junit.framework.TestSuite;

/**
 * Register all of test for edu.ntu.eee.csn.ism.epgen.config
 * 
 * @author warifand
 * 
 */
public class AllTests extends TestSuite {

	/**
	 * Constructor
	 */
	public AllTests() {
		super();
	}

	/**
	 * Constructor
	 * 
	 * @param name
	 *            test name
	 */
	public AllTests(String name) {
		super(name);
	}

	/**
	 * Declares the test suite.
	 * 
	 * @return the test suite.
	 */
	public static TestSuite suite() {

		AllTests tests = new AllTests(AllTests.class.getName());
		tests.addTest (ConfigTest.suite());

		return tests;
	}
}
