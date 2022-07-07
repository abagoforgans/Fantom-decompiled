contract main {




// =====================  Runtime code  =====================


#
#  - sub_cb577b7b(?)
#  - sub_d236a139(?)
#  - sub_ebb418b1(?)
#
uint256 input;
address owner;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function owner() {
    return owner
}

function input() {
    return input
}

function _fallback() payable {
  stop
}

function withdraw() {
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b56effbb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable1: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_00bf8378(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] < 2
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 < 288:
        revert with 'NH{q', 65
    mem[288] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[256] = 288
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if block.timestamp > -1800001:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 293] = 1
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 325] = 128
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 421] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 453
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 357] = msg.sender
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 389] = block.timestamp + (500 * 3600)
    require ext_code.size(stor4)
    call stor4.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 453 len 32 * ('cd', 36).length]), msg.sender, block.timestamp + (500 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 289
    require return_data.size >= 32
    _26 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0
    require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 <= test266151307()
    require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 320 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + return_data.size + 289
    _27 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 289]
    if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 289] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 289]) + 290 > test266151307() or floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 289]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 len 4], 0 + 289]) + 290
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 289] = _27
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + _26 + 321
    t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 321
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _55 = mem[64]
    mem[64] = mem[64] + 192
    mem[_55] = ('cd', 4).length
    mem[_55 + 32] = 0
    mem[_55 + 64] = address(('cd', 4)[1])
    mem[_55 + 96] = address(('cd', 4)[2])
    if _27 < 1:
        revert with 'NH{q', 17
    if _27 - 1 >= _27:
        revert with 'NH{q', 50
    mem[_55 + 128] = mem[(32 * _27 - 1) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 321]
    mem[_55 + 160] = 288
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if _27 < 1:
        revert with 'NH{q', 17
    if _27 - 1 >= _27:
        revert with 'NH{q', 50
    _65 = mem[(32 * _27 - 1) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 321]
    mem[mem[64] + 4] = stor5
    mem[mem[64] + 36] = _65
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, _65
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_68] == bool(mem[_68])
    if block.timestamp > -1800001:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 224
    mem[mem[64] + 228] = ('cd', 4).length
    mem[mem[64] + 260] = 0
    mem[mem[64] + 292] = uint64(('cd', 4)[1]) << 96
    mem[mem[64] + 324] = uint64(('cd', 4)[2]) << 96
    mem[mem[64] + 356] = mem[(32 * _27 - 1) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 321]
    mem[mem[64] + 388] = 192
    mem[mem[64] + 420] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[mem[64] + 452 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]], mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) - cd[(cd[4] + ('cd', 4)[4] + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) <= cd[(cd[4] + ('cd', 4)[4] + 4)]:
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = stor7
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 1
        mem[mem[64] + 196] = block.timestamp + (500 * 3600)
        require ext_code.size(stor5)
        call stor5.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args 224, stor6, 0, stor7, 0, 1, block.timestamp + (500 * 3600), ('cd', 4).length, 0, ('cd', 4)[1] << 192, ('cd', 4)[2] << 192, mem[mem[64] + 356], 192, cd[(cd[4] + ('cd', 4)[4] + 4)], mem[mem[64] + 452 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_90]
        require mem[_90] == mem[_90]
        if mem[_90] <= msg.value:
            revert with 0, '7777'
        if mem[_90] < msg.value:
            revert with 'NH{q', 17
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = mem[_90]
        return mem[mem[64]], _92 - msg.value
    mem[mem[64] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 452] = 0
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = stor7
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 1
    mem[mem[64] + 196] = block.timestamp + (500 * 3600)
    require ext_code.size(stor5)
    call stor5.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
         gas gas_remaining wei
        args 224, stor6, 0, stor7, 0, 1, block.timestamp + (500 * 3600), ('cd', 4).length, 0, ('cd', 4)[1] << 192, ('cd', 4)[2] << 192, mem[mem[64] + 356], 192, cd[(cd[4] + ('cd', 4)[4] + 4)], mem[mem[64] + 452 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_91]
    require mem[_91] == mem[_91]
    if mem[_91] <= msg.value:
        revert with 0, '7777'
    if mem[_91] < msg.value:
        revert with 'NH{q', 17
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = mem[_91]
    return mem[mem[64]], _93 - msg.value
}

