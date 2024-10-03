// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

// Implement Uniswap swap interface
// Implement library to help with token transfers

// Import the Uniswap V3 interface
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

// Import the library to help with token transfers (Uniswap v3)
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleTokenSwapper {
    ISwapRouter public immutable swapRouter;
    address public immutable WETH;

    // Define the constructor
    constructor(ISwapRouter _swapRouter, address _weth) {
        swapRouter = _swapRouter;
        WETH = _weth;
    }

    // Swap function that takes input token, output token, input amount, min output amount, and recipient
    function swap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMinimum,
        address recipient
    ) external returns (uint256 amountOut) {
        // Transfer input tokens from the sender to this contract
        TransferHelper.safeTransferFrom(
            tokenIn,
            msg.sender,
            address(this),
            amountIn
        );

        // Approve the Uniswap router to spend the input tokens
        TransferHelper.safeApprove(tokenIn, address(swapRouter), amountIn);

        // Define the Uniswap V3 swap parameters
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                fee: 5000,
                recipient: recipient,
                deadline: block.timestamp + 20,
                amountIn: amountIn,
                amountOutMinimum: amountOutMinimum,
                sqrtPriceLimitX96: 0
            });

        // Execute the swap on Uniswap and return the output amount
        amountOut = swapRouter.exactInputSingle(params);
    }
}
