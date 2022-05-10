contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swapEthForTokenWithUniswap(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe4e6f7420656e6f7567682045746820696e20636f6e747261637420746f20706572666f726d2073776170,
                    mem[207 len 21]
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[356 len 0] = None
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp + 600, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
