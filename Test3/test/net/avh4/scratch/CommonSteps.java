package net.avh4.scratch;

import junit.framework.Assert;

import org.jbehave.scenario.annotations.Given;
import org.jbehave.scenario.annotations.Then;
import org.jbehave.scenario.annotations.When;
import org.jbehave.scenario.steps.Steps;

public class CommonSteps extends Steps {

	@Given("a lovely setting")
	public void lovelySetup() {

	}

	@When("epic happenings occur")
	public void epicHappening() {

	}

	@Then("there should be a happy ending")
	public void verifyHappyEnding() {
		Assert.assertTrue(true);
	}

}
