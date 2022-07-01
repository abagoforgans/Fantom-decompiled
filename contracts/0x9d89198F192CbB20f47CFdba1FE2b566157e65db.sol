contract main {




// =====================  Runtime code  =====================


#
#  - sub_26371dcb(?)
#
address owner;
address wethAddress;
mapping of uint8 stor2;

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function weth() {
    return wethAddress
}

function owner() {
    return owner
}

function depositWETH() payable {
  stop
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Permission denied!'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_fb36294a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Permission denied!'
    wethAddress = address(arg1)
    owner = address(arg2)
}

function externalCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    if not msg.value:
        call arg1 with:
             gas gas_remaining wei
            args arg2[all]
    else:
        call arg1 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2[all]
}

function withdrawWETH() {
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    require ext_code.size(wethAddress)
    staticcall wethAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2:
            mem[196 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, mem[196 len 28]
            call arg1.mem[196 len 4] with:
                 gas gas_remaining wei
                args mem[200 len 64]
        else:
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address) << 64, 0
            if 1 != ext_call.success:
                mem[264 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0, mem[264 len 28]
            else:
                mem[264 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], mem[264 len 28]
            call arg1.mem[264 len 4] with:
                 gas gas_remaining wei
                args mem[268 len 64]
}

function sub_30beb204(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    s = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + (-160 * idx) - 36 >= 160
        _68 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        require cd[(cd[4] + (160 * idx) + 36)] == address(cd[(cd[4] + (160 * idx) + 36)])
        mem[_68] = cd[(cd[4] + (160 * idx) + 36)]
        require cd[(cd[4] + (160 * idx) + 68)] == address(cd[(cd[4] + (160 * idx) + 68)])
        mem[_68 + 32] = cd[(cd[4] + (160 * idx) + 68)]
        require cd[(cd[4] + (160 * idx) + 100)] == address(cd[(cd[4] + (160 * idx) + 100)])
        mem[_68 + 64] = cd[(cd[4] + (160 * idx) + 100)]
        mem[_68 + 96] = cd[(cd[4] + (160 * idx) + 132)]
        mem[_68 + 128] = cd[(cd[4] + (160 * idx) + 164)]
        mem[s] = _68
        s = s + 32
        idx = idx + 1
        continue 
    _127 = mem[96]
    idx = 0
    while idx < _127:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 44 len 20]:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 12 len 20]:
                require idx < mem[96]
                _138 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                _143 = mem[mem[(32 * idx) + 128]]
                _146 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_143)
                _151 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_151 + 32] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000 or mem[_151 + 36 len 28]
                staticcall _138.mem[_151 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_151 + 36 len mem[_151] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_146 + 136] = address(_143)
                    mem[_146 + 168] = 10000000000 * 10^18
                    mem[_146 + 100] = 68
                    mem[64] = _146 + 200
                    mem[_146 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_143) << 64
                    call _138.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 34710 wei
                        args 0 or address(_143) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_146 + 136] = address(_143)
                        mem[_146 + 168] = 10000000000 * 10^18
                        mem[_146 + 100] = 68
                        mem[64] = _146 + 200
                        mem[_146 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_143) << 64
                        call _138.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 34710 wei
                            args 0 or address(_143) << 64, 0, 10000000000 * 10^18
        _127 = mem[96]
        idx = idx + 1
        continue 
    _131 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_131] = ('cd', 36).length
    s = _131 + 32
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -(64 * idx) - 36 >= 64
        _189 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(cd[36] + (64 * idx) + 36)] == address(cd[(cd[36] + (64 * idx) + 36)])
        mem[_189] = cd[(cd[36] + (64 * idx) + 36)]
        require cd[(cd[36] + (64 * idx) + 68)] == address(cd[(cd[36] + (64 * idx) + 68)])
        mem[_189 + 32] = cd[(cd[36] + (64 * idx) + 68)]
        mem[s] = _189
        s = s + 32
        idx = idx + 1
        continue 
    _218 = mem[_131]
    idx = 0
    while idx < _218:
        require idx < mem[_131]
        if mem[mem[(32 * idx) + _131 + 32] + 12 len 20]:
            require idx < mem[_131]
            if mem[mem[(32 * idx) + _131 + 32] + 44 len 20]:
                require idx < mem[_131]
                _229 = mem[mem[(32 * idx) + _131 + 32]]
                require idx < mem[_131]
                _232 = mem[mem[(32 * idx) + _131 + 32] + 32]
                _233 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_232)
                _234 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_234 + 32] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000 or mem[_234 + 36 len 28]
                staticcall _229.mem[_234 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_234 + 36 len mem[_234] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_233 + 136] = address(_232)
                    mem[_233 + 168] = 10000000000 * 10^18
                    mem[_233 + 100] = 68
                    mem[64] = _233 + 200
                    mem[_233 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_232) << 64
                    call _229.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 34710 wei
                        args 0 or address(_232) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_233 + 136] = address(_232)
                        mem[_233 + 168] = 10000000000 * 10^18
                        mem[_233 + 100] = 68
                        mem[64] = _233 + 200
                        mem[_233 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_232) << 64
                        call _229.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 34710 wei
                            args 0 or address(_232) << 64, 0, 10000000000 * 10^18
        _218 = mem[_131]
        idx = idx + 1
        continue 
    return 1
}

