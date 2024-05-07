/**
* The VariablesDataTypesOperatorsTest class is used to test the methods in the VariablesDataTypesOperators class.
* It contains individual test methods for each method in the class, validating their functionality and expected outcomes.
* The test methods utilize the Salesforce Assert class to assert and validate the results.
 * The main purpose of this test class is to ensure the accuracy and correctness of the methods in the VariablesDataTypesOperators class.
*/

@IsTest
public class VariablesDataTypesOperatorsTest {
    @IsTest
    static void testAddition() {
        Integer result = VariablesDataTypesOperators.addition(2, 3);
        Assert.areEqual(5, result, 'Incorrect addition result');
        result = VariablesDataTypesOperators.addition(-5, 10);
        Assert.areEqual(5, result, 'Incorrect negative addition result');
        result = VariablesDataTypesOperators.addition(0, 7);
        Assert.areEqual(7, result, 'Incorrect addition with 0 result');
        result = VariablesDataTypesOperators.addition(1000000, 999999);
        Assert.areEqual(1999999, result, 'Incorrect large number addition result');
        result = VariablesDataTypesOperators.addition(null, 5);
        Assert.areEqual(null, result, 'Incorrect null addition result');
    }

    @IsTest
    static void testSubtraction() {
        Integer result = VariablesDataTypesOperators.subtraction(10, 5);
        Assert.areEqual(5, result, 'Incorrect subtraction result');

        result = VariablesDataTypesOperators.subtraction(-5, -10);
        Assert.areEqual(5, result, 'Incorrect negative subtraction result');
    }

    @IsTest
    static void testMultiplication() {
        Integer result = VariablesDataTypesOperators.multiplication(5, 5);
        Assert.areEqual(25, result, 'Incorrect multiplication result');

        result = VariablesDataTypesOperators.multiplication(-5, 5);
        Assert.areEqual(-25, result, 'Incorrect negative multiplication result');
    }

    @IsTest
    static void testDivision() {
        Decimal result = VariablesDataTypesOperators.division(10, 5);
        Assert.areEqual(2, result, 'Incorrect division result');

        result = VariablesDataTypesOperators.division(10, 0);
        Assert.areEqual(0, result, 'Incorrect division by zero result');
    }

    @IsTest
    static void testIsEven() {
        Boolean result = VariablesDataTypesOperators.isEven(10);
        Assert.areEqual(true, result, 'Incorrect isEven result');

        result = VariablesDataTypesOperators.isEven(9);
        Assert.areEqual(false, result, 'Incorrect isEven result');
    }

    @IsTest
    static void testIsPositive() {
        Boolean result = VariablesDataTypesOperators.isPositive(10);
        Assert.areEqual(true, result, 'Incorrect isPositive result');

        result = VariablesDataTypesOperators.isPositive(-10);
        Assert.areEqual(false, result, 'Incorrect isPositive result');
    }

    @IsTest
    static void testConcatenateStrings() {
        String result = VariablesDataTypesOperators.concatenateStrings('Hello', 'World');
        Assert.areEqual('HelloWorld', result, 'Incorrect concatenateStrings result');
        result = VariablesDataTypesOperators.concatenateStrings('Hello', 'Cloud');
        Assert.areEqual('HelloCloud', result, 'Incorrect concatenateStrings result');
    }


	@IsTest
	static void testCreateSentence() {
		// Test with noun 'cat' and verb 'jumping'
		String result = VariablesDataTypesOperators.createSentence('cat', 'jumping', '!');
		Assert.areEqual(
			'The cat is jumping!',
			result,
			'Incorrect createSentence result for noun "cat" and verb "jumping"'
		);

		// Test with noun 'bird' and verb 'flying'
		result = VariablesDataTypesOperators.createSentence('bird', 'flying', '.');
		Assert.areEqual(
			'The bird is flying.',
			result,
			'Incorrect createSentence result for noun "bird" and verb "flying"'
		);

		// Additional test case with different noun and verb
		result = VariablesDataTypesOperators.createSentence('dog', 'running', '?');
		Assert.areEqual(
			'The dog is running?',
			result,
			'Incorrect createSentence result for noun "dog" and verb "running"'
		);
	}

    @IsTest
    static void testIsDateInPast() {
        Boolean result = VariablesDataTypesOperators.isDateInPast(Date.today().addDays(-1));
        Assert.areEqual(true, result, 'Incorrect isDateInPast result');

        result = VariablesDataTypesOperators.isDateInPast(Date.today().addDays(1));
        Assert.areEqual(false, result, 'Incorrect isDateInPast result');
    }

