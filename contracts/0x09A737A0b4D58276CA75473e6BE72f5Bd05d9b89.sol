contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function sub_2ce3af51(?) payable {
    if stor4 != msg.sender:
        revert with 0, 'RESTRICTED'
    require mem[96]
    require 1 < mem[96]
    mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000] = 1, 128, this.address, block.timestamp + 100000, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d569fffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, stor2, 128, this.address, block.timestamp + 100000, 0x7ff36ab500000000000000000000000000000000000000000000000000000000, mem[260 len 0xfe6d56a000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 100000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'P'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_70c0505f(?) payable {
    if stor4 != msg.sender:
        revert with 0, 'RESTRICTED'
    require ext_code.size(stor0)
    call stor0.ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, block.timestamp + 100000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < ext_call.return_data[0]
    mem[292 len 0x1975fca000000000000000000000000000000000000000000000000000000000] = ext_call.return_data[28 len 4], 1, 160, this.address, block.timestamp + 100000, 0x18cbafe500000000000000000000000000000000000000000000000000000000, mem[292 len 0x1975fc9fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, stor3, stor2, 160, this.address, block.timestamp + 100000, 0x18cbafe500000000000000000000000000000000000000000000000000000000, mem[292 len 0x1975fca000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'P'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
