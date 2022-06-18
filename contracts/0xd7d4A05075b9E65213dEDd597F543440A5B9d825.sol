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
                    _179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _196 = mem[_179 + 32]
                    _198 = mem[_179 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_179]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _198
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _196
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _162 = mem[64]
                mem[mem[64]] = 64
                _178 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len 32 * _178] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _178]
                mem[mem[64] + 32] = (32 * _178) + 96
                _290 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_162 + (32 * _178) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_162 + (32 * _178) + 128 len 32 * _290] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _290]
                return memory
                  from mem[64]
                   len _162 + (32 * _178) + (32 * _290) + -mem[64] + 128
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
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _201 = mem[_181 + 32]
                _203 = mem[_181 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_181]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _203
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _201
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _164 = mem[64]
            mem[mem[64]] = 64
            _180 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len 32 * _180] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _180]
            mem[mem[64] + 32] = (32 * _180) + 96
            _291 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_164 + (32 * _180) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_164 + (32 * _180) + 128 len 32 * _291] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _291]
            return memory
              from mem[64]
               len _164 + (32 * _180) + (32 * _291) + -mem[64] + 128
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
                _183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _206 = mem[_183 + 32]
                _208 = mem[_183 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_183]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _208
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _206
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _166 = mem[64]
            mem[mem[64]] = 64
            _182 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len 32 * _182] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _182]
            mem[mem[64] + 32] = (32 * _182) + 96
            _292 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_166 + (32 * _182) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_166 + (32 * _182) + 128 len 32 * _292] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _292]
            return memory
              from mem[64]
               len _166 + (32 * _182) + (32 * _292) + -mem[64] + 128
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
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _211 = mem[_185 + 32]
            _213 = mem[_185 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_185]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _213
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _211
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _168 = mem[64]
        mem[mem[64]] = 64
        _184 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len 32 * _184] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _184]
        mem[mem[64] + 32] = (32 * _184) + 96
        _293 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_168 + (32 * _184) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_168 + (32 * _184) + 128 len 32 * _293] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _293]
        return memory
          from mem[64]
           len _168 + (32 * _184) + (32 * _293) + -mem[64] + 128
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
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _216 = mem[_187 + 32]
                _218 = mem[_187 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_187]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _218
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _216
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _170 = mem[64]
            mem[mem[64]] = 64
            _186 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len 32 * _186] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _186]
            mem[mem[64] + 32] = (32 * _186) + 96
            _294 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_170 + (32 * _186) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_170 + (32 * _186) + 128 len 32 * _294] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _294]
            return memory
              from mem[64]
               len _170 + (32 * _186) + (32 * _294) + -mem[64] + 128
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
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _221 = mem[_189 + 32]
            _223 = mem[_189 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_189]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _223
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _221
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 64
        _188 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len 32 * _188] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _188]
        mem[mem[64] + 32] = (32 * _188) + 96
        _295 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_172 + (32 * _188) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_172 + (32 * _188) + 128 len 32 * _295] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _295]
        return memory
          from mem[64]
           len _172 + (32 * _188) + (32 * _295) + -mem[64] + 128
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
            _191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _226 = mem[_191 + 32]
            _228 = mem[_191 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_191]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _228
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _226
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _174 = mem[64]
        mem[mem[64]] = 64
        _190 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len 32 * _190] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _190]
        mem[mem[64] + 32] = (32 * _190) + 96
        _296 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_174 + (32 * _190) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_174 + (32 * _190) + 128 len 32 * _296] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _296]
        return memory
          from mem[64]
           len _174 + (32 * _190) + (32 * _296) + -mem[64] + 128
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
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _231 = mem[_193 + 32]
        _233 = mem[_193 + 96]
        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_193]
        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _233
        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _231
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _176 = mem[64]
    mem[mem[64]] = 64
    _192 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 96 len 32 * _192] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _192]
    mem[mem[64] + 32] = (32 * _192) + 96
    _297 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_176 + (32 * _192) + 96] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_176 + (32 * _192) + 128 len 32 * _297] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _297]
    return memory
      from mem[64]
       len _176 + (32 * _192) + (32 * _297) + -mem[64] + 128
}



}
