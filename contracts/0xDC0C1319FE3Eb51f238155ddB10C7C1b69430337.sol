contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 > !arg1:
        revert with 0, 17
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        if not s:
            revert with 0, 18
        if arg1 / s > !s:
            revert with 0, 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function calculate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > 0x154484932d2e725a5bbca17a3aba173d3d5:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if 1 > !(1000000000000000000 * 10^18 * arg3 / arg2):
        revert with 0, 17
    s = (1000000000000000000 * 10^18 * arg3 / arg2) + 1 / 2
    t = 1000000000000000000 * 10^18 * arg3 / arg2
    while s < t:
        if not s:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * arg3 / arg2 / s > !s:
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * arg3 / arg2 / s) + s / 2
        t = s
        continue 
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if 10^18 > !(10^18 * arg3 / arg2):
        revert with 0, 17
    if (10^18 * arg3 / arg2) + 10^18 / 2 < t:
        revert with 0, 17
    if arg1 and ((10^18 * arg3 / arg2) + 10^18 / 2) - t > -1 / arg1:
        revert with 0, 17
    return (((10^18 * arg3 / arg2) + 10^18 / 2 * arg1) - (t * arg1))
}

function sub_dac70dcb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0xf67ab1c914dee06ba0f264031885ea7b276a7cda)
    staticcall 0xf67ab1c914dee06ba0f264031885ea7b276a7cda.quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
            gas gas_remaining wei
           args 0, 0, arg3, address(arg2), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    if 1 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] / arg4):
        revert with 0, 17
    s = (1000000000000000000 * 10^18 * ext_call.return_data[0] / arg4) + 1 / 2
    t = 1000000000000000000 * 10^18 * ext_call.return_data[0] / arg4
    while s < t:
        if not s:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / arg4 / s > !s:
            revert with 0, 17
        s = (1000000000000000000 * 10^18 * ext_call.return_data[0] / arg4 / s) + s / 2
        t = s
        continue 
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    if 10^18 > !(10^18 * ext_call.return_data[0] / arg4):
        revert with 0, 17
    if (10^18 * ext_call.return_data[0] / arg4) + 10^18 / 2 < t:
        revert with 0, 17
    if arg3 and ((10^18 * ext_call.return_data[0] / arg4) + 10^18 / 2) - t > -1 / arg3:
        revert with 0, 17
    return (((10^18 * ext_call.return_data[0] / arg4) + 10^18 / 2 * arg3) - (t * arg3))
}



}
