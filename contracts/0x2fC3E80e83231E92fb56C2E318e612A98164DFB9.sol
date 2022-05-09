contract main {




// =====================  Runtime code  =====================


#
#  - sub_3d45af99(?)
#  - sub_e9b80bd2(?)
#
address owner;
address operatorAddress;

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

function sub_395b8659(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _40 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _40 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'view failed'
                require mem[96] >= 32
                require mem[128] == mem[128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[128]
            else:
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_48] = return_data.size
                mem[_48 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'view failed'
                require return_data.size >= 32
                require mem[_48 + 32] == mem[_48 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_48 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _41 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _41 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'view failed'
                require mem[96] >= 32
                require mem[128] == mem[128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[128]
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_49] = return_data.size
                mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'view failed'
                require return_data.size >= 32
                require mem[_49 + 32] == mem[_49 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_49 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_0ae36271(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
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
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
        revert with 0, 'tokens must be a loop'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _28 = mem[_27]
        require mem[_27] == mem[_27 + 18 len 14]
        _29 = mem[_27 + 32]
        require mem[_27 + 32] == mem[_27 + 50 len 14]
        require mem[_27 + 64] == mem[_27 + 92 len 4]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = s
        if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
            mem[mem[64] + 36] = Mask(112, 0, _28)
            mem[mem[64] + 68] = Mask(112, 0, _29)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args s, _28 << 144, Mask(112, 0, _29)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_35] == mem[_35]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_35]
            continue 
        mem[mem[64] + 36] = Mask(112, 0, _29)
        mem[mem[64] + 68] = Mask(112, 0, _28)
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args s, _29 << 144, Mask(112, 0, _28)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_36] == mem[_36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_36]
        continue 
    return s
}

function sub_829b612d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
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
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
        revert with 0, 'tokens must be a loop'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1017 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1018 = mem[_1017]
        require mem[_1017] == mem[_1017 + 18 len 14]
        _1019 = mem[_1017 + 32]
        require mem[_1017 + 32] == mem[_1017 + 50 len 14]
        require mem[_1017 + 64] == mem[_1017 + 92 len 4]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = s
        if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
            mem[mem[64] + 36] = Mask(112, 0, _1018)
            mem[mem[64] + 68] = Mask(112, 0, _1019)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args s, _1018 << 144, Mask(112, 0, _1019)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1029 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1029] == mem[_1029]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_1029]
            continue 
        mem[mem[64] + 36] = Mask(112, 0, _1019)
        mem[mem[64] + 68] = Mask(112, 0, _1018)
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args s, _1019 << 144, Mask(112, 0, _1018)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1030 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1030] == mem[_1030]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_1030]
        continue 
    if s <= cd[4]:
        return 0
    if var311017 >= 10:
        return 0
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[mem[64] + 4] = address(('cd', 68)[0])
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1023 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1023] == bool(mem[_1023])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if 0 >= ('cd', 68).length - 1:
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1035 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1036 = mem[_1035]
        require mem[_1035] == mem[_1035 + 18 len 14]
        _1037 = mem[_1035 + 32]
        require mem[_1035 + 32] == mem[_1035 + 50 len 14]
        require mem[_1035 + 64] == mem[_1035 + 92 len 4]
        mem[mem[64] + 4] = cd[4]
        if address(('cd', 100)[0]) < address(('cd', 100)[1]):
            mem[mem[64] + 36] = Mask(112, 0, _1036)
            mem[mem[64] + 68] = Mask(112, 0, _1037)
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args cd[4], _1036 << 144, Mask(112, 0, _1037)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1049 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1049] == mem[_1049]
            # nil
        else:
            mem[mem[64] + 36] = Mask(112, 0, _1037)
            mem[mem[64] + 68] = Mask(112, 0, _1036)
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args cd[4], _1037 << 144, Mask(112, 0, _1036)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1050 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1050] == mem[_1050]
            # nil
    else:
        if 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[1] == address(('cd', 68)[1])
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1041 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1042 = mem[_1041]
        require mem[_1041] == mem[_1041 + 18 len 14]
        _1045 = mem[_1041 + 32]
        require mem[_1041 + 32] == mem[_1041 + 50 len 14]
        require mem[_1041 + 64] == mem[_1041 + 92 len 4]
        mem[mem[64] + 4] = cd[4]
        if address(('cd', 100)[0]) < address(('cd', 100)[1]):
            mem[mem[64] + 36] = Mask(112, 0, _1042)
            mem[mem[64] + 68] = Mask(112, 0, _1045)
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args cd[4], _1042 << 144, Mask(112, 0, _1045)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1065] == mem[_1065]
            # nil
        else:
            mem[mem[64] + 36] = Mask(112, 0, _1045)
            mem[mem[64] + 68] = Mask(112, 0, _1042)
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args cd[4], _1045 << 144, Mask(112, 0, _1042)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1066 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1066] == mem[_1066]
            # nil
}

