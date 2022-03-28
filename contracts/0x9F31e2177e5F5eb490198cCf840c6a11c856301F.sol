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
    mem[160] = stor2
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 1000
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[388 len 64]), this.address, block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    if eth.balance(this.address) <= msg.value:
        revert with 0, 'P'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ce3af51(?) payable {
    if stor4 != msg.sender:
        revert with 0, 'RESTRICTED'
    mem[160] = stor3
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[260] = this.address
    mem[292] = block.timestamp + 1000
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), this.address, block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _28 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_28 + 192])] = mem[_28 + 224 len floor32(mem[_28 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(stor0)
    call stor0.tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 256], 1, block.timestamp + 1000
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



}
