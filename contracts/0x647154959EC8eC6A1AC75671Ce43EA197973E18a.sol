contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

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

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Zero balance!'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_8d075231(?) payable {
    require calldata.size - 4 >= 224
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 1:
        require ext_code.size(stor1)
        staticcall stor1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg5)
    else:
        if arg1 != 2:
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg3), address(arg5)
        else:
            if arg1 == 1:
                require ext_code.size(stor1)
                staticcall stor1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg5)
            else:
                require ext_code.size(stor2)
                staticcall stor2.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(arg3) != ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg6, arg4, address(this.address), 128, 64, arg2, address(arg7)
    else:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg4, arg6, address(this.address), 128, 64, arg2, address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2109214f(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg2)
    mem[192] = 3
    mem[224 len 96] = call.data[calldata.size len 96]
    if not arg1:
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _548 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _553 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _548 + (32 * _553) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _553] = mem[_548 + 352 len 32 * _553]
            require 0 < _553
            mem[288] = mem[ceil32(return_data.size) + 352]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 2
        idx = 0
        s = 128
        t = 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1100 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1114 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1100 + (32 * _1114) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1114] = mem[_1100 + 352 len 32 * _1114]
                require 0 < _1114
                mem[288] = mem[ceil32(return_data.size) + 352]
            else:
                mem[320] = return_data.size
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1102 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1115 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1115
                require return_data.size >= _1102 + (32 * _1115) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1115] = mem[ceil32(return_data.size) + _1102 + 353 len 32 * _1115]
                require 0 < _1115
                mem[288] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _550 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
        _554 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
        require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require return_data.size >= _550 + (32 * _554) + 32
        mem[ceil32(return_data.size) + 352 len 32 * _554] = mem[_550 + 352 len 32 * _554]
        require 0 < _554
        mem[256] = mem[ceil32(return_data.size) + 352]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1661 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1661] = mem[224 len 32 * _1661]
                return 32, mem[mem[64] + 32 len (32 * _1661) + 32]
            _1606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1606] = return_data.size
            mem[_1606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1662 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1662] = mem[224 len 32 * _1662]
            return 32, mem[mem[64] + 32 len (32 * _1662) + 32]
        _1591 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1607 = mem[_1591]
        require mem[_1591] <= test266151307()
        require _1591 + return_data.size > _1591 + mem[_1591] + 31
        _1626 = mem[_1591 + mem[_1591]]
        require mem[_1591 + mem[_1591]] <= test266151307()
        require (32 * mem[_1591 + mem[_1591]]) + 32 >= 0 and _1591 + ceil32(return_data.size) + (32 * mem[_1591 + mem[_1591]]) + 32 <= test266151307()
        mem[64] = _1591 + ceil32(return_data.size) + (32 * mem[_1591 + mem[_1591]]) + 32
        mem[_1591 + ceil32(return_data.size)] = _1626
        require return_data.size >= _1607 + (32 * _1626) + 32
        mem[_1591 + ceil32(return_data.size) + 32 len 32 * _1626] = mem[_1591 + _1607 + 32 len 32 * _1626]
        require 0 < _1626
        require 2 < mem[192]
        mem[288] = mem[_1591 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _1995 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _1995] = mem[224 len 32 * _1995]
        return 32, mem[mem[64] + 32 len (32 * _1995) + 32]
    mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[324] = arg3
    mem[356] = 64
    mem[388] = 2
    idx = 0
    s = 128
    t = 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 1, arg1):
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1104 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1117 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1104 + (32 * _1117) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1117] = mem[_1104 + 352 len 32 * _1117]
                require 0 < _1117
                mem[288] = mem[ceil32(return_data.size) + 352]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                if not return_data.size:
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[324] = arg3
                    mem[356] = 64
                    mem[388] = 2
                    idx = 0
                    s = 128
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _1609 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                    _1627 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require return_data.size >= _1609 + (32 * _1627) + 32
                    mem[ceil32(return_data.size) + 352 len 32 * _1627] = mem[_1609 + 352 len 32 * _1627]
                    require 0 < _1627
                    mem[288] = mem[ceil32(return_data.size) + 352]
                else:
                    mem[320] = return_data.size
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 325] = arg3
                    mem[ceil32(return_data.size) + 357] = 64
                    mem[ceil32(return_data.size) + 389] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 421
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                    require return_data.size >= 32
                    _1611 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                    _1628 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1628
                    require return_data.size >= _1611 + (32 * _1628) + 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1628] = mem[ceil32(return_data.size) + _1611 + 353 len 32 * _1628]
                    require 0 < _1628
                    mem[288] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 353]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _1106 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _1118 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _1106 + (32 * _1118) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _1118] = mem[_1106 + 352 len 32 * _1118]
            require 0 < _1118
            mem[256] = mem[ceil32(return_data.size) + 352]
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2014 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2014] = mem[224 len 32 * _2014]
                    return 32, mem[mem[64] + 32 len (32 * _2014) + 32]
                _1975 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1975] = return_data.size
                mem[_1975 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2015 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2015] = mem[224 len 32 * _2015]
                return 32, mem[mem[64] + 32 len (32 * _2015) + 32]
            _1963 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1976 = mem[_1963]
            require mem[_1963] <= test266151307()
            require _1963 + return_data.size > _1963 + mem[_1963] + 31
            _1990 = mem[_1963 + mem[_1963]]
            require mem[_1963 + mem[_1963]] <= test266151307()
            require (32 * mem[_1963 + mem[_1963]]) + 32 >= 0 and _1963 + ceil32(return_data.size) + (32 * mem[_1963 + mem[_1963]]) + 32 <= test266151307()
            mem[64] = _1963 + ceil32(return_data.size) + (32 * mem[_1963 + mem[_1963]]) + 32
            mem[_1963 + ceil32(return_data.size)] = _1990
            require return_data.size >= _1976 + (32 * _1990) + 32
            mem[_1963 + ceil32(return_data.size) + 32 len 32 * _1990] = mem[_1963 + _1976 + 32 len 32 * _1990]
            require 0 < _1990
            require 2 < mem[192]
            mem[288] = mem[_1963 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2164 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2164] = mem[224 len 32 * _2164]
            return 32, mem[mem[64] + 32 len (32 * _2164) + 32]
        mem[320] = return_data.size
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 325] = arg3
            mem[ceil32(return_data.size) + 357] = 64
            mem[ceil32(return_data.size) + 389] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 421
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            _1108 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
            _1119 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1119
            require return_data.size >= _1108 + (32 * _1119) + 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1119] = mem[ceil32(return_data.size) + _1108 + 353 len 32 * _1119]
            require 0 < _1119
            mem[288] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 325] = arg3
        mem[ceil32(return_data.size) + 357] = 64
        mem[ceil32(return_data.size) + 389] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 421
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1613 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1630 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1630
                require return_data.size >= _1613 + (32 * _1630) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1630] = mem[ceil32(return_data.size) + _1613 + 353 len 32 * _1630]
                require 0 < _1630
                mem[288] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 353]
            else:
                mem[ceil32(return_data.size) + 321] = return_data.size
                mem[ceil32(return_data.size) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 326] = arg3
                mem[(2 * ceil32(return_data.size)) + 358] = 64
                mem[(2 * ceil32(return_data.size)) + 390] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 422
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 422 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 322
                require return_data.size >= 32
                _1615 = mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 322 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 353
                _1631 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354
                mem[(4 * ceil32(return_data.size)) + 322] = _1631
                require return_data.size >= _1615 + (32 * _1631) + 32
                mem[(4 * ceil32(return_data.size)) + 354 len 32 * _1631] = mem[(2 * ceil32(return_data.size)) + _1615 + 354 len 32 * _1631]
                require 0 < _1631
                mem[288] = mem[(4 * ceil32(return_data.size)) + 354]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
        require return_data.size >= 32
        _1110 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
        _1120 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1120
        require return_data.size >= _1110 + (32 * _1120) + 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1120] = mem[ceil32(return_data.size) + _1110 + 353 len 32 * _1120]
        require 0 < _1120
        mem[256] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 353]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2018 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2018] = mem[224 len 32 * _2018]
                return 32, mem[mem[64] + 32 len (32 * _2018) + 32]
            _1977 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1977] = return_data.size
            mem[_1977 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2019 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2019] = mem[224 len 32 * _2019]
            return 32, mem[mem[64] + 32 len (32 * _2019) + 32]
        _1968 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1978 = mem[_1968]
        require mem[_1968] <= test266151307()
        require _1968 + return_data.size > _1968 + mem[_1968] + 31
        _1991 = mem[_1968 + mem[_1968]]
        require mem[_1968 + mem[_1968]] <= test266151307()
        require (32 * mem[_1968 + mem[_1968]]) + 32 >= 0 and _1968 + ceil32(return_data.size) + (32 * mem[_1968 + mem[_1968]]) + 32 <= test266151307()
        mem[64] = _1968 + ceil32(return_data.size) + (32 * mem[_1968 + mem[_1968]]) + 32
        mem[_1968 + ceil32(return_data.size)] = _1991
        require return_data.size >= _1978 + (32 * _1991) + 32
        mem[_1968 + ceil32(return_data.size) + 32 len 32 * _1991] = mem[_1968 + _1978 + 32 len 32 * _1991]
        require 0 < _1991
        require 2 < mem[192]
        mem[288] = mem[_1968 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2165 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2165] = mem[224 len 32 * _2165]
        return 32, mem[mem[64] + 32 len (32 * _2165) + 32]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _552 = mem[320 len 4], Mask(224, 32, arg3) >> 32
    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
    _555 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require return_data.size >= _552 + (32 * _555) + 32
    mem[ceil32(return_data.size) + 352 len 32 * _555] = mem[_552 + 352 len 32 * _555]
    require 0 < _555
    mem[224] = mem[ceil32(return_data.size) + 352]
    if not Mask(1, 1, arg1):
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = mem[224], call.data[calldata.size + 32 len 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1675 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1675] = mem[224 len 32 * _1675]
                return 32, mem[mem[64] + 32 len (32 * _1675) + 32]
            _1616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1616] = return_data.size
            mem[_1616 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1676 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1676] = mem[224 len 32 * _1676]
            return 32, mem[mem[64] + 32 len (32 * _1676) + 32]
        _1604 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1617 = mem[_1604]
        require mem[_1604] <= test266151307()
        require _1604 + return_data.size > _1604 + mem[_1604] + 31
        _1633 = mem[_1604 + mem[_1604]]
        require mem[_1604 + mem[_1604]] <= test266151307()
        require (32 * mem[_1604 + mem[_1604]]) + 32 >= 0 and _1604 + ceil32(return_data.size) + (32 * mem[_1604 + mem[_1604]]) + 32 <= test266151307()
        mem[64] = _1604 + ceil32(return_data.size) + (32 * mem[_1604 + mem[_1604]]) + 32
        mem[_1604 + ceil32(return_data.size)] = _1633
        require return_data.size >= _1617 + (32 * _1633) + 32
        mem[_1604 + ceil32(return_data.size) + 32 len 32 * _1633] = mem[_1604 + _1617 + 32 len 32 * _1633]
        require 0 < _1633
        require 2 < mem[192]
        mem[288] = mem[_1604 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2004 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2004] = mem[224 len 32 * _2004]
        return 32, mem[mem[64] + 32 len (32 * _2004) + 32]
    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                _1687 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1687] = mem[224 len 32 * _1687]
                return 32, mem[mem[64] + 32 len (32 * _1687) + 32]
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2021 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2021] = mem[224 len 32 * _2021]
                    return 32, mem[mem[64] + 32 len (32 * _2021) + 32]
                _1979 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1979] = return_data.size
                mem[_1979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2022 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2022] = mem[224 len 32 * _2022]
                return 32, mem[mem[64] + 32 len (32 * _2022) + 32]
            _1971 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1980 = mem[_1971]
            require mem[_1971] <= test266151307()
            require _1971 + return_data.size > _1971 + mem[_1971] + 31
            _1992 = mem[_1971 + mem[_1971]]
            require mem[_1971 + mem[_1971]] <= test266151307()
            require (32 * mem[_1971 + mem[_1971]]) + 32 >= 0 and _1971 + ceil32(return_data.size) + (32 * mem[_1971 + mem[_1971]]) + 32 <= test266151307()
            mem[64] = _1971 + ceil32(return_data.size) + (32 * mem[_1971 + mem[_1971]]) + 32
            mem[_1971 + ceil32(return_data.size)] = _1992
            require return_data.size >= _1980 + (32 * _1992) + 32
            mem[_1971 + ceil32(return_data.size) + 32 len 32 * _1992] = mem[_1971 + _1980 + 32 len 32 * _1992]
            require 0 < _1992
            require 2 < mem[192]
            mem[288] = mem[_1971 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2166 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2166] = mem[224 len 32 * _2166]
            return 32, mem[mem[64] + 32 len (32 * _2166) + 32]
        _1618 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1618] = return_data.size
        mem[_1618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            _1688 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1688] = mem[224 len 32 * _1688]
            return 32, mem[mem[64] + 32 len (32 * _1688) + 32]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 160]
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2023 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2023] = mem[224 len 32 * _2023]
                return 32, mem[mem[64] + 32 len (32 * _2023) + 32]
            _1981 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1981] = return_data.size
            mem[_1981 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2024 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2024] = mem[224 len 32 * _2024]
            return 32, mem[mem[64] + 32 len (32 * _2024) + 32]
        _1972 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1982 = mem[_1972]
        require mem[_1972] <= test266151307()
        require _1972 + return_data.size > _1972 + mem[_1972] + 31
        _1993 = mem[_1972 + mem[_1972]]
        require mem[_1972 + mem[_1972]] <= test266151307()
        require (32 * mem[_1972 + mem[_1972]]) + 32 >= 0 and _1972 + ceil32(return_data.size) + (32 * mem[_1972 + mem[_1972]]) + 32 <= test266151307()
        mem[64] = _1972 + ceil32(return_data.size) + (32 * mem[_1972 + mem[_1972]]) + 32
        mem[_1972 + ceil32(return_data.size)] = _1993
        require return_data.size >= _1982 + (32 * _1993) + 32
        mem[_1972 + ceil32(return_data.size) + 32 len 32 * _1993] = mem[_1972 + _1982 + 32 len 32 * _1993]
        require 0 < _1993
        require 2 < mem[192]
        mem[288] = mem[_1972 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2167 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2167] = mem[224 len 32 * _2167]
        return 32, mem[mem[64] + 32 len (32 * _2167) + 32]
    _1605 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1619 = mem[_1605]
    require mem[_1605] <= test266151307()
    require _1605 + return_data.size > _1605 + mem[_1605] + 31
    _1634 = mem[_1605 + mem[_1605]]
    require mem[_1605 + mem[_1605]] <= test266151307()
    require (32 * mem[_1605 + mem[_1605]]) + 32 >= 0 and _1605 + ceil32(return_data.size) + (32 * mem[_1605 + mem[_1605]]) + 32 <= test266151307()
    mem[64] = _1605 + ceil32(return_data.size) + (32 * mem[_1605 + mem[_1605]]) + 32
    mem[_1605 + ceil32(return_data.size)] = _1634
    require return_data.size >= _1619 + (32 * _1634) + 32
    mem[_1605 + ceil32(return_data.size) + 32 len 32 * _1634] = mem[_1605 + _1619 + 32 len 32 * _1634]
    require 0 < _1634
    require 1 < mem[192]
    mem[256] = mem[_1605 + ceil32(return_data.size) + 32]
    if not Mask(1, 2, arg1):
        mem[mem[64]] = 32
        _2010 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2010] = mem[224 len 32 * _2010]
        return 32, mem[mem[64] + 32 len (32 * _2010) + 32]
    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            mem[mem[64]] = 32
            _2174 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2174] = mem[224 len 32 * _2174]
            return 32, mem[mem[64] + 32 len (32 * _2174) + 32]
        _2157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2157] = return_data.size
        mem[_2157 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 32
        _2175 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2175] = mem[224 len 32 * _2175]
        return 32, mem[mem[64] + 32 len (32 * _2175) + 32]
    _2156 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2158 = mem[_2156]
    require mem[_2156] <= test266151307()
    require _2156 + return_data.size > _2156 + mem[_2156] + 31
    _2163 = mem[_2156 + mem[_2156]]
    require mem[_2156 + mem[_2156]] <= test266151307()
    require (32 * mem[_2156 + mem[_2156]]) + 32 >= 0 and _2156 + ceil32(return_data.size) + (32 * mem[_2156 + mem[_2156]]) + 32 <= test266151307()
    mem[64] = _2156 + ceil32(return_data.size) + (32 * mem[_2156 + mem[_2156]]) + 32
    mem[_2156 + ceil32(return_data.size)] = _2163
    require return_data.size >= _2158 + (32 * _2163) + 32
    mem[_2156 + ceil32(return_data.size) + 32 len 32 * _2163] = mem[_2156 + _2158 + 32 len 32 * _2163]
    require 0 < _2163
    require 2 < mem[192]
    mem[288] = mem[_2156 + ceil32(return_data.size) + 32]
    mem[mem[64]] = 32
    _2210 = mem[192]
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64 len 32 * _2210] = mem[224 len 32 * _2210]
    return 32, mem[mem[64] + 32 len (32 * _2210) + 32]
}

function sub_986ebcca(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg4)
    mem[192] = 3
    mem[224 len 96] = call.data[calldata.size len 96]
    if not arg1:
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _569 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _574 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _569 + (32 * _574) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _574] = mem[_569 + 352 len 32 * _574]
            require _574 - 1 < _574
            mem[288] = mem[(32 * _574 - 1) + ceil32(return_data.size) + 352]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = arg3
        mem[356] = 64
        mem[388] = 2
        idx = 0
        s = 128
        t = 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[420 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1145 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1159 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1145 + (32 * _1159) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1159] = mem[_1145 + 352 len 32 * _1159]
                require _1159 - 1 < _1159
                mem[288] = mem[(32 * _1159 - 1) + ceil32(return_data.size) + 352]
            else:
                mem[320] = return_data.size
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1147 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1160 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1160
                require return_data.size >= _1147 + (32 * _1160) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1160] = mem[ceil32(return_data.size) + _1147 + 353 len 32 * _1160]
                require _1160 - 1 < _1160
                mem[288] = mem[(32 * _1160 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _571 = mem[320 len 4], Mask(224, 32, arg3) >> 32
        require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
        _575 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
        require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require return_data.size >= _571 + (32 * _575) + 32
        mem[ceil32(return_data.size) + 352 len 32 * _575] = mem[_571 + 352 len 32 * _575]
        require _575 - 1 < _575
        mem[256] = mem[(32 * _575 - 1) + ceil32(return_data.size) + 352]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1730 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1730] = mem[224 len 32 * _1730]
                return 32, mem[mem[64] + 32 len (32 * _1730) + 32]
            _1675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1675] = return_data.size
            mem[_1675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1731 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1731] = mem[224 len 32 * _1731]
            return 32, mem[mem[64] + 32 len (32 * _1731) + 32]
        _1660 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1676 = mem[_1660]
        require mem[_1660] <= test266151307()
        require _1660 + return_data.size > _1660 + mem[_1660] + 31
        _1695 = mem[_1660 + mem[_1660]]
        require mem[_1660 + mem[_1660]] <= test266151307()
        require (32 * mem[_1660 + mem[_1660]]) + 32 >= 0 and _1660 + ceil32(return_data.size) + (32 * mem[_1660 + mem[_1660]]) + 32 <= test266151307()
        mem[64] = _1660 + ceil32(return_data.size) + (32 * mem[_1660 + mem[_1660]]) + 32
        mem[_1660 + ceil32(return_data.size)] = _1695
        require return_data.size >= _1676 + (32 * _1695) + 32
        mem[_1660 + ceil32(return_data.size) + 32 len 32 * _1695] = mem[_1660 + _1676 + 32 len 32 * _1695]
        require _1695 - 1 < _1695
        require 2 < mem[192]
        mem[288] = mem[(32 * _1695 - 1) + _1660 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2083 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2083] = mem[224 len 32 * _2083]
        return 32, mem[mem[64] + 32 len (32 * _2083) + 32]
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg3
    mem[356] = 64
    mem[388] = 2
    idx = 0
    s = 128
    t = 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[420 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 1, arg1):
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = arg3
                mem[356] = 64
                mem[388] = 2
                idx = 0
                s = 128
                t = 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[420 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1149 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                _1162 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1149 + (32 * _1162) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1162] = mem[_1149 + 352 len 32 * _1162]
                require _1162 - 1 < _1162
                mem[288] = mem[(32 * _1162 - 1) + ceil32(return_data.size) + 352]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 128
            t = 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[420 len 64])
            if not ext_call.success:
                if not return_data.size:
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[324] = arg3
                    mem[356] = 64
                    mem[388] = 2
                    idx = 0
                    s = 128
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[420 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _1678 = mem[320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
                    _1696 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require return_data.size >= _1678 + (32 * _1696) + 32
                    mem[ceil32(return_data.size) + 352 len 32 * _1696] = mem[_1678 + 352 len 32 * _1696]
                    require _1696 - 1 < _1696
                    mem[288] = mem[(32 * _1696 - 1) + ceil32(return_data.size) + 352]
                else:
                    mem[320] = return_data.size
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not Mask(1, 2, arg1):
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 325] = arg3
                    mem[ceil32(return_data.size) + 357] = 64
                    mem[ceil32(return_data.size) + 389] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 421
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                    if not ext_call.success:
                        return Array(len=3, data=call.data[calldata.size len 96])
                    mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                    require return_data.size >= 32
                    _1680 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                    _1697 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1697
                    require return_data.size >= _1680 + (32 * _1697) + 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1697] = mem[ceil32(return_data.size) + _1680 + 353 len 32 * _1697]
                    require _1697 - 1 < _1697
                    mem[288] = mem[(32 * _1697 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _1151 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _1163 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _1151 + (32 * _1163) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _1163] = mem[_1151 + 352 len 32 * _1163]
            require _1163 - 1 < _1163
            mem[256] = mem[(32 * _1163 - 1) + ceil32(return_data.size) + 352]
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2102 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2102] = mem[224 len 32 * _2102]
                    return 32, mem[mem[64] + 32 len (32 * _2102) + 32]
                _2063 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2063] = return_data.size
                mem[_2063 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2103 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2103] = mem[224 len 32 * _2103]
                return 32, mem[mem[64] + 32 len (32 * _2103) + 32]
            _2051 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2064 = mem[_2051]
            require mem[_2051] <= test266151307()
            require _2051 + return_data.size > _2051 + mem[_2051] + 31
            _2078 = mem[_2051 + mem[_2051]]
            require mem[_2051 + mem[_2051]] <= test266151307()
            require (32 * mem[_2051 + mem[_2051]]) + 32 >= 0 and _2051 + ceil32(return_data.size) + (32 * mem[_2051 + mem[_2051]]) + 32 <= test266151307()
            mem[64] = _2051 + ceil32(return_data.size) + (32 * mem[_2051 + mem[_2051]]) + 32
            mem[_2051 + ceil32(return_data.size)] = _2078
            require return_data.size >= _2064 + (32 * _2078) + 32
            mem[_2051 + ceil32(return_data.size) + 32 len 32 * _2078] = mem[_2051 + _2064 + 32 len 32 * _2078]
            require _2078 - 1 < _2078
            require 2 < mem[192]
            mem[288] = mem[(32 * _2078 - 1) + _2051 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2261 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2261] = mem[224 len 32 * _2261]
            return 32, mem[mem[64] + 32 len (32 * _2261) + 32]
        mem[320] = return_data.size
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 1, arg1):
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 325] = arg3
            mem[ceil32(return_data.size) + 357] = 64
            mem[ceil32(return_data.size) + 389] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 421
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
            if not ext_call.success:
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
            require return_data.size >= 32
            _1153 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
            _1164 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1164
            require return_data.size >= _1153 + (32 * _1164) + 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1164] = mem[ceil32(return_data.size) + _1153 + 353 len 32 * _1164]
            require _1164 - 1 < _1164
            mem[288] = mem[(32 * _1164 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 325] = arg3
        mem[ceil32(return_data.size) + 357] = 64
        mem[ceil32(return_data.size) + 389] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 421
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
        if not ext_call.success:
            if not return_data.size:
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 421
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
                require return_data.size >= 32
                _1682 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
                _1699 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1699
                require return_data.size >= _1682 + (32 * _1699) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1699] = mem[ceil32(return_data.size) + _1682 + 353 len 32 * _1699]
                require _1699 - 1 < _1699
                mem[288] = mem[(32 * _1699 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            else:
                mem[ceil32(return_data.size) + 321] = return_data.size
                mem[ceil32(return_data.size) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 326] = arg3
                mem[(2 * ceil32(return_data.size)) + 358] = 64
                mem[(2 * ceil32(return_data.size)) + 390] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 422
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 422 len 64])
                if not ext_call.success:
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 322
                require return_data.size >= 32
                _1684 = mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 322 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 353
                _1700 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354
                mem[(4 * ceil32(return_data.size)) + 322] = _1700
                require return_data.size >= _1684 + (32 * _1700) + 32
                mem[(4 * ceil32(return_data.size)) + 354 len 32 * _1700] = mem[(2 * ceil32(return_data.size)) + _1684 + 354 len 32 * _1700]
                require _1700 - 1 < _1700
                mem[288] = mem[(32 * _1700 - 1) + (4 * ceil32(return_data.size)) + 354]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
        require return_data.size >= 32
        _1155 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
        _1165 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = _1165
        require return_data.size >= _1155 + (32 * _1165) + 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1165] = mem[ceil32(return_data.size) + _1155 + 353 len 32 * _1165]
        require _1165 - 1 < _1165
        mem[256] = mem[(32 * _1165 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size], mem[256], call.data[calldata.size + 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2106 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2106] = mem[224 len 32 * _2106]
                return 32, mem[mem[64] + 32 len (32 * _2106) + 32]
            _2065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2065] = return_data.size
            mem[_2065 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2107 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2107] = mem[224 len 32 * _2107]
            return 32, mem[mem[64] + 32 len (32 * _2107) + 32]
        _2056 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2066 = mem[_2056]
        require mem[_2056] <= test266151307()
        require _2056 + return_data.size > _2056 + mem[_2056] + 31
        _2079 = mem[_2056 + mem[_2056]]
        require mem[_2056 + mem[_2056]] <= test266151307()
        require (32 * mem[_2056 + mem[_2056]]) + 32 >= 0 and _2056 + ceil32(return_data.size) + (32 * mem[_2056 + mem[_2056]]) + 32 <= test266151307()
        mem[64] = _2056 + ceil32(return_data.size) + (32 * mem[_2056 + mem[_2056]]) + 32
        mem[_2056 + ceil32(return_data.size)] = _2079
        require return_data.size >= _2066 + (32 * _2079) + 32
        mem[_2056 + ceil32(return_data.size) + 32 len 32 * _2079] = mem[_2056 + _2066 + 32 len 32 * _2079]
        require _2079 - 1 < _2079
        require 2 < mem[192]
        mem[288] = mem[(32 * _2079 - 1) + _2056 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2262 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2262] = mem[224 len 32 * _2262]
        return 32, mem[mem[64] + 32 len (32 * _2262) + 32]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _573 = mem[320 len 4], Mask(224, 32, arg3) >> 32
    require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
    _576 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    require return_data.size >= _573 + (32 * _576) + 32
    mem[ceil32(return_data.size) + 352 len 32 * _576] = mem[_573 + 352 len 32 * _576]
    require _576 - 1 < _576
    mem[224] = mem[(32 * _576 - 1) + ceil32(return_data.size) + 352]
    if not Mask(1, 1, arg1):
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = mem[224], call.data[calldata.size + 32 len 64]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _1744 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1744] = mem[224 len 32 * _1744]
                return 32, mem[mem[64] + 32 len (32 * _1744) + 32]
            _1685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1685] = return_data.size
            mem[_1685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1745 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1745] = mem[224 len 32 * _1745]
            return 32, mem[mem[64] + 32 len (32 * _1745) + 32]
        _1673 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1686 = mem[_1673]
        require mem[_1673] <= test266151307()
        require _1673 + return_data.size > _1673 + mem[_1673] + 31
        _1702 = mem[_1673 + mem[_1673]]
        require mem[_1673 + mem[_1673]] <= test266151307()
        require (32 * mem[_1673 + mem[_1673]]) + 32 >= 0 and _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32 <= test266151307()
        mem[64] = _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32
        mem[_1673 + ceil32(return_data.size)] = _1702
        require return_data.size >= _1686 + (32 * _1702) + 32
        mem[_1673 + ceil32(return_data.size) + 32 len 32 * _1702] = mem[_1673 + _1686 + 32 len 32 * _1702]
        require _1702 - 1 < _1702
        require 2 < mem[192]
        mem[288] = mem[(32 * _1702 - 1) + _1673 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2092 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2092] = mem[224 len 32 * _2092]
        return 32, mem[mem[64] + 32 len (32 * _2092) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            if not Mask(1, 2, arg1):
                mem[mem[64]] = 32
                _1756 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1756] = mem[224 len 32 * _1756]
                return 32, mem[mem[64] + 32 len (32 * _1756) + 32]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                if not return_data.size:
                    mem[mem[64]] = 32
                    _2109 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2109] = mem[224 len 32 * _2109]
                    return 32, mem[mem[64] + 32 len (32 * _2109) + 32]
                _2067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2067] = return_data.size
                mem[_2067 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2110 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2110] = mem[224 len 32 * _2110]
                return 32, mem[mem[64] + 32 len (32 * _2110) + 32]
            _2059 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2068 = mem[_2059]
            require mem[_2059] <= test266151307()
            require _2059 + return_data.size > _2059 + mem[_2059] + 31
            _2080 = mem[_2059 + mem[_2059]]
            require mem[_2059 + mem[_2059]] <= test266151307()
            require (32 * mem[_2059 + mem[_2059]]) + 32 >= 0 and _2059 + ceil32(return_data.size) + (32 * mem[_2059 + mem[_2059]]) + 32 <= test266151307()
            mem[64] = _2059 + ceil32(return_data.size) + (32 * mem[_2059 + mem[_2059]]) + 32
            mem[_2059 + ceil32(return_data.size)] = _2080
            require return_data.size >= _2068 + (32 * _2080) + 32
            mem[_2059 + ceil32(return_data.size) + 32 len 32 * _2080] = mem[_2059 + _2068 + 32 len 32 * _2080]
            require _2080 - 1 < _2080
            require 2 < mem[192]
            mem[288] = mem[(32 * _2080 - 1) + _2059 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2263 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2263] = mem[224 len 32 * _2263]
            return 32, mem[mem[64] + 32 len (32 * _2263) + 32]
        _1687 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1687] = return_data.size
        mem[_1687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            _1757 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1757] = mem[224 len 32 * _1757]
            return 32, mem[mem[64] + 32 len (32 * _1757) + 32]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor6)
        staticcall stor6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 160]
        if not ext_call.success:
            if not return_data.size:
                mem[mem[64]] = 32
                _2111 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2111] = mem[224 len 32 * _2111]
                return 32, mem[mem[64] + 32 len (32 * _2111) + 32]
            _2069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2069] = return_data.size
            mem[_2069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2112 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2112] = mem[224 len 32 * _2112]
            return 32, mem[mem[64] + 32 len (32 * _2112) + 32]
        _2060 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2070 = mem[_2060]
        require mem[_2060] <= test266151307()
        require _2060 + return_data.size > _2060 + mem[_2060] + 31
        _2081 = mem[_2060 + mem[_2060]]
        require mem[_2060 + mem[_2060]] <= test266151307()
        require (32 * mem[_2060 + mem[_2060]]) + 32 >= 0 and _2060 + ceil32(return_data.size) + (32 * mem[_2060 + mem[_2060]]) + 32 <= test266151307()
        mem[64] = _2060 + ceil32(return_data.size) + (32 * mem[_2060 + mem[_2060]]) + 32
        mem[_2060 + ceil32(return_data.size)] = _2081
        require return_data.size >= _2070 + (32 * _2081) + 32
        mem[_2060 + ceil32(return_data.size) + 32 len 32 * _2081] = mem[_2060 + _2070 + 32 len 32 * _2081]
        require _2081 - 1 < _2081
        require 2 < mem[192]
        mem[288] = mem[(32 * _2081 - 1) + _2060 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2264 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2264] = mem[224 len 32 * _2264]
        return 32, mem[mem[64] + 32 len (32 * _2264) + 32]
    _1674 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1688 = mem[_1674]
    require mem[_1674] <= test266151307()
    require _1674 + return_data.size > _1674 + mem[_1674] + 31
    _1703 = mem[_1674 + mem[_1674]]
    require mem[_1674 + mem[_1674]] <= test266151307()
    require (32 * mem[_1674 + mem[_1674]]) + 32 >= 0 and _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32 <= test266151307()
    mem[64] = _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32
    mem[_1674 + ceil32(return_data.size)] = _1703
    require return_data.size >= _1688 + (32 * _1703) + 32
    mem[_1674 + ceil32(return_data.size) + 32 len 32 * _1703] = mem[_1674 + _1688 + 32 len 32 * _1703]
    require _1703 - 1 < _1703
    require 1 < mem[192]
    mem[256] = mem[(32 * _1703 - 1) + _1674 + ceil32(return_data.size) + 32]
    if not Mask(1, 2, arg1):
        mem[mem[64]] = 32
        _2098 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2098] = mem[224 len 32 * _2098]
        return 32, mem[mem[64] + 32 len (32 * _2098) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        if not return_data.size:
            mem[mem[64]] = 32
            _2271 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2271] = mem[224 len 32 * _2271]
            return 32, mem[mem[64] + 32 len (32 * _2271) + 32]
        _2254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2254] = return_data.size
        mem[_2254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 32
        _2272 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2272] = mem[224 len 32 * _2272]
        return 32, mem[mem[64] + 32 len (32 * _2272) + 32]
    _2253 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2255 = mem[_2253]
    require mem[_2253] <= test266151307()
    require _2253 + return_data.size > _2253 + mem[_2253] + 31
    _2260 = mem[_2253 + mem[_2253]]
    require mem[_2253 + mem[_2253]] <= test266151307()
    require (32 * mem[_2253 + mem[_2253]]) + 32 >= 0 and _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32 <= test266151307()
    mem[64] = _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32
    mem[_2253 + ceil32(return_data.size)] = _2260
    require return_data.size >= _2255 + (32 * _2260) + 32
    mem[_2253 + ceil32(return_data.size) + 32 len 32 * _2260] = mem[_2253 + _2255 + 32 len 32 * _2260]
    require _2260 - 1 < _2260
    require 2 < mem[192]
    mem[288] = mem[(32 * _2260 - 1) + _2253 + ceil32(return_data.size) + 32]
    mem[mem[64]] = 32
    _2309 = mem[192]
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64 len 32 * _2309] = mem[224 len 32 * _2309]
    return 32, mem[mem[64] + 32 len (32 * _2309) + 32]
}