function sub_544b36ca(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
            mem[_120] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_120 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[_120 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 30
            mem[_122 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: call to non-contract'
            _129 = mem[64]
            s = 0
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                mem[_129 + s] = mem[_120 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                call this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[128]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _268 = mem[_122]
                    mem[mem[64] + 36] = mem[_122]
                    idx = 0
                    while idx < _268:
                        mem[_248 + idx + 68] = mem[_122 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_268) > _268:
                        mem[_248 + _268 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _248 + ceil32(_268) + -mem[64] + 68
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_238] = return_data.size
                mem[_238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_238 + 32] == mem[_238 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_238 + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _269 = mem[_122]
                mem[mem[64] + 36] = mem[_122]
                idx = 0
                while idx < _269:
                    mem[_250 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_269) > _269:
                    mem[_250 + _269 + 68] = 0
                revert with memory
                  from mem[64]
                   len _250 + ceil32(_269) + -mem[64] + 68
            mem[_129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            call this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == mem[128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[128]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _274 = mem[_122]
                mem[mem[64] + 36] = mem[_122]
                idx = 0
                while idx < _274:
                    mem[_260 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_274) > _274:
                    mem[_260 + _274 + 68] = 0
                revert with memory
                  from mem[64]
                   len _260 + ceil32(_274) + -mem[64] + 68
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_242] = return_data.size
            mem[_242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_242 + 32] == mem[_242 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_242 + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _275 = mem[_122]
            mem[mem[64] + 36] = mem[_122]
            idx = 0
            while idx < _275:
                mem[_262 + idx + 68] = mem[_122 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_275) > _275:
                mem[_262 + _275 + 68] = 0
            revert with memory
              from mem[64]
               len _262 + ceil32(_275) + -mem[64] + 68
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
            mem[_121] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_121 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[_121 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 30
            mem[_123 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: call to non-contract'
            _132 = mem[64]
            s = 0
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                mem[_132 + s] = mem[_121 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                call this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[128]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _254 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _270 = mem[_123]
                    mem[mem[64] + 36] = mem[_123]
                    idx = 0
                    while idx < _270:
                        mem[_254 + idx + 68] = mem[_123 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_270) > _270:
                        mem[_254 + _270 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _254 + ceil32(_270) + -mem[64] + 68
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_240] = return_data.size
                mem[_240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_240 + 32] == mem[_240 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_240 + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _271 = mem[_123]
                mem[mem[64] + 36] = mem[_123]
                idx = 0
                while idx < _271:
                    mem[_256 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_271) > _271:
                    mem[_256 + _271 + 68] = 0
                revert with memory
                  from mem[64]
                   len _256 + ceil32(_271) + -mem[64] + 68
            mem[_132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            call this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == mem[128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[128]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _278 = mem[_123]
                mem[mem[64] + 36] = mem[_123]
                idx = 0
                while idx < _278:
                    mem[_264 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_278) > _278:
                    mem[_264 + _278 + 68] = 0
                revert with memory
                  from mem[64]
                   len _264 + ceil32(_278) + -mem[64] + 68
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_243] = return_data.size
            mem[_243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_243 + 32] == mem[_243 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_243 + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _279 = mem[_123]
            mem[mem[64] + 36] = mem[_123]
            idx = 0
            while idx < _279:
                mem[_266 + idx + 68] = mem[_123 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_279) > _279:
                mem[_266 + _279 + 68] = 0
            revert with memory
              from mem[64]
               len _266 + ceil32(_279) + -mem[64] + 68
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_11a7b7fb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = 1
    t = 1
    u = cd[4]
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _157 = mem[_155]
        require mem[_155] == mem[_155 + 18 len 14]
        _160 = mem[_155 + 32]
        require mem[_155 + 32] == mem[_155 + 50 len 14]
        require mem[_155 + 64] == mem[_155 + 92 len 4]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = u
        if address(cd[((32 * idx) + cd[100] + 36)]) < address(cd[((32 * idx + 1) + cd[100] + 36)]):
            mem[mem[64] + 36] = Mask(112, 0, _157)
            mem[mem[64] + 68] = Mask(112, 0, _160)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args u, _157 << 144, Mask(112, 0, _160)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == mem[_169]
            if s == 1:
                if mem[_169] > Mask(112, 0, _160):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _160) < mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157):
                    if u <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not u:
                        revert with 'NH{q', 18
                    if not 0 / u:
                        if Mask(112, 0, _160) - mem[_169] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _160) - mem[_169]:
                            revert with 'NH{q', 18
                        if mem[_169] > Mask(112, 0, _160):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(112, 0, _160) < mem[_169]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _160) - mem[_169]:
                            if Mask(112, 0, _160) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _160):
                                revert with 'NH{q', 18
                            if not 0 / Mask(112, 0, _160):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = Mask(112, 0, _157)
                                u = mem[_169]
                                continue 
                            if 0 / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                                revert with 'NH{q', 17
                            if not 0 / Mask(112, 0, _160):
                                revert with 'NH{q', 18
                            if 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                            t = Mask(112, 0, _157)
                            u = mem[_169]
                            continue 
                        if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _160) - mem[_169]:
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _160) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = Mask(112, 0, _157)
                            u = mem[_169]
                            continue 
                        if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                            revert with 'NH{q', 17
                        if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if 0 / u and mem[_169] > -1 / 0 / u:
                        revert with 'NH{q', 17
                    if not 0 / u:
                        revert with 'NH{q', 18
                    if 0 / u * mem[_169] / 0 / u != mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _160) - mem[_169] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if mem[_169] > Mask(112, 0, _160):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _160) < mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        if Mask(112, 0, _160) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _160):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = Mask(112, 0, _157)
                            u = mem[_169]
                            continue 
                        if 0 / Mask(112, 0, _160) and 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                    t = Mask(112, 0, _157)
                    u = mem[_169]
                    continue 
                if Mask(112, 0, _157) and 1000 > -1 / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _157) / Mask(112, 0, _157) != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if u <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not u:
                    revert with 'NH{q', 18
                if not 1000 * Mask(112, 0, _157) / u:
                    if Mask(112, 0, _160) - mem[_169] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if mem[_169] > Mask(112, 0, _160):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _160) < mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        if Mask(112, 0, _160) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _160):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = Mask(112, 0, _157)
                            u = mem[_169]
                            continue 
                        if 0 / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                    t = Mask(112, 0, _157)
                    u = mem[_169]
                    continue 
                if 1000 * Mask(112, 0, _157) / u and mem[_169] > -1 / 1000 * Mask(112, 0, _157) / u:
                    revert with 'NH{q', 17
                if not 1000 * Mask(112, 0, _157) / u:
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _157) / u * mem[_169] / 1000 * Mask(112, 0, _157) / u != mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _160) - mem[_169] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if mem[_169] > Mask(112, 0, _160):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _160) < mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _157)
                        u = mem[_169]
                        continue 
                    if 0 / Mask(112, 0, _160) and 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                    t = Mask(112, 0, _157)
                    u = mem[_169]
                    continue 
                if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _160) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = Mask(112, 0, _157)
                    u = mem[_169]
                    continue 
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                t = Mask(112, 0, _157)
                u = mem[_169]
                continue 
            if s > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if 1000 * s / 1000 != s:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if mem[_169] > Mask(112, 0, _160):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _160) < mem[_169]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157):
                if u <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not u:
                    revert with 'NH{q', 18
                if not 0 / u:
                    if Mask(112, 0, _160) - mem[_169] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if mem[_169] > Mask(112, 0, _160):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _160) < mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        if Mask(112, 0, _160) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _160):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = t
                            u = mem[_169]
                            continue 
                        if 0 / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _160):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                        t = t
                        u = mem[_169]
                        continue 
                    if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _160) - mem[_169]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = t
                        u = mem[_169]
                        continue 
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                    t = t
                    u = mem[_169]
                    continue 
                if 0 / u and mem[_169] > -1 / 0 / u:
                    revert with 'NH{q', 17
                if not 0 / u:
                    revert with 'NH{q', 18
                if 0 / u * mem[_169] / 0 / u != mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _160) - mem[_169] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if mem[_169] > Mask(112, 0, _160):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _160) < mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = t
                        u = mem[_169]
                        continue 
                    if 0 / Mask(112, 0, _160) and 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                    t = t
                    u = mem[_169]
                    continue 
                if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _160) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_169]
                    continue 
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                t = t
                u = mem[_169]
                continue 
            if Mask(112, 0, _157) and 1000 > -1 / Mask(112, 0, _157):
                revert with 'NH{q', 17
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _157) / Mask(112, 0, _157) != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if u <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not u:
                revert with 'NH{q', 18
            if not 1000 * Mask(112, 0, _157) / u:
                if Mask(112, 0, _160) - mem[_169] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if mem[_169] > Mask(112, 0, _160):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _160) < mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    if Mask(112, 0, _160) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _160):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = t
                        u = mem[_169]
                        continue 
                    if 0 / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _160):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                    t = t
                    u = mem[_169]
                    continue 
                if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _160) - mem[_169]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _160) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_169]
                    continue 
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 0 / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 0 / Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 0 / Mask(112, 0, _160) - mem[_169]
                t = t
                u = mem[_169]
                continue 
            if 1000 * Mask(112, 0, _157) / u and mem[_169] > -1 / 1000 * Mask(112, 0, _157) / u:
                revert with 'NH{q', 17
            if not 1000 * Mask(112, 0, _157) / u:
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _157) / u * mem[_169] / 1000 * Mask(112, 0, _157) / u != mem[_169]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _160) - mem[_169] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _160) - mem[_169]:
                revert with 'NH{q', 18
            if mem[_169] > Mask(112, 0, _160):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _160) < mem[_169]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _160) - mem[_169]:
                if Mask(112, 0, _160) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if not 0 / Mask(112, 0, _160):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_169]
                    continue 
                if 0 / Mask(112, 0, _160) and 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / 0 / Mask(112, 0, _160):
                    revert with 'NH{q', 17
                if not 0 / Mask(112, 0, _160):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / 0 / Mask(112, 0, _160) != 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
                t = t
                u = mem[_169]
                continue 
            if Mask(112, 0, _160) - mem[_169] and Mask(112, 0, _160) - mem[_169] > -1 / Mask(112, 0, _160) - mem[_169]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _160) - mem[_169]:
                revert with 'NH{q', 18
            if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) - mem[_169] != Mask(112, 0, _160) - mem[_169]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _160) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _160):
                revert with 'NH{q', 18
            if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = t
                u = mem[_169]
                continue 
            if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) and 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] > -1 / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160):
                revert with 'NH{q', 18
            if (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169] / (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) != 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]:
                revert with 0, 'SafeMath: multiplication overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (Mask(112, 0, _160) * Mask(112, 0, _160)) - (mem[_169] * Mask(112, 0, _160)) - (Mask(112, 0, _160) * mem[_169]) + (mem[_169] * mem[_169]) / Mask(112, 0, _160) * 1000 * Mask(112, 0, _157) / u * mem[_169] / Mask(112, 0, _160) - mem[_169]
            t = t
            u = mem[_169]
            continue 
        mem[mem[64] + 36] = Mask(112, 0, _160)
        mem[mem[64] + 68] = Mask(112, 0, _157)
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args u, _160 << 144, Mask(112, 0, _157)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_170] == mem[_170]
        if s == 1:
            if mem[_170] > Mask(112, 0, _157):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _157) < mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _160):
                if u <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not u:
                    revert with 'NH{q', 18
                if not 0 / u:
                    if Mask(112, 0, _157) - mem[_170] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _157) - mem[_170]:
                        revert with 'NH{q', 18
                    if mem[_170] > Mask(112, 0, _157):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _157) < mem[_170]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _157) - mem[_170]:
                        if Mask(112, 0, _157) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _157):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _157):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = Mask(112, 0, _160)
                            u = mem[_170]
                            continue 
                        if 0 / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _157):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                        t = Mask(112, 0, _160)
                        u = mem[_170]
                        continue 
                    if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _157) - mem[_170]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _157) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _160)
                        u = mem[_170]
                        continue 
                    if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if 0 / u and mem[_170] > -1 / 0 / u:
                    revert with 'NH{q', 17
                if not 0 / u:
                    revert with 'NH{q', 18
                if 0 / u * mem[_170] / 0 / u != mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _157) - mem[_170] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if mem[_170] > Mask(112, 0, _157):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _157) < mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    if Mask(112, 0, _157) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _157):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _160)
                        u = mem[_170]
                        continue 
                    if 0 / Mask(112, 0, _157) and 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
                t = Mask(112, 0, _160)
                u = mem[_170]
                continue 
            if Mask(112, 0, _160) and 1000 > -1 / Mask(112, 0, _160):
                revert with 'NH{q', 17
            if not Mask(112, 0, _160):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _160) / Mask(112, 0, _160) != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if u <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not u:
                revert with 'NH{q', 18
            if not 1000 * Mask(112, 0, _160) / u:
                if Mask(112, 0, _157) - mem[_170] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if mem[_170] > Mask(112, 0, _157):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _157) < mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    if Mask(112, 0, _157) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _157):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = Mask(112, 0, _160)
                        u = mem[_170]
                        continue 
                    if 0 / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                t = Mask(112, 0, _160)
                u = mem[_170]
                continue 
            if 1000 * Mask(112, 0, _160) / u and mem[_170] > -1 / 1000 * Mask(112, 0, _160) / u:
                revert with 'NH{q', 17
            if not 1000 * Mask(112, 0, _160) / u:
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _160) / u * mem[_170] / 1000 * Mask(112, 0, _160) / u != mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) - mem[_170] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if mem[_170] > Mask(112, 0, _157):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _157) < mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not 0 / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = Mask(112, 0, _160)
                    u = mem[_170]
                    continue 
                if 0 / Mask(112, 0, _157) and 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
                t = Mask(112, 0, _160)
                u = mem[_170]
                continue 
            if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = Mask(112, 0, _160)
                u = mem[_170]
                continue 
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
            t = Mask(112, 0, _160)
            u = mem[_170]
            continue 
        if s > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 1000 * s / 1000 != s:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _160) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, _160):
            revert with 'NH{q', 18
        if mem[_170] > Mask(112, 0, _157):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, _157) < mem[_170]:
            revert with 'NH{q', 17
        if not Mask(112, 0, _160):
            if u <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not u:
                revert with 'NH{q', 18
            if not 0 / u:
                if Mask(112, 0, _157) - mem[_170] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if mem[_170] > Mask(112, 0, _157):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _157) < mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    if Mask(112, 0, _157) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _157):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = t
                        u = mem[_170]
                        continue 
                    if 0 / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _157):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                    t = t
                    u = mem[_170]
                    continue 
                if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _157) - mem[_170]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_170]
                    continue 
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                t = t
                u = mem[_170]
                continue 
            if 0 / u and mem[_170] > -1 / 0 / u:
                revert with 'NH{q', 17
            if not 0 / u:
                revert with 'NH{q', 18
            if 0 / u * mem[_170] / 0 / u != mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) - mem[_170] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if mem[_170] > Mask(112, 0, _157):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _157) < mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not 0 / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_170]
                    continue 
                if 0 / Mask(112, 0, _157) and 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
                t = t
                u = mem[_170]
                continue 
            if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = t
                u = mem[_170]
                continue 
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
            t = t
            u = mem[_170]
            continue 
        if Mask(112, 0, _160) and 1000 > -1 / Mask(112, 0, _160):
            revert with 'NH{q', 17
        if not Mask(112, 0, _160):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, _160) / Mask(112, 0, _160) != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if u <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not u:
            revert with 'NH{q', 18
        if not 1000 * Mask(112, 0, _160) / u:
            if Mask(112, 0, _157) - mem[_170] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if mem[_170] > Mask(112, 0, _157):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _157) < mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                if Mask(112, 0, _157) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if not 0 / Mask(112, 0, _157):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = t
                    u = mem[_170]
                    continue 
                if 0 / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 17
                if not 0 / Mask(112, 0, _157):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
                t = t
                u = mem[_170]
                continue 
            if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _157) - mem[_170]:
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _157) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = t
                u = mem[_170]
                continue 
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 0 / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
                revert with 'NH{q', 18
            if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 0 / Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 0 / Mask(112, 0, _157) - mem[_170]
            t = t
            u = mem[_170]
            continue 
        if 1000 * Mask(112, 0, _160) / u and mem[_170] > -1 / 1000 * Mask(112, 0, _160) / u:
            revert with 'NH{q', 17
        if not 1000 * Mask(112, 0, _160) / u:
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, _160) / u * mem[_170] / 1000 * Mask(112, 0, _160) / u != mem[_170]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _157) - mem[_170] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, _157) - mem[_170]:
            revert with 'NH{q', 18
        if mem[_170] > Mask(112, 0, _157):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, _157) < mem[_170]:
            revert with 'NH{q', 17
        if not Mask(112, 0, _157) - mem[_170]:
            if Mask(112, 0, _157) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _157):
                revert with 'NH{q', 18
            if not 0 / Mask(112, 0, _157):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = t
                u = mem[_170]
                continue 
            if 0 / Mask(112, 0, _157) and 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / 0 / Mask(112, 0, _157):
                revert with 'NH{q', 17
            if not 0 / Mask(112, 0, _157):
                revert with 'NH{q', 18
            if 0 / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / 0 / Mask(112, 0, _157) != 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
                revert with 0, 'SafeMath: multiplication overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
            t = t
            u = mem[_170]
            continue 
        if Mask(112, 0, _157) - mem[_170] and Mask(112, 0, _157) - mem[_170] > -1 / Mask(112, 0, _157) - mem[_170]:
            revert with 'NH{q', 17
        if not Mask(112, 0, _157) - mem[_170]:
            revert with 'NH{q', 18
        if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) - mem[_170] != Mask(112, 0, _157) - mem[_170]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _157) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, _157):
            revert with 'NH{q', 18
        if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0
            t = t
            u = mem[_170]
            continue 
        if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) and 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] > -1 / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
            revert with 'NH{q', 17
        if not (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157):
            revert with 'NH{q', 18
        if (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170] / (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) != 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]:
            revert with 0, 'SafeMath: multiplication overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = (Mask(112, 0, _157) * Mask(112, 0, _157)) - (mem[_170] * Mask(112, 0, _157)) - (Mask(112, 0, _157) * mem[_170]) + (mem[_170] * mem[_170]) / Mask(112, 0, _157) * 1000 * Mask(112, 0, _160) / u * mem[_170] / Mask(112, 0, _157) - mem[_170]
        t = t
        u = mem[_170]
        continue 
    if s > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * s / 1000 != s:
        revert with 0, 'SafeMath: multiplication overflow'
    if t <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not t:
        revert with 'NH{q', 18
    return u, 1000 * s / t / 1000
}

