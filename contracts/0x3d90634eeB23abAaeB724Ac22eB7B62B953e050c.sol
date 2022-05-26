contract main {




// =====================  Runtime code  =====================


#
#  - sub_3d45af99(?)
#  - sub_54734cb5(?)
#  - sub_e9b80bd2(?)
#
address owner;
address operatorAddress;
mapping of address stor2;
mapping of address stor3;
uint256 stor4;

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperatorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new operator is the zero address'
    emit OperatorshipTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function sub_4e6ea1cd(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if var254002 >= arg5.length / 2:
        return 0
    if var266001 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    # nil
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    if arg2 > ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args operatorAddress, ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args operatorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_59f0f688(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor2[idx] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = idx
        mem[32] = 3
        stor3[idx] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor4 = ('cd', 4).length
}

function sub_de23af71(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not arg1:
        return 0
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    require ext_code.size(address(arg4))
    if address(arg2) < address(arg3):
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4f49e63a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if arg1:
        idx = 0
        while idx < stor4:
            mem[0] = idx
            mem[32] = 2
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_33]
            require mem[_33] == mem[_33 + 12 len 20]
            if mem[_33 + 12 len 20]:
                mem[0] = idx
                mem[32] = 3
                if arg1:
                    require ext_code.size(address(_34))
                    staticcall address(_34).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _39 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _40 = mem[_39]
                    require mem[_39] == mem[_39 + 18 len 14]
                    _41 = mem[_39 + 32]
                    require mem[_39 + 32] == mem[_39 + 50 len 14]
                    require mem[_39 + 64] == mem[_39 + 92 len 4]
                    if mem[_39 + 18 len 14]:
                        if mem[_39 + 50 len 14]:
                            mem[mem[64] + 4] = arg1
                            if address(arg2) < address(arg3):
                                mem[mem[64] + 36] = Mask(112, 0, _40)
                                mem[mem[64] + 68] = Mask(112, 0, _41)
                                require ext_code.size(stor3[idx])
                                staticcall stor3[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg1, _40 << 144, Mask(112, 0, _41)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _47 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_47] == mem[_47]
                                if mem[_47] > 0:
                                    mem[0] = idx
                                    mem[32] = 3
                            else:
                                mem[mem[64] + 36] = Mask(112, 0, _41)
                                mem[mem[64] + 68] = Mask(112, 0, _40)
                                require ext_code.size(stor3[idx])
                                staticcall stor3[idx].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg1, _41 << 144, Mask(112, 0, _40)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _48 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_48] == mem[_48]
                                if mem[_48] > 0:
                                    mem[0] = idx
                                    mem[32] = 3
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_7dc09a8e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
            revert with 'NH{q', 50
        _149 = mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
            revert with 'NH{q', 50
        _153 = mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _155 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        if not s:
            return 0
        require ext_code.size(mem[(32 * idx) + floor32(('cd', 36).length) + 141 len 20])
        staticcall mem[(32 * idx) + floor32(('cd', 36).length) + 141 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _161 = mem[_160]
        require mem[_160] == mem[_160 + 18 len 14]
        _164 = mem[_160 + 32]
        require mem[_160 + 32] == mem[_160 + 50 len 14]
        require mem[_160 + 64] == mem[_160 + 92 len 4]
        if not mem[_160 + 18 len 14]:
            return 0
        if not mem[_160 + 50 len 14]:
            return 0
        mem[mem[64] + 4] = s
        if address(_149) < address(_153):
            mem[mem[64] + 36] = Mask(112, 0, _161)
            mem[mem[64] + 68] = Mask(112, 0, _164)
            require ext_code.size(address(_155))
            staticcall address(_155).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args s, _161 << 144, Mask(112, 0, _164)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_174] == mem[_174]
            if not mem[_174]:
                return 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_174]
            continue 
        mem[mem[64] + 36] = Mask(112, 0, _164)
        mem[mem[64] + 68] = Mask(112, 0, _161)
        require ext_code.size(address(_155))
        staticcall address(_155).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args s, _164 << 144, Mask(112, 0, _161)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_175] == mem[_175]
        if not mem[_175]:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_175]
        continue 
    return s
}

function sub_0ae36271(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'routers must match pairs'
    if ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if ('cd', 36).length + 1 != ('cd', 100).length:
        revert with 0, 'routers must match tokens'
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] != mem[(32 * ('cd', 100).length - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20]:
        revert with 0, 'tokens must be a loop'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
            revert with 'NH{q', 50
        _209 = mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
            revert with 'NH{q', 50
        _213 = mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _215 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        if not s:
            return 0
        require ext_code.size(mem[(32 * idx) + floor32(('cd', 36).length) + 141 len 20])
        staticcall mem[(32 * idx) + floor32(('cd', 36).length) + 141 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _221 = mem[_220]
        require mem[_220] == mem[_220 + 18 len 14]
        _223 = mem[_220 + 32]
        require mem[_220 + 32] == mem[_220 + 50 len 14]
        require mem[_220 + 64] == mem[_220 + 92 len 4]
        if not mem[_220 + 18 len 14]:
            return 0
        if not mem[_220 + 50 len 14]:
            return 0
        mem[mem[64] + 4] = s
        if address(_209) < address(_213):
            mem[mem[64] + 36] = Mask(112, 0, _221)
            mem[mem[64] + 68] = Mask(112, 0, _223)
            require ext_code.size(address(_215))
            staticcall address(_215).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args s, _221 << 144, Mask(112, 0, _223)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_234] == mem[_234]
            if not mem[_234]:
                return 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_234]
            continue 
        mem[mem[64] + 36] = Mask(112, 0, _223)
        mem[mem[64] + 68] = Mask(112, 0, _221)
        require ext_code.size(address(_215))
        staticcall address(_215).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args s, _223 << 144, Mask(112, 0, _221)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_235] == mem[_235]
        if not mem[_235]:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_235]
        continue 
    return s
}



}