function sub_095c414e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Invalid input'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _720 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_720]
            mem[_720 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            require 1 < mem[_720]
            mem[_720 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_720 + 96] = 3
            mem[64] = _720 + 224
            mem[_720 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_720 + 260] = 64
                        mem[_720 + 292] = mem[_720]
                        s = 0
                        t = _720 + 32
                        u = _720 + 324
                        while s < mem[_720]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _1424 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1424] = return_data.size
                                mem[_1424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1418 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1425 = mem[_1418]
                            require mem[_1418] <= test266151307()
                            require _1418 + return_data.size > _1418 + mem[_1418] + 31
                            _1431 = mem[_1418 + mem[_1418]]
                            require mem[_1418 + mem[_1418]] <= test266151307()
                            require (32 * mem[_1418 + mem[_1418]]) + 32 >= 0 and _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32 <= test266151307()
                            mem[64] = _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32
                            mem[_1418 + ceil32(return_data.size)] = _1431
                            require return_data.size >= _1425 + (32 * _1431) + 32
                            t = _1418 + _1425 + 32
                            u = _1418 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1431:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _1431
                            require 2 < mem[_720 + 96]
                            mem[_720 + 192] = mem[_1418 + ceil32(return_data.size) + 32]
                else:
                    mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_720 + 260] = 64
                    mem[_720 + 292] = mem[_720]
                    s = 0
                    t = _720 + 32
                    u = _720 + 324
                    while s < mem[_720]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1444 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1444:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1444) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2133 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2133] = return_data.size
                                        mem[_2133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2120 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2134 = mem[_2120]
                                    require mem[_2120] <= test266151307()
                                    require _2120 + return_data.size > _2120 + mem[_2120] + 31
                                    _2154 = mem[_2120 + mem[_2120]]
                                    require mem[_2120 + mem[_2120]] <= test266151307()
                                    require (32 * mem[_2120 + mem[_2120]]) + 32 >= 0 and _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32 <= test266151307()
                                    mem[64] = _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32
                                    mem[_2120 + ceil32(return_data.size)] = _2154
                                    require return_data.size >= _2134 + (32 * _2154) + 32
                                    t = _2120 + _2134 + 32
                                    u = _2120 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2154:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2154
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2120 + ceil32(return_data.size) + 32]
                        else:
                            _1426 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1426] = return_data.size
                            mem[_1426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1437 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1445 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1445:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1437 + (32 * _1445) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2135 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2135] = return_data.size
                                        mem[_2135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2121 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2136 = mem[_2121]
                                    require mem[_2121] <= test266151307()
                                    require _2121 + return_data.size > _2121 + mem[_2121] + 31
                                    _2155 = mem[_2121 + mem[_2121]]
                                    require mem[_2121 + mem[_2121]] <= test266151307()
                                    require (32 * mem[_2121 + mem[_2121]]) + 32 >= 0 and _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32 <= test266151307()
                                    mem[64] = _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32
                                    mem[_2121 + ceil32(return_data.size)] = _2155
                                    require return_data.size >= _2136 + (32 * _2155) + 32
                                    t = _2121 + _2136 + 32
                                    u = _2121 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2155:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2155
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2121 + ceil32(return_data.size) + 32]
                    else:
                        _1419 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1427 = mem[_1419]
                        require mem[_1419] <= test266151307()
                        require _1419 + return_data.size > _1419 + mem[_1419] + 31
                        _1432 = mem[_1419 + mem[_1419]]
                        require mem[_1419 + mem[_1419]] <= test266151307()
                        require (32 * mem[_1419 + mem[_1419]]) + 32 >= 0 and _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32 <= test266151307()
                        mem[64] = _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32
                        mem[_1419 + ceil32(return_data.size)] = _1432
                        require return_data.size >= _1427 + (32 * _1432) + 32
                        t = _1419 + _1427 + 32
                        u = _1419 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1432:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _1432
                        require 1 < mem[_720 + 96]
                        mem[_720 + 160] = mem[_1419 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2152 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2169 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _2169:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2152 + (32 * _2169) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2791 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2791] = return_data.size
                                    mem[_2791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2764 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2792 = mem[_2764]
                                require mem[_2764] <= test266151307()
                                require _2764 + return_data.size > _2764 + mem[_2764] + 31
                                _2826 = mem[_2764 + mem[_2764]]
                                require mem[_2764 + mem[_2764]] <= test266151307()
                                require (32 * mem[_2764 + mem[_2764]]) + 32 >= 0 and _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32 <= test266151307()
                                mem[64] = _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32
                                mem[_2764 + ceil32(return_data.size)] = _2826
                                require return_data.size >= _2792 + (32 * _2826) + 32
                                t = _2764 + _2792 + 32
                                u = _2764 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2826:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2826
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2764 + ceil32(return_data.size) + 32]
            else:
                mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_720 + 260] = 64
                mem[_720 + 292] = mem[_720]
                s = 0
                t = _720 + 32
                u = _720 + 324
                while s < mem[_720]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _720 + (32 * mem[_720]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1442 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1452 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1452:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1442 + (32 * _1452) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2137 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2137] = return_data.size
                                        mem[_2137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2124 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2138 = mem[_2124]
                                    require mem[_2124] <= test266151307()
                                    require _2124 + return_data.size > _2124 + mem[_2124] + 31
                                    _2157 = mem[_2124 + mem[_2124]]
                                    require mem[_2124 + mem[_2124]] <= test266151307()
                                    require (32 * mem[_2124 + mem[_2124]]) + 32 >= 0 and _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32 <= test266151307()
                                    mem[64] = _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32
                                    mem[_2124 + ceil32(return_data.size)] = _2157
                                    require return_data.size >= _2138 + (32 * _2157) + 32
                                    t = _2124 + _2138 + 32
                                    u = _2124 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2157:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2157
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2124 + ceil32(return_data.size) + 32]
                        else:
                            _1438 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1447 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _1447:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1438 + (32 * _1447) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2172 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2196 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2196:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2172 + (32 * _2196) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2793 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2793] = return_data.size
                                                mem[_2793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2767 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2794 = mem[_2767]
                                            require mem[_2767] <= test266151307()
                                            require _2767 + return_data.size > _2767 + mem[_2767] + 31
                                            _2827 = mem[_2767 + mem[_2767]]
                                            require mem[_2767 + mem[_2767]] <= test266151307()
                                            require (32 * mem[_2767 + mem[_2767]]) + 32 >= 0 and _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32 <= test266151307()
                                            mem[64] = _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32
                                            mem[_2767 + ceil32(return_data.size)] = _2827
                                            require return_data.size >= _2794 + (32 * _2827) + 32
                                            t = _2767 + _2794 + 32
                                            u = _2767 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2827:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2827
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2767 + ceil32(return_data.size) + 32]
                                else:
                                    _2139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2139] = return_data.size
                                    mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2173 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2197 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2197:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2173 + (32 * _2197) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2795 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2795] = return_data.size
                                                mem[_2795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2768 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2796 = mem[_2768]
                                            require mem[_2768] <= test266151307()
                                            require _2768 + return_data.size > _2768 + mem[_2768] + 31
                                            _2828 = mem[_2768 + mem[_2768]]
                                            require mem[_2768 + mem[_2768]] <= test266151307()
                                            require (32 * mem[_2768 + mem[_2768]]) + 32 >= 0 and _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32 <= test266151307()
                                            mem[64] = _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32
                                            mem[_2768 + ceil32(return_data.size)] = _2828
                                            require return_data.size >= _2796 + (32 * _2828) + 32
                                            t = _2768 + _2796 + 32
                                            u = _2768 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2828:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2828
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2768 + ceil32(return_data.size) + 32]
                            else:
                                _2125 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2140 = mem[_2125]
                                require mem[_2125] <= test266151307()
                                require _2125 + return_data.size > _2125 + mem[_2125] + 31
                                _2158 = mem[_2125 + mem[_2125]]
                                require mem[_2125 + mem[_2125]] <= test266151307()
                                require (32 * mem[_2125 + mem[_2125]]) + 32 >= 0 and _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32 <= test266151307()
                                mem[64] = _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32
                                mem[_2125 + ceil32(return_data.size)] = _2158
                                require return_data.size >= _2140 + (32 * _2158) + 32
                                t = _2125 + _2140 + 32
                                u = _2125 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2158:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2158
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2125 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2820 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2849 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2849:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2820 + (32 * _2849) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3300] = return_data.size
                                            mem[_3300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3269 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3301 = mem[_3269]
                                        require mem[_3269] <= test266151307()
                                        require _3269 + return_data.size > _3269 + mem[_3269] + 31
                                        _3335 = mem[_3269 + mem[_3269]]
                                        require mem[_3269 + mem[_3269]] <= test266151307()
                                        require (32 * mem[_3269 + mem[_3269]]) + 32 >= 0 and _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32 <= test266151307()
                                        mem[64] = _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32
                                        mem[_3269 + ceil32(return_data.size)] = _3335
                                        require return_data.size >= _3301 + (32 * _3335) + 32
                                        t = _3269 + _3301 + 32
                                        u = _3269 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3335:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3335
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3269 + ceil32(return_data.size) + 32]
                    else:
                        _1428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1428] = return_data.size
                        mem[_1428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1443 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1453 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _1453:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1443 + (32 * _1453) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2141 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2141] = return_data.size
                                        mem[_2141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2126 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2142 = mem[_2126]
                                    require mem[_2126] <= test266151307()
                                    require _2126 + return_data.size > _2126 + mem[_2126] + 31
                                    _2159 = mem[_2126 + mem[_2126]]
                                    require mem[_2126 + mem[_2126]] <= test266151307()
                                    require (32 * mem[_2126 + mem[_2126]]) + 32 >= 0 and _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32 <= test266151307()
                                    mem[64] = _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32
                                    mem[_2126 + ceil32(return_data.size)] = _2159
                                    require return_data.size >= _2142 + (32 * _2159) + 32
                                    t = _2126 + _2142 + 32
                                    u = _2126 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2159:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2159
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2126 + ceil32(return_data.size) + 32]
                        else:
                            _1439 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1449 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _1449:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1439 + (32 * _1449) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2176 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2198 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2198:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2176 + (32 * _2198) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2797 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2797] = return_data.size
                                                mem[_2797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2773 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2798 = mem[_2773]
                                            require mem[_2773] <= test266151307()
                                            require _2773 + return_data.size > _2773 + mem[_2773] + 31
                                            _2830 = mem[_2773 + mem[_2773]]
                                            require mem[_2773 + mem[_2773]] <= test266151307()
                                            require (32 * mem[_2773 + mem[_2773]]) + 32 >= 0 and _2773 + ceil32(return_data.size) + (32 * mem[_2773 + mem[_2773]]) + 32 <= test266151307()
                                            mem[64] = _2773 + ceil32(return_data.size) + (32 * mem[_2773 + mem[_2773]]) + 32
                                            mem[_2773 + ceil32(return_data.size)] = _2830
                                            require return_data.size >= _2798 + (32 * _2830) + 32
                                            t = _2773 + _2798 + 32
                                            u = _2773 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2830:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2830
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2773 + ceil32(return_data.size) + 32]
                                else:
                                    _2143 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2143] = return_data.size
                                    mem[_2143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2177 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2199 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = _720 + 32
                                        u = mem[64] + 100
                                        while s < _2199:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2177 + (32 * _2199) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2799] = return_data.size
                                                mem[_2799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2774 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2800 = mem[_2774]
                                            require mem[_2774] <= test266151307()
                                            require _2774 + return_data.size > _2774 + mem[_2774] + 31
                                            _2831 = mem[_2774 + mem[_2774]]
                                            require mem[_2774 + mem[_2774]] <= test266151307()
                                            require (32 * mem[_2774 + mem[_2774]]) + 32 >= 0 and _2774 + ceil32(return_data.size) + (32 * mem[_2774 + mem[_2774]]) + 32 <= test266151307()
                                            mem[64] = _2774 + ceil32(return_data.size) + (32 * mem[_2774 + mem[_2774]]) + 32
                                            mem[_2774 + ceil32(return_data.size)] = _2831
                                            require return_data.size >= _2800 + (32 * _2831) + 32
                                            t = _2774 + _2800 + 32
                                            u = _2774 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2831:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2831
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2774 + ceil32(return_data.size) + 32]
                            else:
                                _2127 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2144 = mem[_2127]
                                require mem[_2127] <= test266151307()
                                require _2127 + return_data.size > _2127 + mem[_2127] + 31
                                _2160 = mem[_2127 + mem[_2127]]
                                require mem[_2127 + mem[_2127]] <= test266151307()
                                require (32 * mem[_2127 + mem[_2127]]) + 32 >= 0 and _2127 + ceil32(return_data.size) + (32 * mem[_2127 + mem[_2127]]) + 32 <= test266151307()
                                mem[64] = _2127 + ceil32(return_data.size) + (32 * mem[_2127 + mem[_2127]]) + 32
                                mem[_2127 + ceil32(return_data.size)] = _2160
                                require return_data.size >= _2144 + (32 * _2160) + 32
                                t = _2127 + _2144 + 32
                                u = _2127 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2160:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2160
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2127 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2822 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2854 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2854:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2822 + (32 * _2854) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3302] = return_data.size
                                            mem[_3302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3274 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3303 = mem[_3274]
                                        require mem[_3274] <= test266151307()
                                        require _3274 + return_data.size > _3274 + mem[_3274] + 31
                                        _3336 = mem[_3274 + mem[_3274]]
                                        require mem[_3274 + mem[_3274]] <= test266151307()
                                        require (32 * mem[_3274 + mem[_3274]]) + 32 >= 0 and _3274 + ceil32(return_data.size) + (32 * mem[_3274 + mem[_3274]]) + 32 <= test266151307()
                                        mem[64] = _3274 + ceil32(return_data.size) + (32 * mem[_3274 + mem[_3274]]) + 32
                                        mem[_3274 + ceil32(return_data.size)] = _3336
                                        require return_data.size >= _3303 + (32 * _3336) + 32
                                        t = _3274 + _3303 + 32
                                        u = _3274 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3336:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3336
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3274 + ceil32(return_data.size) + 32]
                else:
                    _1420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1429 = mem[_1420]
                    require mem[_1420] <= test266151307()
                    require _1420 + return_data.size > _1420 + mem[_1420] + 31
                    _1433 = mem[_1420 + mem[_1420]]
                    require mem[_1420 + mem[_1420]] <= test266151307()
                    require (32 * mem[_1420 + mem[_1420]]) + 32 >= 0 and _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32 <= test266151307()
                    mem[64] = _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32
                    mem[_1420 + ceil32(return_data.size)] = _1433
                    require return_data.size >= _1429 + (32 * _1433) + 32
                    t = _1420 + _1429 + 32
                    u = _1420 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1433:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _1433
                    require 0 < mem[_720 + 96]
                    mem[_720 + 128] = mem[_1420 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2161 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2190 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = _720 + 32
                            u = mem[64] + 100
                            while s < _2190:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2161 + (32 * _2190) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2801] = return_data.size
                                    mem[_2801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2777 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2802 = mem[_2777]
                                require mem[_2777] <= test266151307()
                                require _2777 + return_data.size > _2777 + mem[_2777] + 31
                                _2833 = mem[_2777 + mem[_2777]]
                                require mem[_2777 + mem[_2777]] <= test266151307()
                                require (32 * mem[_2777 + mem[_2777]]) + 32 >= 0 and _2777 + ceil32(return_data.size) + (32 * mem[_2777 + mem[_2777]]) + 32 <= test266151307()
                                mem[64] = _2777 + ceil32(return_data.size) + (32 * mem[_2777 + mem[_2777]]) + 32
                                mem[_2777 + ceil32(return_data.size)] = _2833
                                require return_data.size >= _2802 + (32 * _2833) + 32
                                t = _2777 + _2802 + 32
                                u = _2777 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2833:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2833
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2777 + ceil32(return_data.size) + 32]
                    else:
                        _2153 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2179 = mem[_720]
                        mem[mem[64] + 68] = mem[_720]
                        s = 0
                        t = _720 + 32
                        u = mem[64] + 100
                        while s < _2179:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2153 + (32 * _2179) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2857 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2883 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2883:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2857 + (32 * _2883) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3304 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3304] = return_data.size
                                            mem[_3304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3277 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3305 = mem[_3277]
                                        require mem[_3277] <= test266151307()
                                        require _3277 + return_data.size > _3277 + mem[_3277] + 31
                                        _3337 = mem[_3277 + mem[_3277]]
                                        require mem[_3277 + mem[_3277]] <= test266151307()
                                        require (32 * mem[_3277 + mem[_3277]]) + 32 >= 0 and _3277 + ceil32(return_data.size) + (32 * mem[_3277 + mem[_3277]]) + 32 <= test266151307()
                                        mem[64] = _3277 + ceil32(return_data.size) + (32 * mem[_3277 + mem[_3277]]) + 32
                                        mem[_3277 + ceil32(return_data.size)] = _3337
                                        require return_data.size >= _3305 + (32 * _3337) + 32
                                        t = _3277 + _3305 + 32
                                        u = _3277 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3337:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3337
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3277 + ceil32(return_data.size) + 32]
                            else:
                                _2803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2803] = return_data.size
                                mem[_2803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2884 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = _720 + 32
                                    u = mem[64] + 100
                                    while s < _2884:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2884) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3306] = return_data.size
                                            mem[_3306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3278 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3307 = mem[_3278]
                                        require mem[_3278] <= test266151307()
                                        require _3278 + return_data.size > _3278 + mem[_3278] + 31
                                        _3338 = mem[_3278 + mem[_3278]]
                                        require mem[_3278 + mem[_3278]] <= test266151307()
                                        require (32 * mem[_3278 + mem[_3278]]) + 32 >= 0 and _3278 + ceil32(return_data.size) + (32 * mem[_3278 + mem[_3278]]) + 32 <= test266151307()
                                        mem[64] = _3278 + ceil32(return_data.size) + (32 * mem[_3278 + mem[_3278]]) + 32
                                        mem[_3278 + ceil32(return_data.size)] = _3338
                                        require return_data.size >= _3307 + (32 * _3338) + 32
                                        t = _3278 + _3307 + 32
                                        u = _3278 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3338:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3338
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3278 + ceil32(return_data.size) + 32]
                        else:
                            _2778 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2804 = mem[_2778]
                            require mem[_2778] <= test266151307()
                            require _2778 + return_data.size > _2778 + mem[_2778] + 31
                            _2834 = mem[_2778 + mem[_2778]]
                            require mem[_2778 + mem[_2778]] <= test266151307()
                            require (32 * mem[_2778 + mem[_2778]]) + 32 >= 0 and _2778 + ceil32(return_data.size) + (32 * mem[_2778 + mem[_2778]]) + 32 <= test266151307()
                            mem[64] = _2778 + ceil32(return_data.size) + (32 * mem[_2778 + mem[_2778]]) + 32
                            mem[_2778 + ceil32(return_data.size)] = _2834
                            require return_data.size >= _2804 + (32 * _2834) + 32
                            t = _2778 + _2804 + 32
                            u = _2778 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2834:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2834
                            require 1 < mem[_720 + 96]
                            mem[_720 + 160] = mem[_2778 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _3328 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3357 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = _720 + 32
                                u = mem[64] + 100
                                while s < _3357:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3328 + (32 * _3357) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3589 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3589] = return_data.size
                                        mem[_3589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3570 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3590 = mem[_3570]
                                    require mem[_3570] <= test266151307()
                                    require _3570 + return_data.size > _3570 + mem[_3570] + 31
                                    _3610 = mem[_3570 + mem[_3570]]
                                    require mem[_3570 + mem[_3570]] <= test266151307()
                                    require (32 * mem[_3570 + mem[_3570]]) + 32 >= 0 and _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32 <= test266151307()
                                    mem[64] = _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32
                                    mem[_3570 + ceil32(return_data.size)] = _3610
                                    require return_data.size >= _3590 + (32 * _3610) + 32
                                    t = _3570 + _3590 + 32
                                    u = _3570 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3610:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3610
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_3570 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _720 + 96
            idx = idx + 1
            continue 
        _708 = mem[64]
        mem[mem[64]] = 32
        _709 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _709:
            mem[t] = u + -_708 - 64
            _1406 = mem[s]
            _1411 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _1406 + 32
            x = u + 32
            while v < _1411:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _1411 + 1
            w = _1406 + (32 * _1411) + 64
            t = t + 32
            u = u + (32 * _1411) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _1491 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1491]
            mem[_1491 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            require 1 < mem[_1491]
            mem[_1491 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_1491 + 96] = 3
            mem[64] = _1491 + 224
            mem[_1491 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1491 + 260] = 64
                        mem[_1491 + 292] = mem[_1491]
                        s = 0
                        t = _1491 + 32
                        u = _1491 + 324
                        while s < mem[_1491]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2145] = return_data.size
                                mem[_2145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2130 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2146 = mem[_2130]
                            require mem[_2130] <= test266151307()
                            require _2130 + return_data.size > _2130 + mem[_2130] + 31
                            _2162 = mem[_2130 + mem[_2130]]
                            require mem[_2130 + mem[_2130]] <= test266151307()
                            require (32 * mem[_2130 + mem[_2130]]) + 32 >= 0 and _2130 + ceil32(return_data.size) + (32 * mem[_2130 + mem[_2130]]) + 32 <= test266151307()
                            mem[64] = _2130 + ceil32(return_data.size) + (32 * mem[_2130 + mem[_2130]]) + 32
                            mem[_2130 + ceil32(return_data.size)] = _2162
                            require return_data.size >= _2146 + (32 * _2162) + 32
                            t = _2130 + _2146 + 32
                            u = _2130 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2162:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2162
                            require 2 < mem[_1491 + 96]
                            mem[_1491 + 192] = mem[_2130 + ceil32(return_data.size) + 32]
                else:
                    mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1491 + 260] = 64
                    mem[_1491 + 292] = mem[_1491]
                    s = 0
                    t = _1491 + 32
                    u = _1491 + 324
                    while s < mem[_1491]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2201 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2201:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2201) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2805 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2805] = return_data.size
                                        mem[_2805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2781 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2806 = mem[_2781]
                                    require mem[_2781] <= test266151307()
                                    require _2781 + return_data.size > _2781 + mem[_2781] + 31
                                    _2835 = mem[_2781 + mem[_2781]]
                                    require mem[_2781 + mem[_2781]] <= test266151307()
                                    require (32 * mem[_2781 + mem[_2781]]) + 32 >= 0 and _2781 + ceil32(return_data.size) + (32 * mem[_2781 + mem[_2781]]) + 32 <= test266151307()
                                    mem[64] = _2781 + ceil32(return_data.size) + (32 * mem[_2781 + mem[_2781]]) + 32
                                    mem[_2781 + ceil32(return_data.size)] = _2835
                                    require return_data.size >= _2806 + (32 * _2835) + 32
                                    t = _2781 + _2806 + 32
                                    u = _2781 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2835:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2835
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2781 + ceil32(return_data.size) + 32]
                        else:
                            _2147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2147] = return_data.size
                            mem[_2147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2202 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2202:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2202) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2807 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2807] = return_data.size
                                        mem[_2807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2782 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2808 = mem[_2782]
                                    require mem[_2782] <= test266151307()
                                    require _2782 + return_data.size > _2782 + mem[_2782] + 31
                                    _2836 = mem[_2782 + mem[_2782]]
                                    require mem[_2782 + mem[_2782]] <= test266151307()
                                    require (32 * mem[_2782 + mem[_2782]]) + 32 >= 0 and _2782 + ceil32(return_data.size) + (32 * mem[_2782 + mem[_2782]]) + 32 <= test266151307()
                                    mem[64] = _2782 + ceil32(return_data.size) + (32 * mem[_2782 + mem[_2782]]) + 32
                                    mem[_2782 + ceil32(return_data.size)] = _2836
                                    require return_data.size >= _2808 + (32 * _2836) + 32
                                    t = _2782 + _2808 + 32
                                    u = _2782 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2836:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2836
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2782 + ceil32(return_data.size) + 32]
                    else:
                        _2131 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2148 = mem[_2131]
                        require mem[_2131] <= test266151307()
                        require _2131 + return_data.size > _2131 + mem[_2131] + 31
                        _2163 = mem[_2131 + mem[_2131]]
                        require mem[_2131 + mem[_2131]] <= test266151307()
                        require (32 * mem[_2131 + mem[_2131]]) + 32 >= 0 and _2131 + ceil32(return_data.size) + (32 * mem[_2131 + mem[_2131]]) + 32 <= test266151307()
                        mem[64] = _2131 + ceil32(return_data.size) + (32 * mem[_2131 + mem[_2131]]) + 32
                        mem[_2131 + ceil32(return_data.size)] = _2163
                        require return_data.size >= _2148 + (32 * _2163) + 32
                        t = _2131 + _2148 + 32
                        u = _2131 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2163:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _2163
                        require 1 < mem[_1491 + 96]
                        mem[_1491 + 160] = mem[_2131 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2863 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2863:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2863) + 32]
                            if not ext_call.success:
                                if return_data.size:
                                    _3308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3308] = return_data.size
                                    mem[_3308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3285 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3309 = mem[_3285]
                                require mem[_3285] <= test266151307()
                                require _3285 + return_data.size > _3285 + mem[_3285] + 31
                                _3340 = mem[_3285 + mem[_3285]]
                                require mem[_3285 + mem[_3285]] <= test266151307()
                                require (32 * mem[_3285 + mem[_3285]]) + 32 >= 0 and _3285 + ceil32(return_data.size) + (32 * mem[_3285 + mem[_3285]]) + 32 <= test266151307()
                                mem[64] = _3285 + ceil32(return_data.size) + (32 * mem[_3285 + mem[_3285]]) + 32
                                mem[_3285 + ceil32(return_data.size)] = _3340
                                require return_data.size >= _3309 + (32 * _3340) + 32
                                t = _3285 + _3309 + 32
                                u = _3285 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3340:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3340
                                require 2 < mem[_1491 + 96]
                                mem[_1491 + 192] = mem[_3285 + ceil32(return_data.size) + 32]
            else:
                mem[_1491 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_1491 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1491 + 260] = 64
                mem[_1491 + 292] = mem[_1491]
                s = 0
                t = _1491 + 32
                u = _1491 + 324
                while s < mem[_1491]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1491 + (32 * mem[_1491]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2193 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2216 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2216:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2193 + (32 * _2216) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2809 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2809] = return_data.size
                                        mem[_2809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2785 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2810 = mem[_2785]
                                    require mem[_2785] <= test266151307()
                                    require _2785 + return_data.size > _2785 + mem[_2785] + 31
                                    _2838 = mem[_2785 + mem[_2785]]
                                    require mem[_2785 + mem[_2785]] <= test266151307()
                                    require (32 * mem[_2785 + mem[_2785]]) + 32 >= 0 and _2785 + ceil32(return_data.size) + (32 * mem[_2785 + mem[_2785]]) + 32 <= test266151307()
                                    mem[64] = _2785 + ceil32(return_data.size) + (32 * mem[_2785 + mem[_2785]]) + 32
                                    mem[_2785 + ceil32(return_data.size)] = _2838
                                    require return_data.size >= _2810 + (32 * _2838) + 32
                                    t = _2785 + _2810 + 32
                                    u = _2785 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2838:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2838
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2785 + ceil32(return_data.size) + 32]
                        else:
                            _2184 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2204 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2204:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2184 + (32 * _2204) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2886 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2886:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2886) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3310 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3310] = return_data.size
                                                mem[_3310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3288 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3311 = mem[_3288]
                                            require mem[_3288] <= test266151307()
                                            require _3288 + return_data.size > _3288 + mem[_3288] + 31
                                            _3341 = mem[_3288 + mem[_3288]]
                                            require mem[_3288 + mem[_3288]] <= test266151307()
                                            require (32 * mem[_3288 + mem[_3288]]) + 32 >= 0 and _3288 + ceil32(return_data.size) + (32 * mem[_3288 + mem[_3288]]) + 32 <= test266151307()
                                            mem[64] = _3288 + ceil32(return_data.size) + (32 * mem[_3288 + mem[_3288]]) + 32
                                            mem[_3288 + ceil32(return_data.size)] = _3341
                                            require return_data.size >= _3311 + (32 * _3341) + 32
                                            t = _3288 + _3311 + 32
                                            u = _3288 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3341:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3341
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3288 + ceil32(return_data.size) + 32]
                                else:
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2811] = return_data.size
                                    mem[_2811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2887 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2887:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2887) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3312 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3312] = return_data.size
                                                mem[_3312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3289 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3313 = mem[_3289]
                                            require mem[_3289] <= test266151307()
                                            require _3289 + return_data.size > _3289 + mem[_3289] + 31
                                            _3342 = mem[_3289 + mem[_3289]]
                                            require mem[_3289 + mem[_3289]] <= test266151307()
                                            require (32 * mem[_3289 + mem[_3289]]) + 32 >= 0 and _3289 + ceil32(return_data.size) + (32 * mem[_3289 + mem[_3289]]) + 32 <= test266151307()
                                            mem[64] = _3289 + ceil32(return_data.size) + (32 * mem[_3289 + mem[_3289]]) + 32
                                            mem[_3289 + ceil32(return_data.size)] = _3342
                                            require return_data.size >= _3313 + (32 * _3342) + 32
                                            t = _3289 + _3313 + 32
                                            u = _3289 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3342:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3342
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3289 + ceil32(return_data.size) + 32]
                            else:
                                _2786 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2812 = mem[_2786]
                                require mem[_2786] <= test266151307()
                                require _2786 + return_data.size > _2786 + mem[_2786] + 31
                                _2839 = mem[_2786 + mem[_2786]]
                                require mem[_2786 + mem[_2786]] <= test266151307()
                                require (32 * mem[_2786 + mem[_2786]]) + 32 >= 0 and _2786 + ceil32(return_data.size) + (32 * mem[_2786 + mem[_2786]]) + 32 <= test266151307()
                                mem[64] = _2786 + ceil32(return_data.size) + (32 * mem[_2786 + mem[_2786]]) + 32
                                mem[_2786 + ceil32(return_data.size)] = _2839
                                require return_data.size >= _2812 + (32 * _2839) + 32
                                t = _2786 + _2812 + 32
                                u = _2786 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2839:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2839
                                require 1 < mem[_1491 + 96]
                                mem[_1491 + 160] = mem[_2786 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3332 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3364 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3364:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3332 + (32 * _3364) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3591 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3591] = return_data.size
                                            mem[_3591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3577 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3592 = mem[_3577]
                                        require mem[_3577] <= test266151307()
                                        require _3577 + return_data.size > _3577 + mem[_3577] + 31
                                        _3611 = mem[_3577 + mem[_3577]]
                                        require mem[_3577 + mem[_3577]] <= test266151307()
                                        require (32 * mem[_3577 + mem[_3577]]) + 32 >= 0 and _3577 + ceil32(return_data.size) + (32 * mem[_3577 + mem[_3577]]) + 32 <= test266151307()
                                        mem[64] = _3577 + ceil32(return_data.size) + (32 * mem[_3577 + mem[_3577]]) + 32
                                        mem[_3577 + ceil32(return_data.size)] = _3611
                                        require return_data.size >= _3592 + (32 * _3611) + 32
                                        t = _3577 + _3592 + 32
                                        u = _3577 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3611:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3611
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3577 + ceil32(return_data.size) + 32]
                    else:
                        _2149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2149] = return_data.size
                        mem[_2149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2194 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2217 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _2217:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2194 + (32 * _2217) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2813] = return_data.size
                                        mem[_2813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2787 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2814 = mem[_2787]
                                    require mem[_2787] <= test266151307()
                                    require _2787 + return_data.size > _2787 + mem[_2787] + 31
                                    _2840 = mem[_2787 + mem[_2787]]
                                    require mem[_2787 + mem[_2787]] <= test266151307()
                                    require (32 * mem[_2787 + mem[_2787]]) + 32 >= 0 and _2787 + ceil32(return_data.size) + (32 * mem[_2787 + mem[_2787]]) + 32 <= test266151307()
                                    mem[64] = _2787 + ceil32(return_data.size) + (32 * mem[_2787 + mem[_2787]]) + 32
                                    mem[_2787 + ceil32(return_data.size)] = _2840
                                    require return_data.size >= _2814 + (32 * _2840) + 32
                                    t = _2787 + _2814 + 32
                                    u = _2787 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2840:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2840
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_2787 + ceil32(return_data.size) + 32]
                        else:
                            _2185 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2206 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2206:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2185 + (32 * _2206) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2888 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2888:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2888) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3314 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3314] = return_data.size
                                                mem[_3314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3294 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3315 = mem[_3294]
                                            require mem[_3294] <= test266151307()
                                            require _3294 + return_data.size > _3294 + mem[_3294] + 31
                                            _3344 = mem[_3294 + mem[_3294]]
                                            require mem[_3294 + mem[_3294]] <= test266151307()
                                            require (32 * mem[_3294 + mem[_3294]]) + 32 >= 0 and _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32 <= test266151307()
                                            mem[64] = _3294 + ceil32(return_data.size) + (32 * mem[_3294 + mem[_3294]]) + 32
                                            mem[_3294 + ceil32(return_data.size)] = _3344
                                            require return_data.size >= _3315 + (32 * _3344) + 32
                                            t = _3294 + _3315 + 32
                                            u = _3294 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3344:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3344
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3294 + ceil32(return_data.size) + 32]
                                else:
                                    _2815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2815] = return_data.size
                                    mem[_2815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2871 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2889 = mem[_1491]
                                        mem[mem[64] + 68] = mem[_1491]
                                        s = 0
                                        t = _1491 + 32
                                        u = mem[64] + 100
                                        while s < _2889:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2871 + (32 * _2889) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3316 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3316] = return_data.size
                                                mem[_3316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3295 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3317 = mem[_3295]
                                            require mem[_3295] <= test266151307()
                                            require _3295 + return_data.size > _3295 + mem[_3295] + 31
                                            _3345 = mem[_3295 + mem[_3295]]
                                            require mem[_3295 + mem[_3295]] <= test266151307()
                                            require (32 * mem[_3295 + mem[_3295]]) + 32 >= 0 and _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32 <= test266151307()
                                            mem[64] = _3295 + ceil32(return_data.size) + (32 * mem[_3295 + mem[_3295]]) + 32
                                            mem[_3295 + ceil32(return_data.size)] = _3345
                                            require return_data.size >= _3317 + (32 * _3345) + 32
                                            t = _3295 + _3317 + 32
                                            u = _3295 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3345:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3345
                                            require 2 < mem[_1491 + 96]
                                            mem[_1491 + 192] = mem[_3295 + ceil32(return_data.size) + 32]
                            else:
                                _2788 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2816 = mem[_2788]
                                require mem[_2788] <= test266151307()
                                require _2788 + return_data.size > _2788 + mem[_2788] + 31
                                _2841 = mem[_2788 + mem[_2788]]
                                require mem[_2788 + mem[_2788]] <= test266151307()
                                require (32 * mem[_2788 + mem[_2788]]) + 32 >= 0 and _2788 + ceil32(return_data.size) + (32 * mem[_2788 + mem[_2788]]) + 32 <= test266151307()
                                mem[64] = _2788 + ceil32(return_data.size) + (32 * mem[_2788 + mem[_2788]]) + 32
                                mem[_2788 + ceil32(return_data.size)] = _2841
                                require return_data.size >= _2816 + (32 * _2841) + 32
                                t = _2788 + _2816 + 32
                                u = _2788 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2841:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2841
                                require 1 < mem[_1491 + 96]
                                mem[_1491 + 160] = mem[_2788 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3334 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3369 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3369:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3334 + (32 * _3369) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3593 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3593] = return_data.size
                                            mem[_3593 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3582 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3594 = mem[_3582]
                                        require mem[_3582] <= test266151307()
                                        require _3582 + return_data.size > _3582 + mem[_3582] + 31
                                        _3612 = mem[_3582 + mem[_3582]]
                                        require mem[_3582 + mem[_3582]] <= test266151307()
                                        require (32 * mem[_3582 + mem[_3582]]) + 32 >= 0 and _3582 + ceil32(return_data.size) + (32 * mem[_3582 + mem[_3582]]) + 32 <= test266151307()
                                        mem[64] = _3582 + ceil32(return_data.size) + (32 * mem[_3582 + mem[_3582]]) + 32
                                        mem[_3582 + ceil32(return_data.size)] = _3612
                                        require return_data.size >= _3594 + (32 * _3612) + 32
                                        t = _3582 + _3594 + 32
                                        u = _3582 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3612:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3612
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3582 + ceil32(return_data.size) + 32]
                else:
                    _2132 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2150 = mem[_2132]
                    require mem[_2132] <= test266151307()
                    require _2132 + return_data.size > _2132 + mem[_2132] + 31
                    _2164 = mem[_2132 + mem[_2132]]
                    require mem[_2132 + mem[_2132]] <= test266151307()
                    require (32 * mem[_2132 + mem[_2132]]) + 32 >= 0 and _2132 + ceil32(return_data.size) + (32 * mem[_2132 + mem[_2132]]) + 32 <= test266151307()
                    mem[64] = _2132 + ceil32(return_data.size) + (32 * mem[_2132 + mem[_2132]]) + 32
                    mem[_2132 + ceil32(return_data.size)] = _2164
                    require return_data.size >= _2150 + (32 * _2164) + 32
                    t = _2132 + _2150 + 32
                    u = _2132 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2164:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _2164
                    require 0 < mem[_1491 + 96]
                    mem[_1491 + 128] = mem[_2132 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2842 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2880 = mem[_1491]
                            mem[mem[64] + 68] = mem[_1491]
                            s = 0
                            t = _1491 + 32
                            u = mem[64] + 100
                            while s < _2880:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2842 + (32 * _2880) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3318] = return_data.size
                                    mem[_3318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3298 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3319 = mem[_3298]
                                require mem[_3298] <= test266151307()
                                require _3298 + return_data.size > _3298 + mem[_3298] + 31
                                _3347 = mem[_3298 + mem[_3298]]
                                require mem[_3298 + mem[_3298]] <= test266151307()
                                require (32 * mem[_3298 + mem[_3298]]) + 32 >= 0 and _3298 + ceil32(return_data.size) + (32 * mem[_3298 + mem[_3298]]) + 32 <= test266151307()
                                mem[64] = _3298 + ceil32(return_data.size) + (32 * mem[_3298 + mem[_3298]]) + 32
                                mem[_3298 + ceil32(return_data.size)] = _3347
                                require return_data.size >= _3319 + (32 * _3347) + 32
                                t = _3298 + _3319 + 32
                                u = _3298 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3347:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3347
                                require 2 < mem[_1491 + 96]
                                mem[_1491 + 192] = mem[_3298 + ceil32(return_data.size) + 32]
                    else:
                        _2825 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2873 = mem[_1491]
                        mem[mem[64] + 68] = mem[_1491]
                        s = 0
                        t = _1491 + 32
                        u = mem[64] + 100
                        while s < _2873:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2825 + (32 * _2873) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3372 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3379 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3379:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3372 + (32 * _3379) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3595 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3595] = return_data.size
                                            mem[_3595 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3585 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3596 = mem[_3585]
                                        require mem[_3585] <= test266151307()
                                        require _3585 + return_data.size > _3585 + mem[_3585] + 31
                                        _3613 = mem[_3585 + mem[_3585]]
                                        require mem[_3585 + mem[_3585]] <= test266151307()
                                        require (32 * mem[_3585 + mem[_3585]]) + 32 >= 0 and _3585 + ceil32(return_data.size) + (32 * mem[_3585 + mem[_3585]]) + 32 <= test266151307()
                                        mem[64] = _3585 + ceil32(return_data.size) + (32 * mem[_3585 + mem[_3585]]) + 32
                                        mem[_3585 + ceil32(return_data.size)] = _3613
                                        require return_data.size >= _3596 + (32 * _3613) + 32
                                        t = _3585 + _3596 + 32
                                        u = _3585 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3613:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3613
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3585 + ceil32(return_data.size) + 32]
                            else:
                                _3320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3320] = return_data.size
                                mem[_3320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3373 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3380 = mem[_1491]
                                    mem[mem[64] + 68] = mem[_1491]
                                    s = 0
                                    t = _1491 + 32
                                    u = mem[64] + 100
                                    while s < _3380:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3373 + (32 * _3380) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3597] = return_data.size
                                            mem[_3597 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3586 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3598 = mem[_3586]
                                        require mem[_3586] <= test266151307()
                                        require _3586 + return_data.size > _3586 + mem[_3586] + 31
                                        _3614 = mem[_3586 + mem[_3586]]
                                        require mem[_3586 + mem[_3586]] <= test266151307()
                                        require (32 * mem[_3586 + mem[_3586]]) + 32 >= 0 and _3586 + ceil32(return_data.size) + (32 * mem[_3586 + mem[_3586]]) + 32 <= test266151307()
                                        mem[64] = _3586 + ceil32(return_data.size) + (32 * mem[_3586 + mem[_3586]]) + 32
                                        mem[_3586 + ceil32(return_data.size)] = _3614
                                        require return_data.size >= _3598 + (32 * _3614) + 32
                                        t = _3586 + _3598 + 32
                                        u = _3586 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3614:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3614
                                        require 2 < mem[_1491 + 96]
                                        mem[_1491 + 192] = mem[_3586 + ceil32(return_data.size) + 32]
                        else:
                            _3299 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3321 = mem[_3299]
                            require mem[_3299] <= test266151307()
                            require _3299 + return_data.size > _3299 + mem[_3299] + 31
                            _3348 = mem[_3299 + mem[_3299]]
                            require mem[_3299 + mem[_3299]] <= test266151307()
                            require (32 * mem[_3299 + mem[_3299]]) + 32 >= 0 and _3299 + ceil32(return_data.size) + (32 * mem[_3299 + mem[_3299]]) + 32 <= test266151307()
                            mem[64] = _3299 + ceil32(return_data.size) + (32 * mem[_3299 + mem[_3299]]) + 32
                            mem[_3299 + ceil32(return_data.size)] = _3348
                            require return_data.size >= _3321 + (32 * _3348) + 32
                            t = _3299 + _3321 + 32
                            u = _3299 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3348:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _3348
                            require 1 < mem[_1491 + 96]
                            mem[_1491 + 160] = mem[_3299 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3626 = mem[_1491]
                                mem[mem[64] + 68] = mem[_1491]
                                s = 0
                                t = _1491 + 32
                                u = mem[64] + 100
                                while s < _3626:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3626) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3694 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3694] = return_data.size
                                        mem[_3694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3693 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3695 = mem[_3693]
                                    require mem[_3693] <= test266151307()
                                    require _3693 + return_data.size > _3693 + mem[_3693] + 31
                                    _3701 = mem[_3693 + mem[_3693]]
                                    require mem[_3693 + mem[_3693]] <= test266151307()
                                    require (32 * mem[_3693 + mem[_3693]]) + 32 >= 0 and _3693 + ceil32(return_data.size) + (32 * mem[_3693 + mem[_3693]]) + 32 <= test266151307()
                                    mem[64] = _3693 + ceil32(return_data.size) + (32 * mem[_3693 + mem[_3693]]) + 32
                                    mem[_3693 + ceil32(return_data.size)] = _3701
                                    require return_data.size >= _3695 + (32 * _3701) + 32
                                    t = _3693 + _3695 + 32
                                    u = _3693 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3701:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3701
                                    require 2 < mem[_1491 + 96]
                                    mem[_1491 + 192] = mem[_3693 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1491 + 96
            idx = idx + 1
            continue 
        _1412 = mem[64]
        mem[mem[64]] = 32
        _1416 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1416:
            mem[t] = u + -_1412 - 64
            _2099 = mem[s]
            _2104 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2099 + 32
            x = u + 32
            while v < _2104:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2104 + 1
            w = _2099 + (32 * _2104) + 64
            t = t + 32
            u = u + (32 * _2104) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_37ad065c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Invalid input'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _762 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_762]
            mem[_762 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            require 1 < mem[_762]
            mem[_762 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_762 + 96] = 3
            mem[64] = _762 + 224
            mem[_762 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_762 + 260] = 64
                        mem[_762 + 292] = mem[_762]
                        s = 0
                        t = _762 + 32
                        u = _762 + 324
                        while s < mem[_762]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _1508 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1508] = return_data.size
                                mem[_1508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1502 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1509 = mem[_1502]
                            require mem[_1502] <= test266151307()
                            require _1502 + return_data.size > _1502 + mem[_1502] + 31
                            _1515 = mem[_1502 + mem[_1502]]
                            require mem[_1502 + mem[_1502]] <= test266151307()
                            require (32 * mem[_1502 + mem[_1502]]) + 32 >= 0 and _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32 <= test266151307()
                            mem[64] = _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32
                            mem[_1502 + ceil32(return_data.size)] = _1515
                            require return_data.size >= _1509 + (32 * _1515) + 32
                            t = _1502 + _1509 + 32
                            u = _1502 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1515:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _1515 - 1 < _1515
                            require 2 < mem[_762 + 96]
                            mem[_762 + 192] = mem[(32 * _1515 - 1) + _1502 + ceil32(return_data.size) + 32]
                else:
                    mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_762 + 260] = 64
                    mem[_762 + 292] = mem[_762]
                    s = 0
                    t = _762 + 32
                    u = _762 + 324
                    while s < mem[_762]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1520 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1528 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1528:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1520 + (32 * _1528) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2262 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2262] = return_data.size
                                        mem[_2262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2249 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2263 = mem[_2249]
                                    require mem[_2249] <= test266151307()
                                    require _2249 + return_data.size > _2249 + mem[_2249] + 31
                                    _2283 = mem[_2249 + mem[_2249]]
                                    require mem[_2249 + mem[_2249]] <= test266151307()
                                    require (32 * mem[_2249 + mem[_2249]]) + 32 >= 0 and _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32 <= test266151307()
                                    mem[64] = _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32
                                    mem[_2249 + ceil32(return_data.size)] = _2283
                                    require return_data.size >= _2263 + (32 * _2283) + 32
                                    t = _2249 + _2263 + 32
                                    u = _2249 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2283:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2283 - 1 < _2283
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2283 - 1) + _2249 + ceil32(return_data.size) + 32]
                        else:
                            _1510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1510] = return_data.size
                            mem[_1510 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1521 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1529 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1529:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1521 + (32 * _1529) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2264 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2264] = return_data.size
                                        mem[_2264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2250 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2265 = mem[_2250]
                                    require mem[_2250] <= test266151307()
                                    require _2250 + return_data.size > _2250 + mem[_2250] + 31
                                    _2284 = mem[_2250 + mem[_2250]]
                                    require mem[_2250 + mem[_2250]] <= test266151307()
                                    require (32 * mem[_2250 + mem[_2250]]) + 32 >= 0 and _2250 + ceil32(return_data.size) + (32 * mem[_2250 + mem[_2250]]) + 32 <= test266151307()
                                    mem[64] = _2250 + ceil32(return_data.size) + (32 * mem[_2250 + mem[_2250]]) + 32
                                    mem[_2250 + ceil32(return_data.size)] = _2284
                                    require return_data.size >= _2265 + (32 * _2284) + 32
                                    t = _2250 + _2265 + 32
                                    u = _2250 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2284:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2284 - 1 < _2284
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2284 - 1) + _2250 + ceil32(return_data.size) + 32]
                    else:
                        _1503 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1511 = mem[_1503]
                        require mem[_1503] <= test266151307()
                        require _1503 + return_data.size > _1503 + mem[_1503] + 31
                        _1516 = mem[_1503 + mem[_1503]]
                        require mem[_1503 + mem[_1503]] <= test266151307()
                        require (32 * mem[_1503 + mem[_1503]]) + 32 >= 0 and _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32 <= test266151307()
                        mem[64] = _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32
                        mem[_1503 + ceil32(return_data.size)] = _1516
                        require return_data.size >= _1511 + (32 * _1516) + 32
                        t = _1503 + _1511 + 32
                        u = _1503 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1516:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _1516 - 1 < _1516
                        require 1 < mem[_762 + 96]
                        mem[_762 + 160] = mem[(32 * _1516 - 1) + _1503 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2298 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _2298:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2298) + 32]
                            if not ext_call.success:
                                if return_data.size:
                                    _2968 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2968] = return_data.size
                                    mem[_2968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2941 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2969 = mem[_2941]
                                require mem[_2941] <= test266151307()
                                require _2941 + return_data.size > _2941 + mem[_2941] + 31
                                _3003 = mem[_2941 + mem[_2941]]
                                require mem[_2941 + mem[_2941]] <= test266151307()
                                require (32 * mem[_2941 + mem[_2941]]) + 32 >= 0 and _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32 <= test266151307()
                                mem[64] = _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32
                                mem[_2941 + ceil32(return_data.size)] = _3003
                                require return_data.size >= _2969 + (32 * _3003) + 32
                                t = _2941 + _2969 + 32
                                u = _2941 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3003:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3003 - 1 < _3003
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _3003 - 1) + _2941 + ceil32(return_data.size) + 32]
            else:
                mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_762 + 260] = 64
                mem[_762 + 292] = mem[_762]
                s = 0
                t = _762 + 32
                u = _762 + 324
                while s < mem[_762]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1536 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1536:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1536) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2266 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2266] = return_data.size
                                        mem[_2266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2253 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2267 = mem[_2253]
                                    require mem[_2253] <= test266151307()
                                    require _2253 + return_data.size > _2253 + mem[_2253] + 31
                                    _2286 = mem[_2253 + mem[_2253]]
                                    require mem[_2253 + mem[_2253]] <= test266151307()
                                    require (32 * mem[_2253 + mem[_2253]]) + 32 >= 0 and _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32 <= test266151307()
                                    mem[64] = _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32
                                    mem[_2253 + ceil32(return_data.size)] = _2286
                                    require return_data.size >= _2267 + (32 * _2286) + 32
                                    t = _2253 + _2267 + 32
                                    u = _2253 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2286:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2286 - 1 < _2286
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2286 - 1) + _2253 + ceil32(return_data.size) + 32]
                        else:
                            _1522 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1531 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _1531:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1522 + (32 * _1531) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2325 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2325:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2325) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2970 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2970] = return_data.size
                                                mem[_2970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2944 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2971 = mem[_2944]
                                            require mem[_2944] <= test266151307()
                                            require _2944 + return_data.size > _2944 + mem[_2944] + 31
                                            _3004 = mem[_2944 + mem[_2944]]
                                            require mem[_2944 + mem[_2944]] <= test266151307()
                                            require (32 * mem[_2944 + mem[_2944]]) + 32 >= 0 and _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32 <= test266151307()
                                            mem[64] = _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32
                                            mem[_2944 + ceil32(return_data.size)] = _3004
                                            require return_data.size >= _2971 + (32 * _3004) + 32
                                            t = _2944 + _2971 + 32
                                            u = _2944 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3004:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3004 - 1 < _3004
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3004 - 1) + _2944 + ceil32(return_data.size) + 32]
                                else:
                                    _2268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2268] = return_data.size
                                    mem[_2268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2302 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2326 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2326:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2302 + (32 * _2326) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2972 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2972] = return_data.size
                                                mem[_2972 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2945 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2973 = mem[_2945]
                                            require mem[_2945] <= test266151307()
                                            require _2945 + return_data.size > _2945 + mem[_2945] + 31
                                            _3005 = mem[_2945 + mem[_2945]]
                                            require mem[_2945 + mem[_2945]] <= test266151307()
                                            require (32 * mem[_2945 + mem[_2945]]) + 32 >= 0 and _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32 <= test266151307()
                                            mem[64] = _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32
                                            mem[_2945 + ceil32(return_data.size)] = _3005
                                            require return_data.size >= _2973 + (32 * _3005) + 32
                                            t = _2945 + _2973 + 32
                                            u = _2945 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3005:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3005 - 1 < _3005
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3005 - 1) + _2945 + ceil32(return_data.size) + 32]
                            else:
                                _2254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2269 = mem[_2254]
                                require mem[_2254] <= test266151307()
                                require _2254 + return_data.size > _2254 + mem[_2254] + 31
                                _2287 = mem[_2254 + mem[_2254]]
                                require mem[_2254 + mem[_2254]] <= test266151307()
                                require (32 * mem[_2254 + mem[_2254]]) + 32 >= 0 and _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32 <= test266151307()
                                mem[64] = _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32
                                mem[_2254 + ceil32(return_data.size)] = _2287
                                require return_data.size >= _2269 + (32 * _2287) + 32
                                t = _2254 + _2269 + 32
                                u = _2254 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2287:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2287 - 1 < _2287
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2287 - 1) + _2254 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2997 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3026 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3026:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2997 + (32 * _3026) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3520 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3520] = return_data.size
                                            mem[_3520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3489 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3521 = mem[_3489]
                                        require mem[_3489] <= test266151307()
                                        require _3489 + return_data.size > _3489 + mem[_3489] + 31
                                        _3555 = mem[_3489 + mem[_3489]]
                                        require mem[_3489 + mem[_3489]] <= test266151307()
                                        require (32 * mem[_3489 + mem[_3489]]) + 32 >= 0 and _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32 <= test266151307()
                                        mem[64] = _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32
                                        mem[_3489 + ceil32(return_data.size)] = _3555
                                        require return_data.size >= _3521 + (32 * _3555) + 32
                                        t = _3489 + _3521 + 32
                                        u = _3489 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3555:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3555 - 1 < _3555
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3555 - 1) + _3489 + ceil32(return_data.size) + 32]
                    else:
                        _1512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1512] = return_data.size
                        mem[_1512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1537 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _1537:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1537) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2270 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2270] = return_data.size
                                        mem[_2270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2255 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2271 = mem[_2255]
                                    require mem[_2255] <= test266151307()
                                    require _2255 + return_data.size > _2255 + mem[_2255] + 31
                                    _2288 = mem[_2255 + mem[_2255]]
                                    require mem[_2255 + mem[_2255]] <= test266151307()
                                    require (32 * mem[_2255 + mem[_2255]]) + 32 >= 0 and _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32 <= test266151307()
                                    mem[64] = _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32
                                    mem[_2255 + ceil32(return_data.size)] = _2288
                                    require return_data.size >= _2271 + (32 * _2288) + 32
                                    t = _2255 + _2271 + 32
                                    u = _2255 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2288:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2288 - 1 < _2288
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2288 - 1) + _2255 + ceil32(return_data.size) + 32]
                        else:
                            _1523 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1533 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _1533:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1523 + (32 * _1533) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2327 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2327:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2327) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2974] = return_data.size
                                                mem[_2974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2950 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2975 = mem[_2950]
                                            require mem[_2950] <= test266151307()
                                            require _2950 + return_data.size > _2950 + mem[_2950] + 31
                                            _3007 = mem[_2950 + mem[_2950]]
                                            require mem[_2950 + mem[_2950]] <= test266151307()
                                            require (32 * mem[_2950 + mem[_2950]]) + 32 >= 0 and _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32 <= test266151307()
                                            mem[64] = _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32
                                            mem[_2950 + ceil32(return_data.size)] = _3007
                                            require return_data.size >= _2975 + (32 * _3007) + 32
                                            t = _2950 + _2975 + 32
                                            u = _2950 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3007:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3007 - 1 < _3007
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3007 - 1) + _2950 + ceil32(return_data.size) + 32]
                                else:
                                    _2272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2272] = return_data.size
                                    mem[_2272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2328 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = _762 + 32
                                        u = mem[64] + 100
                                        while s < _2328:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2328) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2976 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2976] = return_data.size
                                                mem[_2976 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2951 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2977 = mem[_2951]
                                            require mem[_2951] <= test266151307()
                                            require _2951 + return_data.size > _2951 + mem[_2951] + 31
                                            _3008 = mem[_2951 + mem[_2951]]
                                            require mem[_2951 + mem[_2951]] <= test266151307()
                                            require (32 * mem[_2951 + mem[_2951]]) + 32 >= 0 and _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32 <= test266151307()
                                            mem[64] = _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32
                                            mem[_2951 + ceil32(return_data.size)] = _3008
                                            require return_data.size >= _2977 + (32 * _3008) + 32
                                            t = _2951 + _2977 + 32
                                            u = _2951 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3008:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3008 - 1 < _3008
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3008 - 1) + _2951 + ceil32(return_data.size) + 32]
                            else:
                                _2256 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2273 = mem[_2256]
                                require mem[_2256] <= test266151307()
                                require _2256 + return_data.size > _2256 + mem[_2256] + 31
                                _2289 = mem[_2256 + mem[_2256]]
                                require mem[_2256 + mem[_2256]] <= test266151307()
                                require (32 * mem[_2256 + mem[_2256]]) + 32 >= 0 and _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32 <= test266151307()
                                mem[64] = _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32
                                mem[_2256 + ceil32(return_data.size)] = _2289
                                require return_data.size >= _2273 + (32 * _2289) + 32
                                t = _2256 + _2273 + 32
                                u = _2256 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2289:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2289 - 1 < _2289
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2289 - 1) + _2256 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3031 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3031:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3031) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3522 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3522] = return_data.size
                                            mem[_3522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3494 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3523 = mem[_3494]
                                        require mem[_3494] <= test266151307()
                                        require _3494 + return_data.size > _3494 + mem[_3494] + 31
                                        _3556 = mem[_3494 + mem[_3494]]
                                        require mem[_3494 + mem[_3494]] <= test266151307()
                                        require (32 * mem[_3494 + mem[_3494]]) + 32 >= 0 and _3494 + ceil32(return_data.size) + (32 * mem[_3494 + mem[_3494]]) + 32 <= test266151307()
                                        mem[64] = _3494 + ceil32(return_data.size) + (32 * mem[_3494 + mem[_3494]]) + 32
                                        mem[_3494 + ceil32(return_data.size)] = _3556
                                        require return_data.size >= _3523 + (32 * _3556) + 32
                                        t = _3494 + _3523 + 32
                                        u = _3494 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3556:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3556 - 1 < _3556
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3556 - 1) + _3494 + ceil32(return_data.size) + 32]
                else:
                    _1504 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1513 = mem[_1504]
                    require mem[_1504] <= test266151307()
                    require _1504 + return_data.size > _1504 + mem[_1504] + 31
                    _1517 = mem[_1504 + mem[_1504]]
                    require mem[_1504 + mem[_1504]] <= test266151307()
                    require (32 * mem[_1504 + mem[_1504]]) + 32 >= 0 and _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32 <= test266151307()
                    mem[64] = _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32
                    mem[_1504 + ceil32(return_data.size)] = _1517
                    require return_data.size >= _1513 + (32 * _1517) + 32
                    t = _1504 + _1513 + 32
                    u = _1504 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1517:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _1517 - 1 < _1517
                    require 0 < mem[_762 + 96]
                    mem[_762 + 128] = mem[(32 * _1517 - 1) + _1504 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2290 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2319 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = _762 + 32
                            u = mem[64] + 100
                            while s < _2319:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2290 + (32 * _2319) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2978 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2978] = return_data.size
                                    mem[_2978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2954 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2979 = mem[_2954]
                                require mem[_2954] <= test266151307()
                                require _2954 + return_data.size > _2954 + mem[_2954] + 31
                                _3010 = mem[_2954 + mem[_2954]]
                                require mem[_2954 + mem[_2954]] <= test266151307()
                                require (32 * mem[_2954 + mem[_2954]]) + 32 >= 0 and _2954 + ceil32(return_data.size) + (32 * mem[_2954 + mem[_2954]]) + 32 <= test266151307()
                                mem[64] = _2954 + ceil32(return_data.size) + (32 * mem[_2954 + mem[_2954]]) + 32
                                mem[_2954 + ceil32(return_data.size)] = _3010
                                require return_data.size >= _2979 + (32 * _3010) + 32
                                t = _2954 + _2979 + 32
                                u = _2954 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3010:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3010 - 1 < _3010
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _3010 - 1) + _2954 + ceil32(return_data.size) + 32]
                    else:
                        _2282 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2308 = mem[_762]
                        mem[mem[64] + 68] = mem[_762]
                        s = 0
                        t = _762 + 32
                        u = mem[64] + 100
                        while s < _2308:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2282 + (32 * _2308) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3060 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3060:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3060) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3524 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3524] = return_data.size
                                            mem[_3524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3497 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3525 = mem[_3497]
                                        require mem[_3497] <= test266151307()
                                        require _3497 + return_data.size > _3497 + mem[_3497] + 31
                                        _3557 = mem[_3497 + mem[_3497]]
                                        require mem[_3497 + mem[_3497]] <= test266151307()
                                        require (32 * mem[_3497 + mem[_3497]]) + 32 >= 0 and _3497 + ceil32(return_data.size) + (32 * mem[_3497 + mem[_3497]]) + 32 <= test266151307()
                                        mem[64] = _3497 + ceil32(return_data.size) + (32 * mem[_3497 + mem[_3497]]) + 32
                                        mem[_3497 + ceil32(return_data.size)] = _3557
                                        require return_data.size >= _3525 + (32 * _3557) + 32
                                        t = _3497 + _3525 + 32
                                        u = _3497 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3557:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3557 - 1 < _3557
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3557 - 1) + _3497 + ceil32(return_data.size) + 32]
                            else:
                                _2980 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2980] = return_data.size
                                mem[_2980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3061 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = _762 + 32
                                    u = mem[64] + 100
                                    while s < _3061:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3061) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3526 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3526] = return_data.size
                                            mem[_3526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3498 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3527 = mem[_3498]
                                        require mem[_3498] <= test266151307()
                                        require _3498 + return_data.size > _3498 + mem[_3498] + 31
                                        _3558 = mem[_3498 + mem[_3498]]
                                        require mem[_3498 + mem[_3498]] <= test266151307()
                                        require (32 * mem[_3498 + mem[_3498]]) + 32 >= 0 and _3498 + ceil32(return_data.size) + (32 * mem[_3498 + mem[_3498]]) + 32 <= test266151307()
                                        mem[64] = _3498 + ceil32(return_data.size) + (32 * mem[_3498 + mem[_3498]]) + 32
                                        mem[_3498 + ceil32(return_data.size)] = _3558
                                        require return_data.size >= _3527 + (32 * _3558) + 32
                                        t = _3498 + _3527 + 32
                                        u = _3498 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3558:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3558 - 1 < _3558
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3558 - 1) + _3498 + ceil32(return_data.size) + 32]
                        else:
                            _2955 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2981 = mem[_2955]
                            require mem[_2955] <= test266151307()
                            require _2955 + return_data.size > _2955 + mem[_2955] + 31
                            _3011 = mem[_2955 + mem[_2955]]
                            require mem[_2955 + mem[_2955]] <= test266151307()
                            require (32 * mem[_2955 + mem[_2955]]) + 32 >= 0 and _2955 + ceil32(return_data.size) + (32 * mem[_2955 + mem[_2955]]) + 32 <= test266151307()
                            mem[64] = _2955 + ceil32(return_data.size) + (32 * mem[_2955 + mem[_2955]]) + 32
                            mem[_2955 + ceil32(return_data.size)] = _3011
                            require return_data.size >= _2981 + (32 * _3011) + 32
                            t = _2955 + _2981 + 32
                            u = _2955 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3011:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3011 - 1 < _3011
                            require 1 < mem[_762 + 96]
                            mem[_762 + 160] = mem[(32 * _3011 - 1) + _2955 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3577 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = _762 + 32
                                u = mem[64] + 100
                                while s < _3577:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3577) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3837] = return_data.size
                                        mem[_3837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3818 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3838 = mem[_3818]
                                    require mem[_3818] <= test266151307()
                                    require _3818 + return_data.size > _3818 + mem[_3818] + 31
                                    _3858 = mem[_3818 + mem[_3818]]
                                    require mem[_3818 + mem[_3818]] <= test266151307()
                                    require (32 * mem[_3818 + mem[_3818]]) + 32 >= 0 and _3818 + ceil32(return_data.size) + (32 * mem[_3818 + mem[_3818]]) + 32 <= test266151307()
                                    mem[64] = _3818 + ceil32(return_data.size) + (32 * mem[_3818 + mem[_3818]]) + 32
                                    mem[_3818 + ceil32(return_data.size)] = _3858
                                    require return_data.size >= _3838 + (32 * _3858) + 32
                                    t = _3818 + _3838 + 32
                                    u = _3818 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3858:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3858 - 1 < _3858
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _3858 - 1) + _3818 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _762 + 96
            idx = idx + 1
            continue 
        _750 = mem[64]
        mem[mem[64]] = 32
        _751 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _751:
            mem[t] = u + -_750 - 64
            _1490 = mem[s]
            _1495 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _1490 + 32
            x = u + 32
            while v < _1495:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _1495 + 1
            w = _1490 + (32 * _1495) + 64
            t = t + 32
            u = u + (32 * _1495) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _1578 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1578]
            mem[_1578 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            require 1 < mem[_1578]
            mem[_1578 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_1578 + 96] = 3
            mem[64] = _1578 + 224
            mem[_1578 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1578 + 260] = 64
                        mem[_1578 + 292] = mem[_1578]
                        s = 0
                        t = _1578 + 32
                        u = _1578 + 324
                        while s < mem[_1578]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2274] = return_data.size
                                mem[_2274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2259 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2275 = mem[_2259]
                            require mem[_2259] <= test266151307()
                            require _2259 + return_data.size > _2259 + mem[_2259] + 31
                            _2291 = mem[_2259 + mem[_2259]]
                            require mem[_2259 + mem[_2259]] <= test266151307()
                            require (32 * mem[_2259 + mem[_2259]]) + 32 >= 0 and _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32 <= test266151307()
                            mem[64] = _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32
                            mem[_2259 + ceil32(return_data.size)] = _2291
                            require return_data.size >= _2275 + (32 * _2291) + 32
                            t = _2259 + _2275 + 32
                            u = _2259 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2291:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _2291 - 1 < _2291
                            require 2 < mem[_1578 + 96]
                            mem[_1578 + 192] = mem[(32 * _2291 - 1) + _2259 + ceil32(return_data.size) + 32]
                else:
                    mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1578 + 260] = 64
                    mem[_1578 + 292] = mem[_1578]
                    s = 0
                    t = _1578 + 32
                    u = _1578 + 324
                    while s < mem[_1578]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2311 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2330 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2330:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2311 + (32 * _2330) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2982] = return_data.size
                                        mem[_2982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2958 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2983 = mem[_2958]
                                    require mem[_2958] <= test266151307()
                                    require _2958 + return_data.size > _2958 + mem[_2958] + 31
                                    _3012 = mem[_2958 + mem[_2958]]
                                    require mem[_2958 + mem[_2958]] <= test266151307()
                                    require (32 * mem[_2958 + mem[_2958]]) + 32 >= 0 and _2958 + ceil32(return_data.size) + (32 * mem[_2958 + mem[_2958]]) + 32 <= test266151307()
                                    mem[64] = _2958 + ceil32(return_data.size) + (32 * mem[_2958 + mem[_2958]]) + 32
                                    mem[_2958 + ceil32(return_data.size)] = _3012
                                    require return_data.size >= _2983 + (32 * _3012) + 32
                                    t = _2958 + _2983 + 32
                                    u = _2958 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3012:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3012 - 1 < _3012
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3012 - 1) + _2958 + ceil32(return_data.size) + 32]
                        else:
                            _2276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2276] = return_data.size
                            mem[_2276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2331 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2331:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2331) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2984 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2984] = return_data.size
                                        mem[_2984 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2959 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2985 = mem[_2959]
                                    require mem[_2959] <= test266151307()
                                    require _2959 + return_data.size > _2959 + mem[_2959] + 31
                                    _3013 = mem[_2959 + mem[_2959]]
                                    require mem[_2959 + mem[_2959]] <= test266151307()
                                    require (32 * mem[_2959 + mem[_2959]]) + 32 >= 0 and _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32 <= test266151307()
                                    mem[64] = _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32
                                    mem[_2959 + ceil32(return_data.size)] = _3013
                                    require return_data.size >= _2985 + (32 * _3013) + 32
                                    t = _2959 + _2985 + 32
                                    u = _2959 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3013:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3013 - 1 < _3013
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3013 - 1) + _2959 + ceil32(return_data.size) + 32]
                    else:
                        _2260 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2277 = mem[_2260]
                        require mem[_2260] <= test266151307()
                        require _2260 + return_data.size > _2260 + mem[_2260] + 31
                        _2292 = mem[_2260 + mem[_2260]]
                        require mem[_2260 + mem[_2260]] <= test266151307()
                        require (32 * mem[_2260 + mem[_2260]]) + 32 >= 0 and _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32 <= test266151307()
                        mem[64] = _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32
                        mem[_2260 + ceil32(return_data.size)] = _2292
                        require return_data.size >= _2277 + (32 * _2292) + 32
                        t = _2260 + _2277 + 32
                        u = _2260 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2292:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _2292 - 1 < _2292
                        require 1 < mem[_1578 + 96]
                        mem[_1578 + 160] = mem[(32 * _2292 - 1) + _2260 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3001 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3040 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _3040:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3001 + (32 * _3040) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3528 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3528] = return_data.size
                                    mem[_3528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3505 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3529 = mem[_3505]
                                require mem[_3505] <= test266151307()
                                require _3505 + return_data.size > _3505 + mem[_3505] + 31
                                _3560 = mem[_3505 + mem[_3505]]
                                require mem[_3505 + mem[_3505]] <= test266151307()
                                require (32 * mem[_3505 + mem[_3505]]) + 32 >= 0 and _3505 + ceil32(return_data.size) + (32 * mem[_3505 + mem[_3505]]) + 32 <= test266151307()
                                mem[64] = _3505 + ceil32(return_data.size) + (32 * mem[_3505 + mem[_3505]]) + 32
                                mem[_3505 + ceil32(return_data.size)] = _3560
                                require return_data.size >= _3529 + (32 * _3560) + 32
                                t = _3505 + _3529 + 32
                                u = _3505 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3560:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3560 - 1 < _3560
                                require 2 < mem[_1578 + 96]
                                mem[_1578 + 192] = mem[(32 * _3560 - 1) + _3505 + ceil32(return_data.size) + 32]
            else:
                mem[_1578 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1578 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1578 + 260] = 64
                mem[_1578 + 292] = mem[_1578]
                s = 0
                t = _1578 + 32
                u = _1578 + 324
                while s < mem[_1578]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1578 + (32 * mem[_1578]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2345 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2345:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2345) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2986 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2986] = return_data.size
                                        mem[_2986 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2962 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2987 = mem[_2962]
                                    require mem[_2962] <= test266151307()
                                    require _2962 + return_data.size > _2962 + mem[_2962] + 31
                                    _3015 = mem[_2962 + mem[_2962]]
                                    require mem[_2962 + mem[_2962]] <= test266151307()
                                    require (32 * mem[_2962 + mem[_2962]]) + 32 >= 0 and _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32 <= test266151307()
                                    mem[64] = _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32
                                    mem[_2962 + ceil32(return_data.size)] = _3015
                                    require return_data.size >= _2987 + (32 * _3015) + 32
                                    t = _2962 + _2987 + 32
                                    u = _2962 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3015:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3015 - 1 < _3015
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3015 - 1) + _2962 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2333 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _2333:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2333) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3063 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3063:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3063) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3530 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3530] = return_data.size
                                                mem[_3530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3508 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3531 = mem[_3508]
                                            require mem[_3508] <= test266151307()
                                            require _3508 + return_data.size > _3508 + mem[_3508] + 31
                                            _3561 = mem[_3508 + mem[_3508]]
                                            require mem[_3508 + mem[_3508]] <= test266151307()
                                            require (32 * mem[_3508 + mem[_3508]]) + 32 >= 0 and _3508 + ceil32(return_data.size) + (32 * mem[_3508 + mem[_3508]]) + 32 <= test266151307()
                                            mem[64] = _3508 + ceil32(return_data.size) + (32 * mem[_3508 + mem[_3508]]) + 32
                                            mem[_3508 + ceil32(return_data.size)] = _3561
                                            require return_data.size >= _3531 + (32 * _3561) + 32
                                            t = _3508 + _3531 + 32
                                            u = _3508 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3561:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3561 - 1 < _3561
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3561 - 1) + _3508 + ceil32(return_data.size) + 32]
                                else:
                                    _2988 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2988] = return_data.size
                                    mem[_2988 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3044 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3064 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3064:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3044 + (32 * _3064) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3532 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3532] = return_data.size
                                                mem[_3532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3509 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3533 = mem[_3509]
                                            require mem[_3509] <= test266151307()
                                            require _3509 + return_data.size > _3509 + mem[_3509] + 31
                                            _3562 = mem[_3509 + mem[_3509]]
                                            require mem[_3509 + mem[_3509]] <= test266151307()
                                            require (32 * mem[_3509 + mem[_3509]]) + 32 >= 0 and _3509 + ceil32(return_data.size) + (32 * mem[_3509 + mem[_3509]]) + 32 <= test266151307()
                                            mem[64] = _3509 + ceil32(return_data.size) + (32 * mem[_3509 + mem[_3509]]) + 32
                                            mem[_3509 + ceil32(return_data.size)] = _3562
                                            require return_data.size >= _3533 + (32 * _3562) + 32
                                            t = _3509 + _3533 + 32
                                            u = _3509 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3562:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3562 - 1 < _3562
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3562 - 1) + _3509 + ceil32(return_data.size) + 32]
                            else:
                                _2963 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2989 = mem[_2963]
                                require mem[_2963] <= test266151307()
                                require _2963 + return_data.size > _2963 + mem[_2963] + 31
                                _3016 = mem[_2963 + mem[_2963]]
                                require mem[_2963 + mem[_2963]] <= test266151307()
                                require (32 * mem[_2963 + mem[_2963]]) + 32 >= 0 and _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32 <= test266151307()
                                mem[64] = _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32
                                mem[_2963 + ceil32(return_data.size)] = _3016
                                require return_data.size >= _2989 + (32 * _3016) + 32
                                t = _2963 + _2989 + 32
                                u = _2963 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3016:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3016 - 1 < _3016
                                require 1 < mem[_1578 + 96]
                                mem[_1578 + 160] = mem[(32 * _3016 - 1) + _2963 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3552 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3584 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3584:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3552 + (32 * _3584) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3839 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3839] = return_data.size
                                            mem[_3839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3825 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3840 = mem[_3825]
                                        require mem[_3825] <= test266151307()
                                        require _3825 + return_data.size > _3825 + mem[_3825] + 31
                                        _3859 = mem[_3825 + mem[_3825]]
                                        require mem[_3825 + mem[_3825]] <= test266151307()
                                        require (32 * mem[_3825 + mem[_3825]]) + 32 >= 0 and _3825 + ceil32(return_data.size) + (32 * mem[_3825 + mem[_3825]]) + 32 <= test266151307()
                                        mem[64] = _3825 + ceil32(return_data.size) + (32 * mem[_3825 + mem[_3825]]) + 32
                                        mem[_3825 + ceil32(return_data.size)] = _3859
                                        require return_data.size >= _3840 + (32 * _3859) + 32
                                        t = _3825 + _3840 + 32
                                        u = _3825 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3859:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3859 - 1 < _3859
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3859 - 1) + _3825 + ceil32(return_data.size) + 32]
                    else:
                        _2278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2278] = return_data.size
                        mem[_2278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2323 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2346 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _2346:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2323 + (32 * _2346) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2990 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2990] = return_data.size
                                        mem[_2990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2964 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2991 = mem[_2964]
                                    require mem[_2964] <= test266151307()
                                    require _2964 + return_data.size > _2964 + mem[_2964] + 31
                                    _3017 = mem[_2964 + mem[_2964]]
                                    require mem[_2964 + mem[_2964]] <= test266151307()
                                    require (32 * mem[_2964 + mem[_2964]]) + 32 >= 0 and _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32 <= test266151307()
                                    mem[64] = _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32
                                    mem[_2964 + ceil32(return_data.size)] = _3017
                                    require return_data.size >= _2991 + (32 * _3017) + 32
                                    t = _2964 + _2991 + 32
                                    u = _2964 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3017:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3017 - 1 < _3017
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3017 - 1) + _2964 + ceil32(return_data.size) + 32]
                        else:
                            _2314 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2335 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _2335:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2314 + (32 * _2335) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3047 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3065 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3065:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3047 + (32 * _3065) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3534] = return_data.size
                                                mem[_3534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3514 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3535 = mem[_3514]
                                            require mem[_3514] <= test266151307()
                                            require _3514 + return_data.size > _3514 + mem[_3514] + 31
                                            _3564 = mem[_3514 + mem[_3514]]
                                            require mem[_3514 + mem[_3514]] <= test266151307()
                                            require (32 * mem[_3514 + mem[_3514]]) + 32 >= 0 and _3514 + ceil32(return_data.size) + (32 * mem[_3514 + mem[_3514]]) + 32 <= test266151307()
                                            mem[64] = _3514 + ceil32(return_data.size) + (32 * mem[_3514 + mem[_3514]]) + 32
                                            mem[_3514 + ceil32(return_data.size)] = _3564
                                            require return_data.size >= _3535 + (32 * _3564) + 32
                                            t = _3514 + _3535 + 32
                                            u = _3514 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3564:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3564 - 1 < _3564
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3564 - 1) + _3514 + ceil32(return_data.size) + 32]
                                else:
                                    _2992 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2992] = return_data.size
                                    mem[_2992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3048 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3066 = mem[_1578]
                                        mem[mem[64] + 68] = mem[_1578]
                                        s = 0
                                        t = _1578 + 32
                                        u = mem[64] + 100
                                        while s < _3066:
                                            mem[u] = mem[t + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3048 + (32 * _3066) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3536 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3536] = return_data.size
                                                mem[_3536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3515 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3537 = mem[_3515]
                                            require mem[_3515] <= test266151307()
                                            require _3515 + return_data.size > _3515 + mem[_3515] + 31
                                            _3565 = mem[_3515 + mem[_3515]]
                                            require mem[_3515 + mem[_3515]] <= test266151307()
                                            require (32 * mem[_3515 + mem[_3515]]) + 32 >= 0 and _3515 + ceil32(return_data.size) + (32 * mem[_3515 + mem[_3515]]) + 32 <= test266151307()
                                            mem[64] = _3515 + ceil32(return_data.size) + (32 * mem[_3515 + mem[_3515]]) + 32
                                            mem[_3515 + ceil32(return_data.size)] = _3565
                                            require return_data.size >= _3537 + (32 * _3565) + 32
                                            t = _3515 + _3537 + 32
                                            u = _3515 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3565:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3565 - 1 < _3565
                                            require 2 < mem[_1578 + 96]
                                            mem[_1578 + 192] = mem[(32 * _3565 - 1) + _3515 + ceil32(return_data.size) + 32]
                            else:
                                _2965 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2993 = mem[_2965]
                                require mem[_2965] <= test266151307()
                                require _2965 + return_data.size > _2965 + mem[_2965] + 31
                                _3018 = mem[_2965 + mem[_2965]]
                                require mem[_2965 + mem[_2965]] <= test266151307()
                                require (32 * mem[_2965 + mem[_2965]]) + 32 >= 0 and _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32 <= test266151307()
                                mem[64] = _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32
                                mem[_2965 + ceil32(return_data.size)] = _3018
                                require return_data.size >= _2993 + (32 * _3018) + 32
                                t = _2965 + _2993 + 32
                                u = _2965 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3018:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3018 - 1 < _3018
                                require 1 < mem[_1578 + 96]
                                mem[_1578 + 160] = mem[(32 * _3018 - 1) + _2965 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3554 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3589 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3589:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3554 + (32 * _3589) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3841 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3841] = return_data.size
                                            mem[_3841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3830 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3842 = mem[_3830]
                                        require mem[_3830] <= test266151307()
                                        require _3830 + return_data.size > _3830 + mem[_3830] + 31
                                        _3860 = mem[_3830 + mem[_3830]]
                                        require mem[_3830 + mem[_3830]] <= test266151307()
                                        require (32 * mem[_3830 + mem[_3830]]) + 32 >= 0 and _3830 + ceil32(return_data.size) + (32 * mem[_3830 + mem[_3830]]) + 32 <= test266151307()
                                        mem[64] = _3830 + ceil32(return_data.size) + (32 * mem[_3830 + mem[_3830]]) + 32
                                        mem[_3830 + ceil32(return_data.size)] = _3860
                                        require return_data.size >= _3842 + (32 * _3860) + 32
                                        t = _3830 + _3842 + 32
                                        u = _3830 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3860:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3860 - 1 < _3860
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3860 - 1) + _3830 + ceil32(return_data.size) + 32]
                else:
                    _2261 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2279 = mem[_2261]
                    require mem[_2261] <= test266151307()
                    require _2261 + return_data.size > _2261 + mem[_2261] + 31
                    _2293 = mem[_2261 + mem[_2261]]
                    require mem[_2261 + mem[_2261]] <= test266151307()
                    require (32 * mem[_2261 + mem[_2261]]) + 32 >= 0 and _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32 <= test266151307()
                    mem[64] = _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32
                    mem[_2261 + ceil32(return_data.size)] = _2293
                    require return_data.size >= _2279 + (32 * _2293) + 32
                    t = _2261 + _2279 + 32
                    u = _2261 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2293:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _2293 - 1 < _2293
                    require 0 < mem[_1578 + 96]
                    mem[_1578 + 128] = mem[(32 * _2293 - 1) + _2261 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3019 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3057 = mem[_1578]
                            mem[mem[64] + 68] = mem[_1578]
                            s = 0
                            t = _1578 + 32
                            u = mem[64] + 100
                            while s < _3057:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3019 + (32 * _3057) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3538 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3538] = return_data.size
                                    mem[_3538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3518 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3539 = mem[_3518]
                                require mem[_3518] <= test266151307()
                                require _3518 + return_data.size > _3518 + mem[_3518] + 31
                                _3567 = mem[_3518 + mem[_3518]]
                                require mem[_3518 + mem[_3518]] <= test266151307()
                                require (32 * mem[_3518 + mem[_3518]]) + 32 >= 0 and _3518 + ceil32(return_data.size) + (32 * mem[_3518 + mem[_3518]]) + 32 <= test266151307()
                                mem[64] = _3518 + ceil32(return_data.size) + (32 * mem[_3518 + mem[_3518]]) + 32
                                mem[_3518 + ceil32(return_data.size)] = _3567
                                require return_data.size >= _3539 + (32 * _3567) + 32
                                t = _3518 + _3539 + 32
                                u = _3518 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3567:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3567 - 1 < _3567
                                require 2 < mem[_1578 + 96]
                                mem[_1578 + 192] = mem[(32 * _3567 - 1) + _3518 + ceil32(return_data.size) + 32]
                    else:
                        _3002 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _3050 = mem[_1578]
                        mem[mem[64] + 68] = mem[_1578]
                        s = 0
                        t = _1578 + 32
                        u = mem[64] + 100
                        while s < _3050:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3002 + (32 * _3050) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3599 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3599:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3599) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3843 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3843] = return_data.size
                                            mem[_3843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3833 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3844 = mem[_3833]
                                        require mem[_3833] <= test266151307()
                                        require _3833 + return_data.size > _3833 + mem[_3833] + 31
                                        _3861 = mem[_3833 + mem[_3833]]
                                        require mem[_3833 + mem[_3833]] <= test266151307()
                                        require (32 * mem[_3833 + mem[_3833]]) + 32 >= 0 and _3833 + ceil32(return_data.size) + (32 * mem[_3833 + mem[_3833]]) + 32 <= test266151307()
                                        mem[64] = _3833 + ceil32(return_data.size) + (32 * mem[_3833 + mem[_3833]]) + 32
                                        mem[_3833 + ceil32(return_data.size)] = _3861
                                        require return_data.size >= _3844 + (32 * _3861) + 32
                                        t = _3833 + _3844 + 32
                                        u = _3833 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3861:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3861 - 1 < _3861
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3861 - 1) + _3833 + ceil32(return_data.size) + 32]
                            else:
                                _3540 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3540] = return_data.size
                                mem[_3540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3593 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3600 = mem[_1578]
                                    mem[mem[64] + 68] = mem[_1578]
                                    s = 0
                                    t = _1578 + 32
                                    u = mem[64] + 100
                                    while s < _3600:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3593 + (32 * _3600) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3845 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3845] = return_data.size
                                            mem[_3845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3834 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3846 = mem[_3834]
                                        require mem[_3834] <= test266151307()
                                        require _3834 + return_data.size > _3834 + mem[_3834] + 31
                                        _3862 = mem[_3834 + mem[_3834]]
                                        require mem[_3834 + mem[_3834]] <= test266151307()
                                        require (32 * mem[_3834 + mem[_3834]]) + 32 >= 0 and _3834 + ceil32(return_data.size) + (32 * mem[_3834 + mem[_3834]]) + 32 <= test266151307()
                                        mem[64] = _3834 + ceil32(return_data.size) + (32 * mem[_3834 + mem[_3834]]) + 32
                                        mem[_3834 + ceil32(return_data.size)] = _3862
                                        require return_data.size >= _3846 + (32 * _3862) + 32
                                        t = _3834 + _3846 + 32
                                        u = _3834 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3862:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3862 - 1 < _3862
                                        require 2 < mem[_1578 + 96]
                                        mem[_1578 + 192] = mem[(32 * _3862 - 1) + _3834 + ceil32(return_data.size) + 32]
                        else:
                            _3519 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3541 = mem[_3519]
                            require mem[_3519] <= test266151307()
                            require _3519 + return_data.size > _3519 + mem[_3519] + 31
                            _3568 = mem[_3519 + mem[_3519]]
                            require mem[_3519 + mem[_3519]] <= test266151307()
                            require (32 * mem[_3519 + mem[_3519]]) + 32 >= 0 and _3519 + ceil32(return_data.size) + (32 * mem[_3519 + mem[_3519]]) + 32 <= test266151307()
                            mem[64] = _3519 + ceil32(return_data.size) + (32 * mem[_3519 + mem[_3519]]) + 32
                            mem[_3519 + ceil32(return_data.size)] = _3568
                            require return_data.size >= _3541 + (32 * _3568) + 32
                            t = _3519 + _3541 + 32
                            u = _3519 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3568:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3568 - 1 < _3568
                            require 1 < mem[_1578 + 96]
                            mem[_1578 + 160] = mem[(32 * _3568 - 1) + _3519 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _3857 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3874 = mem[_1578]
                                mem[mem[64] + 68] = mem[_1578]
                                s = 0
                                t = _1578 + 32
                                u = mem[64] + 100
                                while s < _3874:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3857 + (32 * _3874) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3953 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3953] = return_data.size
                                        mem[_3953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3952 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3954 = mem[_3952]
                                    require mem[_3952] <= test266151307()
                                    require _3952 + return_data.size > _3952 + mem[_3952] + 31
                                    _3960 = mem[_3952 + mem[_3952]]
                                    require mem[_3952 + mem[_3952]] <= test266151307()
                                    require (32 * mem[_3952 + mem[_3952]]) + 32 >= 0 and _3952 + ceil32(return_data.size) + (32 * mem[_3952 + mem[_3952]]) + 32 <= test266151307()
                                    mem[64] = _3952 + ceil32(return_data.size) + (32 * mem[_3952 + mem[_3952]]) + 32
                                    mem[_3952 + ceil32(return_data.size)] = _3960
                                    require return_data.size >= _3954 + (32 * _3960) + 32
                                    t = _3952 + _3954 + 32
                                    u = _3952 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3960:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3960 - 1 < _3960
                                    require 2 < mem[_1578 + 96]
                                    mem[_1578 + 192] = mem[(32 * _3960 - 1) + _3952 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1578 + 96
            idx = idx + 1
            continue 
        _1496 = mem[64]
        mem[mem[64]] = 32
        _1500 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1500:
            mem[t] = u + -_1496 - 64
            _2225 = mem[s]
            _2230 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2225 + 32
            x = u + 32
            while v < _2230:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2230 + 1
            w = _2225 + (32 * _2230) + 64
            t = t + 32
            u = u + (32 * _2230) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if arg2:
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _2421 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            _2427 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _2427
            require return_data.size >= _2421 + (32 * _2427) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2427] = mem[(4 * ceil32(return_data.size)) + _2421 + 224 len 32 * _2427]
            require 0 < _2427
            _4761 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            if address(cd[(arg4 + 68)]):
                _4763 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_4763 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[_4763]
                mem[_4763 + 32] = address(ext_call.return_data[0])
                if not address(cd[(arg4 + 68)]):
                    require mem[_4763] - 1 < mem[_4763]
                    mem[(32 * mem[_4763] - 1) + _4763 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4763 + 132] = arg2
                        mem[_4763 + 164] = _4761
                        mem[_4763 + 196] = 160
                        mem[_4763 + 292] = mem[_4763]
                        idx = 0
                        s = _4763 + 32
                        t = _4763 + 324
                        while idx < mem[_4763]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4763 + 228] = this.address
                        mem[_4763 + 260] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7249 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7321 = mem[_7249]
                        require mem[_7249] <= test266151307()
                        require _7249 + return_data.size > _7249 + mem[_7249] + 31
                        _7393 = mem[_7249 + mem[_7249]]
                        require mem[_7249 + mem[_7249]] <= test266151307()
                        require (32 * mem[_7249 + mem[_7249]]) + 32 >= 0 and _7249 + ceil32(return_data.size) + (32 * mem[_7249 + mem[_7249]]) + 32 <= test266151307()
                        mem[64] = _7249 + ceil32(return_data.size) + (32 * mem[_7249 + mem[_7249]]) + 32
                        mem[_7249 + ceil32(return_data.size)] = _7393
                        require return_data.size >= _7321 + (32 * _7393) + 32
                        mem[_7249 + ceil32(return_data.size) + 32 len 32 * _7393] = mem[_7249 + _7321 + 32 len 32 * _7393]
                        require mem[_4763] - 1 < _7393
                        _9049 = mem[(32 * mem[_4763] - 1) + _7249 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4763] - 1) + _7249 + ceil32(return_data.size) + 32] <= _4761:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9409] == bool(mem[_9409])
                        if not mem[_9409]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9049 - _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9049 - _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9841] == bool(mem[_9841])
                        if not mem[_9841]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4763 + 132] = arg2
                            mem[_4763 + 164] = _4761
                            mem[_4763 + 196] = 160
                            mem[_4763 + 292] = mem[_4763]
                            idx = 0
                            s = _4763 + 32
                            t = _4763 + 324
                            while idx < mem[_4763]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4763 + 228] = this.address
                            mem[_4763 + 260] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7248 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7320 = mem[_7248]
                            require mem[_7248] <= test266151307()
                            require _7248 + return_data.size > _7248 + mem[_7248] + 31
                            _7392 = mem[_7248 + mem[_7248]]
                            require mem[_7248 + mem[_7248]] <= test266151307()
                            require (32 * mem[_7248 + mem[_7248]]) + 32 >= 0 and _7248 + ceil32(return_data.size) + (32 * mem[_7248 + mem[_7248]]) + 32 <= test266151307()
                            mem[64] = _7248 + ceil32(return_data.size) + (32 * mem[_7248 + mem[_7248]]) + 32
                            mem[_7248 + ceil32(return_data.size)] = _7392
                            require return_data.size >= _7320 + (32 * _7392) + 32
                            mem[_7248 + ceil32(return_data.size) + 32 len 32 * _7392] = mem[_7248 + _7320 + 32 len 32 * _7392]
                            require mem[_4763] - 1 < _7392
                            _9048 = mem[(32 * mem[_4763] - 1) + _7248 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4763] - 1) + _7248 + ceil32(return_data.size) + 32] <= _4761:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9408] == bool(mem[_9408])
                            if not mem[_9408]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9048 - _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9048 - _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9840] == bool(mem[_9840])
                            if not mem[_9840]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4761:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4763 + 132] = arg2
                                mem[_4763 + 164] = _4761
                                mem[_4763 + 196] = 160
                                mem[_4763 + 292] = mem[_4763]
                                idx = 0
                                s = _4763 + 32
                                t = _4763 + 324
                                while idx < mem[_4763]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4763 + 228] = this.address
                                mem[_4763 + 260] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7247 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7319 = mem[_7247]
                                require mem[_7247] <= test266151307()
                                require _7247 + return_data.size > _7247 + mem[_7247] + 31
                                _7391 = mem[_7247 + mem[_7247]]
                                require mem[_7247 + mem[_7247]] <= test266151307()
                                require (32 * mem[_7247 + mem[_7247]]) + 32 >= 0 and _7247 + ceil32(return_data.size) + (32 * mem[_7247 + mem[_7247]]) + 32 <= test266151307()
                                mem[64] = _7247 + ceil32(return_data.size) + (32 * mem[_7247 + mem[_7247]]) + 32
                                mem[_7247 + ceil32(return_data.size)] = _7391
                                require return_data.size >= _7319 + (32 * _7391) + 32
                                mem[_7247 + ceil32(return_data.size) + 32 len 32 * _7391] = mem[_7247 + _7319 + 32 len 32 * _7391]
                                require mem[_4763] - 1 < _7391
                                _9047 = mem[(32 * mem[_4763] - 1) + _7247 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4763] - 1) + _7247 + ceil32(return_data.size) + 32] <= _4761:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9407] == bool(mem[_9407])
                                if not mem[_9407]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9047 - _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9047 - _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9839] == bool(mem[_9839])
                                if not mem[_9839]:
                                    revert with 0, 'Take profit failed!'
                else:
                    require 1 < mem[_4763]
                    mem[_4763 + 64] = address(cd[(arg4 + 68)])
                    require mem[_4763] - 1 < mem[_4763]
                    mem[(32 * mem[_4763] - 1) + _4763 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4763 + 132] = arg2
                        mem[_4763 + 164] = _4761
                        mem[_4763 + 196] = 160
                        mem[_4763 + 292] = mem[_4763]
                        idx = 0
                        s = _4763 + 32
                        t = _4763 + 324
                        while idx < mem[_4763]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4763 + 228] = this.address
                        mem[_4763 + 260] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7252 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7324 = mem[_7252]
                        require mem[_7252] <= test266151307()
                        require _7252 + return_data.size > _7252 + mem[_7252] + 31
                        _7396 = mem[_7252 + mem[_7252]]
                        require mem[_7252 + mem[_7252]] <= test266151307()
                        require (32 * mem[_7252 + mem[_7252]]) + 32 >= 0 and _7252 + ceil32(return_data.size) + (32 * mem[_7252 + mem[_7252]]) + 32 <= test266151307()
                        mem[64] = _7252 + ceil32(return_data.size) + (32 * mem[_7252 + mem[_7252]]) + 32
                        mem[_7252 + ceil32(return_data.size)] = _7396
                        require return_data.size >= _7324 + (32 * _7396) + 32
                        mem[_7252 + ceil32(return_data.size) + 32 len 32 * _7396] = mem[_7252 + _7324 + 32 len 32 * _7396]
                        require mem[_4763] - 1 < _7396
                        _9052 = mem[(32 * mem[_4763] - 1) + _7252 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4763] - 1) + _7252 + ceil32(return_data.size) + 32] <= _4761:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9412] == bool(mem[_9412])
                        if not mem[_9412]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9052 - _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9052 - _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9844] == bool(mem[_9844])
                        if not mem[_9844]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4763 + 132] = arg2
                            mem[_4763 + 164] = _4761
                            mem[_4763 + 196] = 160
                            mem[_4763 + 292] = mem[_4763]
                            idx = 0
                            s = _4763 + 32
                            t = _4763 + 324
                            while idx < mem[_4763]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4763 + 228] = this.address
                            mem[_4763 + 260] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7251 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7323 = mem[_7251]
                            require mem[_7251] <= test266151307()
                            require _7251 + return_data.size > _7251 + mem[_7251] + 31
                            _7395 = mem[_7251 + mem[_7251]]
                            require mem[_7251 + mem[_7251]] <= test266151307()
                            require (32 * mem[_7251 + mem[_7251]]) + 32 >= 0 and _7251 + ceil32(return_data.size) + (32 * mem[_7251 + mem[_7251]]) + 32 <= test266151307()
                            mem[64] = _7251 + ceil32(return_data.size) + (32 * mem[_7251 + mem[_7251]]) + 32
                            mem[_7251 + ceil32(return_data.size)] = _7395
                            require return_data.size >= _7323 + (32 * _7395) + 32
                            mem[_7251 + ceil32(return_data.size) + 32 len 32 * _7395] = mem[_7251 + _7323 + 32 len 32 * _7395]
                            require mem[_4763] - 1 < _7395
                            _9051 = mem[(32 * mem[_4763] - 1) + _7251 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4763] - 1) + _7251 + ceil32(return_data.size) + 32] <= _4761:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9411] == bool(mem[_9411])
                            if not mem[_9411]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9051 - _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9051 - _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9843] == bool(mem[_9843])
                            if not mem[_9843]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4761:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4763 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4763 + 132] = arg2
                                mem[_4763 + 164] = _4761
                                mem[_4763 + 196] = 160
                                mem[_4763 + 292] = mem[_4763]
                                idx = 0
                                s = _4763 + 32
                                t = _4763 + 324
                                while idx < mem[_4763]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4763 + 228] = this.address
                                mem[_4763 + 260] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4763 + (32 * mem[_4763]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7250 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7322 = mem[_7250]
                                require mem[_7250] <= test266151307()
                                require _7250 + return_data.size > _7250 + mem[_7250] + 31
                                _7394 = mem[_7250 + mem[_7250]]
                                require mem[_7250 + mem[_7250]] <= test266151307()
                                require (32 * mem[_7250 + mem[_7250]]) + 32 >= 0 and _7250 + ceil32(return_data.size) + (32 * mem[_7250 + mem[_7250]]) + 32 <= test266151307()
                                mem[64] = _7250 + ceil32(return_data.size) + (32 * mem[_7250 + mem[_7250]]) + 32
                                mem[_7250 + ceil32(return_data.size)] = _7394
                                require return_data.size >= _7322 + (32 * _7394) + 32
                                mem[_7250 + ceil32(return_data.size) + 32 len 32 * _7394] = mem[_7250 + _7322 + 32 len 32 * _7394]
                                require mem[_4763] - 1 < _7394
                                _9050 = mem[(32 * mem[_4763] - 1) + _7250 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4763] - 1) + _7250 + ceil32(return_data.size) + 32] <= _4761:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9410 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9410] == bool(mem[_9410])
                                if not mem[_9410]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9050 - _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9050 - _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9842 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9842] == bool(mem[_9842])
                                if not mem[_9842]:
                                    revert with 0, 'Take profit failed!'
            else:
                _4764 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4764 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[_4764]
                mem[_4764 + 32] = address(ext_call.return_data[0])
                if not address(cd[(arg4 + 68)]):
                    require mem[_4764] - 1 < mem[_4764]
                    mem[(32 * mem[_4764] - 1) + _4764 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4764 + 100] = arg2
                        mem[_4764 + 132] = _4761
                        mem[_4764 + 164] = 160
                        mem[_4764 + 260] = mem[_4764]
                        idx = 0
                        s = _4764 + 32
                        t = _4764 + 292
                        while idx < mem[_4764]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4764 + 196] = this.address
                        mem[_4764 + 228] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7255 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7327 = mem[_7255]
                        require mem[_7255] <= test266151307()
                        require _7255 + return_data.size > _7255 + mem[_7255] + 31
                        _7399 = mem[_7255 + mem[_7255]]
                        require mem[_7255 + mem[_7255]] <= test266151307()
                        require (32 * mem[_7255 + mem[_7255]]) + 32 >= 0 and _7255 + ceil32(return_data.size) + (32 * mem[_7255 + mem[_7255]]) + 32 <= test266151307()
                        mem[64] = _7255 + ceil32(return_data.size) + (32 * mem[_7255 + mem[_7255]]) + 32
                        mem[_7255 + ceil32(return_data.size)] = _7399
                        require return_data.size >= _7327 + (32 * _7399) + 32
                        mem[_7255 + ceil32(return_data.size) + 32 len 32 * _7399] = mem[_7255 + _7327 + 32 len 32 * _7399]
                        require mem[_4764] - 1 < _7399
                        _9055 = mem[(32 * mem[_4764] - 1) + _7255 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4764] - 1) + _7255 + ceil32(return_data.size) + 32] <= _4761:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9415] == bool(mem[_9415])
                        if not mem[_9415]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9055 - _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9055 - _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9847] == bool(mem[_9847])
                        if not mem[_9847]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4764 + 100] = arg2
                            mem[_4764 + 132] = _4761
                            mem[_4764 + 164] = 160
                            mem[_4764 + 260] = mem[_4764]
                            idx = 0
                            s = _4764 + 32
                            t = _4764 + 292
                            while idx < mem[_4764]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4764 + 196] = this.address
                            mem[_4764 + 228] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7254 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7326 = mem[_7254]
                            require mem[_7254] <= test266151307()
                            require _7254 + return_data.size > _7254 + mem[_7254] + 31
                            _7398 = mem[_7254 + mem[_7254]]
                            require mem[_7254 + mem[_7254]] <= test266151307()
                            require (32 * mem[_7254 + mem[_7254]]) + 32 >= 0 and _7254 + ceil32(return_data.size) + (32 * mem[_7254 + mem[_7254]]) + 32 <= test266151307()
                            mem[64] = _7254 + ceil32(return_data.size) + (32 * mem[_7254 + mem[_7254]]) + 32
                            mem[_7254 + ceil32(return_data.size)] = _7398
                            require return_data.size >= _7326 + (32 * _7398) + 32
                            mem[_7254 + ceil32(return_data.size) + 32 len 32 * _7398] = mem[_7254 + _7326 + 32 len 32 * _7398]
                            require mem[_4764] - 1 < _7398
                            _9054 = mem[(32 * mem[_4764] - 1) + _7254 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4764] - 1) + _7254 + ceil32(return_data.size) + 32] <= _4761:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9414 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9414] == bool(mem[_9414])
                            if not mem[_9414]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9054 - _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9054 - _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9846 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9846] == bool(mem[_9846])
                            if not mem[_9846]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4761:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4764 + 100] = arg2
                                mem[_4764 + 132] = _4761
                                mem[_4764 + 164] = 160
                                mem[_4764 + 260] = mem[_4764]
                                idx = 0
                                s = _4764 + 32
                                t = _4764 + 292
                                while idx < mem[_4764]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4764 + 196] = this.address
                                mem[_4764 + 228] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7253 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7325 = mem[_7253]
                                require mem[_7253] <= test266151307()
                                require _7253 + return_data.size > _7253 + mem[_7253] + 31
                                _7397 = mem[_7253 + mem[_7253]]
                                require mem[_7253 + mem[_7253]] <= test266151307()
                                require (32 * mem[_7253 + mem[_7253]]) + 32 >= 0 and _7253 + ceil32(return_data.size) + (32 * mem[_7253 + mem[_7253]]) + 32 <= test266151307()
                                mem[64] = _7253 + ceil32(return_data.size) + (32 * mem[_7253 + mem[_7253]]) + 32
                                mem[_7253 + ceil32(return_data.size)] = _7397
                                require return_data.size >= _7325 + (32 * _7397) + 32
                                mem[_7253 + ceil32(return_data.size) + 32 len 32 * _7397] = mem[_7253 + _7325 + 32 len 32 * _7397]
                                require mem[_4764] - 1 < _7397
                                _9053 = mem[(32 * mem[_4764] - 1) + _7253 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4764] - 1) + _7253 + ceil32(return_data.size) + 32] <= _4761:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9413 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9413] == bool(mem[_9413])
                                if not mem[_9413]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9053 - _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9053 - _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9845 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9845] == bool(mem[_9845])
                                if not mem[_9845]:
                                    revert with 0, 'Take profit failed!'
                else:
                    require 1 < mem[_4764]
                    mem[_4764 + 64] = address(cd[(arg4 + 68)])
                    require mem[_4764] - 1 < mem[_4764]
                    mem[(32 * mem[_4764] - 1) + _4764 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4764 + 100] = arg2
                        mem[_4764 + 132] = _4761
                        mem[_4764 + 164] = 160
                        mem[_4764 + 260] = mem[_4764]
                        idx = 0
                        s = _4764 + 32
                        t = _4764 + 292
                        while idx < mem[_4764]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4764 + 196] = this.address
                        mem[_4764 + 228] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7258 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7330 = mem[_7258]
                        require mem[_7258] <= test266151307()
                        require _7258 + return_data.size > _7258 + mem[_7258] + 31
                        _7402 = mem[_7258 + mem[_7258]]
                        require mem[_7258 + mem[_7258]] <= test266151307()
                        require (32 * mem[_7258 + mem[_7258]]) + 32 >= 0 and _7258 + ceil32(return_data.size) + (32 * mem[_7258 + mem[_7258]]) + 32 <= test266151307()
                        mem[64] = _7258 + ceil32(return_data.size) + (32 * mem[_7258 + mem[_7258]]) + 32
                        mem[_7258 + ceil32(return_data.size)] = _7402
                        require return_data.size >= _7330 + (32 * _7402) + 32
                        mem[_7258 + ceil32(return_data.size) + 32 len 32 * _7402] = mem[_7258 + _7330 + 32 len 32 * _7402]
                        require mem[_4764] - 1 < _7402
                        _9058 = mem[(32 * mem[_4764] - 1) + _7258 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4764] - 1) + _7258 + ceil32(return_data.size) + 32] <= _4761:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9418] == bool(mem[_9418])
                        if not mem[_9418]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9058 - _4761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9058 - _4761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9850] == bool(mem[_9850])
                        if not mem[_9850]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4764 + 100] = arg2
                            mem[_4764 + 132] = _4761
                            mem[_4764 + 164] = 160
                            mem[_4764 + 260] = mem[_4764]
                            idx = 0
                            s = _4764 + 32
                            t = _4764 + 292
                            while idx < mem[_4764]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4764 + 196] = this.address
                            mem[_4764 + 228] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7257 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7329 = mem[_7257]
                            require mem[_7257] <= test266151307()
                            require _7257 + return_data.size > _7257 + mem[_7257] + 31
                            _7401 = mem[_7257 + mem[_7257]]
                            require mem[_7257 + mem[_7257]] <= test266151307()
                            require (32 * mem[_7257 + mem[_7257]]) + 32 >= 0 and _7257 + ceil32(return_data.size) + (32 * mem[_7257 + mem[_7257]]) + 32 <= test266151307()
                            mem[64] = _7257 + ceil32(return_data.size) + (32 * mem[_7257 + mem[_7257]]) + 32
                            mem[_7257 + ceil32(return_data.size)] = _7401
                            require return_data.size >= _7329 + (32 * _7401) + 32
                            mem[_7257 + ceil32(return_data.size) + 32 len 32 * _7401] = mem[_7257 + _7329 + 32 len 32 * _7401]
                            require mem[_4764] - 1 < _7401
                            _9057 = mem[(32 * mem[_4764] - 1) + _7257 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4764] - 1) + _7257 + ceil32(return_data.size) + 32] <= _4761:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9417] == bool(mem[_9417])
                            if not mem[_9417]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9057 - _4761
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9057 - _4761
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9849] == bool(mem[_9849])
                            if not mem[_9849]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4761:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4761
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4764 + 100] = arg2
                                mem[_4764 + 132] = _4761
                                mem[_4764 + 164] = 160
                                mem[_4764 + 260] = mem[_4764]
                                idx = 0
                                s = _4764 + 32
                                t = _4764 + 292
                                while idx < mem[_4764]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4764 + 196] = this.address
                                mem[_4764 + 228] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7256 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7328 = mem[_7256]
                                require mem[_7256] <= test266151307()
                                require _7256 + return_data.size > _7256 + mem[_7256] + 31
                                _7400 = mem[_7256 + mem[_7256]]
                                require mem[_7256 + mem[_7256]] <= test266151307()
                                require (32 * mem[_7256 + mem[_7256]]) + 32 >= 0 and _7256 + ceil32(return_data.size) + (32 * mem[_7256 + mem[_7256]]) + 32 <= test266151307()
                                mem[64] = _7256 + ceil32(return_data.size) + (32 * mem[_7256 + mem[_7256]]) + 32
                                mem[_7256 + ceil32(return_data.size)] = _7400
                                require return_data.size >= _7328 + (32 * _7400) + 32
                                mem[_7256 + ceil32(return_data.size) + 32 len 32 * _7400] = mem[_7256 + _7328 + 32 len 32 * _7400]
                                require mem[_4764] - 1 < _7400
                                _9056 = mem[(32 * mem[_4764] - 1) + _7256 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4764] - 1) + _7256 + ceil32(return_data.size) + 32] <= _4761:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9416] == bool(mem[_9416])
                                if not mem[_9416]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9056 - _4761
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9056 - _4761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9848 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9848] == bool(mem[_9848])
                                if not mem[_9848]:
                                    revert with 0, 'Take profit failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _2422 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _2428 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _2428
            require return_data.size >= _2422 + (32 * _2428) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2428] = mem[(4 * ceil32(return_data.size)) + _2422 + 224 len 32 * _2428]
            require 0 < _2428
            _4762 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 64
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            if address(cd[(arg4 + 68)]):
                _4765 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_4765 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[_4765]
                mem[_4765 + 32] = address(ext_call.return_data[0])
                if not address(cd[(arg4 + 68)]):
                    require mem[_4765] - 1 < mem[_4765]
                    mem[(32 * mem[_4765] - 1) + _4765 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4765 + 132] = arg3
                        mem[_4765 + 164] = _4762
                        mem[_4765 + 196] = 160
                        mem[_4765 + 292] = mem[_4765]
                        idx = 0
                        s = _4765 + 32
                        t = _4765 + 324
                        while idx < mem[_4765]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4765 + 228] = this.address
                        mem[_4765 + 260] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7261 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7333 = mem[_7261]
                        require mem[_7261] <= test266151307()
                        require _7261 + return_data.size > _7261 + mem[_7261] + 31
                        _7405 = mem[_7261 + mem[_7261]]
                        require mem[_7261 + mem[_7261]] <= test266151307()
                        require (32 * mem[_7261 + mem[_7261]]) + 32 >= 0 and _7261 + ceil32(return_data.size) + (32 * mem[_7261 + mem[_7261]]) + 32 <= test266151307()
                        mem[64] = _7261 + ceil32(return_data.size) + (32 * mem[_7261 + mem[_7261]]) + 32
                        mem[_7261 + ceil32(return_data.size)] = _7405
                        require return_data.size >= _7333 + (32 * _7405) + 32
                        mem[_7261 + ceil32(return_data.size) + 32 len 32 * _7405] = mem[_7261 + _7333 + 32 len 32 * _7405]
                        require mem[_4765] - 1 < _7405
                        _9061 = mem[(32 * mem[_4765] - 1) + _7261 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4765] - 1) + _7261 + ceil32(return_data.size) + 32] <= _4762:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9421] == bool(mem[_9421])
                        if not mem[_9421]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9061 - _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9061 - _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9853] == bool(mem[_9853])
                        if not mem[_9853]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4765 + 132] = arg3
                            mem[_4765 + 164] = _4762
                            mem[_4765 + 196] = 160
                            mem[_4765 + 292] = mem[_4765]
                            idx = 0
                            s = _4765 + 32
                            t = _4765 + 324
                            while idx < mem[_4765]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4765 + 228] = this.address
                            mem[_4765 + 260] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7260 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7332 = mem[_7260]
                            require mem[_7260] <= test266151307()
                            require _7260 + return_data.size > _7260 + mem[_7260] + 31
                            _7404 = mem[_7260 + mem[_7260]]
                            require mem[_7260 + mem[_7260]] <= test266151307()
                            require (32 * mem[_7260 + mem[_7260]]) + 32 >= 0 and _7260 + ceil32(return_data.size) + (32 * mem[_7260 + mem[_7260]]) + 32 <= test266151307()
                            mem[64] = _7260 + ceil32(return_data.size) + (32 * mem[_7260 + mem[_7260]]) + 32
                            mem[_7260 + ceil32(return_data.size)] = _7404
                            require return_data.size >= _7332 + (32 * _7404) + 32
                            mem[_7260 + ceil32(return_data.size) + 32 len 32 * _7404] = mem[_7260 + _7332 + 32 len 32 * _7404]
                            require mem[_4765] - 1 < _7404
                            _9060 = mem[(32 * mem[_4765] - 1) + _7260 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4765] - 1) + _7260 + ceil32(return_data.size) + 32] <= _4762:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9420 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9420] == bool(mem[_9420])
                            if not mem[_9420]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9060 - _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9060 - _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9852] == bool(mem[_9852])
                            if not mem[_9852]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4762:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4765 + 132] = arg3
                                mem[_4765 + 164] = _4762
                                mem[_4765 + 196] = 160
                                mem[_4765 + 292] = mem[_4765]
                                idx = 0
                                s = _4765 + 32
                                t = _4765 + 324
                                while idx < mem[_4765]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4765 + 228] = this.address
                                mem[_4765 + 260] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7259 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7331 = mem[_7259]
                                require mem[_7259] <= test266151307()
                                require _7259 + return_data.size > _7259 + mem[_7259] + 31
                                _7403 = mem[_7259 + mem[_7259]]
                                require mem[_7259 + mem[_7259]] <= test266151307()
                                require (32 * mem[_7259 + mem[_7259]]) + 32 >= 0 and _7259 + ceil32(return_data.size) + (32 * mem[_7259 + mem[_7259]]) + 32 <= test266151307()
                                mem[64] = _7259 + ceil32(return_data.size) + (32 * mem[_7259 + mem[_7259]]) + 32
                                mem[_7259 + ceil32(return_data.size)] = _7403
                                require return_data.size >= _7331 + (32 * _7403) + 32
                                mem[_7259 + ceil32(return_data.size) + 32 len 32 * _7403] = mem[_7259 + _7331 + 32 len 32 * _7403]
                                require mem[_4765] - 1 < _7403
                                _9059 = mem[(32 * mem[_4765] - 1) + _7259 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4765] - 1) + _7259 + ceil32(return_data.size) + 32] <= _4762:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9419 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9419] == bool(mem[_9419])
                                if not mem[_9419]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9059 - _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9059 - _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9851] == bool(mem[_9851])
                                if not mem[_9851]:
                                    revert with 0, 'Take profit failed!'
                else:
                    require 1 < mem[_4765]
                    mem[_4765 + 64] = address(cd[(arg4 + 68)])
                    require mem[_4765] - 1 < mem[_4765]
                    mem[(32 * mem[_4765] - 1) + _4765 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4765 + 132] = arg3
                        mem[_4765 + 164] = _4762
                        mem[_4765 + 196] = 160
                        mem[_4765 + 292] = mem[_4765]
                        idx = 0
                        s = _4765 + 32
                        t = _4765 + 324
                        while idx < mem[_4765]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4765 + 228] = this.address
                        mem[_4765 + 260] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7264 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7336 = mem[_7264]
                        require mem[_7264] <= test266151307()
                        require _7264 + return_data.size > _7264 + mem[_7264] + 31
                        _7408 = mem[_7264 + mem[_7264]]
                        require mem[_7264 + mem[_7264]] <= test266151307()
                        require (32 * mem[_7264 + mem[_7264]]) + 32 >= 0 and _7264 + ceil32(return_data.size) + (32 * mem[_7264 + mem[_7264]]) + 32 <= test266151307()
                        mem[64] = _7264 + ceil32(return_data.size) + (32 * mem[_7264 + mem[_7264]]) + 32
                        mem[_7264 + ceil32(return_data.size)] = _7408
                        require return_data.size >= _7336 + (32 * _7408) + 32
                        mem[_7264 + ceil32(return_data.size) + 32 len 32 * _7408] = mem[_7264 + _7336 + 32 len 32 * _7408]
                        require mem[_4765] - 1 < _7408
                        _9064 = mem[(32 * mem[_4765] - 1) + _7264 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4765] - 1) + _7264 + ceil32(return_data.size) + 32] <= _4762:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9424] == bool(mem[_9424])
                        if not mem[_9424]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9064 - _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9064 - _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9856] == bool(mem[_9856])
                        if not mem[_9856]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4765 + 132] = arg3
                            mem[_4765 + 164] = _4762
                            mem[_4765 + 196] = 160
                            mem[_4765 + 292] = mem[_4765]
                            idx = 0
                            s = _4765 + 32
                            t = _4765 + 324
                            while idx < mem[_4765]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4765 + 228] = this.address
                            mem[_4765 + 260] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7263 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7335 = mem[_7263]
                            require mem[_7263] <= test266151307()
                            require _7263 + return_data.size > _7263 + mem[_7263] + 31
                            _7407 = mem[_7263 + mem[_7263]]
                            require mem[_7263 + mem[_7263]] <= test266151307()
                            require (32 * mem[_7263 + mem[_7263]]) + 32 >= 0 and _7263 + ceil32(return_data.size) + (32 * mem[_7263 + mem[_7263]]) + 32 <= test266151307()
                            mem[64] = _7263 + ceil32(return_data.size) + (32 * mem[_7263 + mem[_7263]]) + 32
                            mem[_7263 + ceil32(return_data.size)] = _7407
                            require return_data.size >= _7335 + (32 * _7407) + 32
                            mem[_7263 + ceil32(return_data.size) + 32 len 32 * _7407] = mem[_7263 + _7335 + 32 len 32 * _7407]
                            require mem[_4765] - 1 < _7407
                            _9063 = mem[(32 * mem[_4765] - 1) + _7263 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4765] - 1) + _7263 + ceil32(return_data.size) + 32] <= _4762:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9423 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9423] == bool(mem[_9423])
                            if not mem[_9423]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9063 - _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9063 - _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9855] == bool(mem[_9855])
                            if not mem[_9855]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4762:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4765 + 132] = arg3
                                mem[_4765 + 164] = _4762
                                mem[_4765 + 196] = 160
                                mem[_4765 + 292] = mem[_4765]
                                idx = 0
                                s = _4765 + 32
                                t = _4765 + 324
                                while idx < mem[_4765]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4765 + 228] = this.address
                                mem[_4765 + 260] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4765 + (32 * mem[_4765]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7262 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7334 = mem[_7262]
                                require mem[_7262] <= test266151307()
                                require _7262 + return_data.size > _7262 + mem[_7262] + 31
                                _7406 = mem[_7262 + mem[_7262]]
                                require mem[_7262 + mem[_7262]] <= test266151307()
                                require (32 * mem[_7262 + mem[_7262]]) + 32 >= 0 and _7262 + ceil32(return_data.size) + (32 * mem[_7262 + mem[_7262]]) + 32 <= test266151307()
                                mem[64] = _7262 + ceil32(return_data.size) + (32 * mem[_7262 + mem[_7262]]) + 32
                                mem[_7262 + ceil32(return_data.size)] = _7406
                                require return_data.size >= _7334 + (32 * _7406) + 32
                                mem[_7262 + ceil32(return_data.size) + 32 len 32 * _7406] = mem[_7262 + _7334 + 32 len 32 * _7406]
                                require mem[_4765] - 1 < _7406
                                _9062 = mem[(32 * mem[_4765] - 1) + _7262 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4765] - 1) + _7262 + ceil32(return_data.size) + 32] <= _4762:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9422] == bool(mem[_9422])
                                if not mem[_9422]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9062 - _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9062 - _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9854] == bool(mem[_9854])
                                if not mem[_9854]:
                                    revert with 0, 'Take profit failed!'
            else:
                _4766 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4766 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[_4766]
                mem[_4766 + 32] = address(ext_call.return_data[0])
                if not address(cd[(arg4 + 68)]):
                    require mem[_4766] - 1 < mem[_4766]
                    mem[(32 * mem[_4766] - 1) + _4766 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4766 + 100] = arg3
                        mem[_4766 + 132] = _4762
                        mem[_4766 + 164] = 160
                        mem[_4766 + 260] = mem[_4766]
                        idx = 0
                        s = _4766 + 32
                        t = _4766 + 292
                        while idx < mem[_4766]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4766 + 196] = this.address
                        mem[_4766 + 228] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7267 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7339 = mem[_7267]
                        require mem[_7267] <= test266151307()
                        require _7267 + return_data.size > _7267 + mem[_7267] + 31
                        _7411 = mem[_7267 + mem[_7267]]
                        require mem[_7267 + mem[_7267]] <= test266151307()
                        require (32 * mem[_7267 + mem[_7267]]) + 32 >= 0 and _7267 + ceil32(return_data.size) + (32 * mem[_7267 + mem[_7267]]) + 32 <= test266151307()
                        mem[64] = _7267 + ceil32(return_data.size) + (32 * mem[_7267 + mem[_7267]]) + 32
                        mem[_7267 + ceil32(return_data.size)] = _7411
                        require return_data.size >= _7339 + (32 * _7411) + 32
                        mem[_7267 + ceil32(return_data.size) + 32 len 32 * _7411] = mem[_7267 + _7339 + 32 len 32 * _7411]
                        require mem[_4766] - 1 < _7411
                        _9067 = mem[(32 * mem[_4766] - 1) + _7267 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4766] - 1) + _7267 + ceil32(return_data.size) + 32] <= _4762:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9427] == bool(mem[_9427])
                        if not mem[_9427]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9067 - _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9067 - _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9859] == bool(mem[_9859])
                        if not mem[_9859]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4766 + 100] = arg3
                            mem[_4766 + 132] = _4762
                            mem[_4766 + 164] = 160
                            mem[_4766 + 260] = mem[_4766]
                            idx = 0
                            s = _4766 + 32
                            t = _4766 + 292
                            while idx < mem[_4766]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4766 + 196] = this.address
                            mem[_4766 + 228] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7266 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7338 = mem[_7266]
                            require mem[_7266] <= test266151307()
                            require _7266 + return_data.size > _7266 + mem[_7266] + 31
                            _7410 = mem[_7266 + mem[_7266]]
                            require mem[_7266 + mem[_7266]] <= test266151307()
                            require (32 * mem[_7266 + mem[_7266]]) + 32 >= 0 and _7266 + ceil32(return_data.size) + (32 * mem[_7266 + mem[_7266]]) + 32 <= test266151307()
                            mem[64] = _7266 + ceil32(return_data.size) + (32 * mem[_7266 + mem[_7266]]) + 32
                            mem[_7266 + ceil32(return_data.size)] = _7410
                            require return_data.size >= _7338 + (32 * _7410) + 32
                            mem[_7266 + ceil32(return_data.size) + 32 len 32 * _7410] = mem[_7266 + _7338 + 32 len 32 * _7410]
                            require mem[_4766] - 1 < _7410
                            _9066 = mem[(32 * mem[_4766] - 1) + _7266 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4766] - 1) + _7266 + ceil32(return_data.size) + 32] <= _4762:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9426 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9426] == bool(mem[_9426])
                            if not mem[_9426]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9066 - _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9066 - _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9858] == bool(mem[_9858])
                            if not mem[_9858]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4762:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4766 + 100] = arg3
                                mem[_4766 + 132] = _4762
                                mem[_4766 + 164] = 160
                                mem[_4766 + 260] = mem[_4766]
                                idx = 0
                                s = _4766 + 32
                                t = _4766 + 292
                                while idx < mem[_4766]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4766 + 196] = this.address
                                mem[_4766 + 228] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7265 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7337 = mem[_7265]
                                require mem[_7265] <= test266151307()
                                require _7265 + return_data.size > _7265 + mem[_7265] + 31
                                _7409 = mem[_7265 + mem[_7265]]
                                require mem[_7265 + mem[_7265]] <= test266151307()
                                require (32 * mem[_7265 + mem[_7265]]) + 32 >= 0 and _7265 + ceil32(return_data.size) + (32 * mem[_7265 + mem[_7265]]) + 32 <= test266151307()
                                mem[64] = _7265 + ceil32(return_data.size) + (32 * mem[_7265 + mem[_7265]]) + 32
                                mem[_7265 + ceil32(return_data.size)] = _7409
                                require return_data.size >= _7337 + (32 * _7409) + 32
                                mem[_7265 + ceil32(return_data.size) + 32 len 32 * _7409] = mem[_7265 + _7337 + 32 len 32 * _7409]
                                require mem[_4766] - 1 < _7409
                                _9065 = mem[(32 * mem[_4766] - 1) + _7265 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4766] - 1) + _7265 + ceil32(return_data.size) + 32] <= _4762:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9425 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9425] == bool(mem[_9425])
                                if not mem[_9425]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9065 - _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9065 - _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9857 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9857] == bool(mem[_9857])
                                if not mem[_9857]:
                                    revert with 0, 'Take profit failed!'
                else:
                    require 1 < mem[_4766]
                    mem[_4766 + 64] = address(cd[(arg4 + 68)])
                    require mem[_4766] - 1 < mem[_4766]
                    mem[(32 * mem[_4766] - 1) + _4766 + 32] = address(ext_call.return_data[0])
                    if cd[(arg4 + 36)] == 1:
                        mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_4766 + 100] = arg3
                        mem[_4766 + 132] = _4762
                        mem[_4766 + 164] = 160
                        mem[_4766 + 260] = mem[_4766]
                        idx = 0
                        s = _4766 + 32
                        t = _4766 + 292
                        while idx < mem[_4766]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4766 + 196] = this.address
                        mem[_4766 + 228] = -1
                        require ext_code.size(stor4)
                        call stor4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7342 = mem[_7270]
                        require mem[_7270] <= test266151307()
                        require _7270 + return_data.size > _7270 + mem[_7270] + 31
                        _7414 = mem[_7270 + mem[_7270]]
                        require mem[_7270 + mem[_7270]] <= test266151307()
                        require (32 * mem[_7270 + mem[_7270]]) + 32 >= 0 and _7270 + ceil32(return_data.size) + (32 * mem[_7270 + mem[_7270]]) + 32 <= test266151307()
                        mem[64] = _7270 + ceil32(return_data.size) + (32 * mem[_7270 + mem[_7270]]) + 32
                        mem[_7270 + ceil32(return_data.size)] = _7414
                        require return_data.size >= _7342 + (32 * _7414) + 32
                        mem[_7270 + ceil32(return_data.size) + 32 len 32 * _7414] = mem[_7270 + _7342 + 32 len 32 * _7414]
                        require mem[_4766] - 1 < _7414
                        _9070 = mem[(32 * mem[_4766] - 1) + _7270 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_4766] - 1) + _7270 + ceil32(return_data.size) + 32] <= _4762:
                            revert with 0, 'Nope!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9430] == bool(mem[_9430])
                        if not mem[_9430]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _9070 - _4762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _9070 - _4762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9862] == bool(mem[_9862])
                        if not mem[_9862]:
                            revert with 0, 'Take profit failed!'
                    else:
                        if cd[(arg4 + 36)] == 2:
                            mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4766 + 100] = arg3
                            mem[_4766 + 132] = _4762
                            mem[_4766 + 164] = 160
                            mem[_4766 + 260] = mem[_4766]
                            idx = 0
                            s = _4766 + 32
                            t = _4766 + 292
                            while idx < mem[_4766]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4766 + 196] = this.address
                            mem[_4766 + 228] = -1
                            require ext_code.size(stor5)
                            call stor5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7269 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7341 = mem[_7269]
                            require mem[_7269] <= test266151307()
                            require _7269 + return_data.size > _7269 + mem[_7269] + 31
                            _7413 = mem[_7269 + mem[_7269]]
                            require mem[_7269 + mem[_7269]] <= test266151307()
                            require (32 * mem[_7269 + mem[_7269]]) + 32 >= 0 and _7269 + ceil32(return_data.size) + (32 * mem[_7269 + mem[_7269]]) + 32 <= test266151307()
                            mem[64] = _7269 + ceil32(return_data.size) + (32 * mem[_7269 + mem[_7269]]) + 32
                            mem[_7269 + ceil32(return_data.size)] = _7413
                            require return_data.size >= _7341 + (32 * _7413) + 32
                            mem[_7269 + ceil32(return_data.size) + 32 len 32 * _7413] = mem[_7269 + _7341 + 32 len 32 * _7413]
                            require mem[_4766] - 1 < _7413
                            _9069 = mem[(32 * mem[_4766] - 1) + _7269 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4766] - 1) + _7269 + ceil32(return_data.size) + 32] <= _4762:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9429] == bool(mem[_9429])
                            if not mem[_9429]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9069 - _4762
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9069 - _4762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9861] == bool(mem[_9861])
                            if not mem[_9861]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] != 4:
                                if 0 <= _4762:
                                    revert with 0, 'Nope!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Payback failed!'
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, -_4762
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                mem[_4766 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4766 + 100] = arg3
                                mem[_4766 + 132] = _4762
                                mem[_4766 + 164] = 160
                                mem[_4766 + 260] = mem[_4766]
                                idx = 0
                                s = _4766 + 32
                                t = _4766 + 292
                                while idx < mem[_4766]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4766 + 196] = this.address
                                mem[_4766 + 228] = -1
                                require ext_code.size(stor6)
                                call stor6.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4766 + (32 * mem[_4766]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7268 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7340 = mem[_7268]
                                require mem[_7268] <= test266151307()
                                require _7268 + return_data.size > _7268 + mem[_7268] + 31
                                _7412 = mem[_7268 + mem[_7268]]
                                require mem[_7268 + mem[_7268]] <= test266151307()
                                require (32 * mem[_7268 + mem[_7268]]) + 32 >= 0 and _7268 + ceil32(return_data.size) + (32 * mem[_7268 + mem[_7268]]) + 32 <= test266151307()
                                mem[64] = _7268 + ceil32(return_data.size) + (32 * mem[_7268 + mem[_7268]]) + 32
                                mem[_7268 + ceil32(return_data.size)] = _7412
                                require return_data.size >= _7340 + (32 * _7412) + 32
                                mem[_7268 + ceil32(return_data.size) + 32 len 32 * _7412] = mem[_7268 + _7340 + 32 len 32 * _7412]
                                require mem[_4766] - 1 < _7412
                                _9068 = mem[(32 * mem[_4766] - 1) + _7268 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4766] - 1) + _7268 + ceil32(return_data.size) + 32] <= _4762:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9428 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9428] == bool(mem[_9428])
                                if not mem[_9428]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9068 - _4762
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9068 - _4762
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9860] == bool(mem[_9860])
                                if not mem[_9860]:
                                    revert with 0, 'Take profit failed!'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2419 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _2425 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _2425
                require return_data.size >= _2419 + (32 * _2425) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2425] = mem[(6 * ceil32(return_data.size)) + _2419 + 224 len 32 * _2425]
                require 0 < _2425
                _4759 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                if address(cd[(arg4 + 68)]):
                    _4771 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_4771 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_4771]
                    mem[_4771 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4771] - 1 < mem[_4771]
                        mem[(32 * mem[_4771] - 1) + _4771 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4771 + 132] = arg2
                            mem[_4771 + 164] = _4759
                            mem[_4771 + 196] = 160
                            mem[_4771 + 292] = mem[_4771]
                            idx = 0
                            s = _4771 + 32
                            t = _4771 + 324
                            while idx < mem[_4771]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4771 + 228] = this.address
                            mem[_4771 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7225 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7297 = mem[_7225]
                            require mem[_7225] <= test266151307()
                            require _7225 + return_data.size > _7225 + mem[_7225] + 31
                            _7369 = mem[_7225 + mem[_7225]]
                            require mem[_7225 + mem[_7225]] <= test266151307()
                            require (32 * mem[_7225 + mem[_7225]]) + 32 >= 0 and _7225 + ceil32(return_data.size) + (32 * mem[_7225 + mem[_7225]]) + 32 <= test266151307()
                            mem[64] = _7225 + ceil32(return_data.size) + (32 * mem[_7225 + mem[_7225]]) + 32
                            mem[_7225 + ceil32(return_data.size)] = _7369
                            require return_data.size >= _7297 + (32 * _7369) + 32
                            mem[_7225 + ceil32(return_data.size) + 32 len 32 * _7369] = mem[_7225 + _7297 + 32 len 32 * _7369]
                            require mem[_4771] - 1 < _7369
                            _9025 = mem[(32 * mem[_4771] - 1) + _7225 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4771] - 1) + _7225 + ceil32(return_data.size) + 32] <= _4759:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9385] == bool(mem[_9385])
                            if not mem[_9385]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9025 - _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9025 - _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9817 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9817] == bool(mem[_9817])
                            if not mem[_9817]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4771 + 132] = arg2
                                mem[_4771 + 164] = _4759
                                mem[_4771 + 196] = 160
                                mem[_4771 + 292] = mem[_4771]
                                idx = 0
                                s = _4771 + 32
                                t = _4771 + 324
                                while idx < mem[_4771]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4771 + 228] = this.address
                                mem[_4771 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7224 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7296 = mem[_7224]
                                require mem[_7224] <= test266151307()
                                require _7224 + return_data.size > _7224 + mem[_7224] + 31
                                _7368 = mem[_7224 + mem[_7224]]
                                require mem[_7224 + mem[_7224]] <= test266151307()
                                require (32 * mem[_7224 + mem[_7224]]) + 32 >= 0 and _7224 + ceil32(return_data.size) + (32 * mem[_7224 + mem[_7224]]) + 32 <= test266151307()
                                mem[64] = _7224 + ceil32(return_data.size) + (32 * mem[_7224 + mem[_7224]]) + 32
                                mem[_7224 + ceil32(return_data.size)] = _7368
                                require return_data.size >= _7296 + (32 * _7368) + 32
                                mem[_7224 + ceil32(return_data.size) + 32 len 32 * _7368] = mem[_7224 + _7296 + 32 len 32 * _7368]
                                require mem[_4771] - 1 < _7368
                                _9024 = mem[(32 * mem[_4771] - 1) + _7224 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4771] - 1) + _7224 + ceil32(return_data.size) + 32] <= _4759:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9384] == bool(mem[_9384])
                                if not mem[_9384]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9024 - _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9024 - _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9816] == bool(mem[_9816])
                                if not mem[_9816]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4759:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4771 + 132] = arg2
                                    mem[_4771 + 164] = _4759
                                    mem[_4771 + 196] = 160
                                    mem[_4771 + 292] = mem[_4771]
                                    idx = 0
                                    s = _4771 + 32
                                    t = _4771 + 324
                                    while idx < mem[_4771]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4771 + 228] = this.address
                                    mem[_4771 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7223 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7295 = mem[_7223]
                                    require mem[_7223] <= test266151307()
                                    require _7223 + return_data.size > _7223 + mem[_7223] + 31
                                    _7367 = mem[_7223 + mem[_7223]]
                                    require mem[_7223 + mem[_7223]] <= test266151307()
                                    require (32 * mem[_7223 + mem[_7223]]) + 32 >= 0 and _7223 + ceil32(return_data.size) + (32 * mem[_7223 + mem[_7223]]) + 32 <= test266151307()
                                    mem[64] = _7223 + ceil32(return_data.size) + (32 * mem[_7223 + mem[_7223]]) + 32
                                    mem[_7223 + ceil32(return_data.size)] = _7367
                                    require return_data.size >= _7295 + (32 * _7367) + 32
                                    mem[_7223 + ceil32(return_data.size) + 32 len 32 * _7367] = mem[_7223 + _7295 + 32 len 32 * _7367]
                                    require mem[_4771] - 1 < _7367
                                    _9023 = mem[(32 * mem[_4771] - 1) + _7223 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4771] - 1) + _7223 + ceil32(return_data.size) + 32] <= _4759:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9383 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9383] == bool(mem[_9383])
                                    if not mem[_9383]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9023 - _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9023 - _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9815] == bool(mem[_9815])
                                    if not mem[_9815]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4771]
                        mem[_4771 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4771] - 1 < mem[_4771]
                        mem[(32 * mem[_4771] - 1) + _4771 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4771 + 132] = arg2
                            mem[_4771 + 164] = _4759
                            mem[_4771 + 196] = 160
                            mem[_4771 + 292] = mem[_4771]
                            idx = 0
                            s = _4771 + 32
                            t = _4771 + 324
                            while idx < mem[_4771]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4771 + 228] = this.address
                            mem[_4771 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7228 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7300 = mem[_7228]
                            require mem[_7228] <= test266151307()
                            require _7228 + return_data.size > _7228 + mem[_7228] + 31
                            _7372 = mem[_7228 + mem[_7228]]
                            require mem[_7228 + mem[_7228]] <= test266151307()
                            require (32 * mem[_7228 + mem[_7228]]) + 32 >= 0 and _7228 + ceil32(return_data.size) + (32 * mem[_7228 + mem[_7228]]) + 32 <= test266151307()
                            mem[64] = _7228 + ceil32(return_data.size) + (32 * mem[_7228 + mem[_7228]]) + 32
                            mem[_7228 + ceil32(return_data.size)] = _7372
                            require return_data.size >= _7300 + (32 * _7372) + 32
                            mem[_7228 + ceil32(return_data.size) + 32 len 32 * _7372] = mem[_7228 + _7300 + 32 len 32 * _7372]
                            require mem[_4771] - 1 < _7372
                            _9028 = mem[(32 * mem[_4771] - 1) + _7228 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4771] - 1) + _7228 + ceil32(return_data.size) + 32] <= _4759:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9388] == bool(mem[_9388])
                            if not mem[_9388]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9028 - _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9028 - _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9820] == bool(mem[_9820])
                            if not mem[_9820]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4771 + 132] = arg2
                                mem[_4771 + 164] = _4759
                                mem[_4771 + 196] = 160
                                mem[_4771 + 292] = mem[_4771]
                                idx = 0
                                s = _4771 + 32
                                t = _4771 + 324
                                while idx < mem[_4771]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4771 + 228] = this.address
                                mem[_4771 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7227 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7299 = mem[_7227]
                                require mem[_7227] <= test266151307()
                                require _7227 + return_data.size > _7227 + mem[_7227] + 31
                                _7371 = mem[_7227 + mem[_7227]]
                                require mem[_7227 + mem[_7227]] <= test266151307()
                                require (32 * mem[_7227 + mem[_7227]]) + 32 >= 0 and _7227 + ceil32(return_data.size) + (32 * mem[_7227 + mem[_7227]]) + 32 <= test266151307()
                                mem[64] = _7227 + ceil32(return_data.size) + (32 * mem[_7227 + mem[_7227]]) + 32
                                mem[_7227 + ceil32(return_data.size)] = _7371
                                require return_data.size >= _7299 + (32 * _7371) + 32
                                mem[_7227 + ceil32(return_data.size) + 32 len 32 * _7371] = mem[_7227 + _7299 + 32 len 32 * _7371]
                                require mem[_4771] - 1 < _7371
                                _9027 = mem[(32 * mem[_4771] - 1) + _7227 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4771] - 1) + _7227 + ceil32(return_data.size) + 32] <= _4759:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9387] == bool(mem[_9387])
                                if not mem[_9387]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9027 - _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9027 - _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9819] == bool(mem[_9819])
                                if not mem[_9819]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4759:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4771 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4771 + 132] = arg2
                                    mem[_4771 + 164] = _4759
                                    mem[_4771 + 196] = 160
                                    mem[_4771 + 292] = mem[_4771]
                                    idx = 0
                                    s = _4771 + 32
                                    t = _4771 + 324
                                    while idx < mem[_4771]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4771 + 228] = this.address
                                    mem[_4771 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4771 + (32 * mem[_4771]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7226 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7298 = mem[_7226]
                                    require mem[_7226] <= test266151307()
                                    require _7226 + return_data.size > _7226 + mem[_7226] + 31
                                    _7370 = mem[_7226 + mem[_7226]]
                                    require mem[_7226 + mem[_7226]] <= test266151307()
                                    require (32 * mem[_7226 + mem[_7226]]) + 32 >= 0 and _7226 + ceil32(return_data.size) + (32 * mem[_7226 + mem[_7226]]) + 32 <= test266151307()
                                    mem[64] = _7226 + ceil32(return_data.size) + (32 * mem[_7226 + mem[_7226]]) + 32
                                    mem[_7226 + ceil32(return_data.size)] = _7370
                                    require return_data.size >= _7298 + (32 * _7370) + 32
                                    mem[_7226 + ceil32(return_data.size) + 32 len 32 * _7370] = mem[_7226 + _7298 + 32 len 32 * _7370]
                                    require mem[_4771] - 1 < _7370
                                    _9026 = mem[(32 * mem[_4771] - 1) + _7226 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4771] - 1) + _7226 + ceil32(return_data.size) + 32] <= _4759:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9386 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9386] == bool(mem[_9386])
                                    if not mem[_9386]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9026 - _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9026 - _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9818 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9818] == bool(mem[_9818])
                                    if not mem[_9818]:
                                        revert with 0, 'Take profit failed!'
                else:
                    _4772 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4772 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[_4772]
                    mem[_4772 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4772] - 1 < mem[_4772]
                        mem[(32 * mem[_4772] - 1) + _4772 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4772 + 100] = arg2
                            mem[_4772 + 132] = _4759
                            mem[_4772 + 164] = 160
                            mem[_4772 + 260] = mem[_4772]
                            idx = 0
                            s = _4772 + 32
                            t = _4772 + 292
                            while idx < mem[_4772]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4772 + 196] = this.address
                            mem[_4772 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7231 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7303 = mem[_7231]
                            require mem[_7231] <= test266151307()
                            require _7231 + return_data.size > _7231 + mem[_7231] + 31
                            _7375 = mem[_7231 + mem[_7231]]
                            require mem[_7231 + mem[_7231]] <= test266151307()
                            require (32 * mem[_7231 + mem[_7231]]) + 32 >= 0 and _7231 + ceil32(return_data.size) + (32 * mem[_7231 + mem[_7231]]) + 32 <= test266151307()
                            mem[64] = _7231 + ceil32(return_data.size) + (32 * mem[_7231 + mem[_7231]]) + 32
                            mem[_7231 + ceil32(return_data.size)] = _7375
                            require return_data.size >= _7303 + (32 * _7375) + 32
                            mem[_7231 + ceil32(return_data.size) + 32 len 32 * _7375] = mem[_7231 + _7303 + 32 len 32 * _7375]
                            require mem[_4772] - 1 < _7375
                            _9031 = mem[(32 * mem[_4772] - 1) + _7231 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4772] - 1) + _7231 + ceil32(return_data.size) + 32] <= _4759:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9391] == bool(mem[_9391])
                            if not mem[_9391]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9031 - _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9031 - _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9823] == bool(mem[_9823])
                            if not mem[_9823]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4772 + 100] = arg2
                                mem[_4772 + 132] = _4759
                                mem[_4772 + 164] = 160
                                mem[_4772 + 260] = mem[_4772]
                                idx = 0
                                s = _4772 + 32
                                t = _4772 + 292
                                while idx < mem[_4772]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4772 + 196] = this.address
                                mem[_4772 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7230 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7302 = mem[_7230]
                                require mem[_7230] <= test266151307()
                                require _7230 + return_data.size > _7230 + mem[_7230] + 31
                                _7374 = mem[_7230 + mem[_7230]]
                                require mem[_7230 + mem[_7230]] <= test266151307()
                                require (32 * mem[_7230 + mem[_7230]]) + 32 >= 0 and _7230 + ceil32(return_data.size) + (32 * mem[_7230 + mem[_7230]]) + 32 <= test266151307()
                                mem[64] = _7230 + ceil32(return_data.size) + (32 * mem[_7230 + mem[_7230]]) + 32
                                mem[_7230 + ceil32(return_data.size)] = _7374
                                require return_data.size >= _7302 + (32 * _7374) + 32
                                mem[_7230 + ceil32(return_data.size) + 32 len 32 * _7374] = mem[_7230 + _7302 + 32 len 32 * _7374]
                                require mem[_4772] - 1 < _7374
                                _9030 = mem[(32 * mem[_4772] - 1) + _7230 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4772] - 1) + _7230 + ceil32(return_data.size) + 32] <= _4759:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9390 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9390] == bool(mem[_9390])
                                if not mem[_9390]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9030 - _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9030 - _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9822 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9822] == bool(mem[_9822])
                                if not mem[_9822]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4759:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4772 + 100] = arg2
                                    mem[_4772 + 132] = _4759
                                    mem[_4772 + 164] = 160
                                    mem[_4772 + 260] = mem[_4772]
                                    idx = 0
                                    s = _4772 + 32
                                    t = _4772 + 292
                                    while idx < mem[_4772]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4772 + 196] = this.address
                                    mem[_4772 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7229 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7301 = mem[_7229]
                                    require mem[_7229] <= test266151307()
                                    require _7229 + return_data.size > _7229 + mem[_7229] + 31
                                    _7373 = mem[_7229 + mem[_7229]]
                                    require mem[_7229 + mem[_7229]] <= test266151307()
                                    require (32 * mem[_7229 + mem[_7229]]) + 32 >= 0 and _7229 + ceil32(return_data.size) + (32 * mem[_7229 + mem[_7229]]) + 32 <= test266151307()
                                    mem[64] = _7229 + ceil32(return_data.size) + (32 * mem[_7229 + mem[_7229]]) + 32
                                    mem[_7229 + ceil32(return_data.size)] = _7373
                                    require return_data.size >= _7301 + (32 * _7373) + 32
                                    mem[_7229 + ceil32(return_data.size) + 32 len 32 * _7373] = mem[_7229 + _7301 + 32 len 32 * _7373]
                                    require mem[_4772] - 1 < _7373
                                    _9029 = mem[(32 * mem[_4772] - 1) + _7229 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4772] - 1) + _7229 + ceil32(return_data.size) + 32] <= _4759:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9389 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9389] == bool(mem[_9389])
                                    if not mem[_9389]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9029 - _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9029 - _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9821 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9821] == bool(mem[_9821])
                                    if not mem[_9821]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4772]
                        mem[_4772 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4772] - 1 < mem[_4772]
                        mem[(32 * mem[_4772] - 1) + _4772 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4772 + 100] = arg2
                            mem[_4772 + 132] = _4759
                            mem[_4772 + 164] = 160
                            mem[_4772 + 260] = mem[_4772]
                            idx = 0
                            s = _4772 + 32
                            t = _4772 + 292
                            while idx < mem[_4772]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4772 + 196] = this.address
                            mem[_4772 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7234 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7306 = mem[_7234]
                            require mem[_7234] <= test266151307()
                            require _7234 + return_data.size > _7234 + mem[_7234] + 31
                            _7378 = mem[_7234 + mem[_7234]]
                            require mem[_7234 + mem[_7234]] <= test266151307()
                            require (32 * mem[_7234 + mem[_7234]]) + 32 >= 0 and _7234 + ceil32(return_data.size) + (32 * mem[_7234 + mem[_7234]]) + 32 <= test266151307()
                            mem[64] = _7234 + ceil32(return_data.size) + (32 * mem[_7234 + mem[_7234]]) + 32
                            mem[_7234 + ceil32(return_data.size)] = _7378
                            require return_data.size >= _7306 + (32 * _7378) + 32
                            mem[_7234 + ceil32(return_data.size) + 32 len 32 * _7378] = mem[_7234 + _7306 + 32 len 32 * _7378]
                            require mem[_4772] - 1 < _7378
                            _9034 = mem[(32 * mem[_4772] - 1) + _7234 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4772] - 1) + _7234 + ceil32(return_data.size) + 32] <= _4759:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9394] == bool(mem[_9394])
                            if not mem[_9394]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9034 - _4759
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9034 - _4759
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9826] == bool(mem[_9826])
                            if not mem[_9826]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4772 + 100] = arg2
                                mem[_4772 + 132] = _4759
                                mem[_4772 + 164] = 160
                                mem[_4772 + 260] = mem[_4772]
                                idx = 0
                                s = _4772 + 32
                                t = _4772 + 292
                                while idx < mem[_4772]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4772 + 196] = this.address
                                mem[_4772 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7233 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7305 = mem[_7233]
                                require mem[_7233] <= test266151307()
                                require _7233 + return_data.size > _7233 + mem[_7233] + 31
                                _7377 = mem[_7233 + mem[_7233]]
                                require mem[_7233 + mem[_7233]] <= test266151307()
                                require (32 * mem[_7233 + mem[_7233]]) + 32 >= 0 and _7233 + ceil32(return_data.size) + (32 * mem[_7233 + mem[_7233]]) + 32 <= test266151307()
                                mem[64] = _7233 + ceil32(return_data.size) + (32 * mem[_7233 + mem[_7233]]) + 32
                                mem[_7233 + ceil32(return_data.size)] = _7377
                                require return_data.size >= _7305 + (32 * _7377) + 32
                                mem[_7233 + ceil32(return_data.size) + 32 len 32 * _7377] = mem[_7233 + _7305 + 32 len 32 * _7377]
                                require mem[_4772] - 1 < _7377
                                _9033 = mem[(32 * mem[_4772] - 1) + _7233 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4772] - 1) + _7233 + ceil32(return_data.size) + 32] <= _4759:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9393] == bool(mem[_9393])
                                if not mem[_9393]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9033 - _4759
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9033 - _4759
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9825 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9825] == bool(mem[_9825])
                                if not mem[_9825]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4759:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4759
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4772 + 100] = arg2
                                    mem[_4772 + 132] = _4759
                                    mem[_4772 + 164] = 160
                                    mem[_4772 + 260] = mem[_4772]
                                    idx = 0
                                    s = _4772 + 32
                                    t = _4772 + 292
                                    while idx < mem[_4772]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4772 + 196] = this.address
                                    mem[_4772 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4772 + (32 * mem[_4772]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7232 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7304 = mem[_7232]
                                    require mem[_7232] <= test266151307()
                                    require _7232 + return_data.size > _7232 + mem[_7232] + 31
                                    _7376 = mem[_7232 + mem[_7232]]
                                    require mem[_7232 + mem[_7232]] <= test266151307()
                                    require (32 * mem[_7232 + mem[_7232]]) + 32 >= 0 and _7232 + ceil32(return_data.size) + (32 * mem[_7232 + mem[_7232]]) + 32 <= test266151307()
                                    mem[64] = _7232 + ceil32(return_data.size) + (32 * mem[_7232 + mem[_7232]]) + 32
                                    mem[_7232 + ceil32(return_data.size)] = _7376
                                    require return_data.size >= _7304 + (32 * _7376) + 32
                                    mem[_7232 + ceil32(return_data.size) + 32 len 32 * _7376] = mem[_7232 + _7304 + 32 len 32 * _7376]
                                    require mem[_4772] - 1 < _7376
                                    _9032 = mem[(32 * mem[_4772] - 1) + _7232 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4772] - 1) + _7232 + ceil32(return_data.size) + 32] <= _4759:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9392 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9392] == bool(mem[_9392])
                                    if not mem[_9392]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9032 - _4759
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9032 - _4759
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9824 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9824] == bool(mem[_9824])
                                    if not mem[_9824]:
                                        revert with 0, 'Take profit failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2420 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _2426 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _2426
                require return_data.size >= _2420 + (32 * _2426) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2426] = mem[(6 * ceil32(return_data.size)) + _2420 + 224 len 32 * _2426]
                require 0 < _2426
                _4760 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                if address(cd[(arg4 + 68)]):
                    _4773 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_4773 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_4773]
                    mem[_4773 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4773] - 1 < mem[_4773]
                        mem[(32 * mem[_4773] - 1) + _4773 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4773 + 132] = arg3
                            mem[_4773 + 164] = _4760
                            mem[_4773 + 196] = 160
                            mem[_4773 + 292] = mem[_4773]
                            idx = 0
                            s = _4773 + 32
                            t = _4773 + 324
                            while idx < mem[_4773]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4773 + 228] = this.address
                            mem[_4773 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7237 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7309 = mem[_7237]
                            require mem[_7237] <= test266151307()
                            require _7237 + return_data.size > _7237 + mem[_7237] + 31
                            _7381 = mem[_7237 + mem[_7237]]
                            require mem[_7237 + mem[_7237]] <= test266151307()
                            require (32 * mem[_7237 + mem[_7237]]) + 32 >= 0 and _7237 + ceil32(return_data.size) + (32 * mem[_7237 + mem[_7237]]) + 32 <= test266151307()
                            mem[64] = _7237 + ceil32(return_data.size) + (32 * mem[_7237 + mem[_7237]]) + 32
                            mem[_7237 + ceil32(return_data.size)] = _7381
                            require return_data.size >= _7309 + (32 * _7381) + 32
                            mem[_7237 + ceil32(return_data.size) + 32 len 32 * _7381] = mem[_7237 + _7309 + 32 len 32 * _7381]
                            require mem[_4773] - 1 < _7381
                            _9037 = mem[(32 * mem[_4773] - 1) + _7237 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4773] - 1) + _7237 + ceil32(return_data.size) + 32] <= _4760:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9397 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9397] == bool(mem[_9397])
                            if not mem[_9397]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9037 - _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9037 - _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9829 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9829] == bool(mem[_9829])
                            if not mem[_9829]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4773 + 132] = arg3
                                mem[_4773 + 164] = _4760
                                mem[_4773 + 196] = 160
                                mem[_4773 + 292] = mem[_4773]
                                idx = 0
                                s = _4773 + 32
                                t = _4773 + 324
                                while idx < mem[_4773]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4773 + 228] = this.address
                                mem[_4773 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7236 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7308 = mem[_7236]
                                require mem[_7236] <= test266151307()
                                require _7236 + return_data.size > _7236 + mem[_7236] + 31
                                _7380 = mem[_7236 + mem[_7236]]
                                require mem[_7236 + mem[_7236]] <= test266151307()
                                require (32 * mem[_7236 + mem[_7236]]) + 32 >= 0 and _7236 + ceil32(return_data.size) + (32 * mem[_7236 + mem[_7236]]) + 32 <= test266151307()
                                mem[64] = _7236 + ceil32(return_data.size) + (32 * mem[_7236 + mem[_7236]]) + 32
                                mem[_7236 + ceil32(return_data.size)] = _7380
                                require return_data.size >= _7308 + (32 * _7380) + 32
                                mem[_7236 + ceil32(return_data.size) + 32 len 32 * _7380] = mem[_7236 + _7308 + 32 len 32 * _7380]
                                require mem[_4773] - 1 < _7380
                                _9036 = mem[(32 * mem[_4773] - 1) + _7236 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4773] - 1) + _7236 + ceil32(return_data.size) + 32] <= _4760:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9396 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9396] == bool(mem[_9396])
                                if not mem[_9396]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9036 - _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9036 - _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9828] == bool(mem[_9828])
                                if not mem[_9828]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4760:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4773 + 132] = arg3
                                    mem[_4773 + 164] = _4760
                                    mem[_4773 + 196] = 160
                                    mem[_4773 + 292] = mem[_4773]
                                    idx = 0
                                    s = _4773 + 32
                                    t = _4773 + 324
                                    while idx < mem[_4773]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4773 + 228] = this.address
                                    mem[_4773 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7235 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7307 = mem[_7235]
                                    require mem[_7235] <= test266151307()
                                    require _7235 + return_data.size > _7235 + mem[_7235] + 31
                                    _7379 = mem[_7235 + mem[_7235]]
                                    require mem[_7235 + mem[_7235]] <= test266151307()
                                    require (32 * mem[_7235 + mem[_7235]]) + 32 >= 0 and _7235 + ceil32(return_data.size) + (32 * mem[_7235 + mem[_7235]]) + 32 <= test266151307()
                                    mem[64] = _7235 + ceil32(return_data.size) + (32 * mem[_7235 + mem[_7235]]) + 32
                                    mem[_7235 + ceil32(return_data.size)] = _7379
                                    require return_data.size >= _7307 + (32 * _7379) + 32
                                    mem[_7235 + ceil32(return_data.size) + 32 len 32 * _7379] = mem[_7235 + _7307 + 32 len 32 * _7379]
                                    require mem[_4773] - 1 < _7379
                                    _9035 = mem[(32 * mem[_4773] - 1) + _7235 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4773] - 1) + _7235 + ceil32(return_data.size) + 32] <= _4760:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9395 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9395] == bool(mem[_9395])
                                    if not mem[_9395]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9035 - _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9035 - _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9827 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9827] == bool(mem[_9827])
                                    if not mem[_9827]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4773]
                        mem[_4773 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4773] - 1 < mem[_4773]
                        mem[(32 * mem[_4773] - 1) + _4773 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4773 + 132] = arg3
                            mem[_4773 + 164] = _4760
                            mem[_4773 + 196] = 160
                            mem[_4773 + 292] = mem[_4773]
                            idx = 0
                            s = _4773 + 32
                            t = _4773 + 324
                            while idx < mem[_4773]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4773 + 228] = this.address
                            mem[_4773 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7240 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7312 = mem[_7240]
                            require mem[_7240] <= test266151307()
                            require _7240 + return_data.size > _7240 + mem[_7240] + 31
                            _7384 = mem[_7240 + mem[_7240]]
                            require mem[_7240 + mem[_7240]] <= test266151307()
                            require (32 * mem[_7240 + mem[_7240]]) + 32 >= 0 and _7240 + ceil32(return_data.size) + (32 * mem[_7240 + mem[_7240]]) + 32 <= test266151307()
                            mem[64] = _7240 + ceil32(return_data.size) + (32 * mem[_7240 + mem[_7240]]) + 32
                            mem[_7240 + ceil32(return_data.size)] = _7384
                            require return_data.size >= _7312 + (32 * _7384) + 32
                            mem[_7240 + ceil32(return_data.size) + 32 len 32 * _7384] = mem[_7240 + _7312 + 32 len 32 * _7384]
                            require mem[_4773] - 1 < _7384
                            _9040 = mem[(32 * mem[_4773] - 1) + _7240 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4773] - 1) + _7240 + ceil32(return_data.size) + 32] <= _4760:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9400] == bool(mem[_9400])
                            if not mem[_9400]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9040 - _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9040 - _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9832] == bool(mem[_9832])
                            if not mem[_9832]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4773 + 132] = arg3
                                mem[_4773 + 164] = _4760
                                mem[_4773 + 196] = 160
                                mem[_4773 + 292] = mem[_4773]
                                idx = 0
                                s = _4773 + 32
                                t = _4773 + 324
                                while idx < mem[_4773]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4773 + 228] = this.address
                                mem[_4773 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7239 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7311 = mem[_7239]
                                require mem[_7239] <= test266151307()
                                require _7239 + return_data.size > _7239 + mem[_7239] + 31
                                _7383 = mem[_7239 + mem[_7239]]
                                require mem[_7239 + mem[_7239]] <= test266151307()
                                require (32 * mem[_7239 + mem[_7239]]) + 32 >= 0 and _7239 + ceil32(return_data.size) + (32 * mem[_7239 + mem[_7239]]) + 32 <= test266151307()
                                mem[64] = _7239 + ceil32(return_data.size) + (32 * mem[_7239 + mem[_7239]]) + 32
                                mem[_7239 + ceil32(return_data.size)] = _7383
                                require return_data.size >= _7311 + (32 * _7383) + 32
                                mem[_7239 + ceil32(return_data.size) + 32 len 32 * _7383] = mem[_7239 + _7311 + 32 len 32 * _7383]
                                require mem[_4773] - 1 < _7383
                                _9039 = mem[(32 * mem[_4773] - 1) + _7239 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4773] - 1) + _7239 + ceil32(return_data.size) + 32] <= _4760:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9399 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9399] == bool(mem[_9399])
                                if not mem[_9399]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9039 - _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9039 - _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9831] == bool(mem[_9831])
                                if not mem[_9831]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4760:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4773 + 132] = arg3
                                    mem[_4773 + 164] = _4760
                                    mem[_4773 + 196] = 160
                                    mem[_4773 + 292] = mem[_4773]
                                    idx = 0
                                    s = _4773 + 32
                                    t = _4773 + 324
                                    while idx < mem[_4773]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4773 + 228] = this.address
                                    mem[_4773 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4773 + (32 * mem[_4773]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7238 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7310 = mem[_7238]
                                    require mem[_7238] <= test266151307()
                                    require _7238 + return_data.size > _7238 + mem[_7238] + 31
                                    _7382 = mem[_7238 + mem[_7238]]
                                    require mem[_7238 + mem[_7238]] <= test266151307()
                                    require (32 * mem[_7238 + mem[_7238]]) + 32 >= 0 and _7238 + ceil32(return_data.size) + (32 * mem[_7238 + mem[_7238]]) + 32 <= test266151307()
                                    mem[64] = _7238 + ceil32(return_data.size) + (32 * mem[_7238 + mem[_7238]]) + 32
                                    mem[_7238 + ceil32(return_data.size)] = _7382
                                    require return_data.size >= _7310 + (32 * _7382) + 32
                                    mem[_7238 + ceil32(return_data.size) + 32 len 32 * _7382] = mem[_7238 + _7310 + 32 len 32 * _7382]
                                    require mem[_4773] - 1 < _7382
                                    _9038 = mem[(32 * mem[_4773] - 1) + _7238 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4773] - 1) + _7238 + ceil32(return_data.size) + 32] <= _4760:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9398 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9398] == bool(mem[_9398])
                                    if not mem[_9398]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9038 - _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9038 - _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9830 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9830] == bool(mem[_9830])
                                    if not mem[_9830]:
                                        revert with 0, 'Take profit failed!'
                else:
                    _4774 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4774 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[_4774]
                    mem[_4774 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4774] - 1 < mem[_4774]
                        mem[(32 * mem[_4774] - 1) + _4774 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4774 + 100] = arg3
                            mem[_4774 + 132] = _4760
                            mem[_4774 + 164] = 160
                            mem[_4774 + 260] = mem[_4774]
                            idx = 0
                            s = _4774 + 32
                            t = _4774 + 292
                            while idx < mem[_4774]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4774 + 196] = this.address
                            mem[_4774 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7243 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7315 = mem[_7243]
                            require mem[_7243] <= test266151307()
                            require _7243 + return_data.size > _7243 + mem[_7243] + 31
                            _7387 = mem[_7243 + mem[_7243]]
                            require mem[_7243 + mem[_7243]] <= test266151307()
                            require (32 * mem[_7243 + mem[_7243]]) + 32 >= 0 and _7243 + ceil32(return_data.size) + (32 * mem[_7243 + mem[_7243]]) + 32 <= test266151307()
                            mem[64] = _7243 + ceil32(return_data.size) + (32 * mem[_7243 + mem[_7243]]) + 32
                            mem[_7243 + ceil32(return_data.size)] = _7387
                            require return_data.size >= _7315 + (32 * _7387) + 32
                            mem[_7243 + ceil32(return_data.size) + 32 len 32 * _7387] = mem[_7243 + _7315 + 32 len 32 * _7387]
                            require mem[_4774] - 1 < _7387
                            _9043 = mem[(32 * mem[_4774] - 1) + _7243 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4774] - 1) + _7243 + ceil32(return_data.size) + 32] <= _4760:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9403 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9403] == bool(mem[_9403])
                            if not mem[_9403]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9043 - _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9043 - _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9835] == bool(mem[_9835])
                            if not mem[_9835]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4774 + 100] = arg3
                                mem[_4774 + 132] = _4760
                                mem[_4774 + 164] = 160
                                mem[_4774 + 260] = mem[_4774]
                                idx = 0
                                s = _4774 + 32
                                t = _4774 + 292
                                while idx < mem[_4774]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4774 + 196] = this.address
                                mem[_4774 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7242 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7314 = mem[_7242]
                                require mem[_7242] <= test266151307()
                                require _7242 + return_data.size > _7242 + mem[_7242] + 31
                                _7386 = mem[_7242 + mem[_7242]]
                                require mem[_7242 + mem[_7242]] <= test266151307()
                                require (32 * mem[_7242 + mem[_7242]]) + 32 >= 0 and _7242 + ceil32(return_data.size) + (32 * mem[_7242 + mem[_7242]]) + 32 <= test266151307()
                                mem[64] = _7242 + ceil32(return_data.size) + (32 * mem[_7242 + mem[_7242]]) + 32
                                mem[_7242 + ceil32(return_data.size)] = _7386
                                require return_data.size >= _7314 + (32 * _7386) + 32
                                mem[_7242 + ceil32(return_data.size) + 32 len 32 * _7386] = mem[_7242 + _7314 + 32 len 32 * _7386]
                                require mem[_4774] - 1 < _7386
                                _9042 = mem[(32 * mem[_4774] - 1) + _7242 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4774] - 1) + _7242 + ceil32(return_data.size) + 32] <= _4760:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9402 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9402] == bool(mem[_9402])
                                if not mem[_9402]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9042 - _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9042 - _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9834 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9834] == bool(mem[_9834])
                                if not mem[_9834]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4760:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4774 + 100] = arg3
                                    mem[_4774 + 132] = _4760
                                    mem[_4774 + 164] = 160
                                    mem[_4774 + 260] = mem[_4774]
                                    idx = 0
                                    s = _4774 + 32
                                    t = _4774 + 292
                                    while idx < mem[_4774]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4774 + 196] = this.address
                                    mem[_4774 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7241 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7313 = mem[_7241]
                                    require mem[_7241] <= test266151307()
                                    require _7241 + return_data.size > _7241 + mem[_7241] + 31
                                    _7385 = mem[_7241 + mem[_7241]]
                                    require mem[_7241 + mem[_7241]] <= test266151307()
                                    require (32 * mem[_7241 + mem[_7241]]) + 32 >= 0 and _7241 + ceil32(return_data.size) + (32 * mem[_7241 + mem[_7241]]) + 32 <= test266151307()
                                    mem[64] = _7241 + ceil32(return_data.size) + (32 * mem[_7241 + mem[_7241]]) + 32
                                    mem[_7241 + ceil32(return_data.size)] = _7385
                                    require return_data.size >= _7313 + (32 * _7385) + 32
                                    mem[_7241 + ceil32(return_data.size) + 32 len 32 * _7385] = mem[_7241 + _7313 + 32 len 32 * _7385]
                                    require mem[_4774] - 1 < _7385
                                    _9041 = mem[(32 * mem[_4774] - 1) + _7241 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4774] - 1) + _7241 + ceil32(return_data.size) + 32] <= _4760:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9401] == bool(mem[_9401])
                                    if not mem[_9401]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9041 - _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9041 - _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9833 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9833] == bool(mem[_9833])
                                    if not mem[_9833]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4774]
                        mem[_4774 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4774] - 1 < mem[_4774]
                        mem[(32 * mem[_4774] - 1) + _4774 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4774 + 100] = arg3
                            mem[_4774 + 132] = _4760
                            mem[_4774 + 164] = 160
                            mem[_4774 + 260] = mem[_4774]
                            idx = 0
                            s = _4774 + 32
                            t = _4774 + 292
                            while idx < mem[_4774]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4774 + 196] = this.address
                            mem[_4774 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7246 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7318 = mem[_7246]
                            require mem[_7246] <= test266151307()
                            require _7246 + return_data.size > _7246 + mem[_7246] + 31
                            _7390 = mem[_7246 + mem[_7246]]
                            require mem[_7246 + mem[_7246]] <= test266151307()
                            require (32 * mem[_7246 + mem[_7246]]) + 32 >= 0 and _7246 + ceil32(return_data.size) + (32 * mem[_7246 + mem[_7246]]) + 32 <= test266151307()
                            mem[64] = _7246 + ceil32(return_data.size) + (32 * mem[_7246 + mem[_7246]]) + 32
                            mem[_7246 + ceil32(return_data.size)] = _7390
                            require return_data.size >= _7318 + (32 * _7390) + 32
                            mem[_7246 + ceil32(return_data.size) + 32 len 32 * _7390] = mem[_7246 + _7318 + 32 len 32 * _7390]
                            require mem[_4774] - 1 < _7390
                            _9046 = mem[(32 * mem[_4774] - 1) + _7246 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4774] - 1) + _7246 + ceil32(return_data.size) + 32] <= _4760:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9406] == bool(mem[_9406])
                            if not mem[_9406]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9046 - _4760
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9046 - _4760
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9838] == bool(mem[_9838])
                            if not mem[_9838]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4774 + 100] = arg3
                                mem[_4774 + 132] = _4760
                                mem[_4774 + 164] = 160
                                mem[_4774 + 260] = mem[_4774]
                                idx = 0
                                s = _4774 + 32
                                t = _4774 + 292
                                while idx < mem[_4774]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4774 + 196] = this.address
                                mem[_4774 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7245 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7317 = mem[_7245]
                                require mem[_7245] <= test266151307()
                                require _7245 + return_data.size > _7245 + mem[_7245] + 31
                                _7389 = mem[_7245 + mem[_7245]]
                                require mem[_7245 + mem[_7245]] <= test266151307()
                                require (32 * mem[_7245 + mem[_7245]]) + 32 >= 0 and _7245 + ceil32(return_data.size) + (32 * mem[_7245 + mem[_7245]]) + 32 <= test266151307()
                                mem[64] = _7245 + ceil32(return_data.size) + (32 * mem[_7245 + mem[_7245]]) + 32
                                mem[_7245 + ceil32(return_data.size)] = _7389
                                require return_data.size >= _7317 + (32 * _7389) + 32
                                mem[_7245 + ceil32(return_data.size) + 32 len 32 * _7389] = mem[_7245 + _7317 + 32 len 32 * _7389]
                                require mem[_4774] - 1 < _7389
                                _9045 = mem[(32 * mem[_4774] - 1) + _7245 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4774] - 1) + _7245 + ceil32(return_data.size) + 32] <= _4760:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9405 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9405] == bool(mem[_9405])
                                if not mem[_9405]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9045 - _4760
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9045 - _4760
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9837 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9837] == bool(mem[_9837])
                                if not mem[_9837]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4760:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4774 + 100] = arg3
                                    mem[_4774 + 132] = _4760
                                    mem[_4774 + 164] = 160
                                    mem[_4774 + 260] = mem[_4774]
                                    idx = 0
                                    s = _4774 + 32
                                    t = _4774 + 292
                                    while idx < mem[_4774]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4774 + 196] = this.address
                                    mem[_4774 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4774 + (32 * mem[_4774]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7244 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7316 = mem[_7244]
                                    require mem[_7244] <= test266151307()
                                    require _7244 + return_data.size > _7244 + mem[_7244] + 31
                                    _7388 = mem[_7244 + mem[_7244]]
                                    require mem[_7244 + mem[_7244]] <= test266151307()
                                    require (32 * mem[_7244 + mem[_7244]]) + 32 >= 0 and _7244 + ceil32(return_data.size) + (32 * mem[_7244 + mem[_7244]]) + 32 <= test266151307()
                                    mem[64] = _7244 + ceil32(return_data.size) + (32 * mem[_7244 + mem[_7244]]) + 32
                                    mem[_7244 + ceil32(return_data.size)] = _7388
                                    require return_data.size >= _7316 + (32 * _7388) + 32
                                    mem[_7244 + ceil32(return_data.size) + 32 len 32 * _7388] = mem[_7244 + _7316 + 32 len 32 * _7388]
                                    require mem[_4774] - 1 < _7388
                                    _9044 = mem[(32 * mem[_4774] - 1) + _7244 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4774] - 1) + _7244 + ceil32(return_data.size) + 32] <= _4760:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9404 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9404] == bool(mem[_9404])
                                    if not mem[_9404]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9044 - _4760
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9044 - _4760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9836 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9836] == bool(mem[_9836])
                                    if not mem[_9836]:
                                        revert with 0, 'Take profit failed!'
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Unknown caller!'
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if arg2:
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2417 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _2423 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _2417 + (32 * _2423) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _2423] = mem[(7 * ceil32(return_data.size)) + _2417 + 224 len 32 * _2423]
                require 0 < _2423
                _4757 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                if address(cd[(arg4 + 68)]):
                    _4767 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_4767 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_4767]
                    mem[_4767 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4767] - 1 < mem[_4767]
                        mem[(32 * mem[_4767] - 1) + _4767 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4767 + 132] = arg2
                            mem[_4767 + 164] = _4757
                            mem[_4767 + 196] = 160
                            mem[_4767 + 292] = mem[_4767]
                            idx = 0
                            s = _4767 + 32
                            t = _4767 + 324
                            while idx < mem[_4767]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4767 + 228] = this.address
                            mem[_4767 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7201 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7273 = mem[_7201]
                            require mem[_7201] <= test266151307()
                            require _7201 + return_data.size > _7201 + mem[_7201] + 31
                            _7345 = mem[_7201 + mem[_7201]]
                            require mem[_7201 + mem[_7201]] <= test266151307()
                            require (32 * mem[_7201 + mem[_7201]]) + 32 >= 0 and _7201 + ceil32(return_data.size) + (32 * mem[_7201 + mem[_7201]]) + 32 <= test266151307()
                            mem[64] = _7201 + ceil32(return_data.size) + (32 * mem[_7201 + mem[_7201]]) + 32
                            mem[_7201 + ceil32(return_data.size)] = _7345
                            require return_data.size >= _7273 + (32 * _7345) + 32
                            mem[_7201 + ceil32(return_data.size) + 32 len 32 * _7345] = mem[_7201 + _7273 + 32 len 32 * _7345]
                            require mem[_4767] - 1 < _7345
                            _9001 = mem[(32 * mem[_4767] - 1) + _7201 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4767] - 1) + _7201 + ceil32(return_data.size) + 32] <= _4757:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9361] == bool(mem[_9361])
                            if not mem[_9361]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9001 - _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9001 - _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9793 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9793] == bool(mem[_9793])
                            if not mem[_9793]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4767 + 132] = arg2
                                mem[_4767 + 164] = _4757
                                mem[_4767 + 196] = 160
                                mem[_4767 + 292] = mem[_4767]
                                idx = 0
                                s = _4767 + 32
                                t = _4767 + 324
                                while idx < mem[_4767]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4767 + 228] = this.address
                                mem[_4767 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7200 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7272 = mem[_7200]
                                require mem[_7200] <= test266151307()
                                require _7200 + return_data.size > _7200 + mem[_7200] + 31
                                _7344 = mem[_7200 + mem[_7200]]
                                require mem[_7200 + mem[_7200]] <= test266151307()
                                require (32 * mem[_7200 + mem[_7200]]) + 32 >= 0 and _7200 + ceil32(return_data.size) + (32 * mem[_7200 + mem[_7200]]) + 32 <= test266151307()
                                mem[64] = _7200 + ceil32(return_data.size) + (32 * mem[_7200 + mem[_7200]]) + 32
                                mem[_7200 + ceil32(return_data.size)] = _7344
                                require return_data.size >= _7272 + (32 * _7344) + 32
                                mem[_7200 + ceil32(return_data.size) + 32 len 32 * _7344] = mem[_7200 + _7272 + 32 len 32 * _7344]
                                require mem[_4767] - 1 < _7344
                                _9000 = mem[(32 * mem[_4767] - 1) + _7200 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4767] - 1) + _7200 + ceil32(return_data.size) + 32] <= _4757:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9360] == bool(mem[_9360])
                                if not mem[_9360]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9000 - _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9000 - _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9792] == bool(mem[_9792])
                                if not mem[_9792]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4757:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4767 + 132] = arg2
                                    mem[_4767 + 164] = _4757
                                    mem[_4767 + 196] = 160
                                    mem[_4767 + 292] = mem[_4767]
                                    idx = 0
                                    s = _4767 + 32
                                    t = _4767 + 324
                                    while idx < mem[_4767]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4767 + 228] = this.address
                                    mem[_4767 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7199 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7271 = mem[_7199]
                                    require mem[_7199] <= test266151307()
                                    require _7199 + return_data.size > _7199 + mem[_7199] + 31
                                    _7343 = mem[_7199 + mem[_7199]]
                                    require mem[_7199 + mem[_7199]] <= test266151307()
                                    require (32 * mem[_7199 + mem[_7199]]) + 32 >= 0 and _7199 + ceil32(return_data.size) + (32 * mem[_7199 + mem[_7199]]) + 32 <= test266151307()
                                    mem[64] = _7199 + ceil32(return_data.size) + (32 * mem[_7199 + mem[_7199]]) + 32
                                    mem[_7199 + ceil32(return_data.size)] = _7343
                                    require return_data.size >= _7271 + (32 * _7343) + 32
                                    mem[_7199 + ceil32(return_data.size) + 32 len 32 * _7343] = mem[_7199 + _7271 + 32 len 32 * _7343]
                                    require mem[_4767] - 1 < _7343
                                    _8999 = mem[(32 * mem[_4767] - 1) + _7199 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4767] - 1) + _7199 + ceil32(return_data.size) + 32] <= _4757:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9359 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9359] == bool(mem[_9359])
                                    if not mem[_9359]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _8999 - _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _8999 - _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9791 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9791] == bool(mem[_9791])
                                    if not mem[_9791]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4767]
                        mem[_4767 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4767] - 1 < mem[_4767]
                        mem[(32 * mem[_4767] - 1) + _4767 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4767 + 132] = arg2
                            mem[_4767 + 164] = _4757
                            mem[_4767 + 196] = 160
                            mem[_4767 + 292] = mem[_4767]
                            idx = 0
                            s = _4767 + 32
                            t = _4767 + 324
                            while idx < mem[_4767]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4767 + 228] = this.address
                            mem[_4767 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7204 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7276 = mem[_7204]
                            require mem[_7204] <= test266151307()
                            require _7204 + return_data.size > _7204 + mem[_7204] + 31
                            _7348 = mem[_7204 + mem[_7204]]
                            require mem[_7204 + mem[_7204]] <= test266151307()
                            require (32 * mem[_7204 + mem[_7204]]) + 32 >= 0 and _7204 + ceil32(return_data.size) + (32 * mem[_7204 + mem[_7204]]) + 32 <= test266151307()
                            mem[64] = _7204 + ceil32(return_data.size) + (32 * mem[_7204 + mem[_7204]]) + 32
                            mem[_7204 + ceil32(return_data.size)] = _7348
                            require return_data.size >= _7276 + (32 * _7348) + 32
                            mem[_7204 + ceil32(return_data.size) + 32 len 32 * _7348] = mem[_7204 + _7276 + 32 len 32 * _7348]
                            require mem[_4767] - 1 < _7348
                            _9004 = mem[(32 * mem[_4767] - 1) + _7204 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4767] - 1) + _7204 + ceil32(return_data.size) + 32] <= _4757:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9364] == bool(mem[_9364])
                            if not mem[_9364]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9004 - _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9004 - _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9796] == bool(mem[_9796])
                            if not mem[_9796]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4767 + 132] = arg2
                                mem[_4767 + 164] = _4757
                                mem[_4767 + 196] = 160
                                mem[_4767 + 292] = mem[_4767]
                                idx = 0
                                s = _4767 + 32
                                t = _4767 + 324
                                while idx < mem[_4767]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4767 + 228] = this.address
                                mem[_4767 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7203 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7275 = mem[_7203]
                                require mem[_7203] <= test266151307()
                                require _7203 + return_data.size > _7203 + mem[_7203] + 31
                                _7347 = mem[_7203 + mem[_7203]]
                                require mem[_7203 + mem[_7203]] <= test266151307()
                                require (32 * mem[_7203 + mem[_7203]]) + 32 >= 0 and _7203 + ceil32(return_data.size) + (32 * mem[_7203 + mem[_7203]]) + 32 <= test266151307()
                                mem[64] = _7203 + ceil32(return_data.size) + (32 * mem[_7203 + mem[_7203]]) + 32
                                mem[_7203 + ceil32(return_data.size)] = _7347
                                require return_data.size >= _7275 + (32 * _7347) + 32
                                mem[_7203 + ceil32(return_data.size) + 32 len 32 * _7347] = mem[_7203 + _7275 + 32 len 32 * _7347]
                                require mem[_4767] - 1 < _7347
                                _9003 = mem[(32 * mem[_4767] - 1) + _7203 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4767] - 1) + _7203 + ceil32(return_data.size) + 32] <= _4757:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9363] == bool(mem[_9363])
                                if not mem[_9363]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9003 - _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9003 - _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9795] == bool(mem[_9795])
                                if not mem[_9795]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4757:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4767 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4767 + 132] = arg2
                                    mem[_4767 + 164] = _4757
                                    mem[_4767 + 196] = 160
                                    mem[_4767 + 292] = mem[_4767]
                                    idx = 0
                                    s = _4767 + 32
                                    t = _4767 + 324
                                    while idx < mem[_4767]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4767 + 228] = this.address
                                    mem[_4767 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4767 + (32 * mem[_4767]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7202 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7274 = mem[_7202]
                                    require mem[_7202] <= test266151307()
                                    require _7202 + return_data.size > _7202 + mem[_7202] + 31
                                    _7346 = mem[_7202 + mem[_7202]]
                                    require mem[_7202 + mem[_7202]] <= test266151307()
                                    require (32 * mem[_7202 + mem[_7202]]) + 32 >= 0 and _7202 + ceil32(return_data.size) + (32 * mem[_7202 + mem[_7202]]) + 32 <= test266151307()
                                    mem[64] = _7202 + ceil32(return_data.size) + (32 * mem[_7202 + mem[_7202]]) + 32
                                    mem[_7202 + ceil32(return_data.size)] = _7346
                                    require return_data.size >= _7274 + (32 * _7346) + 32
                                    mem[_7202 + ceil32(return_data.size) + 32 len 32 * _7346] = mem[_7202 + _7274 + 32 len 32 * _7346]
                                    require mem[_4767] - 1 < _7346
                                    _9002 = mem[(32 * mem[_4767] - 1) + _7202 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4767] - 1) + _7202 + ceil32(return_data.size) + 32] <= _4757:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9362 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9362] == bool(mem[_9362])
                                    if not mem[_9362]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9002 - _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9002 - _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9794 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9794] == bool(mem[_9794])
                                    if not mem[_9794]:
                                        revert with 0, 'Take profit failed!'
                else:
                    _4768 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4768 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[_4768]
                    mem[_4768 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4768] - 1 < mem[_4768]
                        mem[(32 * mem[_4768] - 1) + _4768 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4768 + 100] = arg2
                            mem[_4768 + 132] = _4757
                            mem[_4768 + 164] = 160
                            mem[_4768 + 260] = mem[_4768]
                            idx = 0
                            s = _4768 + 32
                            t = _4768 + 292
                            while idx < mem[_4768]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4768 + 196] = this.address
                            mem[_4768 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7207 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7279 = mem[_7207]
                            require mem[_7207] <= test266151307()
                            require _7207 + return_data.size > _7207 + mem[_7207] + 31
                            _7351 = mem[_7207 + mem[_7207]]
                            require mem[_7207 + mem[_7207]] <= test266151307()
                            require (32 * mem[_7207 + mem[_7207]]) + 32 >= 0 and _7207 + ceil32(return_data.size) + (32 * mem[_7207 + mem[_7207]]) + 32 <= test266151307()
                            mem[64] = _7207 + ceil32(return_data.size) + (32 * mem[_7207 + mem[_7207]]) + 32
                            mem[_7207 + ceil32(return_data.size)] = _7351
                            require return_data.size >= _7279 + (32 * _7351) + 32
                            mem[_7207 + ceil32(return_data.size) + 32 len 32 * _7351] = mem[_7207 + _7279 + 32 len 32 * _7351]
                            require mem[_4768] - 1 < _7351
                            _9007 = mem[(32 * mem[_4768] - 1) + _7207 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4768] - 1) + _7207 + ceil32(return_data.size) + 32] <= _4757:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9367] == bool(mem[_9367])
                            if not mem[_9367]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9007 - _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9007 - _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9799 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9799] == bool(mem[_9799])
                            if not mem[_9799]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4768 + 100] = arg2
                                mem[_4768 + 132] = _4757
                                mem[_4768 + 164] = 160
                                mem[_4768 + 260] = mem[_4768]
                                idx = 0
                                s = _4768 + 32
                                t = _4768 + 292
                                while idx < mem[_4768]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4768 + 196] = this.address
                                mem[_4768 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7206 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7278 = mem[_7206]
                                require mem[_7206] <= test266151307()
                                require _7206 + return_data.size > _7206 + mem[_7206] + 31
                                _7350 = mem[_7206 + mem[_7206]]
                                require mem[_7206 + mem[_7206]] <= test266151307()
                                require (32 * mem[_7206 + mem[_7206]]) + 32 >= 0 and _7206 + ceil32(return_data.size) + (32 * mem[_7206 + mem[_7206]]) + 32 <= test266151307()
                                mem[64] = _7206 + ceil32(return_data.size) + (32 * mem[_7206 + mem[_7206]]) + 32
                                mem[_7206 + ceil32(return_data.size)] = _7350
                                require return_data.size >= _7278 + (32 * _7350) + 32
                                mem[_7206 + ceil32(return_data.size) + 32 len 32 * _7350] = mem[_7206 + _7278 + 32 len 32 * _7350]
                                require mem[_4768] - 1 < _7350
                                _9006 = mem[(32 * mem[_4768] - 1) + _7206 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4768] - 1) + _7206 + ceil32(return_data.size) + 32] <= _4757:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9366] == bool(mem[_9366])
                                if not mem[_9366]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9006 - _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9006 - _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9798] == bool(mem[_9798])
                                if not mem[_9798]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4757:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4768 + 100] = arg2
                                    mem[_4768 + 132] = _4757
                                    mem[_4768 + 164] = 160
                                    mem[_4768 + 260] = mem[_4768]
                                    idx = 0
                                    s = _4768 + 32
                                    t = _4768 + 292
                                    while idx < mem[_4768]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4768 + 196] = this.address
                                    mem[_4768 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7205 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7277 = mem[_7205]
                                    require mem[_7205] <= test266151307()
                                    require _7205 + return_data.size > _7205 + mem[_7205] + 31
                                    _7349 = mem[_7205 + mem[_7205]]
                                    require mem[_7205 + mem[_7205]] <= test266151307()
                                    require (32 * mem[_7205 + mem[_7205]]) + 32 >= 0 and _7205 + ceil32(return_data.size) + (32 * mem[_7205 + mem[_7205]]) + 32 <= test266151307()
                                    mem[64] = _7205 + ceil32(return_data.size) + (32 * mem[_7205 + mem[_7205]]) + 32
                                    mem[_7205 + ceil32(return_data.size)] = _7349
                                    require return_data.size >= _7277 + (32 * _7349) + 32
                                    mem[_7205 + ceil32(return_data.size) + 32 len 32 * _7349] = mem[_7205 + _7277 + 32 len 32 * _7349]
                                    require mem[_4768] - 1 < _7349
                                    _9005 = mem[(32 * mem[_4768] - 1) + _7205 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4768] - 1) + _7205 + ceil32(return_data.size) + 32] <= _4757:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9365 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9365] == bool(mem[_9365])
                                    if not mem[_9365]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9005 - _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9005 - _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9797 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9797] == bool(mem[_9797])
                                    if not mem[_9797]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4768]
                        mem[_4768 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4768] - 1 < mem[_4768]
                        mem[(32 * mem[_4768] - 1) + _4768 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4768 + 100] = arg2
                            mem[_4768 + 132] = _4757
                            mem[_4768 + 164] = 160
                            mem[_4768 + 260] = mem[_4768]
                            idx = 0
                            s = _4768 + 32
                            t = _4768 + 292
                            while idx < mem[_4768]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4768 + 196] = this.address
                            mem[_4768 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7210 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7282 = mem[_7210]
                            require mem[_7210] <= test266151307()
                            require _7210 + return_data.size > _7210 + mem[_7210] + 31
                            _7354 = mem[_7210 + mem[_7210]]
                            require mem[_7210 + mem[_7210]] <= test266151307()
                            require (32 * mem[_7210 + mem[_7210]]) + 32 >= 0 and _7210 + ceil32(return_data.size) + (32 * mem[_7210 + mem[_7210]]) + 32 <= test266151307()
                            mem[64] = _7210 + ceil32(return_data.size) + (32 * mem[_7210 + mem[_7210]]) + 32
                            mem[_7210 + ceil32(return_data.size)] = _7354
                            require return_data.size >= _7282 + (32 * _7354) + 32
                            mem[_7210 + ceil32(return_data.size) + 32 len 32 * _7354] = mem[_7210 + _7282 + 32 len 32 * _7354]
                            require mem[_4768] - 1 < _7354
                            _9010 = mem[(32 * mem[_4768] - 1) + _7210 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4768] - 1) + _7210 + ceil32(return_data.size) + 32] <= _4757:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9370] == bool(mem[_9370])
                            if not mem[_9370]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9010 - _4757
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9010 - _4757
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9802 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9802] == bool(mem[_9802])
                            if not mem[_9802]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4768 + 100] = arg2
                                mem[_4768 + 132] = _4757
                                mem[_4768 + 164] = 160
                                mem[_4768 + 260] = mem[_4768]
                                idx = 0
                                s = _4768 + 32
                                t = _4768 + 292
                                while idx < mem[_4768]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4768 + 196] = this.address
                                mem[_4768 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7209 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7281 = mem[_7209]
                                require mem[_7209] <= test266151307()
                                require _7209 + return_data.size > _7209 + mem[_7209] + 31
                                _7353 = mem[_7209 + mem[_7209]]
                                require mem[_7209 + mem[_7209]] <= test266151307()
                                require (32 * mem[_7209 + mem[_7209]]) + 32 >= 0 and _7209 + ceil32(return_data.size) + (32 * mem[_7209 + mem[_7209]]) + 32 <= test266151307()
                                mem[64] = _7209 + ceil32(return_data.size) + (32 * mem[_7209 + mem[_7209]]) + 32
                                mem[_7209 + ceil32(return_data.size)] = _7353
                                require return_data.size >= _7281 + (32 * _7353) + 32
                                mem[_7209 + ceil32(return_data.size) + 32 len 32 * _7353] = mem[_7209 + _7281 + 32 len 32 * _7353]
                                require mem[_4768] - 1 < _7353
                                _9009 = mem[(32 * mem[_4768] - 1) + _7209 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4768] - 1) + _7209 + ceil32(return_data.size) + 32] <= _4757:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9369 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9369] == bool(mem[_9369])
                                if not mem[_9369]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9009 - _4757
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9009 - _4757
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9801 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9801] == bool(mem[_9801])
                                if not mem[_9801]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4757:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4768 + 100] = arg2
                                    mem[_4768 + 132] = _4757
                                    mem[_4768 + 164] = 160
                                    mem[_4768 + 260] = mem[_4768]
                                    idx = 0
                                    s = _4768 + 32
                                    t = _4768 + 292
                                    while idx < mem[_4768]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4768 + 196] = this.address
                                    mem[_4768 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4768 + (32 * mem[_4768]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7208 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7280 = mem[_7208]
                                    require mem[_7208] <= test266151307()
                                    require _7208 + return_data.size > _7208 + mem[_7208] + 31
                                    _7352 = mem[_7208 + mem[_7208]]
                                    require mem[_7208 + mem[_7208]] <= test266151307()
                                    require (32 * mem[_7208 + mem[_7208]]) + 32 >= 0 and _7208 + ceil32(return_data.size) + (32 * mem[_7208 + mem[_7208]]) + 32 <= test266151307()
                                    mem[64] = _7208 + ceil32(return_data.size) + (32 * mem[_7208 + mem[_7208]]) + 32
                                    mem[_7208 + ceil32(return_data.size)] = _7352
                                    require return_data.size >= _7280 + (32 * _7352) + 32
                                    mem[_7208 + ceil32(return_data.size) + 32 len 32 * _7352] = mem[_7208 + _7280 + 32 len 32 * _7352]
                                    require mem[_4768] - 1 < _7352
                                    _9008 = mem[(32 * mem[_4768] - 1) + _7208 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4768] - 1) + _7208 + ceil32(return_data.size) + 32] <= _4757:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9368 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9368] == bool(mem[_9368])
                                    if not mem[_9368]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9008 - _4757
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9008 - _4757
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9800 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9800] == bool(mem[_9800])
                                    if not mem[_9800]:
                                        revert with 0, 'Take profit failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = arg3
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2418 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _2424 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _2418 + (32 * _2424) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _2424] = mem[(7 * ceil32(return_data.size)) + _2418 + 224 len 32 * _2424]
                require 0 < _2424
                _4758 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 64
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                if address(cd[(arg4 + 68)]):
                    _4769 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_4769 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[_4769]
                    mem[_4769 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4769] - 1 < mem[_4769]
                        mem[(32 * mem[_4769] - 1) + _4769 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4769 + 132] = arg3
                            mem[_4769 + 164] = _4758
                            mem[_4769 + 196] = 160
                            mem[_4769 + 292] = mem[_4769]
                            idx = 0
                            s = _4769 + 32
                            t = _4769 + 324
                            while idx < mem[_4769]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4769 + 228] = this.address
                            mem[_4769 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7213 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7285 = mem[_7213]
                            require mem[_7213] <= test266151307()
                            require _7213 + return_data.size > _7213 + mem[_7213] + 31
                            _7357 = mem[_7213 + mem[_7213]]
                            require mem[_7213 + mem[_7213]] <= test266151307()
                            require (32 * mem[_7213 + mem[_7213]]) + 32 >= 0 and _7213 + ceil32(return_data.size) + (32 * mem[_7213 + mem[_7213]]) + 32 <= test266151307()
                            mem[64] = _7213 + ceil32(return_data.size) + (32 * mem[_7213 + mem[_7213]]) + 32
                            mem[_7213 + ceil32(return_data.size)] = _7357
                            require return_data.size >= _7285 + (32 * _7357) + 32
                            mem[_7213 + ceil32(return_data.size) + 32 len 32 * _7357] = mem[_7213 + _7285 + 32 len 32 * _7357]
                            require mem[_4769] - 1 < _7357
                            _9013 = mem[(32 * mem[_4769] - 1) + _7213 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4769] - 1) + _7213 + ceil32(return_data.size) + 32] <= _4758:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9373] == bool(mem[_9373])
                            if not mem[_9373]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9013 - _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9013 - _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9805] == bool(mem[_9805])
                            if not mem[_9805]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4769 + 132] = arg3
                                mem[_4769 + 164] = _4758
                                mem[_4769 + 196] = 160
                                mem[_4769 + 292] = mem[_4769]
                                idx = 0
                                s = _4769 + 32
                                t = _4769 + 324
                                while idx < mem[_4769]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4769 + 228] = this.address
                                mem[_4769 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7212 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7284 = mem[_7212]
                                require mem[_7212] <= test266151307()
                                require _7212 + return_data.size > _7212 + mem[_7212] + 31
                                _7356 = mem[_7212 + mem[_7212]]
                                require mem[_7212 + mem[_7212]] <= test266151307()
                                require (32 * mem[_7212 + mem[_7212]]) + 32 >= 0 and _7212 + ceil32(return_data.size) + (32 * mem[_7212 + mem[_7212]]) + 32 <= test266151307()
                                mem[64] = _7212 + ceil32(return_data.size) + (32 * mem[_7212 + mem[_7212]]) + 32
                                mem[_7212 + ceil32(return_data.size)] = _7356
                                require return_data.size >= _7284 + (32 * _7356) + 32
                                mem[_7212 + ceil32(return_data.size) + 32 len 32 * _7356] = mem[_7212 + _7284 + 32 len 32 * _7356]
                                require mem[_4769] - 1 < _7356
                                _9012 = mem[(32 * mem[_4769] - 1) + _7212 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4769] - 1) + _7212 + ceil32(return_data.size) + 32] <= _4758:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9372 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9372] == bool(mem[_9372])
                                if not mem[_9372]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9012 - _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9012 - _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9804 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9804] == bool(mem[_9804])
                                if not mem[_9804]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4758:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4769 + 132] = arg3
                                    mem[_4769 + 164] = _4758
                                    mem[_4769 + 196] = 160
                                    mem[_4769 + 292] = mem[_4769]
                                    idx = 0
                                    s = _4769 + 32
                                    t = _4769 + 324
                                    while idx < mem[_4769]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4769 + 228] = this.address
                                    mem[_4769 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7211 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7283 = mem[_7211]
                                    require mem[_7211] <= test266151307()
                                    require _7211 + return_data.size > _7211 + mem[_7211] + 31
                                    _7355 = mem[_7211 + mem[_7211]]
                                    require mem[_7211 + mem[_7211]] <= test266151307()
                                    require (32 * mem[_7211 + mem[_7211]]) + 32 >= 0 and _7211 + ceil32(return_data.size) + (32 * mem[_7211 + mem[_7211]]) + 32 <= test266151307()
                                    mem[64] = _7211 + ceil32(return_data.size) + (32 * mem[_7211 + mem[_7211]]) + 32
                                    mem[_7211 + ceil32(return_data.size)] = _7355
                                    require return_data.size >= _7283 + (32 * _7355) + 32
                                    mem[_7211 + ceil32(return_data.size) + 32 len 32 * _7355] = mem[_7211 + _7283 + 32 len 32 * _7355]
                                    require mem[_4769] - 1 < _7355
                                    _9011 = mem[(32 * mem[_4769] - 1) + _7211 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4769] - 1) + _7211 + ceil32(return_data.size) + 32] <= _4758:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9371] == bool(mem[_9371])
                                    if not mem[_9371]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9011 - _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9011 - _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9803 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9803] == bool(mem[_9803])
                                    if not mem[_9803]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4769]
                        mem[_4769 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4769] - 1 < mem[_4769]
                        mem[(32 * mem[_4769] - 1) + _4769 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4769 + 132] = arg3
                            mem[_4769 + 164] = _4758
                            mem[_4769 + 196] = 160
                            mem[_4769 + 292] = mem[_4769]
                            idx = 0
                            s = _4769 + 32
                            t = _4769 + 324
                            while idx < mem[_4769]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4769 + 228] = this.address
                            mem[_4769 + 260] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7288 = mem[_7216]
                            require mem[_7216] <= test266151307()
                            require _7216 + return_data.size > _7216 + mem[_7216] + 31
                            _7360 = mem[_7216 + mem[_7216]]
                            require mem[_7216 + mem[_7216]] <= test266151307()
                            require (32 * mem[_7216 + mem[_7216]]) + 32 >= 0 and _7216 + ceil32(return_data.size) + (32 * mem[_7216 + mem[_7216]]) + 32 <= test266151307()
                            mem[64] = _7216 + ceil32(return_data.size) + (32 * mem[_7216 + mem[_7216]]) + 32
                            mem[_7216 + ceil32(return_data.size)] = _7360
                            require return_data.size >= _7288 + (32 * _7360) + 32
                            mem[_7216 + ceil32(return_data.size) + 32 len 32 * _7360] = mem[_7216 + _7288 + 32 len 32 * _7360]
                            require mem[_4769] - 1 < _7360
                            _9016 = mem[(32 * mem[_4769] - 1) + _7216 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4769] - 1) + _7216 + ceil32(return_data.size) + 32] <= _4758:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9376] == bool(mem[_9376])
                            if not mem[_9376]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9016 - _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9016 - _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9808] == bool(mem[_9808])
                            if not mem[_9808]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4769 + 132] = arg3
                                mem[_4769 + 164] = _4758
                                mem[_4769 + 196] = 160
                                mem[_4769 + 292] = mem[_4769]
                                idx = 0
                                s = _4769 + 32
                                t = _4769 + 324
                                while idx < mem[_4769]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4769 + 228] = this.address
                                mem[_4769 + 260] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7215 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7287 = mem[_7215]
                                require mem[_7215] <= test266151307()
                                require _7215 + return_data.size > _7215 + mem[_7215] + 31
                                _7359 = mem[_7215 + mem[_7215]]
                                require mem[_7215 + mem[_7215]] <= test266151307()
                                require (32 * mem[_7215 + mem[_7215]]) + 32 >= 0 and _7215 + ceil32(return_data.size) + (32 * mem[_7215 + mem[_7215]]) + 32 <= test266151307()
                                mem[64] = _7215 + ceil32(return_data.size) + (32 * mem[_7215 + mem[_7215]]) + 32
                                mem[_7215 + ceil32(return_data.size)] = _7359
                                require return_data.size >= _7287 + (32 * _7359) + 32
                                mem[_7215 + ceil32(return_data.size) + 32 len 32 * _7359] = mem[_7215 + _7287 + 32 len 32 * _7359]
                                require mem[_4769] - 1 < _7359
                                _9015 = mem[(32 * mem[_4769] - 1) + _7215 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4769] - 1) + _7215 + ceil32(return_data.size) + 32] <= _4758:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9375] == bool(mem[_9375])
                                if not mem[_9375]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9015 - _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9015 - _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9807 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9807] == bool(mem[_9807])
                                if not mem[_9807]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4758:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4769 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4769 + 132] = arg3
                                    mem[_4769 + 164] = _4758
                                    mem[_4769 + 196] = 160
                                    mem[_4769 + 292] = mem[_4769]
                                    idx = 0
                                    s = _4769 + 32
                                    t = _4769 + 324
                                    while idx < mem[_4769]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4769 + 228] = this.address
                                    mem[_4769 + 260] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4769 + (32 * mem[_4769]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7214 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7286 = mem[_7214]
                                    require mem[_7214] <= test266151307()
                                    require _7214 + return_data.size > _7214 + mem[_7214] + 31
                                    _7358 = mem[_7214 + mem[_7214]]
                                    require mem[_7214 + mem[_7214]] <= test266151307()
                                    require (32 * mem[_7214 + mem[_7214]]) + 32 >= 0 and _7214 + ceil32(return_data.size) + (32 * mem[_7214 + mem[_7214]]) + 32 <= test266151307()
                                    mem[64] = _7214 + ceil32(return_data.size) + (32 * mem[_7214 + mem[_7214]]) + 32
                                    mem[_7214 + ceil32(return_data.size)] = _7358
                                    require return_data.size >= _7286 + (32 * _7358) + 32
                                    mem[_7214 + ceil32(return_data.size) + 32 len 32 * _7358] = mem[_7214 + _7286 + 32 len 32 * _7358]
                                    require mem[_4769] - 1 < _7358
                                    _9014 = mem[(32 * mem[_4769] - 1) + _7214 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4769] - 1) + _7214 + ceil32(return_data.size) + 32] <= _4758:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9374 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9374] == bool(mem[_9374])
                                    if not mem[_9374]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9014 - _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9014 - _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9806 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9806] == bool(mem[_9806])
                                    if not mem[_9806]:
                                        revert with 0, 'Take profit failed!'
                else:
                    _4770 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4770 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[_4770]
                    mem[_4770 + 32] = address(ext_call.return_data[0])
                    if not address(cd[(arg4 + 68)]):
                        require mem[_4770] - 1 < mem[_4770]
                        mem[(32 * mem[_4770] - 1) + _4770 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4770 + 100] = arg3
                            mem[_4770 + 132] = _4758
                            mem[_4770 + 164] = 160
                            mem[_4770 + 260] = mem[_4770]
                            idx = 0
                            s = _4770 + 32
                            t = _4770 + 292
                            while idx < mem[_4770]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4770 + 196] = this.address
                            mem[_4770 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7219 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7291 = mem[_7219]
                            require mem[_7219] <= test266151307()
                            require _7219 + return_data.size > _7219 + mem[_7219] + 31
                            _7363 = mem[_7219 + mem[_7219]]
                            require mem[_7219 + mem[_7219]] <= test266151307()
                            require (32 * mem[_7219 + mem[_7219]]) + 32 >= 0 and _7219 + ceil32(return_data.size) + (32 * mem[_7219 + mem[_7219]]) + 32 <= test266151307()
                            mem[64] = _7219 + ceil32(return_data.size) + (32 * mem[_7219 + mem[_7219]]) + 32
                            mem[_7219 + ceil32(return_data.size)] = _7363
                            require return_data.size >= _7291 + (32 * _7363) + 32
                            mem[_7219 + ceil32(return_data.size) + 32 len 32 * _7363] = mem[_7219 + _7291 + 32 len 32 * _7363]
                            require mem[_4770] - 1 < _7363
                            _9019 = mem[(32 * mem[_4770] - 1) + _7219 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4770] - 1) + _7219 + ceil32(return_data.size) + 32] <= _4758:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9379 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9379] == bool(mem[_9379])
                            if not mem[_9379]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9019 - _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9019 - _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9811] == bool(mem[_9811])
                            if not mem[_9811]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4770 + 100] = arg3
                                mem[_4770 + 132] = _4758
                                mem[_4770 + 164] = 160
                                mem[_4770 + 260] = mem[_4770]
                                idx = 0
                                s = _4770 + 32
                                t = _4770 + 292
                                while idx < mem[_4770]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4770 + 196] = this.address
                                mem[_4770 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7218 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7290 = mem[_7218]
                                require mem[_7218] <= test266151307()
                                require _7218 + return_data.size > _7218 + mem[_7218] + 31
                                _7362 = mem[_7218 + mem[_7218]]
                                require mem[_7218 + mem[_7218]] <= test266151307()
                                require (32 * mem[_7218 + mem[_7218]]) + 32 >= 0 and _7218 + ceil32(return_data.size) + (32 * mem[_7218 + mem[_7218]]) + 32 <= test266151307()
                                mem[64] = _7218 + ceil32(return_data.size) + (32 * mem[_7218 + mem[_7218]]) + 32
                                mem[_7218 + ceil32(return_data.size)] = _7362
                                require return_data.size >= _7290 + (32 * _7362) + 32
                                mem[_7218 + ceil32(return_data.size) + 32 len 32 * _7362] = mem[_7218 + _7290 + 32 len 32 * _7362]
                                require mem[_4770] - 1 < _7362
                                _9018 = mem[(32 * mem[_4770] - 1) + _7218 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4770] - 1) + _7218 + ceil32(return_data.size) + 32] <= _4758:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9378] == bool(mem[_9378])
                                if not mem[_9378]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9018 - _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9018 - _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9810] == bool(mem[_9810])
                                if not mem[_9810]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4758:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4770 + 100] = arg3
                                    mem[_4770 + 132] = _4758
                                    mem[_4770 + 164] = 160
                                    mem[_4770 + 260] = mem[_4770]
                                    idx = 0
                                    s = _4770 + 32
                                    t = _4770 + 292
                                    while idx < mem[_4770]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4770 + 196] = this.address
                                    mem[_4770 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7217 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7289 = mem[_7217]
                                    require mem[_7217] <= test266151307()
                                    require _7217 + return_data.size > _7217 + mem[_7217] + 31
                                    _7361 = mem[_7217 + mem[_7217]]
                                    require mem[_7217 + mem[_7217]] <= test266151307()
                                    require (32 * mem[_7217 + mem[_7217]]) + 32 >= 0 and _7217 + ceil32(return_data.size) + (32 * mem[_7217 + mem[_7217]]) + 32 <= test266151307()
                                    mem[64] = _7217 + ceil32(return_data.size) + (32 * mem[_7217 + mem[_7217]]) + 32
                                    mem[_7217 + ceil32(return_data.size)] = _7361
                                    require return_data.size >= _7289 + (32 * _7361) + 32
                                    mem[_7217 + ceil32(return_data.size) + 32 len 32 * _7361] = mem[_7217 + _7289 + 32 len 32 * _7361]
                                    require mem[_4770] - 1 < _7361
                                    _9017 = mem[(32 * mem[_4770] - 1) + _7217 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4770] - 1) + _7217 + ceil32(return_data.size) + 32] <= _4758:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9377 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9377] == bool(mem[_9377])
                                    if not mem[_9377]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9017 - _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9017 - _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9809 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9809] == bool(mem[_9809])
                                    if not mem[_9809]:
                                        revert with 0, 'Take profit failed!'
                    else:
                        require 1 < mem[_4770]
                        mem[_4770 + 64] = address(cd[(arg4 + 68)])
                        require mem[_4770] - 1 < mem[_4770]
                        mem[(32 * mem[_4770] - 1) + _4770 + 32] = address(ext_call.return_data[0])
                        if cd[(arg4 + 36)] == 1:
                            mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4770 + 100] = arg3
                            mem[_4770 + 132] = _4758
                            mem[_4770 + 164] = 160
                            mem[_4770 + 260] = mem[_4770]
                            idx = 0
                            s = _4770 + 32
                            t = _4770 + 292
                            while idx < mem[_4770]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4770 + 196] = this.address
                            mem[_4770 + 228] = -1
                            require ext_code.size(stor4)
                            call stor4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7222 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7294 = mem[_7222]
                            require mem[_7222] <= test266151307()
                            require _7222 + return_data.size > _7222 + mem[_7222] + 31
                            _7366 = mem[_7222 + mem[_7222]]
                            require mem[_7222 + mem[_7222]] <= test266151307()
                            require (32 * mem[_7222 + mem[_7222]]) + 32 >= 0 and _7222 + ceil32(return_data.size) + (32 * mem[_7222 + mem[_7222]]) + 32 <= test266151307()
                            mem[64] = _7222 + ceil32(return_data.size) + (32 * mem[_7222 + mem[_7222]]) + 32
                            mem[_7222 + ceil32(return_data.size)] = _7366
                            require return_data.size >= _7294 + (32 * _7366) + 32
                            mem[_7222 + ceil32(return_data.size) + 32 len 32 * _7366] = mem[_7222 + _7294 + 32 len 32 * _7366]
                            require mem[_4770] - 1 < _7366
                            _9022 = mem[(32 * mem[_4770] - 1) + _7222 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_4770] - 1) + _7222 + ceil32(return_data.size) + 32] <= _4758:
                                revert with 0, 'Nope!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9382] == bool(mem[_9382])
                            if not mem[_9382]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _9022 - _4758
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _9022 - _4758
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9814] == bool(mem[_9814])
                            if not mem[_9814]:
                                revert with 0, 'Take profit failed!'
                        else:
                            if cd[(arg4 + 36)] == 2:
                                mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_4770 + 100] = arg3
                                mem[_4770 + 132] = _4758
                                mem[_4770 + 164] = 160
                                mem[_4770 + 260] = mem[_4770]
                                idx = 0
                                s = _4770 + 32
                                t = _4770 + 292
                                while idx < mem[_4770]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4770 + 196] = this.address
                                mem[_4770 + 228] = -1
                                require ext_code.size(stor5)
                                call stor5.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7221 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7293 = mem[_7221]
                                require mem[_7221] <= test266151307()
                                require _7221 + return_data.size > _7221 + mem[_7221] + 31
                                _7365 = mem[_7221 + mem[_7221]]
                                require mem[_7221 + mem[_7221]] <= test266151307()
                                require (32 * mem[_7221 + mem[_7221]]) + 32 >= 0 and _7221 + ceil32(return_data.size) + (32 * mem[_7221 + mem[_7221]]) + 32 <= test266151307()
                                mem[64] = _7221 + ceil32(return_data.size) + (32 * mem[_7221 + mem[_7221]]) + 32
                                mem[_7221 + ceil32(return_data.size)] = _7365
                                require return_data.size >= _7293 + (32 * _7365) + 32
                                mem[_7221 + ceil32(return_data.size) + 32 len 32 * _7365] = mem[_7221 + _7293 + 32 len 32 * _7365]
                                require mem[_4770] - 1 < _7365
                                _9021 = mem[(32 * mem[_4770] - 1) + _7221 + ceil32(return_data.size) + 32]
                                if mem[(32 * mem[_4770] - 1) + _7221 + ceil32(return_data.size) + 32] <= _4758:
                                    revert with 0, 'Nope!'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9381] == bool(mem[_9381])
                                if not mem[_9381]:
                                    revert with 0, 'Payback failed!'
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _9021 - _4758
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _9021 - _4758
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9813 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_9813] == bool(mem[_9813])
                                if not mem[_9813]:
                                    revert with 0, 'Take profit failed!'
                            else:
                                if cd[(arg4 + 36)] != 4:
                                    if 0 <= _4758:
                                        revert with 0, 'Nope!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Payback failed!'
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, -_4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Take profit failed!'
                                else:
                                    mem[_4770 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4770 + 100] = arg3
                                    mem[_4770 + 132] = _4758
                                    mem[_4770 + 164] = 160
                                    mem[_4770 + 260] = mem[_4770]
                                    idx = 0
                                    s = _4770 + 32
                                    t = _4770 + 292
                                    while idx < mem[_4770]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4770 + 196] = this.address
                                    mem[_4770 + 228] = -1
                                    require ext_code.size(stor6)
                                    call stor6.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4770 + (32 * mem[_4770]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7220 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7292 = mem[_7220]
                                    require mem[_7220] <= test266151307()
                                    require _7220 + return_data.size > _7220 + mem[_7220] + 31
                                    _7364 = mem[_7220 + mem[_7220]]
                                    require mem[_7220 + mem[_7220]] <= test266151307()
                                    require (32 * mem[_7220 + mem[_7220]]) + 32 >= 0 and _7220 + ceil32(return_data.size) + (32 * mem[_7220 + mem[_7220]]) + 32 <= test266151307()
                                    mem[64] = _7220 + ceil32(return_data.size) + (32 * mem[_7220 + mem[_7220]]) + 32
                                    mem[_7220 + ceil32(return_data.size)] = _7364
                                    require return_data.size >= _7292 + (32 * _7364) + 32
                                    mem[_7220 + ceil32(return_data.size) + 32 len 32 * _7364] = mem[_7220 + _7292 + 32 len 32 * _7364]
                                    require mem[_4770] - 1 < _7364
                                    _9020 = mem[(32 * mem[_4770] - 1) + _7220 + ceil32(return_data.size) + 32]
                                    if mem[(32 * mem[_4770] - 1) + _7220 + ceil32(return_data.size) + 32] <= _4758:
                                        revert with 0, 'Nope!'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9380 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9380] == bool(mem[_9380])
                                    if not mem[_9380]:
                                        revert with 0, 'Payback failed!'
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _9020 - _4758
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _9020 - _4758
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9812 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9812] == bool(mem[_9812])
                                    if not mem[_9812]:
                                        revert with 0, 'Take profit failed!'
}



}
