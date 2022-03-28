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
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value
    mem[132] = 1
    mem[196] = this.address
    mem[228] = block.timestamp + 1000
    mem[164] = 160
    mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = uint32(msg.value), 1, 160, this.address, block.timestamp + 1000, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, stor2, stor3, 160, this.address, block.timestamp + 1000, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _30 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_30 + 96])] = mem[_30 + 128 len floor32(mem[_30 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    require ext_code.size(stor0)
    call stor0.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 160], 1, block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        args 1, block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < ext_call.return_data[0]
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 1
    mem[196] = this.address
    mem[228] = block.timestamp + 1000
    mem[164] = 160
    mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = ext_call.return_data[28 len 4], 1, 160, this.address, block.timestamp + 1000, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, stor3, stor2, 160, this.address, block.timestamp + 1000, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= msg.value:
        revert with 0, 'P'
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
