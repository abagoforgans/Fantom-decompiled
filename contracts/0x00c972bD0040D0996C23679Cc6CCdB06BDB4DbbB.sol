contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address lastTokenBorrowAddress;
uint256 lastAmount;
address lastTokenPayAddress;
uint256 lastamountToRepay;
array of uint256 lastUserData;

function lastUserData() {
    return lastUserData[0 len lastUserData.length]
}

function lastTokenBorrow() {
    return lastTokenBorrowAddress
}

function lastamountToRepay() {
    return lastamountToRepay
}

function lastTokenPay() {
    return lastTokenPayAddress
}

function lastAmount() {
    return lastAmount
}

function _fallback() payable {
  stop
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    revert with 0, 'tweasastwetwy32323223232322'
}

function flashSwap(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if arg1:
        if not arg3:
            if arg1 == stor1:
                revert with 0, 'tweasastw2323etwy32323232'
            if stor1 == stor1:
                revert with 0, 'tweasastw2323etwy'
        else:
            if arg1 == arg3:
                revert with 0, 'tweasastw2323etwy32323232'
            if arg1 == stor1:
                revert with 0, 'tweasastw2323etwy'
            if arg3 == stor1:
                revert with 0, 'tweasastw2323etwy'
    else:
        if not arg3:
            if stor1 == stor1:
                revert with 0, 'tweasastw2323etwy32323232'
        else:
            if stor1 == arg3:
                revert with 0, 'tweasastw2323etwy32323232'
            if stor1 == stor1:
                revert with 0, 'tweasastw2323etwy'
            if arg3 == stor1:
                revert with 0, 'tweasastw2323etwy'
    revert with 0, 'tweas234234astwetwy'
}



}
