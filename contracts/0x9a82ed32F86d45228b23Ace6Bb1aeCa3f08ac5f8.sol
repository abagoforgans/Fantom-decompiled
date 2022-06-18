contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_f8547e2a(?) payable {
    require ext_code.size(stor0)
    call stor0.0xa9182c1 with:
         gas gas_remaining wei
        args msg.sender, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d5deecc(?) payable {
    require ext_code.size(stor0)
    call stor0.0x119db0bc with:
         gas gas_remaining wei
        args msg.sender, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1799f59f(?) payable {
    require ext_code.size(stor0)
    call stor0.0x8429f77b with:
         gas gas_remaining wei
        args msg.sender, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_28945fab(?) payable {
    require ext_code.size(stor0)
    call stor0.0xb1cd5e87 with:
         gas gas_remaining wei
        args msg.sender, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9877e19f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x9877e19f00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x9877e19f with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function initialize() payable {
    mem[96] = 0x9877e19f00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor0)
    staticcall stor0.0x9877e19f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _21 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0x6a3ceb874837581c804e22c5f042166161b93d33
        mem[mem[64] + 36] = _21
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x6a3ceb874837581c804e22c5f042166161b93d33, _21
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
