contract main {




// =====================  Runtime code  =====================


#
#  - sub_e34fba8c(?)
#
uint256 DIVISOR;
address strategyAddress;
address stor2;
array of struct sub_b7324175;
array of struct sub_4cbae508;

function DIVISOR() payable {
    return DIVISOR
}

function sub_4cbae508(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4cbae508.length
    return sub_4cbae508[arg1].field_0, sub_4cbae508[arg1].field_256
}

function strategy() payable {
    return strategyAddress
}

function sub_b7324175(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b7324175.length
    return sub_b7324175[arg1].field_0, sub_b7324175[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_d18e680d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not arg2:
        return arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (arg2 * ext_call.return_data[0] / 10^18)
}

function sub_16cc3b07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    strategyAddress = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor2 = ext_call.return_data[12 len 20]
}

function sub_dc917407(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (64 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _19 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_19] = cd[s]
        mem[_19 + 32] = cd[(s + 32)]
        mem[t] = _19
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    sub_b7324175.length = 0
    mem[0] = 3
    idx = 0
    while 2 * sub_b7324175.length > idx:
        sub_b7324175[idx].field_0 = 0
        sub_b7324175[idx].field_256 = 0
        idx = idx + 2
        continue 
    _48 = mem[96]
    idx = 0
    while idx < _48:
        _50 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_50] = mem[mem[(32 * idx) + 128] + 12 len 20]
        require idx < mem[96]
        mem[_50 + 32] = mem[mem[(32 * idx) + 128] + 32]
        sub_b7324175.length++
        mem[0] = 3
        sub_b7324175[sub_b7324175.length].field_0 = mem[_50 + 12 len 20]
        sub_b7324175[sub_b7324175.length].field_256 = mem[_50 + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    if sub_b7324175.length != mem[96]:
        revert with 0, 'INV LENGTH'
}



}
