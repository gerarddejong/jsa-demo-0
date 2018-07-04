pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Greeter.sol";

contract GreeterTests {
    function TestHelloWorldGreeting() public {
        Greeter greeter = Greeter(DeployedAddresses.Greeter());

        Assert.equal("Hello World", greeter.greet(), "Greeting should be 'Hello World'.");
    }
}