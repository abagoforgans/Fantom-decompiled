contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0x4c5d539183dbba15dca9769940c8752ea507c9d6
    require eth.balance(this.address) > arg1
    call 0x4c5d539183dbba15dca9769940c8752ea507c9d6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return arg1
}

function withdraw() {
    require msg.sender == 0x4c5d539183dbba15dca9769940c8752ea507c9d6
    if eth.balance(this.address) < 10:
        revert with 'NH{q', 17
    call 0x4c5d539183dbba15dca9769940c8752ea507c9d6 with:
       value eth.balance(this.address) - 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (eth.balance(this.address) - 10)
}

function sub_57ec8582(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.sender == 0x4c5d539183dbba15dca9769940c8752ea507c9d6
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function get_needed_summoners() {
    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
    staticcall 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0x8b38cabf with:
            gas gas_remaining wei
    mem[448 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require 479 < return_data.size + 448
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 'NH{q', 65
    require 352 <= return_data.size
    idx = 448
    s = ceil32(return_data.size) + 448
    while idx < 800:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[ceil32(return_data.size) + 448] > 0:
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 868
        while idx < stor2.length:
            mem[t] = stor2[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
        call 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0x170275b1 with:
             gas gas_remaining wei
            args Array(len=stor2.length, data=mem[ceil32(return_data.size) + 868 len 32 * stor2.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 800 len 352] = mem[ceil32(return_data.size) + 448 len 352]
    return memory
      from ceil32(return_data.size) + 448
       len 352
}

function get_inventory_by_type(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xde244c5f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
    staticcall 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0xde244c5f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_2f22a6a8(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_17] == mem[_17]
        require mem[_17 + 32] == mem[_17 + 32]
        _20 = mem[_17 + 64]
        require mem[_17 + 64] == mem[_17 + 64]
        require mem[_17 + 96] == mem[_17 + 96]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 1
        stor1[_20]++
        stor1[_20][stor1[_20]] = cd[((32 * idx) + cd[4] + 36)]
        stor2.length++
        mem[0] = 2
        stor2[stor2.length] = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_cc3df95b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xde244c5f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
    staticcall 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0xde244c5f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _5 < 15:
        _16 = mem[64]
        mem[mem[64]] = 0x170275b100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = stor2.length
        mem[0] = 2
        idx = 0
        s = 0
        t = mem[64] + 68
        while idx < stor2.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
        call 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _16 + (32 * stor2.length) + -mem[64] + 64]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == mem[_22]
}



}
