contract main {




// =====================  Runtime code  =====================


#
#  - sub_5fa637f6(?)
#  - sub_96eca84b(?)
#
array of struct sub_2f71da6c;

function sub_2f71da6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require 0 < sub_2f71da6c.length
    idx = 0
    while sub_2f71da6c[idx].field_256 != address(arg1):
        if idx == -1:
            revert with 'NH{q', 17
        require idx + 1 < sub_2f71da6c.length
        mem[0] = 1
        idx = idx + 1
        continue 
    if None + 2 >= sub_2f71da6c.length:
        revert with 'NH{q', 50
    return sub_2f71da6c[None + 2].field_0
}

function _fallback() payable {
    revert
}

function sub(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        revert with 'NH{q', 17
    if arg1 - arg2 > arg1:
        revert with 0, 'ds-math-sub-underflow'
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'ds-math-add-overflow'
    return (arg1 + arg2)
}

function mul(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return 0
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    return (arg1 * arg2)
}

function sub_7f3b6c8b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return sub_2f71da6c[idx].field_768
    return 5
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return sub_2f71da6c[idx].field_512
    return 30
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 3:
        if not arg1:
            return 0
        return 1
    if arg1 / 2 > -2:
        revert with 'NH{q', 17
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if arg1 / s > -s - 1:
            revert with 'NH{q', 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_61323eef(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return ext_call.return_data[0] << 192, 
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        s = 0
        while s < sub_2f71da6c.length:
            mem[0] = 1
            if sub_2f71da6c[s].field_0 != address(arg1):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= sub_2f71da6c.length:
                revert with 'NH{q', 50
            return arg1 << 192, 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[32] << 144,
                   sub_2f71da6c[s].field_512,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[0]),
                   sub_2f71da6c[idx].field_768
        return arg1 << 192, 
               address(ext_call.return_data[0]),
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               30,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               sub_2f71da6c[idx].field_768
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return arg1 << 192, 
               address(ext_call.return_data[0]),
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               sub_2f71da6c[idx].field_512,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               5
    return arg1 << 192, 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           30,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           5
}



}