    @IsTest
    static void testIsDateTodayOrFuture() {
        Boolean result = VariablesDataTypesOperators.isDateTodayOrFuture(Date.today().addDays(1));
        Assert.areEqual(true, result, 'Incorrect isDateTodayOrFuture result');

        result = VariablesDataTypesOperators.isDateTodayOrFuture(Date.today().addDays(-1));
        Assert.areEqual(false, result, 'Incorrect isDateTodayOrFuture result');
    }

    @IsTest
    static void testConvertMinutesToMilliseconds() {
        Integer result = VariablesDataTypesOperators.convertMinutesToMilliseconds(1);
        Assert.areEqual(60000, result, 'Incorrect convertMinutesToMilliseconds result');
    }

    @IsTest
    static void testAverageOfThreeNumbers() {
        Double result = VariablesDataTypesOperators.averageOfThreeNumbers(1, 2, 3);
        Assert.areEqual(2.0, result, 'Incorrect averageOfThreeNumbers result');
    }

    @IsTest
    static void testAdjustOrderOfOperations1() {
        Assert.areEqual(36, VariablesDataTypesOperators.adjustOrderOfOperations1(5, 7, 3), 'Incorrect result for adjustOrderOfOperations1 with 5, 7, 3 as arguments');
        Assert.areEqual(-8, VariablesDataTypesOperators.adjustOrderOfOperations1(-3, 1, 4), 'Incorrect result for adjustOrderOfOperations1 with -3, 1, 4 as arguments');
        Assert.areEqual(0, VariablesDataTypesOperators.adjustOrderOfOperations1(0, 0, 0), 'Incorrect result for adjustOrderOfOperations1 with 0, 0, 0 as arguments');
    }

    @IsTest
    static void testAdjustOrderOfOperations2() {
        Assert.areEqual(8, VariablesDataTypesOperators.adjustOrderOfOperations2(), 'Incorrect result for adjustOrderOfOperations2');
        Assert.areNotEqual(43, VariablesDataTypesOperators.adjustOrderOfOperations2(), 'Incorrect result for adjustOrderOfOperations2');
    }

    @IsTest
    static void testComplexOrderOfOperations() {
        Assert.areEqual(8.0, VariablesDataTypesOperators.complexOrderOfOperations(4, 2, 2, 2, 5), 'Incorrect result for complexOrderOfOperations with 4, 2, 2, 2, 5 as arguments');
        Assert.areEqual(5.0, VariablesDataTypesOperators.complexOrderOfOperations(3, 3, 3, 3, 3), 'Incorrect result for complexOrderOfOperations with 3, 3, 3, 3, 3 as arguments');
    }

    @IsTest
    static void testConvertFahrenheitToCelsius() {
        Assert.areEqual((Double)100.0, VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)212.0), 'Incorrect conversion from 212 Fahrenheit to Celsius');
        Assert.areEqual((Double)0.0, VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)32.0), 'Incorrect conversion from 32 Fahrenheit to Celsius');
        Assert.areEqual((Double)-17.8, Decimal.valueOf(VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)0.0)).setScale(1), 'Incorrect conversion from 0 Fahrenheit to Celsius');
    }

    @IsTest
    static void testPerformDivisionAndCast() {
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast((Double)5.0, (Double)2.0), 'Incorrect division result when rounding down is correct');
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast((Double)5.5, (Double)2.0), 'Incorrect division result when rounding up is correct');
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast((Double)4.0, (Double)2.0), 'Incorrect division result when exact division is performed');
    }

    @IsTest
    static void testCalculateWeeklyPaycheck() {
        Assert.areEqual(400.0, VariablesDataTypesOperators.calculateWeeklyPaycheck(40.0, (Double)10.0), 'Incorrect weekly paycheck for 40.0 rate and 10.0 hours');
        Assert.areEqual(0.0, VariablesDataTypesOperators.calculateWeeklyPaycheck(0.0, (Double)10.0), 'Incorrect weekly paycheck for 0.0 rate and 10.0 hours');
    }

    @IsTest
    static void testCalculateMonthlyPaycheck() {
        Assert.areEqual(1600.0, VariablesDataTypesOperators.calculateMonthlyPaycheck(40.0, (Double)10.0), 'Incorrect monthly paycheck for 40.0 rate and 10.0 hours');
        Assert.areEqual(0.0, VariablesDataTypesOperators.calculateMonthlyPaycheck(0.0, (Double)10.0), 'Incorrect monthly paycheck for 0.0 rate and 10.0 hours');
    }

    @IsTest
    static void testCalculateTotalCost() {
        Assert.areEqual(22.0, VariablesDataTypesOperators.calculateTotalCost(10, 2, 0.1), 'Incorrect calculateTotalCost result');
        Assert.areEqual(0.0, VariablesDataTypesOperators.calculateTotalCost(0, 0, 0.0), 'Incorrect calculateTotalCost result');
    }
}