function sub_0a9dde0f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    s = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + (-160 * idx) - 36 >= 160
        _65 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        require cd[(cd[4] + (160 * idx) + 36)] == address(cd[(cd[4] + (160 * idx) + 36)])
        mem[_65] = cd[(cd[4] + (160 * idx) + 36)]
        require cd[(cd[4] + (160 * idx) + 68)] == address(cd[(cd[4] + (160 * idx) + 68)])
        mem[_65 + 32] = cd[(cd[4] + (160 * idx) + 68)]
        require cd[(cd[4] + (160 * idx) + 100)] == address(cd[(cd[4] + (160 * idx) + 100)])
        mem[_65 + 64] = cd[(cd[4] + (160 * idx) + 100)]
        mem[_65 + 96] = cd[(cd[4] + (160 * idx) + 132)]
        mem[_65 + 128] = cd[(cd[4] + (160 * idx) + 164)]
        mem[s] = _65
        s = s + 32
        idx = idx + 1
        continue 
    _121 = mem[96]
    idx = 0
    while idx < _121:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 44 len 20]:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 12 len 20]:
                require idx < mem[96]
                _132 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                _137 = mem[mem[(32 * idx) + 128]]
                _138 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_137)
                _141 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_141 + 32] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000 or mem[_141 + 36 len 28]
                staticcall _132.mem[_141 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_141 + 36 len mem[_141] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_138 + 136] = address(_137)
                    mem[_138 + 168] = 10000000000 * 10^18
                    mem[_138 + 100] = 68
                    mem[64] = _138 + 200
                    mem[_138 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_137) << 64
                    call _132.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 34710 wei
                        args 0 or address(_137) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_138 + 136] = address(_137)
                        mem[_138 + 168] = 10000000000 * 10^18
                        mem[_138 + 100] = 68
                        mem[64] = _138 + 200
                        mem[_138 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_137) << 64
                        call _132.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 34710 wei
                            args 0 or address(_137) << 64, 0, 10000000000 * 10^18
        _121 = mem[96]
        idx = idx + 1
        continue 
    idx = 0
    s = cd[36]
    while idx < ('cd', 4).length:
        _179 = mem[64]
        mem[64] = mem[64] + 160
        mem[_179] = 0
        mem[_179 + 32] = 0
        mem[_179 + 64] = 0
        mem[_179 + 96] = 0
        mem[_179 + 128] = 0
        require calldata.size + (-160 * idx) + -cd[4] - 36 >= 160
        _183 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        require cd[((160 * idx) + cd[4] + 36)] == address(cd[((160 * idx) + cd[4] + 36)])
        mem[_183] = cd[((160 * idx) + cd[4] + 36)]
        require cd[((160 * idx) + cd[4] + 68)] == address(cd[((160 * idx) + cd[4] + 68)])
        mem[_183 + 32] = cd[((160 * idx) + cd[4] + 68)]
        require cd[((160 * idx) + cd[4] + 100)] == address(cd[((160 * idx) + cd[4] + 100)])
        mem[_183 + 64] = cd[((160 * idx) + cd[4] + 100)]
        mem[_183 + 96] = cd[((160 * idx) + cd[4] + 132)]
        mem[_183 + 128] = cd[((160 * idx) + cd[4] + 164)]
        _184 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_184]
        mem[_184 + 32] = address(cd[((160 * idx) + cd[4] + 68)])
        require 1 < mem[_184]
        mem[_184 + 64] = address(cd[((160 * idx) + cd[4] + 100)])
        mem[_184 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_184 + 100] = s
        mem[_184 + 132] = 0
        mem[_184 + 164] = 160
        mem[_184 + 260] = mem[_184]
        s = 0
        t = _184 + 292
        u = _184 + 32
        while s < mem[_184]:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_184 + 196] = this.address
        mem[_184 + 228] = 525952 * 3600
        require ext_code.size(address(cd[((160 * idx) + cd[4] + 36)]))
        call address(cd[((160 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_209]
        require mem[_209] <= test266151307()
        require _209 + return_data.size > _209 + mem[_209] + 31
        _211 = mem[_209 + mem[_209]]
        require mem[_209 + mem[_209]] <= test266151307()
        require (32 * mem[_209 + mem[_209]]) + 32 >= 0 and _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32 <= test266151307()
        mem[64] = _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32
        mem[_209 + ceil32(return_data.size)] = _211
        require return_data.size >= _210 + (32 * _211) + 32
        t = _209 + _210 + 32
        u = _209 + ceil32(return_data.size) + 32
        s = 0
        while s < _211:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _211 != 0:
            require _211 - 1 < _211
            if mem[(32 * _211 - 1) + _209 + ceil32(return_data.size) + 32] != 0:
                idx = idx + 1
                s = mem[(32 * _211 - 1) + _209 + ceil32(return_data.size) + 32]
                continue 
        return 0
    if s <= cd[36]:
        revert with 0, 'Negative!'
    return s
}

function sub_5c140aaa(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_114] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_114 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_114 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 4).length + 1 <= test266151307()
    _115 = mem[64]
    mem[mem[64]] = ('cd', 4).length + 1
    mem[64] = mem[64] + (32 * ('cd', 4).length + 1) + 32
    if not ('cd', 4).length + 1:
        require 0 < mem[_115]
        mem[_115 + 32] = cd[100]
        idx = 0
        s = cd[100]
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _228 = mem[(32 * idx) + 128]
            require idx < ('cd', 68).length
            _231 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_231 + 32] = call.data[calldata.size]
            if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_228]:
                mem[_231 + 32] = s
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)] with:
                     funct Mask(32, 224, s) >> 224
                        gas gas_remaining wei
                       args mem[_231 + 36 len mem[_231] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_231 + 64] = 0
                    mem[_231 + 96] = 64
                    if not ext_call.success:
                        _270 = mem[_115]
                        mem[_231 + 128] = mem[_115]
                        idx = 0
                        s = _231 + 160
                        t = _115 + 32
                        while idx < _270:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _231 + (32 * _270) + -mem[64] + 160
                    _276 = mem[_115]
                    mem[_231 + 128] = mem[_115]
                    idx = 0
                    s = _231 + 160
                    t = _115 + 32
                    while idx < _276:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _231 + (32 * _276) + -mem[64] + 160
                if not ext_call.success:
                    mem[_231 + 64] = 0
                    mem[_231 + 96] = 64
                    _277 = mem[_115]
                    mem[_231 + 128] = mem[_115]
                    idx = 0
                    s = _231 + 160
                    t = _115 + 32
                    while idx < _277:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _231 + (32 * _277) + -mem[64] + 160
                if ext_call.return_data[0]:
                    require idx + 1 < mem[_115]
                    mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                mem[_231 + 64] = 0
                mem[_231 + 96] = 64
                _284 = mem[_115]
                mem[_231 + 128] = mem[_115]
                idx = 0
                s = _231 + 160
                t = _115 + 32
                while idx < _284:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _231 + (32 * _284) + -mem[64] + 160
            _237 = mem[_228]
            mem[_231 + 64] = cd[((32 * idx) + cd[68] + 36)]
            t = _228 + 32
            u = _231 + 96
            while u < _231 + cd[((32 * idx) + cd[68] + 36)] + 96:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[_231 + 32] = s
            mem[_231 + 64] = mem[_231 + 64] + 32
            s = _231 + 32
            t = _231 + cd[((32 * idx) + cd[68] + 36)] + 96
            while t < _231 + cd[((32 * idx) + cd[68] + 36)] + 128:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            mem[_231 + 64] = _237 + -cd[((32 * idx) + cd[68] + 36)] + mem[_231 + 64] - 32
            t = cd[((32 * idx) + cd[68] + 36)] + _228 + 64
            s = _231 + cd[((32 * idx) + cd[68] + 36)] + 128
            while s < _237 + _231 + 96:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[64] = floor32(not mem[_228] + _237 + -cd[((32 * idx) + cd[68] + 36)] - 32 + _237 + _231 + 31) + 3
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)].mem[_231 + 96 len 4] with:
                    gas gas_remaining wei
                   args mem[_231 + 100 len mem[_231 + 64] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not ext_call.success:
                    _460 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 64
                    _462 = mem[_115]
                    mem[mem[64] + 64] = mem[_115]
                    idx = 0
                    s = mem[64] + 96
                    t = _115 + 32
                    while idx < _462:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _460 + (32 * _462) + -mem[64] + 96
                _463 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _468 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = mem[64] + 96
                t = _115 + 32
                while idx < _468:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _463 + (32 * _468) + -mem[64] + 96
            if not ext_call.success:
                _464 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _469 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = mem[64] + 96
                t = _115 + 32
                while idx < _469:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _464 + (32 * _469) + -mem[64] + 96
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            _470 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _475 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = mem[64] + 96
            t = _115 + 32
            while idx < _475:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _470 + (32 * _475) + -mem[64] + 96
        mem[mem[64]] = s
        mem[mem[64] + 32] = 64
        _236 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        mem[mem[64] + 96 len 32 * _236] = mem[_115 + 32 len 32 * _236]
        var45001 = _236
        var45003 = mem[64] + (32 * _236) + 96
        return s, 64, mem[mem[64] + 64 len (32 * _236) + 32]
    mem[_115 + 32 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    require 0 < mem[_115]
    mem[_115 + 32] = cd[100]
    idx = 0
    s = cd[100]
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _229 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        _234 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_234 + 32] = call.data[calldata.size]
        if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_229]:
            mem[_234 + 32] = s
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)] with:
                 funct Mask(32, 224, s) >> 224
                    gas gas_remaining wei
                   args mem[_234 + 36 len mem[_234] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                mem[_234 + 64] = 0
                mem[_234 + 96] = 64
                if not ext_call.success:
                    _273 = mem[_115]
                    mem[_234 + 128] = mem[_115]
                    idx = 0
                    s = _234 + 160
                    t = _115 + 32
                    while idx < _273:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _234 + (32 * _273) + -mem[64] + 160
                _279 = mem[_115]
                mem[_234 + 128] = mem[_115]
                idx = 0
                s = _234 + 160
                t = _115 + 32
                while idx < _279:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _234 + (32 * _279) + -mem[64] + 160
            if not ext_call.success:
                mem[_234 + 64] = 0
                mem[_234 + 96] = 64
                _280 = mem[_115]
                mem[_234 + 128] = mem[_115]
                idx = 0
                s = _234 + 160
                t = _115 + 32
                while idx < _280:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _234 + (32 * _280) + -mem[64] + 160
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            mem[_234 + 64] = 0
            mem[_234 + 96] = 64
            _287 = mem[_115]
            mem[_234 + 128] = mem[_115]
            idx = 0
            s = _234 + 160
            t = _115 + 32
            while idx < _287:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _234 + (32 * _287) + -mem[64] + 160
        _240 = mem[_229]
        mem[_234 + 64] = cd[((32 * idx) + cd[68] + 36)]
        t = _229 + 32
        u = _234 + 96
        while u < _234 + cd[((32 * idx) + cd[68] + 36)] + 96:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_234 + 32] = s
        mem[_234 + 64] = mem[_234 + 64] + 32
        s = _234 + 32
        t = _234 + cd[((32 * idx) + cd[68] + 36)] + 96
        while t < _234 + cd[((32 * idx) + cd[68] + 36)] + 128:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        mem[_234 + 64] = _240 + -cd[((32 * idx) + cd[68] + 36)] + mem[_234 + 64] - 32
        t = cd[((32 * idx) + cd[68] + 36)] + _229 + 64
        s = _234 + cd[((32 * idx) + cd[68] + 36)] + 128
        while s < _240 + _234 + 96:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[64] = floor32(not mem[_229] + _240 + -cd[((32 * idx) + cd[68] + 36)] - 32 + _240 + _234 + 31) + 3
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall cd[((32 * idx) + cd[4] + 36)].mem[_234 + 96 len 4] with:
                gas gas_remaining wei
               args mem[_234 + 100 len mem[_234 + 64] - 4]
        mem[0] = ext_call.return_data[0]
        if 1 != ext_call.success:
            if not ext_call.success:
                _461 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _465 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = mem[64] + 96
                t = _115 + 32
                while idx < _465:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _461 + (32 * _465) + -mem[64] + 96
            _466 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _471 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = mem[64] + 96
            t = _115 + 32
            while idx < _471:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _466 + (32 * _471) + -mem[64] + 96
        if not ext_call.success:
            _467 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _472 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = mem[64] + 96
            t = _115 + 32
            while idx < _472:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _467 + (32 * _472) + -mem[64] + 96
        if ext_call.return_data[0]:
            require idx + 1 < mem[_115]
            mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        _473 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _477 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        idx = 0
        s = mem[64] + 96
        t = _115 + 32
        while idx < _477:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _473 + (32 * _477) + -mem[64] + 96
    mem[mem[64]] = s
    mem[mem[64] + 32] = 64
    _239 = mem[_115]
    mem[mem[64] + 64] = mem[_115]
    mem[mem[64] + 96 len 32 * _239] = mem[_115 + 32 len 32 * _239]
    var46001 = _239
    var46003 = mem[64] + (32 * _239) + 96
    return s, 64, mem[mem[64] + 64 len (32 * _239) + 32]
}

