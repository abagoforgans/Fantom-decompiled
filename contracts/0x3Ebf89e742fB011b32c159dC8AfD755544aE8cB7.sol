contract main {




// =====================  Runtime code  =====================


const sub_4a5ba443(?) = eth.balance(this.address)


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_75016d1c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function sub_7130e4f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if eth.balance(arg1) < arg2:
        revert with 'NH{q', 17
    return (eth.balance(arg1) - arg2)
}

function test2(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if eth.balance(arg1) < arg2:
        revert with 'NH{q', 17
    if eth.balance(arg1) - arg2 > eth.balance(arg1):
        revert with 0, 'ds-math-sub-underflow'
    if eth.balance(arg1) - arg2 < 1:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    return (eth.balance(arg1) - arg2)
}

function sub_63480d03(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    call address(arg2) with:
       value 10^17 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
    if eth.balance(arg2) < eth.balance(arg2):
        revert with 'NH{q', 17
    if 0 > eth.balance(arg2):
        revert with 0, 'ds-math-sub-underflow'
    if 0 < arg3:
        revert with 0, 'amountOut error'
    else:
        return 0
}



}
