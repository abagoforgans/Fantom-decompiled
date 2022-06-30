contract main {




// =====================  Runtime code  =====================


const apiVersion = '', 0

const getChainID = chainid


uint8 stor0;
uint8 stor0; offset 8
address vaultAddress; offset 16
uint256 stor0; offset 8

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_4dde1694(?) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 4 >= 64
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require ext_code.size(vaultAddress)
    call vaultAddress.0x9a5252cc with:
         gas gas_remaining wei
        args msg.sender, ('signextend', 15, ('param', 'arg1')), arg2, arg3, 0, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        vaultAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            vaultAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            vaultAddress = arg1
            uint8(stor0.field_8) = 0
}

function sub_8ecb58e6(?) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 4 >= 64
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (64 * ('cd', 100).length) + 36 <= calldata.size
    if not ('cd', 100).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapper: no pending withdrawals specified'
    idx = 0
    while idx < ('cd', 100).length:
        mem[96] = 0x9a5252cc00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require cd[4] == ('signextend', 15, ('cd', 4))
        mem[132] = ('signextend', 15, ('cd', 4))
        mem[164] = cd[36]
        mem[196] = cd[68]
        require cd[((64 * idx) + cd[100] + 36)] == address(cd[((64 * idx) + cd[100] + 36)])
        mem[228] = address(cd[((64 * idx) + cd[100] + 36)])
        mem[260] = cd[((64 * idx) + cd[100] + 68)]
        mem[292] = 1
        require ext_code.size(vaultAddress)
        call vaultAddress.0x9a5252cc with:
             gas gas_remaining wei
            args msg.sender, ('signextend', 15, ('cd', 4)), cd[36], cd[68], address(cd[((64 * idx) + cd[100] + 36)]), cd[((64 * idx) + cd[100] + 68)], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_bd047a94(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg1.length - mem[128] >= 288
    if not bool(ceil32(ceil32(arg1.length)) + 385 <= test266151307()):
        revert with 0, 65
    require mem[mem[128] + 128] == mem[mem[128] + 152 len 8]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[128] + 128]
    require mem[_3 + 160] == mem[_3 + 188 len 4]
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[_3 + 160]
    _7 = mem[_3 + 192]
    require mem[_3 + 192] <= test266151307()
    require _3 + mem[_3 + 192] + 159 < arg1.length + 128
    _8 = mem[_3 + mem[_3 + 192] + 128]
    if mem[_3 + mem[_3 + 192] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 < 385 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386
    mem[ceil32(ceil32(arg1.length)) + 385] = mem[_3 + mem[_3 + 192] + 128]
    require _3 + _7 + _8 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 417 len ceil32(_8)] = mem[_3 + _7 + 160 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
        require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
        mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
        require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
        mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
        require mem[_3 + 352] == mem[_3 + 364 len 20]
        mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
        require mem[_3 + 384] == mem[_3 + 412 len 4]
        mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
        require mem[ceil32(ceil32(arg1.length)) + 385] >= 160
        require mem[ceil32(ceil32(arg1.length)) + 417] == ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        _60 = mem[ceil32(ceil32(arg1.length)) + 449]
        _61 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 497 len 16]
        _62 = mem[ceil32(ceil32(arg1.length)) + 513]
        require mem[ceil32(ceil32(arg1.length)) + 513] == mem[ceil32(ceil32(arg1.length)) + 525 len 20]
        _66 = mem[ceil32(ceil32(arg1.length)) + 545]
        require mem[ceil32(ceil32(arg1.length)) + 545] == mem[ceil32(ceil32(arg1.length)) + 573 len 4]
        mem[mem[64]] = ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        mem[mem[64] + 64] = uint128(_61)
        mem[mem[64] + 96] = address(_62)
        return mem[mem[64]], _60, _61 << 128, address(_62), uint32(_66)
    mem[ceil32(ceil32(arg1.length)) + _8 + 417] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
    require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
    mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
    mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
    require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
    mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
    mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
    require mem[_3 + 352] == mem[_3 + 364 len 20]
    mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
    require mem[_3 + 384] == mem[_3 + 412 len 4]
    mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
    require mem[ceil32(ceil32(arg1.length)) + 385] >= 160
    require mem[ceil32(ceil32(arg1.length)) + 417] == ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
    _63 = mem[ceil32(ceil32(arg1.length)) + 449]
    _64 = mem[ceil32(ceil32(arg1.length)) + 481]
    require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 497 len 16]
    _65 = mem[ceil32(ceil32(arg1.length)) + 513]
    require mem[ceil32(ceil32(arg1.length)) + 513] == mem[ceil32(ceil32(arg1.length)) + 525 len 20]
    _67 = mem[ceil32(ceil32(arg1.length)) + 545]
    require mem[ceil32(ceil32(arg1.length)) + 545] == mem[ceil32(ceil32(arg1.length)) + 573 len 4]
    mem[mem[64]] = ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
    mem[mem[64] + 64] = uint128(_64)
    mem[mem[64] + 96] = address(_65)
    return mem[mem[64]], _63, _64 << 128, address(_65), uint32(_67)
}