function sub_c8ee00be(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _682 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_682] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_682 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_682 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _682
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == bool(cd[132])
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Permission denied!'
    _684 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    mem[_684] = ('cd', 4).length
    s = _684 + 32
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + (-160 * idx) - 36 >= 160
        _1364 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        require cd[(cd[4] + (160 * idx) + 36)] == address(cd[(cd[4] + (160 * idx) + 36)])
        mem[_1364] = cd[(cd[4] + (160 * idx) + 36)]
        require cd[(cd[4] + (160 * idx) + 68)] == address(cd[(cd[4] + (160 * idx) + 68)])
        mem[_1364 + 32] = cd[(cd[4] + (160 * idx) + 68)]
        require cd[(cd[4] + (160 * idx) + 100)] == address(cd[(cd[4] + (160 * idx) + 100)])
        mem[_1364 + 64] = cd[(cd[4] + (160 * idx) + 100)]
        mem[_1364 + 96] = cd[(cd[4] + (160 * idx) + 132)]
        mem[_1364 + 128] = cd[(cd[4] + (160 * idx) + 164)]
        mem[s] = _1364
        s = s + 32
        idx = idx + 1
        continue 
    _2037 = mem[_684]
    idx = 0
    while idx < _2037:
        require idx < mem[_684]
        if mem[mem[(32 * idx) + _684 + 32] + 44 len 20]:
            require idx < mem[_684]
            if mem[mem[(32 * idx) + _684 + 32] + 12 len 20]:
                require idx < mem[_684]
                _2048 = mem[mem[(32 * idx) + _684 + 32] + 32]
                require idx < mem[_684]
                _2053 = mem[mem[(32 * idx) + _684 + 32]]
                _2056 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_2053)
                _2061 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2061 + 32] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000 or mem[_2061 + 36 len 28]
                staticcall _2048.mem[_2061 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_2061 + 36 len mem[_2061] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_2056 + 136] = address(_2053)
                    mem[_2056 + 168] = 10000000000 * 10^18
                    mem[_2056 + 100] = 68
                    mem[64] = _2056 + 200
                    mem[_2056 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_2053) << 64
                    call _2048.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 34710 wei
                        args 0 or address(_2053) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_2056 + 136] = address(_2053)
                        mem[_2056 + 168] = 10000000000 * 10^18
                        mem[_2056 + 100] = 68
                        mem[64] = _2056 + 200
                        mem[_2056 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_2053) << 64
                        call _2048.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 34710 wei
                            args 0 or address(_2053) << 64, 0, 10000000000 * 10^18
        _2037 = mem[_684]
        idx = idx + 1
        continue 
    _2041 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_2041] = ('cd', 36).length
    s = _2041 + 32
    idx = 0
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -(64 * idx) - 36 >= 64
        _2713 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(cd[36] + (64 * idx) + 36)] == address(cd[(cd[36] + (64 * idx) + 36)])
        mem[_2713] = cd[(cd[36] + (64 * idx) + 36)]
        require cd[(cd[36] + (64 * idx) + 68)] == address(cd[(cd[36] + (64 * idx) + 68)])
        mem[_2713 + 32] = cd[(cd[36] + (64 * idx) + 68)]
        mem[s] = _2713
        s = s + 32
        idx = idx + 1
        continue 
    _3356 = mem[_2041]
    idx = 0
    while idx < _3356:
        require idx < mem[_2041]
        if mem[mem[(32 * idx) + _2041 + 32] + 12 len 20]:
            require idx < mem[_2041]
            if mem[mem[(32 * idx) + _2041 + 32] + 44 len 20]:
                require idx < mem[_2041]
                _3369 = mem[mem[(32 * idx) + _2041 + 32]]
                require idx < mem[_2041]
                _3374 = mem[mem[(32 * idx) + _2041 + 32] + 32]
                _3375 = mem[64]
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = address(_3374)
                _3380 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_3380 + 32] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000 or mem[_3380 + 36 len 28]
                staticcall _3369.mem[_3380 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_3380 + 36 len mem[_3380] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_3375 + 136] = address(_3374)
                    mem[_3375 + 168] = 10000000000 * 10^18
                    mem[_3375 + 100] = 68
                    mem[64] = _3375 + 200
                    mem[_3375 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_3374) << 64
                    call _3369.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 34710 wei
                        args 0 or address(_3374) << 64, 0, 10000000000 * 10^18
                else:
                    if ext_call.return_data[0] < 10000000000 * 10^18:
                        mem[_3375 + 136] = address(_3374)
                        mem[_3375 + 168] = 10000000000 * 10^18
                        mem[_3375 + 100] = 68
                        mem[64] = _3375 + 200
                        mem[_3375 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_3374) << 64
                        call _3369.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 34710 wei
                            args 0 or address(_3374) << 64, 0, 10000000000 * 10^18
        _3356 = mem[_2041]
        idx = idx + 1
        continue 
    _3360 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    mem[_3360] = ('cd', 4).length
    s = _3360 + 32
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + (-160 * idx) - 36 >= 160
        _4004 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        require cd[(cd[4] + (160 * idx) + 36)] == address(cd[(cd[4] + (160 * idx) + 36)])
        mem[_4004] = cd[(cd[4] + (160 * idx) + 36)]
        require cd[(cd[4] + (160 * idx) + 68)] == address(cd[(cd[4] + (160 * idx) + 68)])
        mem[_4004 + 32] = cd[(cd[4] + (160 * idx) + 68)]
        require cd[(cd[4] + (160 * idx) + 100)] == address(cd[(cd[4] + (160 * idx) + 100)])
        mem[_4004 + 64] = cd[(cd[4] + (160 * idx) + 100)]
        mem[_4004 + 96] = cd[(cd[4] + (160 * idx) + 132)]
        mem[_4004 + 128] = cd[(cd[4] + (160 * idx) + 164)]
        mem[s] = _4004
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[_3360]
    _4002 = mem[mem[_3360 + 32] + 32]
    mem[mem[64] + 36] = this.address
    _4005 = mem[64]
    mem[mem[64]] = 36
    mem[64] = mem[64] + 68
    mem[_4005 + 32 len 4] = balanceOf(address arg1)
    staticcall _4002.balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[_4005 + 36 len mem[_4005] - 4]
    mem[0] = ext_call.return_data[0]
    if 1 != ext_call.success:
        _4615 = mem[_3360]
        idx = 0
        s = cd[100]
        while idx < _4615:
            _4617 = mem[64]
            mem[64] = mem[64] + 160
            mem[_4617] = 0
            mem[_4617 + 32] = 0
            mem[_4617 + 64] = 0
            mem[_4617 + 96] = 0
            mem[_4617 + 128] = 0
            require idx < mem[_3360]
            _4621 = mem[(32 * idx) + _3360 + 32]
            require idx < mem[96]
            _4627 = mem[(32 * idx) + 128]
            _4628 = mem[mem[(32 * idx) + _3360 + 32] + 128]
            _4633 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_4633 + 32] = call.data[calldata.size]
            if _4628 + 32 > mem[_4627]:
                mem[_4633 + 32] = s
                if mem[_4621 + 96] <= 0:
                    call mem[_4621] with:
                       funct Mask(32, 224, s) >> 224
                         gas gas_remaining - 34710 wei
                        args mem[_4633 + 36 len mem[_4633] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value:
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining - 34710 wei
                                args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _4718 = mem[_4621 + 64]
                    mem[_4633 + 100] = this.address
                    mem[_4633 + 64] = 36
                    mem[64] = _4633 + 132
                    mem[_4633 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                    staticcall _4718.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args 0 or address(this.address) << 64, 0
                else:
                    if mem[_4621 + 96] >= s:
                        call mem[_4621] with:
                           funct Mask(32, 224, s) >> 224
                           value s wei
                             gas gas_remaining - 34710 wei
                            args mem[_4633 + 36 len mem[_4633] - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                            if msg.value:
                                call wethAddress.withdraw(uint256 arg1) with:
                                     gas gas_remaining - 34710 wei
                                    args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    return 0
                            else:
                                return 0
                        _4724 = mem[_4621 + 64]
                        mem[_4633 + 100] = this.address
                        mem[_4633 + 64] = 36
                        mem[64] = _4633 + 132
                        mem[_4633 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                        staticcall _4724.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args 0 or address(this.address) << 64, 0
                    else:
                        call mem[_4621] with:
                           funct Mask(32, 224, s) >> 224
                             gas gas_remaining - 34710 wei
                            args mem[_4633 + 36 len mem[_4633] - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                            if msg.value:
                                call wethAddress.withdraw(uint256 arg1) with:
                                     gas gas_remaining - 34710 wei
                                    args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    return 0
                            else:
                                return 0
                        _4725 = mem[_4621 + 64]
                        mem[_4633 + 100] = this.address
                        mem[_4633 + 64] = 36
                        mem[64] = _4633 + 132
                        mem[_4633 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                        staticcall _4725.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args 0 or address(this.address) << 64, 0
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    if not mem[_4621 + 76 len 20]:
                        mem[_4633 + 132] = 4
                        mem[64] = _4633 + 168
                        mem[_4633 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_4633 + 168 len 28]
                        call wethAddress.mem[_4633 + 164 len 4] with:
                             gas gas_remaining - 34710 wei
                    _4615 = mem[_3360]
                    idx = idx + 1
                    s = 0
                    continue 
                if not mem[_4621 + 76 len 20]:
                    mem[_4633 + 132] = 4
                    mem[64] = _4633 + 168
                    mem[_4633 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_4633 + 168 len 28]
                    call wethAddress.mem[_4633 + 164 len 4] with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34710 wei
            else:
                _4643 = mem[_4627]
                mem[_4633 + 64] = _4628
                u = _4627 + 32
                t = _4633 + 96
                while t < _4633 + _4628 + 96:
                    mem[t] = mem[u]
                    _4615 = mem[_3360]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_4633 + 32] = s
                mem[_4633 + 64] = _4628 + 32
                u = _4633 + 32
                t = _4633 + _4628 + 96
                while t < _4633 + _4628 + 128:
                    mem[t] = mem[u]
                    _4615 = mem[_3360]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[_4633 + 64] = _4643
                u = _4628 + _4627 + 64
                t = _4633 + _4628 + 128
                while t < _4643 + _4633 + 96:
                    mem[t] = mem[u]
                    _4615 = mem[_3360]
                    u = u + 32
                    t = t + 32
                    continue 
                mem[64] = floor32(not mem[_4627] + _4643 + -_4628 - 32 + _4643 + _4633 + 31) + 3
                if mem[_4621 + 96] <= 0:
                    call mem[_4621].mem[_4633 + 96 len 4] with:
                         gas gas_remaining - 34710 wei
                        args mem[_4633 + 100 len _4643 - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5920 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5920 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5920 + 36 len 28]
                                call wethAddress.mem[_5920 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5920 + 36 len mem[_5920] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5925 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5925 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5925 + 36 len 28]
                                call wethAddress.mem[_5925 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5925 + 36 len mem[_5925] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        return 0
                    _5791 = mem[_4621 + 64]
                    _5793 = mem[64]
                    mem[mem[64] + 36] = this.address
                    _5803 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_5803 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5803 + 36 len 28]
                    staticcall _5791.mem[_5803 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_5803 + 36 len mem[_5803] - 4]
                    mem[0] = ext_call.return_data[0]
                    if 1 != ext_call.success:
                        if not mem[_4621 + 76 len 20]:
                            mem[_5793 + 68] = 4
                            mem[64] = _5793 + 104
                            mem[_5793 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5793 + 104 len 28]
                            call wethAddress.mem[_5793 + 100 len 4] with:
                                 gas gas_remaining - 34710 wei
                        _4615 = mem[_3360]
                        idx = idx + 1
                        s = 0
                        continue 
                    if not mem[_4621 + 76 len 20]:
                        mem[_5793 + 68] = 4
                        mem[64] = _5793 + 104
                        mem[_5793 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5793 + 104 len 28]
                        call wethAddress.mem[_5793 + 100 len 4] with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 34710 wei
                else:
                    if mem[_4621 + 96] >= s:
                        call mem[_4621].mem[_4633 + 96 len 4] with:
                           value s wei
                             gas gas_remaining - 34710 wei
                            args mem[_4633 + 100 len _4643 - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                                if msg.value:
                                    mem[mem[64] + 36] = msg.value
                                    _5956 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_5956 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5956 + 36 len 28]
                                    call wethAddress.mem[_5956 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_5956 + 36 len mem[_5956] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                                if msg.value:
                                    mem[mem[64] + 36] = msg.value
                                    _5961 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_5961 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5961 + 36 len 28]
                                    call wethAddress.mem[_5961 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_5961 + 36 len mem[_5961] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            return 0
                        _5794 = mem[_4621 + 64]
                        _5799 = mem[64]
                        mem[mem[64] + 36] = this.address
                        _5810 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_5810 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5810 + 36 len 28]
                        staticcall _5794.mem[_5810 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5810 + 36 len mem[_5810] - 4]
                        mem[0] = ext_call.return_data[0]
                        if 1 != ext_call.success:
                            if not mem[_4621 + 76 len 20]:
                                mem[_5799 + 68] = 4
                                mem[64] = _5799 + 104
                                mem[_5799 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5799 + 104 len 28]
                                call wethAddress.mem[_5799 + 100 len 4] with:
                                     gas gas_remaining - 34710 wei
                            _4615 = mem[_3360]
                            idx = idx + 1
                            s = 0
                            continue 
                        if not mem[_4621 + 76 len 20]:
                            mem[_5799 + 68] = 4
                            mem[64] = _5799 + 104
                            mem[_5799 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5799 + 104 len 28]
                            call wethAddress.mem[_5799 + 100 len 4] with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34710 wei
                    else:
                        call mem[_4621].mem[_4633 + 96 len 4] with:
                             gas gas_remaining - 34710 wei
                            args mem[_4633 + 100 len _4643 - 4]
                        if not ext_call.success:
                            if cd[132]:
                                if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                    revert with 0, 'Negative!'
                                if msg.value:
                                    mem[mem[64] + 36] = msg.value
                                    _5966 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_5966 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5966 + 36 len 28]
                                    call wethAddress.mem[_5966 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_5966 + 36 len mem[_5966] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                    revert with 0, 'Negative!'
                                if msg.value:
                                    mem[mem[64] + 36] = msg.value
                                    _5971 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_5971 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5971 + 36 len 28]
                                    call wethAddress.mem[_5971 + 32 len 4] with:
                                         gas gas_remaining - 34710 wei
                                        args mem[_5971 + 36 len mem[_5971] - 4]
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            return 0
                        _5795 = mem[_4621 + 64]
                        _5800 = mem[64]
                        mem[mem[64] + 36] = this.address
                        _5813 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_5813 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5813 + 36 len 28]
                        staticcall _5795.mem[_5813 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5813 + 36 len mem[_5813] - 4]
                        mem[0] = ext_call.return_data[0]
                        if 1 != ext_call.success:
                            if not mem[_4621 + 76 len 20]:
                                mem[_5800 + 68] = 4
                                mem[64] = _5800 + 104
                                mem[_5800 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5800 + 104 len 28]
                                call wethAddress.mem[_5800 + 100 len 4] with:
                                     gas gas_remaining - 34710 wei
                            _4615 = mem[_3360]
                            idx = idx + 1
                            s = 0
                            continue 
                        if not mem[_4621 + 76 len 20]:
                            mem[_5800 + 68] = 4
                            mem[64] = _5800 + 104
                            mem[_5800 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5800 + 104 len 28]
                            call wethAddress.mem[_5800 + 100 len 4] with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 34710 wei
            _4615 = mem[_3360]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if cd[132]:
            if s <= (105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8:
                revert with 0, 'Negative!'
            if msg.value:
                mem[mem[64] + 36] = msg.value
                _4654 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining - 34710 wei
                    args mem[_4654 + 36 len mem[_4654] - 4]
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if s <= (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                revert with 0, 'Negative!'
            if msg.value:
                mem[mem[64] + 36] = msg.value
                _4659 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining - 34710 wei
                    args mem[_4659 + 36 len mem[_4659] - 4]
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return (cd[100] + s)
    _4616 = mem[_3360]
    idx = 0
    s = cd[100]
    while idx < _4616:
        _4618 = mem[64]
        mem[64] = mem[64] + 160
        mem[_4618] = 0
        mem[_4618 + 32] = 0
        mem[_4618 + 64] = 0
        mem[_4618 + 96] = 0
        mem[_4618 + 128] = 0
        require idx < mem[_3360]
        _4623 = mem[(32 * idx) + _3360 + 32]
        require idx < mem[96]
        _4631 = mem[(32 * idx) + 128]
        _4632 = mem[mem[(32 * idx) + _3360 + 32] + 128]
        _4635 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_4635 + 32] = call.data[calldata.size]
        if _4632 + 32 > mem[_4631]:
            mem[_4635 + 32] = s
            if mem[_4623 + 96] <= 0:
                call mem[_4623] with:
                   funct Mask(32, 224, s) >> 224
                     gas gas_remaining - 34710 wei
                    args mem[_4635 + 36 len mem[_4635] - 4]
                if not ext_call.success:
                    if cd[132]:
                        if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                            revert with 0, 'Negative!'
                    else:
                        if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                            revert with 0, 'Negative!'
                    if msg.value:
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining - 34710 wei
                            args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            return 0
                    else:
                        return 0
                _4720 = mem[_4623 + 64]
                mem[_4635 + 100] = this.address
                mem[_4635 + 64] = 36
                mem[64] = _4635 + 132
                mem[_4635 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                staticcall _4720.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args 0 or address(this.address) << 64, 0
            else:
                if mem[_4623 + 96] >= s:
                    call mem[_4623] with:
                       funct Mask(32, 224, s) >> 224
                       value s wei
                         gas gas_remaining - 34710 wei
                        args mem[_4635 + 36 len mem[_4635] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value:
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining - 34710 wei
                                args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _4729 = mem[_4623 + 64]
                    mem[_4635 + 100] = this.address
                    mem[_4635 + 64] = 36
                    mem[64] = _4635 + 132
                    mem[_4635 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                    staticcall _4729.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args 0 or address(this.address) << 64, 0
                else:
                    call mem[_4623] with:
                       funct Mask(32, 224, s) >> 224
                         gas gas_remaining - 34710 wei
                        args mem[_4635 + 36 len mem[_4635] - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                        if msg.value:
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining - 34710 wei
                                args 0 or Mask(224, 32, msg.value) >> 32, uint32(msg.value)
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                return 0
                        else:
                            return 0
                    _4730 = mem[_4623 + 64]
                    mem[_4635 + 100] = this.address
                    mem[_4635 + 64] = 36
                    mem[64] = _4635 + 132
                    mem[_4635 + 96] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(this.address) << 64
                    staticcall _4730.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args 0 or address(this.address) << 64, 0
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not mem[_4623 + 76 len 20]:
                    mem[_4635 + 132] = 4
                    mem[64] = _4635 + 168
                    mem[_4635 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_4635 + 168 len 28]
                    call wethAddress.mem[_4635 + 164 len 4] with:
                         gas gas_remaining - 34710 wei
                _4616 = mem[_3360]
                idx = idx + 1
                s = 0
                continue 
            if not mem[_4623 + 76 len 20]:
                mem[_4635 + 132] = 4
                mem[64] = _4635 + 168
                mem[_4635 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_4635 + 168 len 28]
                call wethAddress.mem[_4635 + 164 len 4] with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34710 wei
        else:
            _4651 = mem[_4631]
            mem[_4635 + 64] = _4632
            u = _4631 + 32
            t = _4635 + 96
            while t < _4635 + _4632 + 96:
                mem[t] = mem[u]
                _4616 = mem[_3360]
                u = u + 32
                t = t + 32
                continue 
            mem[_4635 + 32] = s
            mem[_4635 + 64] = _4632 + 32
            u = _4635 + 32
            t = _4635 + _4632 + 96
            while t < _4635 + _4632 + 128:
                mem[t] = mem[u]
                _4616 = mem[_3360]
                u = u + 32
                t = t + 32
                continue 
            mem[_4635 + 64] = _4651
            u = _4632 + _4631 + 64
            t = _4635 + _4632 + 128
            while t < _4651 + _4635 + 96:
                mem[t] = mem[u]
                _4616 = mem[_3360]
                u = u + 32
                t = t + 32
                continue 
            mem[64] = floor32(not mem[_4631] + _4651 + -_4632 - 32 + _4651 + _4635 + 31) + 3
            if mem[_4623 + 96] <= 0:
                call mem[_4623].mem[_4635 + 96 len 4] with:
                     gas gas_remaining - 34710 wei
                    args mem[_4635 + 100 len _4651 - 4]
                if not ext_call.success:
                    if cd[132]:
                        if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                            revert with 0, 'Negative!'
                        if msg.value:
                            mem[mem[64] + 36] = msg.value
                            _5938 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_5938 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5938 + 36 len 28]
                            call wethAddress.mem[_5938 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_5938 + 36 len mem[_5938] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                            revert with 0, 'Negative!'
                        if msg.value:
                            mem[mem[64] + 36] = msg.value
                            _5943 = mem[64]
                            mem[mem[64]] = 36
                            mem[64] = mem[64] + 68
                            mem[_5943 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5943 + 36 len 28]
                            call wethAddress.mem[_5943 + 32 len 4] with:
                                 gas gas_remaining - 34710 wei
                                args mem[_5943 + 36 len mem[_5943] - 4]
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    return 0
                _5792 = mem[_4623 + 64]
                _5796 = mem[64]
                mem[mem[64] + 36] = this.address
                _5806 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_5806 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5806 + 36 len 28]
                staticcall _5792.mem[_5806 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_5806 + 36 len mem[_5806] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    if not mem[_4623 + 76 len 20]:
                        mem[_5796 + 68] = 4
                        mem[64] = _5796 + 104
                        mem[_5796 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5796 + 104 len 28]
                        call wethAddress.mem[_5796 + 100 len 4] with:
                             gas gas_remaining - 34710 wei
                    _4616 = mem[_3360]
                    idx = idx + 1
                    s = 0
                    continue 
                if not mem[_4623 + 76 len 20]:
                    mem[_5796 + 68] = 4
                    mem[64] = _5796 + 104
                    mem[_5796 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5796 + 104 len 28]
                    call wethAddress.mem[_5796 + 100 len 4] with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34710 wei
            else:
                if mem[_4623 + 96] >= s:
                    call mem[_4623].mem[_4635 + 96 len 4] with:
                       value s wei
                         gas gas_remaining - 34710 wei
                        args mem[_4635 + 100 len _4651 - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5976 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5976 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5976 + 36 len 28]
                                call wethAddress.mem[_5976 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5976 + 36 len mem[_5976] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5981 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5981 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5981 + 36 len 28]
                                call wethAddress.mem[_5981 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5981 + 36 len mem[_5981] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        return 0
                    _5797 = mem[_4623 + 64]
                    _5801 = mem[64]
                    mem[mem[64] + 36] = this.address
                    _5817 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_5817 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5817 + 36 len 28]
                    staticcall _5797.mem[_5817 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_5817 + 36 len mem[_5817] - 4]
                    mem[0] = ext_call.return_data[0]
                    if 1 != ext_call.success:
                        if not mem[_4623 + 76 len 20]:
                            mem[_5801 + 68] = 4
                            mem[64] = _5801 + 104
                            mem[_5801 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5801 + 104 len 28]
                            call wethAddress.mem[_5801 + 100 len 4] with:
                                 gas gas_remaining - 34710 wei
                        _4616 = mem[_3360]
                        idx = idx + 1
                        s = 0
                        continue 
                    if not mem[_4623 + 76 len 20]:
                        mem[_5801 + 68] = 4
                        mem[64] = _5801 + 104
                        mem[_5801 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5801 + 104 len 28]
                        call wethAddress.mem[_5801 + 100 len 4] with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 34710 wei
                else:
                    call mem[_4623].mem[_4635 + 96 len 4] with:
                         gas gas_remaining - 34710 wei
                        args mem[_4635 + 100 len _4651 - 4]
                    if not ext_call.success:
                        if cd[132]:
                            if 0 <= cd[100] + ((105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5986 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5986 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5986 + 36 len 28]
                                call wethAddress.mem[_5986 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5986 + 36 len mem[_5986] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 0 <= cd[100] + (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
                                revert with 0, 'Negative!'
                            if msg.value:
                                mem[mem[64] + 36] = msg.value
                                _5991 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_5991 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 or mem[_5991 + 36 len 28]
                                call wethAddress.mem[_5991 + 32 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[_5991 + 36 len mem[_5991] - 4]
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        return 0
                    _5798 = mem[_4623 + 64]
                    _5802 = mem[64]
                    mem[mem[64] + 36] = this.address
                    _5820 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_5820 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_5820 + 36 len 28]
                    staticcall _5798.mem[_5820 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_5820 + 36 len mem[_5820] - 4]
                    mem[0] = ext_call.return_data[0]
                    if 1 != ext_call.success:
                        if not mem[_4623 + 76 len 20]:
                            mem[_5802 + 68] = 4
                            mem[64] = _5802 + 104
                            mem[_5802 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5802 + 104 len 28]
                            call wethAddress.mem[_5802 + 100 len 4] with:
                                 gas gas_remaining - 34710 wei
                        _4616 = mem[_3360]
                        idx = idx + 1
                        s = 0
                        continue 
                    if not mem[_4623 + 76 len 20]:
                        mem[_5802 + 68] = 4
                        mem[64] = _5802 + 104
                        mem[_5802 + 100] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 or mem[_5802 + 104 len 28]
                        call wethAddress.mem[_5802 + 100 len 4] with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 34710 wei
        _4616 = mem[_3360]
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    if cd[132]:
        if s - ext_call.return_data[0] <= (105000 * block.gasprice) + (5 * 16 * calldata.size * block.gasprice) / 8:
            revert with 0, 'Negative!'
        if msg.value:
            mem[mem[64] + 36] = msg.value
            _4667 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            call wethAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining - 34710 wei
                args mem[_4667 + 36 len mem[_4667] - 4]
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if s - ext_call.return_data[0] <= (21000 * block.gasprice) + (16 * calldata.size * block.gasprice):
            revert with 0, 'Negative!'
        if msg.value:
            mem[mem[64] + 36] = msg.value
            _4672 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            call wethAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining - 34710 wei
                args mem[_4672 + 36 len mem[_4672] - 4]
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return (cd[100] + s - ext_call.return_data[0])
}



}