function sub_16b8a472(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] < 2
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289 < 288:
        revert with 'NH{q', 65
    mem[288] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[256] = 288
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 289] = ('cd', 4).length
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 321] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 353] = address(('cd', 4)[1])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 385] = address(('cd', 4)[2])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 417] = ('cd', 4)[3]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 449] = 288
    if block.timestamp > -1800001:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 485] = 224
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 709] = ('cd', 4).length
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 741] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 773] = address(('cd', 4)[1])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 805] = address(('cd', 4)[2])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 837] = ('cd', 4)[3]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 869] = 192
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 901] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 933 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) - cd[(cd[4] + ('cd', 4)[4] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256, ('cd', 4).length) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256
    if ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) <= cd[(cd[4] + ('cd', 4)[4] + 4)]:
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 517] = stor6
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 549] = 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 581] = stor7
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 613] = 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 645] = 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 677] = block.timestamp + (500 * 3600)
        require ext_code.size(stor5)
        call stor5.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
           value msg.value wei
             gas gas_remaining wei
            args 224, stor6, 0, stor7, 0, 1, block.timestamp + (500 * 3600), ('cd', 4).length, 0, address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], 192, cd[(cd[4] + ('cd', 4)[4] + 4)], call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) - cd[(cd[4] + ('cd', 4)[4] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256, ('cd', 4).length) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 481] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 485] = stor3
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 4)[2]))
        call address(('cd', 4)[2]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[0]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 517] = 64
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 549] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 581
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=('cd', 36).length, data=mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 581 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 481
        require return_data.size >= 32
        _74 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 512 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + return_data.size + 481
        _76 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]
        if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 482 > test266151307() or floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 482
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 481] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]
        require _74 + (32 * _76) + 32 <= return_data.size
        idx = 0
        s = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + _74 + 513
        t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 513
        while idx < _76:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _76 < 1:
            revert with 'NH{q', 17
        if _76 - 1 >= _76:
            revert with 'NH{q', 50
        if mem[(32 * _76 - 1) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 513] <= msg.value:
            revert with 0, '88888'
        if block.timestamp > -1800001:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 196
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp + (500 * 3600)
        require ext_code.size(stor4)
        call stor4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), msg.sender, block.timestamp + (500 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _156 = mem[_154]
        require mem[_154] <= test266151307()
        require _154 + mem[_154] + 31 < _154 + return_data.size
        _158 = mem[_154 + mem[_154]]
        if mem[_154 + mem[_154]] > test266151307():
            revert with 'NH{q', 65
        if _154 + ceil32(return_data.size) + floor32(mem[_154 + mem[_154]]) + 1 > test266151307() or floor32(mem[_154 + mem[_154]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _154 + ceil32(return_data.size) + floor32(mem[_154 + mem[_154]]) + 1
        mem[_154 + ceil32(return_data.size)] = _158
        require _156 + (32 * _158) + 32 <= return_data.size
        idx = 0
        s = _154 + _156 + 32
        t = _154 + ceil32(return_data.size) + 32
        while idx < _158:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _158 < 1:
            revert with 'NH{q', 17
        if _158 - 1 >= _158:
            revert with 'NH{q', 50
        if mem[(32 * _158 - 1) + _154 + ceil32(return_data.size) + 32] < msg.value:
            revert with 'NH{q', 17
        return ext_call.return_data[0], mem[(32 * _158 - 1) + _154 + ceil32(return_data.size) + 32] - msg.value
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 933] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 517] = stor6
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 549] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 581] = stor7
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 613] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 645] = 1
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 677] = block.timestamp + (500 * 3600)
    require ext_code.size(stor5)
    call stor5.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
       value msg.value wei
         gas gas_remaining wei
        args 224, stor6, 0, stor7, 0, 1, block.timestamp + (500 * 3600), ('cd', 4).length, 0, address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], 192, cd[(cd[4] + ('cd', 4)[4] + 4)], call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) - cd[(cd[4] + ('cd', 4)[4] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256, ('cd', 4).length) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 31) + 256
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 481] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 485] = stor3
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 4)[2]))
    call address(('cd', 4)[2]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[0]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 517] = 64
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 549] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 581
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=('cd', 36).length, data=mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 581 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 481
    require return_data.size >= 32
    _75 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 512 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + return_data.size + 481
    _77 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]
    if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 482 > test266151307() or floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]) + 482
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 481] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + 481 len 4], ext_call.return_data[0 len 28] + 481]
    require _75 + (32 * _77) + 32 <= return_data.size
    idx = 0
    s = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (2 * ceil32(return_data.size)) + _75 + 513
    t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 513
    while idx < _77:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _77 < 1:
        revert with 'NH{q', 17
    if _77 - 1 >= _77:
        revert with 'NH{q', 50
    if mem[(32 * _77 - 1) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (4 * ceil32(return_data.size)) + 513] <= msg.value:
        revert with 0, '88888'
    if block.timestamp > -1800001:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + (500 * 3600)
    require ext_code.size(stor4)
    call stor4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), msg.sender, block.timestamp + (500 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _155 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _157 = mem[_155]
    require mem[_155] <= test266151307()
    require _155 + mem[_155] + 31 < _155 + return_data.size
    _159 = mem[_155 + mem[_155]]
    if mem[_155 + mem[_155]] > test266151307():
        revert with 'NH{q', 65
    if _155 + ceil32(return_data.size) + floor32(mem[_155 + mem[_155]]) + 1 > test266151307() or floor32(mem[_155 + mem[_155]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _155 + ceil32(return_data.size) + floor32(mem[_155 + mem[_155]]) + 1
    mem[_155 + ceil32(return_data.size)] = _159
    require _157 + (32 * _159) + 32 <= return_data.size
    idx = 0
    s = _155 + _157 + 32
    t = _155 + ceil32(return_data.size) + 32
    while idx < _159:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _159 < 1:
        revert with 'NH{q', 17
    if _159 - 1 >= _159:
        revert with 'NH{q', 50
    if mem[(32 * _159 - 1) + _155 + ceil32(return_data.size) + 32] < msg.value:
        revert with 'NH{q', 17
    return ext_call.return_data[0], mem[(32 * _159 - 1) + _155 + ceil32(return_data.size) + 32] - msg.value
}



}