function sub_f777535f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    while idx < 2:
        s = 0
        t = 1
        u = 1
        v = cd[4]
        while s < ('cd', 68).length:
            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
            require ext_code.size(address(cd[((32 * s) + cd[68] + 36)]))
            staticcall address(cd[((32 * s) + cd[68] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _165 = mem[_163]
            require mem[_163] == mem[_163 + 18 len 14]
            _168 = mem[_163 + 32]
            require mem[_163 + 32] == mem[_163 + 50 len 14]
            require mem[_163 + 64] == mem[_163 + 92 len 4]
            if s > -2:
                revert with 'NH{q', 17
            if s + 1 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
            if s >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
            if s >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
            mem[mem[64] + 4] = v
            if address(cd[((32 * s) + cd[100] + 36)]) < address(cd[((32 * s + 1) + cd[100] + 36)]):
                mem[mem[64] + 36] = Mask(112, 0, _165)
                mem[mem[64] + 68] = Mask(112, 0, _168)
                require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                staticcall address(cd[((32 * s) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args v, _165 << 144, Mask(112, 0, _168)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_258] == mem[_258]
                if t == 1:
                    if mem[_258] > Mask(112, 0, _168):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _168) < mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165):
                        if v <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not v:
                            revert with 'NH{q', 18
                        if not 0 / v:
                            if Mask(112, 0, _168) - mem[_258] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _168) - mem[_258]:
                                revert with 'NH{q', 18
                            if mem[_258] > Mask(112, 0, _168):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if Mask(112, 0, _168) < mem[_258]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, _168) - mem[_258]:
                                if Mask(112, 0, _168) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not Mask(112, 0, _168):
                                    revert with 'NH{q', 18
                                if not 0 / Mask(112, 0, _168):
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = 0
                                    u = Mask(112, 0, _165)
                                    v = mem[_258]
                                    continue 
                                if 0 / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                                    revert with 'NH{q', 17
                                if not 0 / Mask(112, 0, _168):
                                    revert with 'NH{q', 18
                                if 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                                u = Mask(112, 0, _165)
                                v = mem[_258]
                                continue 
                            if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, _168) - mem[_258]:
                                revert with 'NH{q', 18
                            if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if Mask(112, 0, _168) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0
                                u = Mask(112, 0, _165)
                                v = mem[_258]
                                continue 
                            if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                                revert with 'NH{q', 17
                            if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if 0 / v and mem[_258] > -1 / 0 / v:
                            revert with 'NH{q', 17
                        if not 0 / v:
                            revert with 'NH{q', 18
                        if 0 / v * mem[_258] / 0 / v != mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _168) - mem[_258] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if mem[_258] > Mask(112, 0, _168):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(112, 0, _168) < mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            if Mask(112, 0, _168) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if not 0 / Mask(112, 0, _168):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0
                                u = Mask(112, 0, _165)
                                v = mem[_258]
                                continue 
                            if 0 / Mask(112, 0, _168) and 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 17
                            if not 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if 0 / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0 / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                        u = Mask(112, 0, _165)
                        v = mem[_258]
                        continue 
                    if Mask(112, 0, _165) and 1000 > -1 / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if 1000 * Mask(112, 0, _165) / Mask(112, 0, _165) != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if v <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not v:
                        revert with 'NH{q', 18
                    if not 1000 * Mask(112, 0, _165) / v:
                        if Mask(112, 0, _168) - mem[_258] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if mem[_258] > Mask(112, 0, _168):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(112, 0, _168) < mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            if Mask(112, 0, _168) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if not 0 / Mask(112, 0, _168):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0
                                u = Mask(112, 0, _165)
                                v = mem[_258]
                                continue 
                            if 0 / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 17
                            if not 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                        u = Mask(112, 0, _165)
                        v = mem[_258]
                        continue 
                    if 1000 * Mask(112, 0, _165) / v and mem[_258] > -1 / 1000 * Mask(112, 0, _165) / v:
                        revert with 'NH{q', 17
                    if not 1000 * Mask(112, 0, _165) / v:
                        revert with 'NH{q', 18
                    if 1000 * Mask(112, 0, _165) / v * mem[_258] / 1000 * Mask(112, 0, _165) / v != mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _168) - mem[_258] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if mem[_258] > Mask(112, 0, _168):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _168) < mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _165)
                            v = mem[_258]
                            continue 
                        if 0 / Mask(112, 0, _168) and 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                        u = Mask(112, 0, _165)
                        v = mem[_258]
                        continue 
                    if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _168) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = Mask(112, 0, _165)
                        v = mem[_258]
                        continue 
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                    u = Mask(112, 0, _165)
                    v = mem[_258]
                    continue 
                if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if 1000 * t / 1000 != t:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if mem[_258] > Mask(112, 0, _168):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _168) < mem[_258]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165):
                    if v <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not v:
                        revert with 'NH{q', 18
                    if not 0 / v:
                        if Mask(112, 0, _168) - mem[_258] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if mem[_258] > Mask(112, 0, _168):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(112, 0, _168) < mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            if Mask(112, 0, _168) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if not 0 / Mask(112, 0, _168):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0
                                u = u
                                v = mem[_258]
                                continue 
                            if 0 / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 17
                            if not 0 / Mask(112, 0, _168):
                                revert with 'NH{q', 18
                            if 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                            u = u
                            v = mem[_258]
                            continue 
                        if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _168) - mem[_258]:
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = u
                            v = mem[_258]
                            continue 
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                        u = u
                        v = mem[_258]
                        continue 
                    if 0 / v and mem[_258] > -1 / 0 / v:
                        revert with 'NH{q', 17
                    if not 0 / v:
                        revert with 'NH{q', 18
                    if 0 / v * mem[_258] / 0 / v != mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _168) - mem[_258] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if mem[_258] > Mask(112, 0, _168):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _168) < mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = u
                            v = mem[_258]
                            continue 
                        if 0 / Mask(112, 0, _168) and 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                        u = u
                        v = mem[_258]
                        continue 
                    if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _168) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_258]
                        continue 
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                    u = u
                    v = mem[_258]
                    continue 
                if Mask(112, 0, _165) and 1000 > -1 / Mask(112, 0, _165):
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _165) / Mask(112, 0, _165) != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if v <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not v:
                    revert with 'NH{q', 18
                if not 1000 * Mask(112, 0, _165) / v:
                    if Mask(112, 0, _168) - mem[_258] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if mem[_258] > Mask(112, 0, _168):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _168) < mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        if Mask(112, 0, _168) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _168):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = u
                            v = mem[_258]
                            continue 
                        if 0 / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _168):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                        u = u
                        v = mem[_258]
                        continue 
                    if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _168) - mem[_258]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _168) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_258]
                        continue 
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 0 / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 0 / Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 0 / Mask(112, 0, _168) - mem[_258]
                    u = u
                    v = mem[_258]
                    continue 
                if 1000 * Mask(112, 0, _165) / v and mem[_258] > -1 / 1000 * Mask(112, 0, _165) / v:
                    revert with 'NH{q', 17
                if not 1000 * Mask(112, 0, _165) / v:
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _165) / v * mem[_258] / 1000 * Mask(112, 0, _165) / v != mem[_258]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _168) - mem[_258] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _168) - mem[_258]:
                    revert with 'NH{q', 18
                if mem[_258] > Mask(112, 0, _168):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _168) < mem[_258]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _168) - mem[_258]:
                    if Mask(112, 0, _168) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _168):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_258]
                        continue 
                    if 0 / Mask(112, 0, _168) and 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / 0 / Mask(112, 0, _168):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _168):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / 0 / Mask(112, 0, _168) != 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0 / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                    u = u
                    v = mem[_258]
                    continue 
                if Mask(112, 0, _168) - mem[_258] and Mask(112, 0, _168) - mem[_258] > -1 / Mask(112, 0, _168) - mem[_258]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _168) - mem[_258]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) - mem[_258] != Mask(112, 0, _168) - mem[_258]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _168) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _168):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0
                    u = u
                    v = mem[_258]
                    continue 
                if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) and 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] > -1 / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258] / (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) != 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = (Mask(112, 0, _168) * Mask(112, 0, _168)) - (mem[_258] * Mask(112, 0, _168)) - (Mask(112, 0, _168) * mem[_258]) + (mem[_258] * mem[_258]) / Mask(112, 0, _168) * 1000 * Mask(112, 0, _165) / v * mem[_258] / Mask(112, 0, _168) - mem[_258]
                u = u
                v = mem[_258]
                continue 
            mem[mem[64] + 36] = Mask(112, 0, _168)
            mem[mem[64] + 68] = Mask(112, 0, _165)
            require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
            staticcall address(cd[((32 * s) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args v, _168 << 144, Mask(112, 0, _165)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == mem[_259]
            if t == 1:
                if mem[_259] > Mask(112, 0, _165):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _165) < mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _168):
                    if v <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not v:
                        revert with 'NH{q', 18
                    if not 0 / v:
                        if Mask(112, 0, _165) - mem[_259] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _165) - mem[_259]:
                            revert with 'NH{q', 18
                        if mem[_259] > Mask(112, 0, _165):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(112, 0, _165) < mem[_259]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _165) - mem[_259]:
                            if Mask(112, 0, _165) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not Mask(112, 0, _165):
                                revert with 'NH{q', 18
                            if not 0 / Mask(112, 0, _165):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = 0
                                u = Mask(112, 0, _168)
                                v = mem[_259]
                                continue 
                            if 0 / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                                revert with 'NH{q', 17
                            if not 0 / Mask(112, 0, _165):
                                revert with 'NH{q', 18
                            if 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                            u = Mask(112, 0, _168)
                            v = mem[_259]
                            continue 
                        if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, _165) - mem[_259]:
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if Mask(112, 0, _165) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _168)
                            v = mem[_259]
                            continue 
                        if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                            revert with 'NH{q', 17
                        if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if 0 / v and mem[_259] > -1 / 0 / v:
                        revert with 'NH{q', 17
                    if not 0 / v:
                        revert with 'NH{q', 18
                    if 0 / v * mem[_259] / 0 / v != mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _165) - mem[_259] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if mem[_259] > Mask(112, 0, _165):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _165) < mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        if Mask(112, 0, _165) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _165):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _168)
                            v = mem[_259]
                            continue 
                        if 0 / Mask(112, 0, _165) and 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                    u = Mask(112, 0, _168)
                    v = mem[_259]
                    continue 
                if Mask(112, 0, _168) and 1000 > -1 / Mask(112, 0, _168):
                    revert with 'NH{q', 17
                if not Mask(112, 0, _168):
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _168) / Mask(112, 0, _168) != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if v <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not v:
                    revert with 'NH{q', 18
                if not 1000 * Mask(112, 0, _168) / v:
                    if Mask(112, 0, _165) - mem[_259] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if mem[_259] > Mask(112, 0, _165):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _165) < mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        if Mask(112, 0, _165) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _165):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = Mask(112, 0, _168)
                            v = mem[_259]
                            continue 
                        if 0 / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                    u = Mask(112, 0, _168)
                    v = mem[_259]
                    continue 
                if 1000 * Mask(112, 0, _168) / v and mem[_259] > -1 / 1000 * Mask(112, 0, _168) / v:
                    revert with 'NH{q', 17
                if not 1000 * Mask(112, 0, _168) / v:
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, _168) / v * mem[_259] / 1000 * Mask(112, 0, _168) / v != mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) - mem[_259] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if mem[_259] > Mask(112, 0, _165):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _165) < mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = Mask(112, 0, _168)
                        v = mem[_259]
                        continue 
                    if 0 / Mask(112, 0, _165) and 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0 / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                    u = Mask(112, 0, _168)
                    v = mem[_259]
                    continue 
                if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0
                    u = Mask(112, 0, _168)
                    v = mem[_259]
                    continue 
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                u = Mask(112, 0, _168)
                v = mem[_259]
                continue 
            if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if 1000 * t / 1000 != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _168) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _168):
                revert with 'NH{q', 18
            if mem[_259] > Mask(112, 0, _165):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _165) < mem[_259]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _168):
                if v <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not v:
                    revert with 'NH{q', 18
                if not 0 / v:
                    if Mask(112, 0, _165) - mem[_259] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if mem[_259] > Mask(112, 0, _165):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(112, 0, _165) < mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        if Mask(112, 0, _165) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if not 0 / Mask(112, 0, _165):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = 0
                            u = u
                            v = mem[_259]
                            continue 
                        if 0 / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 17
                        if not 0 / Mask(112, 0, _165):
                            revert with 'NH{q', 18
                        if 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                        u = u
                        v = mem[_259]
                        continue 
                    if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _165) - mem[_259]:
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_259]
                        continue 
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                    u = u
                    v = mem[_259]
                    continue 
                if 0 / v and mem[_259] > -1 / 0 / v:
                    revert with 'NH{q', 17
                if not 0 / v:
                    revert with 'NH{q', 18
                if 0 / v * mem[_259] / 0 / v != mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) - mem[_259] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if mem[_259] > Mask(112, 0, _165):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _165) < mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_259]
                        continue 
                    if 0 / Mask(112, 0, _165) and 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0 / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                    u = u
                    v = mem[_259]
                    continue 
                if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0
                    u = u
                    v = mem[_259]
                    continue 
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                u = u
                v = mem[_259]
                continue 
            if Mask(112, 0, _168) and 1000 > -1 / Mask(112, 0, _168):
                revert with 'NH{q', 17
            if not Mask(112, 0, _168):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _168) / Mask(112, 0, _168) != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if v <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not v:
                revert with 'NH{q', 18
            if not 1000 * Mask(112, 0, _168) / v:
                if Mask(112, 0, _165) - mem[_259] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if mem[_259] > Mask(112, 0, _165):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, _165) < mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    if Mask(112, 0, _165) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if not 0 / Mask(112, 0, _165):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = 0
                        u = u
                        v = mem[_259]
                        continue 
                    if 0 / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 17
                    if not 0 / Mask(112, 0, _165):
                        revert with 'NH{q', 18
                    if 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0 / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                    u = u
                    v = mem[_259]
                    continue 
                if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _165) - mem[_259]:
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if Mask(112, 0, _165) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0
                    u = u
                    v = mem[_259]
                    continue 
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 0 / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 0 / Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 0 / Mask(112, 0, _165) - mem[_259]
                u = u
                v = mem[_259]
                continue 
            if 1000 * Mask(112, 0, _168) / v and mem[_259] > -1 / 1000 * Mask(112, 0, _168) / v:
                revert with 'NH{q', 17
            if not 1000 * Mask(112, 0, _168) / v:
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, _168) / v * mem[_259] / 1000 * Mask(112, 0, _168) / v != mem[_259]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _165) - mem[_259] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _165) - mem[_259]:
                revert with 'NH{q', 18
            if mem[_259] > Mask(112, 0, _165):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, _165) < mem[_259]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _165) - mem[_259]:
                if Mask(112, 0, _165) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if not 0 / Mask(112, 0, _165):
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = 0
                    u = u
                    v = mem[_259]
                    continue 
                if 0 / Mask(112, 0, _165) and 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / 0 / Mask(112, 0, _165):
                    revert with 'NH{q', 17
                if not 0 / Mask(112, 0, _165):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / 0 / Mask(112, 0, _165) != 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = 0 / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
                u = u
                v = mem[_259]
                continue 
            if Mask(112, 0, _165) - mem[_259] and Mask(112, 0, _165) - mem[_259] > -1 / Mask(112, 0, _165) - mem[_259]:
                revert with 'NH{q', 17
            if not Mask(112, 0, _165) - mem[_259]:
                revert with 'NH{q', 18
            if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) - mem[_259] != Mask(112, 0, _165) - mem[_259]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _165) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not Mask(112, 0, _165):
                revert with 'NH{q', 18
            if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = 0
                u = u
                v = mem[_259]
                continue 
            if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) and 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] > -1 / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165):
                revert with 'NH{q', 18
            if (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259] / (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) != 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]:
                revert with 0, 'SafeMath: multiplication overflow'
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = (Mask(112, 0, _165) * Mask(112, 0, _165)) - (mem[_259] * Mask(112, 0, _165)) - (Mask(112, 0, _165) * mem[_259]) + (mem[_259] * mem[_259]) / Mask(112, 0, _165) * 1000 * Mask(112, 0, _168) / v * mem[_259] / Mask(112, 0, _165) - mem[_259]
            u = u
            v = mem[_259]
            continue 
        if t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 1000 * t / 1000 != t:
            revert with 0, 'SafeMath: multiplication overflow'
        if u <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not u:
            revert with 'NH{q', 18
        if 1000 * t / u / 1000 == 1000:
            return cd[4]
        if v <= cd[4]:
            if v < cd[4]:
                if 1000 * t / u / 1000 > 1000:
                    if 1000 > 1000 * t / u / 1000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 1000 * t / u / 1000 < 1000:
                        revert with 'NH{q', 17
                    if v > cd[4]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if cd[4] < v:
                        revert with 'NH{q', 17
                    if not cd[4] - v:
                        if (1000 * t / u / 1000) - 1000 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not (1000 * t / u / 1000) - 1000:
                            revert with 'NH{q', 18
                        if cd[4] > -(0 / (1000 * t / u / 1000) - 1000) - 1:
                            revert with 'NH{q', 17
                        if cd[4] + (0 / (1000 * t / u / 1000) - 1000) < cd[4]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if cd[4] - v and 1000 > -1 / cd[4] - v:
                            revert with 'NH{q', 17
                        if not cd[4] - v:
                            revert with 'NH{q', 18
                        if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (1000 * t / u / 1000) - 1000 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not (1000 * t / u / 1000) - 1000:
                            revert with 'NH{q', 18
                        if cd[4] > -((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) - 1:
                            revert with 'NH{q', 17
                        if cd[4] + ((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) < cd[4]:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if v < cd[4]:
                        if 1000 * t / u / 1000 < 1000:
                            if 1000 < 1000 * t / u / 1000:
                                revert with 'NH{q', 17
                            if v > cd[4]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if cd[4] < v:
                                revert with 'NH{q', 17
                            if not cd[4] - v:
                                if -(1000 * t / u / 1000) + 1000 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not -(1000 * t / u / 1000) + 1000:
                                    revert with 'NH{q', 18
                                if 0 / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                    if cd[4] < 0 / -(1000 * t / u / 1000) + 1000:
                                        revert with 'NH{q', 17
                            else:
                                if cd[4] - v and 1000 > -1 / cd[4] - v:
                                    revert with 'NH{q', 17
                                if not cd[4] - v:
                                    revert with 'NH{q', 18
                                if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if -(1000 * t / u / 1000) + 1000 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not -(1000 * t / u / 1000) + 1000:
                                    revert with 'NH{q', 18
                                if (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                    if cd[4] < (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000:
                                        revert with 'NH{q', 17
        else:
            if 1000 * t / u / 1000 > 1000:
                if 1000 > 1000 * t / u / 1000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 1000 * t / u / 1000 < 1000:
                    revert with 'NH{q', 17
                if cd[4] > v:
                    revert with 0, 'SafeMath: subtraction overflow'
                if v < cd[4]:
                    revert with 'NH{q', 17
                if not v - cd[4]:
                    if (1000 * t / u / 1000) - 1000 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not (1000 * t / u / 1000) - 1000:
                        revert with 'NH{q', 18
                    if 0 / (1000 * t / u / 1000) - 1000 <= cd[4]:
                        if cd[4] < 0 / (1000 * t / u / 1000) - 1000:
                            revert with 'NH{q', 17
                else:
                    if v - cd[4] and 1000 > -1 / v - cd[4]:
                        revert with 'NH{q', 17
                    if not v - cd[4]:
                        revert with 'NH{q', 18
                    if (1000 * v) - (1000 * cd[4]) / v - cd[4] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (1000 * t / u / 1000) - 1000 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not (1000 * t / u / 1000) - 1000:
                        revert with 'NH{q', 18
                    if (1000 * v) - (1000 * cd[4]) / (1000 * t / u / 1000) - 1000 <= cd[4]:
                        if cd[4] < (1000 * v) - (1000 * cd[4]) / (1000 * t / u / 1000) - 1000:
                            revert with 'NH{q', 17
            else:
                if v <= cd[4]:
                    if v < cd[4]:
                        if 1000 * t / u / 1000 > 1000:
                            if 1000 > 1000 * t / u / 1000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 1000 * t / u / 1000 < 1000:
                                revert with 'NH{q', 17
                            if v > cd[4]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if cd[4] < v:
                                revert with 'NH{q', 17
                            if not cd[4] - v:
                                if (1000 * t / u / 1000) - 1000 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (1000 * t / u / 1000) - 1000:
                                    revert with 'NH{q', 18
                                if cd[4] > -(0 / (1000 * t / u / 1000) - 1000) - 1:
                                    revert with 'NH{q', 17
                                if cd[4] + (0 / (1000 * t / u / 1000) - 1000) < cd[4]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if cd[4] - v and 1000 > -1 / cd[4] - v:
                                    revert with 'NH{q', 17
                                if not cd[4] - v:
                                    revert with 'NH{q', 18
                                if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (1000 * t / u / 1000) - 1000 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (1000 * t / u / 1000) - 1000:
                                    revert with 'NH{q', 18
                                if cd[4] > -((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) - 1:
                                    revert with 'NH{q', 17
                                if cd[4] + ((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) < cd[4]:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if v < cd[4]:
                                if 1000 * t / u / 1000 < 1000:
                                    if 1000 < 1000 * t / u / 1000:
                                        revert with 'NH{q', 17
                                    if v > cd[4]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if cd[4] < v:
                                        revert with 'NH{q', 17
                                    if not cd[4] - v:
                                        if -(1000 * t / u / 1000) + 1000 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not -(1000 * t / u / 1000) + 1000:
                                            revert with 'NH{q', 18
                                        if 0 / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                            if cd[4] < 0 / -(1000 * t / u / 1000) + 1000:
                                                revert with 'NH{q', 17
                                    else:
                                        if cd[4] - v and 1000 > -1 / cd[4] - v:
                                            revert with 'NH{q', 17
                                        if not cd[4] - v:
                                            revert with 'NH{q', 18
                                        if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if -(1000 * t / u / 1000) + 1000 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not -(1000 * t / u / 1000) + 1000:
                                            revert with 'NH{q', 18
                                        if (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                            if cd[4] < (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000:
                                                revert with 'NH{q', 17
                else:
                    if 1000 * t / u / 1000 < 1000:
                        if 1000 < 1000 * t / u / 1000:
                            revert with 'NH{q', 17
                        if cd[4] > v:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if v < cd[4]:
                            revert with 'NH{q', 17
                        if not v - cd[4]:
                            if -(1000 * t / u / 1000) + 1000 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not -(1000 * t / u / 1000) + 1000:
                                revert with 'NH{q', 18
                            if cd[4] > -(0 / -(1000 * t / u / 1000) + 1000) - 1:
                                revert with 'NH{q', 17
                            if cd[4] + (0 / -(1000 * t / u / 1000) + 1000) < cd[4]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if v - cd[4] and 1000 > -1 / v - cd[4]:
                                revert with 'NH{q', 17
                            if not v - cd[4]:
                                revert with 'NH{q', 18
                            if (1000 * v) - (1000 * cd[4]) / v - cd[4] != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if -(1000 * t / u / 1000) + 1000 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not -(1000 * t / u / 1000) + 1000:
                                revert with 'NH{q', 18
                            if cd[4] > -((1000 * v) - (1000 * cd[4]) / -(1000 * t / u / 1000) + 1000) - 1:
                                revert with 'NH{q', 17
                            if cd[4] + ((1000 * v) - (1000 * cd[4]) / -(1000 * t / u / 1000) + 1000) < cd[4]:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if v < cd[4]:
                            if 1000 * t / u / 1000 > 1000:
                                if 1000 > 1000 * t / u / 1000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 1000 * t / u / 1000 < 1000:
                                    revert with 'NH{q', 17
                                if v > cd[4]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if cd[4] < v:
                                    revert with 'NH{q', 17
                                if not cd[4] - v:
                                    if (1000 * t / u / 1000) - 1000 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (1000 * t / u / 1000) - 1000:
                                        revert with 'NH{q', 18
                                    if cd[4] > -(0 / (1000 * t / u / 1000) - 1000) - 1:
                                        revert with 'NH{q', 17
                                    if cd[4] + (0 / (1000 * t / u / 1000) - 1000) < cd[4]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if cd[4] - v and 1000 > -1 / cd[4] - v:
                                        revert with 'NH{q', 17
                                    if not cd[4] - v:
                                        revert with 'NH{q', 18
                                    if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * t / u / 1000) - 1000 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (1000 * t / u / 1000) - 1000:
                                        revert with 'NH{q', 18
                                    if cd[4] > -((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) - 1:
                                        revert with 'NH{q', 17
                                    if cd[4] + ((1000 * cd[4]) - (1000 * v) / (1000 * t / u / 1000) - 1000) < cd[4]:
                                        revert with 0, 'SafeMath: addition overflow'
                            else:
                                if v < cd[4]:
                                    if 1000 * t / u / 1000 < 1000:
                                        if 1000 < 1000 * t / u / 1000:
                                            revert with 'NH{q', 17
                                        if v > cd[4]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if cd[4] < v:
                                            revert with 'NH{q', 17
                                        if not cd[4] - v:
                                            if -(1000 * t / u / 1000) + 1000 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not -(1000 * t / u / 1000) + 1000:
                                                revert with 'NH{q', 18
                                            if 0 / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                                if cd[4] < 0 / -(1000 * t / u / 1000) + 1000:
                                                    revert with 'NH{q', 17
                                        else:
                                            if cd[4] - v and 1000 > -1 / cd[4] - v:
                                                revert with 'NH{q', 17
                                            if not cd[4] - v:
                                                revert with 'NH{q', 18
                                            if (1000 * cd[4]) - (1000 * v) / cd[4] - v != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if -(1000 * t / u / 1000) + 1000 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not -(1000 * t / u / 1000) + 1000:
                                                revert with 'NH{q', 18
                                            if (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000 <= cd[4]:
                                                if cd[4] < (1000 * cd[4]) - (1000 * v) / -(1000 * t / u / 1000) + 1000:
                                                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return cd[4]
}



}