function sub_2a2f435f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0xe78cea92 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 4).length
    mem[ceil32(return_data.size) + 196 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[ceil32(return_data.size) + ('cd', 4).length + 196] = 0
    mem[ceil32(return_data.size) + 132] = ceil32(('cd', 4).length) + 96
    mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 196] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 228
    u = ceil32(return_data.size) + ceil32(('cd', 4).length) + 228
    while idx < ('cd', 36).length:
        mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) - 228
        require cd[s] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[s] + 36)]
        mem[t] = cd[(cd[36] + cd[s] + 36)]
        mem[t + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[t + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xa40b9e73 with:
            gas gas_remaining wei
           args 64, ceil32(('cd', 4).length) + 96, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], 0, mem[ceil32(return_data.size) + ('cd', 4).length + 228 len ceil32(('cd', 4).length) + (64 * ('cd', 36).length) - ('cd', 4).length]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    if ext_call.return_data[28 len 4]:
        revert with 0, 'Vault wrapper: signatures verification failed'
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] <= test266151307()
    require ('cd', 4).length - ('cd', 4)[0] >= 288
    if not bool((2 * ceil32(return_data.size)) + 384 <= test266151307()):
        revert with 0, 65
    require cd[(cd[4] + ('cd', 4)[0] + 36)] == uint64(cd[(cd[4] + ('cd', 4)[0] + 36)])
    mem[(2 * ceil32(return_data.size)) + 96] = cd[(cd[4] + ('cd', 4)[0] + 36)]
    require cd[(cd[4] + ('cd', 4)[0] + 68)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 68)])
    mem[(2 * ceil32(return_data.size)) + 128] = cd[(cd[4] + ('cd', 4)[0] + 68)]
    require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 385 < 384 or (2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 385 > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 384] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
    require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] + 68 <= ('cd', 4).length + 36
    mem[(2 * ceil32(return_data.size)) + 416 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68 len cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]]
    mem[(2 * ceil32(return_data.size)) + 160] = (2 * ceil32(return_data.size)) + 384
    require cd[(cd[4] + ('cd', 4)[0] + 132)] == ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    mem[(2 * ceil32(return_data.size)) + 192] = cd[(cd[4] + ('cd', 4)[0] + 132)]
    mem[(2 * ceil32(return_data.size)) + 224] = cd[(cd[4] + ('cd', 4)[0] + 164)]
    require cd[(cd[4] + ('cd', 4)[0] + 196)] == ('signextend', 0, ('cd', ('add', 196, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    mem[(2 * ceil32(return_data.size)) + 256] = cd[(cd[4] + ('cd', 4)[0] + 196)]
    mem[(2 * ceil32(return_data.size)) + 288] = cd[(cd[4] + ('cd', 4)[0] + 228)]
    require cd[(cd[4] + ('cd', 4)[0] + 260)] == address(cd[(cd[4] + ('cd', 4)[0] + 260)])
    mem[(2 * ceil32(return_data.size)) + 320] = cd[(cd[4] + ('cd', 4)[0] + 260)]
    require cd[(cd[4] + ('cd', 4)[0] + 292)] == uint32(cd[(cd[4] + ('cd', 4)[0] + 292)])
    mem[(2 * ceil32(return_data.size)) + 352] = cd[(cd[4] + ('cd', 4)[0] + 292)]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x6c70bee9 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 385 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 449 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ('signextend', 15, ('ext_call.return_data', 0, 32))
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 385] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 417] = ext_call.return_data[32]
    if ('signextend', 0, ('cd', ('add', 132, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) != ('signextend', 15, ('ext_call.return_data', 0, 32)):
        revert with 0, 'Vault wrapper: wrong event configuration'
    if cd[(cd[4] + ('cd', 4)[0] + 164)] != ext_call.return_data[32]:
        revert with 0, 'Vault wrapper: wrong event configuration'
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 449] = ('cd', 4).length
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ('cd', 4).length + 481] = 0
    require ('cd', 4).length >= 32
    _104 = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481] <= test266151307()
    require ('cd', 4).length - mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481] >= 288
    if not bool((4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 769 <= test266151307()):
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 769
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481] + 481] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481] + 505 len 8]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 481] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + 481] + 481]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 513] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 541 len 4]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 513] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 513]
    _108 = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] <= test266151307()
    require (4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 512 < (4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ('cd', 4).length + 481
    _109 = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 481]
    if mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 481] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 481])) + 770 < 769 or (4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 481])) + 770 > test266151307():
        revert with 0, 65
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 769] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 545] + 481]
    require _104 + _108 + _109 + 64 <= ('cd', 4).length + 32
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 801 len ceil32(_109)] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + _108 + 513 len ceil32(_109)]
    if ceil32(_109) > _109:
        mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + _109 + 801] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 545] = (4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 769
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 577] == ('signextend', 0, ('mem', ('range', ('add', 577, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize')), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('cd', 4), ('cd', ('add', 36, ('cd', 4))), ('cd', ('add', 100, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))))))), ('var', '_104')), 32)))
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 577] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 577]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 609] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 609]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 641] == ('signextend', 0, ('mem', ('range', ('add', 641, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize')), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('cd', 4), ('cd', ('add', 36, ('cd', 4))), ('cd', ('add', 100, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))))))), ('var', '_104')), 32)))
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 641] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 641]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 673] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 673]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 705] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 717 len 20]
    mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 705] = mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 705]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 737] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + _104 + 765 len 4]
    require _109 >= 160
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 801] == ('signextend', 0, ('mem', ('range', ('add', 801, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize')), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('cd', 4), ('cd', ('add', 36, ('cd', 4))), ('cd', ('add', 100, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 4)))))), 32)))
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 865] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 881 len 16]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 897] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 909 len 20]
    require mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 929] == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 957 len 4]
    if mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 957 len 4] != chainid:
        revert with 0, 'Vault wrapper: wrong chain id'
    require ext_code.size(vaultAddress)
    if msg.sender == mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 909 len 20]:
        call vaultAddress.saveWithdraw(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sha3(call.data[cd[4] + 36 len ('cd', 4).length]), address(mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 897]), mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 865] << 128, cd[68]
    else:
        call vaultAddress.saveWithdraw(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sha3(call.data[cd[4] + 36 len ('cd', 4).length]), address(mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 897]), mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)])) + ceil32(('cd', 4).length) + 865] << 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
