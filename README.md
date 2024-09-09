# 🚀 Master the Simple Token Swap Challenge

Congratulations for completing ERC20 Basic Challenge!

You have now grasped the functionality of ERC20 tokens. Ever wondered how you can use these tokens to swap to another token (i.e WETH to USDC)?

Let's learn how the `exactInputSingle()` function in Uniswap works! 💪

## Objective

Your task is to:

1. Develop your own contract with Swap functionality.
2. Deploy it to Scroll Sepolia Testnet.
3. And finally verify it.

If you need help with using a smart contract framework for completing this challenge, the [Level Up: Build with Foundry](https://www.levelup.xyz/content/level-up-foundry) guide might be a helpful start!

If you get stuck, feel free to ask for help in [Level Up Telegram group](https://t.me/+PdNbk5milo1mMTAy).

## High Level Structure

**1. START WITH THE GUIDE IN [LEVEL UP](https://www.levelup.xyz/challenges/simple-token-swapper)**

Guide: Begin your journey with the guide. Here you'll find how to get started.

**2. CLONE THIS REPO AND COMPLETE THE [CHALLENGE](./Challenge/SimpleTokenSwapper-Challenge.sol)**

Assignment: Complete this challenge. You can put your knowledge to the test by cloning this repo and completing this challenge by deploying your own DeFi swap contract to Scroll Sepolia Testnet with Foundry.

<details>
<summary>Level Up: <a href="https://www.levelup.xyz/challenges/simple-token-swapper">Simple Token Swapper Challenge Recap</a></summary>

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Implement Uniswap swap interface
// Implement library to help with token transfers

contract SimpleTokenSwapper {
// Define the Uniswap Router address and the WETH address variable

    // Define the constructor
    constructor(...) {
        // Initialize the addresses
    }

    // Create a swap function that takes input and output token addresses,
    // the input amount, the minimum output amount, and the recipient's address
    function swap(
        ...
    ) external {
        // Transfer the input tokens from the sender to the contract

        // Approve the Uniswap router to spend the input tokens

        // Define the exact input swapping path to swap maximum amount of receiving token

        // Call the Uniswap router's exactInputSingle function to execute the swap
    }
}
```

</details>

## Conclusion

This mission isn't just about learning; it's about transforming yourself into a confident participant in the DeFi space. By the end of this mission, you'll not only have a deeper understanding of DeFi lending but also hands-on experience in building a DeFi swap contract. So, are you ready to take on this mission and emerge as a DeFi aficionado? Let's do this! 🚀🌟

Remember, the mission is as rewarding as the destination. Embrace the challenge, and let's revolutionize the world of finance together! 💥💼📈
