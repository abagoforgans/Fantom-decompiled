contract main {




// =====================  Runtime code  =====================


address routerAddress;
address owner;
address sub_f0ad6ab6Address;
mapping of uint8 stor3;

function owner() {
    return owner
}

function sub_f0ad6ab6(?) {
    return sub_f0ad6ab6Address
}

function router() {
    return routerAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    owner = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    routerAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor3[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor3[address(arg1)] = 0
}

function sub_c6843d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_f0ad6ab6Address = address(arg1)
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b457ffda(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'not authorized'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _37 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _38 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _38
    require return_data.size >= _37 + (32 * _38) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _38] = mem[_37 + 128 len 32 * _38]
    if _38 < 1:
        revert with 0, 17
    if _38 - 1 >= _38:
        revert with 0, 50
    _68 = mem[(32 * _38 - 1) + ceil32(return_data.size) + 128]
    if mem[(32 * _38 - 1) + ceil32(return_data.size) + 128] < cd[36]:
        revert with 0, 'insufficient output'
    if mem[(32 * _38 - 1) + ceil32(return_data.size) + 128] and 99 > -1 / mem[(32 * _38 - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 17
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == bool(mem[_73])
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = sub_f0ad6ab6Address
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0x23b872dd with:
         gas gas_remaining wei
        args sub_f0ad6ab6Address, this.address, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_77] == bool(mem[_77])
    if 10000 > !block.timestamp:
        revert with 0, 17
    _79 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 99 * _68 / 100
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_79 + 100] = sub_f0ad6ab6Address
    mem[_79 + 132] = block.timestamp + 10000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _79 + (32 * ('cd', 68).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _92 = mem[_91]
    require mem[_91] <= test266151307()
    require _91 + mem[_91] + 31 < _91 + return_data.size
    _93 = mem[_91 + mem[_91]]
    if mem[_91 + mem[_91]] > test266151307():
        revert with 0, 65
    if _91 + ceil32(return_data.size) + ceil32(32 * mem[_91 + mem[_91]]) + 1 > test266151307() or ceil32(32 * mem[_91 + mem[_91]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _91 + ceil32(return_data.size) + ceil32(32 * mem[_91 + mem[_91]]) + 1
    mem[_91 + ceil32(return_data.size)] = _93
    require return_data.size >= _92 + (32 * _93) + 32
    mem[_91 + ceil32(return_data.size) + 32 len 32 * _93] = mem[_91 + _92 + 32 len 32 * _93]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _93
    mem[mem[64] + 64 len 32 * _93] = mem[_91 + ceil32(return_data.size) + 32 len 32 * _93]
    return Array(len=_93, data=mem[mem[64] + 64 len 32 * _93])
}

function sub_6da6bfa3(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor3[msg.sender]:
        revert with 0, 'not authorized'
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'not authorized'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _79 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _80 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _80
    require return_data.size >= _79 + (32 * _80) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _80] = mem[_79 + 128 len 32 * _80]
    if _80 < 1:
        revert with 0, 17
    if _80 - 1 >= _80:
        revert with 0, 50
    _149 = mem[(32 * _80 - 1) + ceil32(return_data.size) + 128]
    if mem[(32 * _80 - 1) + ceil32(return_data.size) + 128] < cd[36]:
        revert with 0, 'insufficient output'
    if mem[(32 * _80 - 1) + ceil32(return_data.size) + 128] and 99 > -1 / mem[(32 * _80 - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 17
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _154 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_154] == bool(mem[_154])
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = sub_f0ad6ab6Address
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0x23b872dd with:
         gas gas_remaining wei
        args sub_f0ad6ab6Address, this.address, cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _158 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_158] == bool(mem[_158])
    if 10000 > !block.timestamp:
        revert with 0, 17
    _160 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 99 * _149 / 100
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_160 + 100] = sub_f0ad6ab6Address
    mem[_160 + 132] = block.timestamp + 10000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _160 + (32 * ('cd', 68).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _211 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _212 = mem[_211]
    require mem[_211] <= test266151307()
    require _211 + mem[_211] + 31 < _211 + return_data.size
    _213 = mem[_211 + mem[_211]]
    if mem[_211 + mem[_211]] > test266151307():
        revert with 0, 65
    if _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1 > test266151307() or ceil32(32 * mem[_211 + mem[_211]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1
    mem[_211 + ceil32(return_data.size)] = _213
    require return_data.size >= _212 + (32 * _213) + 32
    mem[_211 + ceil32(return_data.size) + 32 len 32 * _213] = mem[_211 + _212 + 32 len 32 * _213]
    if ('cd', 68).length == 2:
        _260 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 1 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[1] == address(('cd', 68)[1])
        if 0 >= mem[_260]:
            revert with 0, 50
        mem[_260 + 32] = address(('cd', 68)[1])
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 1 >= mem[_260]:
            revert with 0, 50
        mem[_260 + 64] = address(('cd', 68)[0])
        if _213 < 1:
            revert with 0, 17
        if _213 - 1 >= _213:
            revert with 0, 50
        mem[_260 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_260 + 100] = mem[(32 * _213 - 1) + _211 + ceil32(return_data.size) + 32]
        mem[_260 + 132] = 64
        mem[_260 + 164] = mem[_260]
        idx = 0
        s = _260 + 196
        t = _260 + 32
        while idx < mem[_260]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _260 + (32 * mem[_260]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _310 = mem[_308]
        require mem[_308] <= test266151307()
        require _308 + mem[_308] + 31 < _308 + return_data.size
        _312 = mem[_308 + mem[_308]]
        if mem[_308 + mem[_308]] > test266151307():
            revert with 0, 65
        if _308 + ceil32(return_data.size) + ceil32(32 * mem[_308 + mem[_308]]) + 1 > test266151307() or ceil32(32 * mem[_308 + mem[_308]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _308 + ceil32(return_data.size) + ceil32(32 * mem[_308 + mem[_308]]) + 1
        mem[_308 + ceil32(return_data.size)] = _312
        require return_data.size >= _310 + (32 * _312) + 32
        mem[_308 + ceil32(return_data.size) + 32 len 32 * _312] = mem[_308 + _310 + 32 len 32 * _312]
        if _312 < 1:
            revert with 0, 17
        if _312 - 1 >= _312:
            revert with 0, 50
        if cd[4] and 98 > -1 / cd[4]:
            revert with 0, 17
        if mem[(32 * _312 - 1) + _308 + ceil32(return_data.size) + 32] <= 98 * cd[4] / 100:
            revert with 0, 'not enough'
    else:
        if ('cd', 68).length != 3:
            revert with 0, 'unsupported'
        _262 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 2 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[2] == address(('cd', 68)[2])
        if 0 >= mem[_262]:
            revert with 0, 50
        mem[_262 + 32] = address(('cd', 68)[2])
        if 1 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[1] == address(('cd', 68)[1])
        if 1 >= mem[_262]:
            revert with 0, 50
        mem[_262 + 64] = address(('cd', 68)[1])
        if 0 >= ('cd', 68).length:
            revert with 0, 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 2 >= mem[_262]:
            revert with 0, 50
        mem[_262 + 96] = address(('cd', 68)[0])
        if _213 < 1:
            revert with 0, 17
        if _213 - 1 >= _213:
            revert with 0, 50
        mem[_262 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_262 + 132] = mem[(32 * _213 - 1) + _211 + ceil32(return_data.size) + 32]
        mem[_262 + 164] = 64
        mem[_262 + 196] = mem[_262]
        idx = 0
        s = _262 + 228
        t = _262 + 32
        while idx < mem[_262]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _262 + (32 * mem[_262]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _309 = mem[_307]
        require mem[_307] <= test266151307()
        require _307 + mem[_307] + 31 < _307 + return_data.size
        _311 = mem[_307 + mem[_307]]
        if mem[_307 + mem[_307]] > test266151307():
            revert with 0, 65
        if _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1 > test266151307() or ceil32(32 * mem[_307 + mem[_307]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1
        mem[_307 + ceil32(return_data.size)] = _311
        require return_data.size >= _309 + (32 * _311) + 32
        mem[_307 + ceil32(return_data.size) + 32 len 32 * _311] = mem[_307 + _309 + 32 len 32 * _311]
        if _311 < 1:
            revert with 0, 17
        if _311 - 1 >= _311:
            revert with 0, 50
        if cd[4] and 98 > -1 / cd[4]:
            revert with 0, 17
        if mem[(32 * _311 - 1) + _307 + ceil32(return_data.size) + 32] <= 98 * cd[4] / 100:
            revert with 0, 'not enough'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xb6a5d7de(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'not owner'
                stor3[address(cd[4])] = 1
            else:
                if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'not owner'
                    routerAddress = address(cd[4])
                else:
                    if unknown_0xc6843d05(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'not owner'
                        sub_f0ad6ab6Address = address(cd[4])
                    else:
                        if unknown_0xf0ad6ab6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f0ad6ab6Address
                        if uint32(call.func_hash) >> 224 != unknown_0xf0b37c04(?????):
                            require unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return routerAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'not owner'
                        stor3[address(cd[4])] = 0
        else:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'not owner'
                owner = address(cd[4])
            else:
                if unknown_0x4782f779(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'not owner'
                    call address(cd[4]) with:
                       value cd[36] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x6da6bfa3(?????):
                        if unknown_0x8980f11f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'not owner'
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        require unknown_0xb457ffda(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        mem[0] = msg.sender
                        mem[32] = 3
                        if not stor3[msg.sender]:
                            revert with 0, 'not authorized'
                        mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[132] = cd[4]
                        mem[164] = 64
                        mem[196] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = 228
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args cd[4], Array(len=('cd', 68).length, data=mem[228 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _143 = mem[128 len 4], Mask(224, 32, cd[4]) >> 32
                        require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                        require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < return_data.size + 128
                        _145 = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        if mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                        mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        require return_data.size >= _143 + (32 * _145) + 32
                        mem[ceil32(return_data.size) + 160 len 32 * _145] = mem[_143 + 160 len 32 * _145]
                        if _145 < 1:
                            revert with 0, 17
                        if _145 - 1 >= _145:
                            revert with 0, 50
                        _244 = mem[(32 * _145 - 1) + ceil32(return_data.size) + 160]
                        if mem[(32 * _145 - 1) + ceil32(return_data.size) + 160] < cd[36]:
                            revert with 0, 'insufficient output'
                        if mem[(32 * _145 - 1) + ceil32(return_data.size) + 160] and 99 > -1 / mem[(32 * _145 - 1) + ceil32(return_data.size) + 160]:
                            revert with 0, 17
                        if 0 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        mem[mem[64] + 4] = routerAddress
                        mem[mem[64] + 36] = cd[4]
                        require ext_code.size(address(('cd', 68)[0]))
                        call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_254] == bool(mem[_254])
                        if 0 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        mem[mem[64] + 4] = sub_f0ad6ab6Address
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = cd[4]
                        require ext_code.size(address(('cd', 68)[0]))
                        call address(('cd', 68)[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args sub_f0ad6ab6Address, this.address, cd[4]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_262] == bool(mem[_262])
                        if 10000 > !block.timestamp:
                            revert with 0, 17
                        _266 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = 99 * _244 / 100
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_266 + 100] = sub_f0ad6ab6Address
                        mem[_266 + 132] = block.timestamp + 10000
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _266 + (32 * ('cd', 68).length) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _329 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _331 = mem[_329]
                        require mem[_329] <= test266151307()
                        require _329 + mem[_329] + 31 < _329 + return_data.size
                        _333 = mem[_329 + mem[_329]]
                        if mem[_329 + mem[_329]] > test266151307():
                            revert with 0, 65
                        if _329 + ceil32(return_data.size) + ceil32(32 * mem[_329 + mem[_329]]) + 1 > test266151307() or ceil32(32 * mem[_329 + mem[_329]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _329 + ceil32(return_data.size) + ceil32(32 * mem[_329 + mem[_329]]) + 1
                        mem[_329 + ceil32(return_data.size)] = _333
                        require return_data.size >= _331 + (32 * _333) + 32
                        mem[_329 + ceil32(return_data.size) + 32 len 32 * _333] = mem[_329 + _331 + 32 len 32 * _333]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _333
                        mem[mem[64] + 64 len 32 * _333] = mem[_329 + ceil32(return_data.size) + 32 len 32 * _333]
                        return Array(len=_333, data=mem[mem[64] + 64 len 32 * _333])
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    if not stor3[msg.sender]:
                        revert with 0, 'not authorized'
                    mem[0] = msg.sender
                    mem[32] = 3
                    if not stor3[msg.sender]:
                        revert with 0, 'not authorized'
                    mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[132] = cd[4]
                    mem[164] = 64
                    mem[196] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = 228
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[4], Array(len=('cd', 68).length, data=mem[228 len 32 * ('cd', 68).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _142 = mem[128 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < return_data.size + 128
                    _144 = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    require return_data.size >= _142 + (32 * _144) + 32
                    mem[ceil32(return_data.size) + 160 len 32 * _144] = mem[_142 + 160 len 32 * _144]
                    if _144 < 1:
                        revert with 0, 17
                    if _144 - 1 >= _144:
                        revert with 0, 50
                    _243 = mem[(32 * _144 - 1) + ceil32(return_data.size) + 160]
                    if mem[(32 * _144 - 1) + ceil32(return_data.size) + 160] < cd[36]:
                        revert with 0, 'insufficient output'
                    if mem[(32 * _144 - 1) + ceil32(return_data.size) + 160] and 99 > -1 / mem[(32 * _144 - 1) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if 0 >= ('cd', 68).length:
                        revert with 0, 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_253] == bool(mem[_253])
                    if 0 >= ('cd', 68).length:
                        revert with 0, 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    mem[mem[64] + 4] = sub_f0ad6ab6Address
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args sub_f0ad6ab6Address, this.address, cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_261] == bool(mem[_261])
                    if 10000 > !block.timestamp:
                        revert with 0, 17
                    _265 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[4]
                    mem[mem[64] + 36] = 99 * _243 / 100
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_265 + 100] = sub_f0ad6ab6Address
                    mem[_265 + 132] = block.timestamp + 10000
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _265 + (32 * ('cd', 68).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _328 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _330 = mem[_328]
                    require mem[_328] <= test266151307()
                    require _328 + mem[_328] + 31 < _328 + return_data.size
                    _332 = mem[_328 + mem[_328]]
                    if mem[_328 + mem[_328]] > test266151307():
                        revert with 0, 65
                    if _328 + ceil32(return_data.size) + ceil32(32 * mem[_328 + mem[_328]]) + 1 > test266151307() or ceil32(32 * mem[_328 + mem[_328]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _328 + ceil32(return_data.size) + ceil32(32 * mem[_328 + mem[_328]]) + 1
                    mem[_328 + ceil32(return_data.size)] = _332
                    require return_data.size >= _330 + (32 * _332) + 32
                    mem[_328 + ceil32(return_data.size) + 32 len 32 * _332] = mem[_328 + _330 + 32 len 32 * _332]
                    if ('cd', 68).length == 2:
                        _388 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 1 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[1] == address(('cd', 68)[1])
                        if 0 >= mem[_388]:
                            revert with 0, 50
                        mem[_388 + 32] = address(('cd', 68)[1])
                        if 0 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 1 >= mem[_388]:
                            revert with 0, 50
                        mem[_388 + 64] = address(('cd', 68)[0])
                        if _332 < 1:
                            revert with 0, 17
                        if _332 - 1 >= _332:
                            revert with 0, 50
                        mem[_388 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_388 + 100] = mem[(32 * _332 - 1) + _328 + ceil32(return_data.size) + 32]
                        mem[_388 + 132] = 64
                        mem[_388 + 164] = mem[_388]
                        idx = 0
                        s = _388 + 196
                        t = _388 + 32
                        while idx < mem[_388]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _388 + (32 * mem[_388]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _441 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _443 = mem[_441]
                        require mem[_441] <= test266151307()
                        require _441 + mem[_441] + 31 < _441 + return_data.size
                        _445 = mem[_441 + mem[_441]]
                        if mem[_441 + mem[_441]] > test266151307():
                            revert with 0, 65
                        if _441 + ceil32(return_data.size) + ceil32(32 * mem[_441 + mem[_441]]) + 1 > test266151307() or ceil32(32 * mem[_441 + mem[_441]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _441 + ceil32(return_data.size) + ceil32(32 * mem[_441 + mem[_441]]) + 1
                        mem[_441 + ceil32(return_data.size)] = _445
                        require return_data.size >= _443 + (32 * _445) + 32
                        mem[_441 + ceil32(return_data.size) + 32 len 32 * _445] = mem[_441 + _443 + 32 len 32 * _445]
                        if _445 < 1:
                            revert with 0, 17
                        if _445 - 1 >= _445:
                            revert with 0, 50
                        if cd[4] and 98 > -1 / cd[4]:
                            revert with 0, 17
                        if mem[(32 * _445 - 1) + _441 + ceil32(return_data.size) + 32] <= 98 * cd[4] / 100:
                            revert with 0, 'not enough'
                    else:
                        if ('cd', 68).length != 3:
                            revert with 0, 'unsupported'
                        _391 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 2 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[2] == address(('cd', 68)[2])
                        if 0 >= mem[_391]:
                            revert with 0, 50
                        mem[_391 + 32] = address(('cd', 68)[2])
                        if 1 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[1] == address(('cd', 68)[1])
                        if 1 >= mem[_391]:
                            revert with 0, 50
                        mem[_391 + 64] = address(('cd', 68)[1])
                        if 0 >= ('cd', 68).length:
                            revert with 0, 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if 2 >= mem[_391]:
                            revert with 0, 50
                        mem[_391 + 96] = address(('cd', 68)[0])
                        if _332 < 1:
                            revert with 0, 17
                        if _332 - 1 >= _332:
                            revert with 0, 50
                        mem[_391 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_391 + 132] = mem[(32 * _332 - 1) + _328 + ceil32(return_data.size) + 32]
                        mem[_391 + 164] = 64
                        mem[_391 + 196] = mem[_391]
                        idx = 0
                        s = _391 + 228
                        t = _391 + 32
                        while idx < mem[_391]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _391 + (32 * mem[_391]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _440 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _442 = mem[_440]
                        require mem[_440] <= test266151307()
                        require _440 + mem[_440] + 31 < _440 + return_data.size
                        _444 = mem[_440 + mem[_440]]
                        if mem[_440 + mem[_440]] > test266151307():
                            revert with 0, 65
                        if _440 + ceil32(return_data.size) + ceil32(32 * mem[_440 + mem[_440]]) + 1 > test266151307() or ceil32(32 * mem[_440 + mem[_440]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _440 + ceil32(return_data.size) + ceil32(32 * mem[_440 + mem[_440]]) + 1
                        mem[_440 + ceil32(return_data.size)] = _444
                        require return_data.size >= _442 + (32 * _444) + 32
                        mem[_440 + ceil32(return_data.size) + 32 len 32 * _444] = mem[_440 + _442 + 32 len 32 * _444]
                        if _444 < 1:
                            revert with 0, 17
                        if _444 - 1 >= _444:
                            revert with 0, 50
                        if cd[4] and 98 > -1 / cd[4]:
                            revert with 0, 17
                        if mem[(32 * _444 - 1) + _440 + ceil32(return_data.size) + 32] <= 98 * cd[4] / 100:
                            revert with 0, 'not enough'
}



}
