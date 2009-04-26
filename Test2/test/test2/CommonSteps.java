package test2;

import org.jbehave.scenario.annotations.Given;
import org.jbehave.scenario.annotations.Then;
import org.jbehave.scenario.annotations.When;
import org.jbehave.scenario.steps.Steps;
import org.junit.Assert;

public class CommonSteps extends Steps {

    @Given("a stock of price $price and a threshold of $threshold")
    public void stockPrice(double price, double threshold)
    {
        
    }

    @When("the stock is traded at 5.0")
    public void stockTraded()
    {
        
    }

    @Then("the alert status should be $state")
    public void verifyAlertStatus(String state)
    {
        Assert.assertEquals("OFF", state);
    }

}
