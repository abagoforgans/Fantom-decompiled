contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    revert
}

function sub_2c6f5047(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor2 = address(arg1)
}

function sub_c4a805ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor6 = address(arg1)
}

function w() {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function s1() {
    mem[128] = stor3
    mem[160] = stor2
    if block.timestamp > -121:
        revert with 'NH{q', 17
    if block.timestamp + 120 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    call stor5.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp + 120, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sx() {
    mem[128] = stor3
    mem[160] = stor2
    if block.timestamp > -121:
        revert with 'NH{q', 17
    if block.timestamp + 120 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    call stor6.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp + 120, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function s2() {
    mem[128] = stor3
    mem[160] = stor2
    if block.timestamp > -121:
        revert with 'NH{q', 17
    if block.timestamp + 120 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, stor0, block.timestamp + 120, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
