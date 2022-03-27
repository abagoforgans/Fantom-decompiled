contract main {




// =====================  Runtime code  =====================


uint256 count;

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function countUp() payable {
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, count, 16, uint128('countUp: count =')
    if count + 1 <= count:
        revert with 0, 'Uint256 overflow'
    count++
    emit CountedTo(count);
    return count
}

function countDown() payable {
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, count, 18, Mask(144, 0, 'countDown: count =')
    if count - 1 >= count:
        revert with 0, 'Uint256 underflow'
    count--
    emit CountedTo(count);
    return count
}



}
