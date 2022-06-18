contract main {




// =====================  Runtime code  =====================


address owner;
address sub_dacaa9d1Address;

function owner() payable {
    return owner
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f471c7a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dacaa9d1Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_c931e1f6(?) payable {
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
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if Mask(256, -2, arg1.length):
        mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        if idx >= Mask(254, 0, arg1.length) * 0.25:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[(4 * idx) + 128 len 4]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=4 * Mask(256, -2, arg1.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)]), 
}

function sub_7b6d9c87(?) payable {
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
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _212 = mem[_195 + 32]
                    _214 = mem[_195 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_195]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _212
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _214
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _178 = mem[64]
                mem[mem[64]] = 96
                _194 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128 len 32 * _194] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _194]
                mem[mem[64] + 32] = (32 * _194) + 128
                _322 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_178 + (32 * _194) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_178 + (32 * _194) + 160 len 32 * _322] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _322]
                mem[_178 + 64] = (32 * _194) + (32 * _322) + 160
                _370 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_178 + (32 * _194) + (32 * _322) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_178 + (32 * _194) + (32 * _322) + 192 len 32 * _370] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _370]
                return memory
                  from mem[64]
                   len _178 + (32 * _194) + (32 * _322) + (32 * _370) + -mem[64] + 192
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _217 = mem[_197 + 32]
                _219 = mem[_197 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_197]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _217
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _219
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _180 = mem[64]
            mem[mem[64]] = 96
            _196 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _196] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _196]
            mem[mem[64] + 32] = (32 * _196) + 128
            _323 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_180 + (32 * _196) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_180 + (32 * _196) + 160 len 32 * _323] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _323]
            mem[_180 + 64] = (32 * _196) + (32 * _323) + 160
            _371 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_180 + (32 * _196) + (32 * _323) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_180 + (32 * _196) + (32 * _323) + 192 len 32 * _371] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _371]
            return memory
              from mem[64]
               len _180 + (32 * _196) + (32 * _323) + (32 * _371) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _222 = mem[_199 + 32]
                _224 = mem[_199 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_199]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _222
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _224
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _182 = mem[64]
            mem[mem[64]] = 96
            _198 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _198] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _198]
            mem[mem[64] + 32] = (32 * _198) + 128
            _324 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_182 + (32 * _198) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_182 + (32 * _198) + 160 len 32 * _324] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _324]
            mem[_182 + 64] = (32 * _198) + (32 * _324) + 160
            _372 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_182 + (32 * _198) + (32 * _324) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_182 + (32 * _198) + (32 * _324) + 192 len 32 * _372] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _372]
            return memory
              from mem[64]
               len _182 + (32 * _198) + (32 * _324) + (32 * _372) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _227 = mem[_201 + 32]
            _229 = mem[_201 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_201]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _227
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _229
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _184 = mem[64]
        mem[mem[64]] = 96
        _200 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _200] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _200]
        mem[mem[64] + 32] = (32 * _200) + 128
        _325 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_184 + (32 * _200) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_184 + (32 * _200) + 160 len 32 * _325] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _325]
        mem[_184 + 64] = (32 * _200) + (32 * _325) + 160
        _373 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_184 + (32 * _200) + (32 * _325) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_184 + (32 * _200) + (32 * _325) + 192 len 32 * _373] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _373]
        return memory
          from mem[64]
           len _184 + (32 * _200) + (32 * _325) + (32 * _373) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _232 = mem[_203 + 32]
                _234 = mem[_203 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_203]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _232
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _234
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _186 = mem[64]
            mem[mem[64]] = 96
            _202 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _202] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _202]
            mem[mem[64] + 32] = (32 * _202) + 128
            _326 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_186 + (32 * _202) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_186 + (32 * _202) + 160 len 32 * _326] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _326]
            mem[_186 + 64] = (32 * _202) + (32 * _326) + 160
            _374 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_186 + (32 * _202) + (32 * _326) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_186 + (32 * _202) + (32 * _326) + 192 len 32 * _374] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _374]
            return memory
              from mem[64]
               len _186 + (32 * _202) + (32 * _326) + (32 * _374) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _237 = mem[_205 + 32]
            _239 = mem[_205 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_205]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _237
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _239
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _188 = mem[64]
        mem[mem[64]] = 96
        _204 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _204] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _204]
        mem[mem[64] + 32] = (32 * _204) + 128
        _327 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_188 + (32 * _204) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_188 + (32 * _204) + 160 len 32 * _327] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _327]
        mem[_188 + 64] = (32 * _204) + (32 * _327) + 160
        _375 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_188 + (32 * _204) + (32 * _327) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_188 + (32 * _204) + (32 * _327) + 192 len 32 * _375] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _375]
        return memory
          from mem[64]
           len _188 + (32 * _204) + (32 * _327) + (32 * _375) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
    mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
    if not Mask(256, -2, arg1.length):
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _242 = mem[_207 + 32]
            _244 = mem[_207 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_207]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _242
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _244
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _190 = mem[64]
        mem[mem[64]] = 96
        _206 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _206] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _206]
        mem[mem[64] + 32] = (32 * _206) + 128
        _328 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_190 + (32 * _206) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_190 + (32 * _206) + 160 len 32 * _328] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _328]
        mem[_190 + 64] = (32 * _206) + (32 * _328) + 160
        _376 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_190 + (32 * _206) + (32 * _328) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_190 + (32 * _206) + (32 * _328) + 192 len 32 * _376] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _376]
        return memory
          from mem[64]
           len _190 + (32 * _206) + (32 * _328) + (32 * _376) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        require ext_code.size(sub_dacaa9d1Address)
        staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args (mem[(4 * idx) + 100] << 224)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _247 = mem[_209 + 32]
        _249 = mem[_209 + 96]
        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_209]
        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _247
        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _249
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _192 = mem[64]
    mem[mem[64]] = 96
    _208 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 128 len 32 * _208] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _208]
    mem[mem[64] + 32] = (32 * _208) + 128
    _329 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_192 + (32 * _208) + 128] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_192 + (32 * _208) + 160 len 32 * _329] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _329]
    mem[_192 + 64] = (32 * _208) + (32 * _329) + 160
    _377 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_192 + (32 * _208) + (32 * _329) + 160] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_192 + (32 * _208) + (32 * _329) + 192 len 32 * _377] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _377]
    return memory
      from mem[64]
       len _192 + (32 * _208) + (32 * _329) + (32 * _377) + -mem[64] + 192
}



}
