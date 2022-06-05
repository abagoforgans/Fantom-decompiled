contract main {




// =====================  Runtime code  =====================


uint256 dripStart;
uint256 dripRate;
address tokenAddress;
address targetAddress;
uint256 dripped;

function dripStart() payable {
    return dripStart
}

function dripped() payable {
    return dripped
}

function dripRate() payable {
    return dripRate
}

function target() payable {
    return targetAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function drip() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not dripRate:
        if dripped > 0:
            revert with 0, 'deltaDrip underflow'
        if ext_call.return_data[0] > -dripped:
            if 0 < dripped:
                revert with 0, ''
            dripped = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args targetAddress, -dripped
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return -dripped
    else:
        if (block.number * dripRate) - (dripStart * dripRate) / dripRate != block.number - dripStart:
            revert with 0, 'dripTotal overflow'
        if dripped > (block.number * dripRate) - (dripStart * dripRate):
            revert with 0, 'deltaDrip underflow'
        if ext_call.return_data[0] > (block.number * dripRate) - (dripStart * dripRate) - dripped:
            if (block.number * dripRate) - (dripStart * dripRate) < dripped:
                revert with 0, ''
            dripped = (block.number * dripRate) - (dripStart * dripRate)
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args targetAddress, (block.number * dripRate) - (dripStart * dripRate) - dripped
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((block.number * dripRate) - (dripStart * dripRate) - dripped)
    if ext_call.return_data[0] + dripped < dripped:
        revert with 0, ''
    dripped += ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args targetAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
