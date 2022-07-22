contract main {




// =====================  Runtime code  =====================


address managerAddress;

function manager() payable {
    return managerAddress
}

function _fallback() payable {
    revert
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(managerAddress)
    staticcall managerAddress.0x2abb5c03 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[12 len 20]:
        return ''
    mem[ceil32(return_data.size) + 96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[32]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc87b56dd with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[32]) >> 32 + 96]
    require _12 + _14 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_14)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_14)]
    if ceil32(_14) <= _14:
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _14
        mem[mem[64] + 64 len ceil32(_14)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            return Array(len=_14, data=mem[mem[64] + 64 len ceil32(_14)])
        mem[mem[64] + _14 + 64] = 0
        return memory
          from mem[64]
           len _32 + ceil32(_14) + -mem[64] + 64
    mem[(2 * ceil32(return_data.size)) + _14 + 128] = 0
    _34 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _14
    mem[mem[64] + 64 len ceil32(_14)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_14)]
    if ceil32(_14) <= _14:
        return Array(len=_14, data=mem[mem[64] + 64 len ceil32(_14)])
    mem[mem[64] + _14 + 64] = 0
    return memory
      from mem[64]
       len _34 + ceil32(_14) + -mem[64] + 64
}



}
