contract main {




// =====================  Runtime code  =====================


#
#  - sub_2109214f(?)
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

function sub_f29eb519(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + arg8.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132] = address(arg4)
    if arg1 == 1:
        require ext_code.size(stor1)
        staticcall stor1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg4)
    else:
        if arg1 != 2:
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg4)
        else:
            if arg1 == 1:
                require ext_code.size(stor1)
                staticcall stor1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg4)
            else:
                require ext_code.size(stor2)
                staticcall stor2.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), address(arg4)
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
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg6)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg7)
    mem[(2 * ceil32(return_data.size)) + 192] = 96
    mem[(2 * ceil32(return_data.size)) + 224] = arg8.length
    mem[(2 * ceil32(return_data.size)) + 256 len arg8.length] = arg8[all]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(arg2) != ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args arg5, arg3, address(this.address), Array(len=ceil32(arg8.length) + 128, data=mem[(2 * ceil32(return_data.size)) + 128 len ceil32(ceil32(arg8.length)) + 4])
    else:
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args arg3, arg5, address(this.address), Array(len=ceil32(arg8.length) + 128, data=mem[(2 * ceil32(return_data.size)) + 128 len ceil32(ceil32(arg8.length)) + 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            s = 420
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
        s = 420
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
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
                s = 420
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1157 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1145 + (32 * _1157) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1157] = mem[_1145 + 352 len 32 * _1157]
                require _1157 - 1 < _1157
                mem[288] = mem[(32 * _1157 - 1) + ceil32(return_data.size) + 352]
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
                s = ceil32(return_data.size) + 421
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1158 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
                require return_data.size >= _1147 + (32 * _1158) + 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1158] = mem[ceil32(return_data.size) + _1147 + 353 len 32 * _1158]
                require _1158 - 1 < _1158
                mem[288] = mem[(32 * _1158 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
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
        s = mem[64] + 100
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
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
                _1728 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1728] = mem[224 len 32 * _1728]
                return 32, mem[mem[64] + 32 len (32 * _1728) + 32]
            _1675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1675] = return_data.size
            mem[_1675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1729 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1729] = mem[224 len 32 * _1729]
            return 32, mem[mem[64] + 32 len (32 * _1729) + 32]
        _1648 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1676 = mem[_1648]
        require mem[_1648] <= test266151307()
        require _1648 + return_data.size > _1648 + mem[_1648] + 31
        _1691 = mem[_1648 + mem[_1648]]
        require mem[_1648 + mem[_1648]] <= test266151307()
        require (32 * mem[_1648 + mem[_1648]]) + 32 >= 0 and _1648 + ceil32(return_data.size) + (32 * mem[_1648 + mem[_1648]]) + 32 <= test266151307()
        mem[64] = _1648 + ceil32(return_data.size) + (32 * mem[_1648 + mem[_1648]]) + 32
        mem[_1648 + ceil32(return_data.size)] = _1691
        require return_data.size >= _1676 + (32 * _1691) + 32
        mem[_1648 + ceil32(return_data.size) + 32 len 32 * _1691] = mem[_1648 + _1676 + 32 len 32 * _1691]
        require _1691 - 1 < _1691
        require 2 < mem[192]
        mem[288] = mem[(32 * _1691 - 1) + _1648 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2092 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2092] = mem[224 len 32 * _2092]
        return 32, mem[mem[64] + 32 len (32 * _2092) + 32]
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg3
    mem[356] = 64
    mem[388] = 2
    idx = 0
    s = 420
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
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
                s = 420
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1160 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require return_data.size >= _1149 + (32 * _1160) + 32
                mem[ceil32(return_data.size) + 352 len 32 * _1160] = mem[_1149 + 352 len 32 * _1160]
                require _1160 - 1 < _1160
                mem[288] = mem[(32 * _1160 - 1) + ceil32(return_data.size) + 352]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[324] = arg3
            mem[356] = 64
            mem[388] = 2
            idx = 0
            s = 420
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
                    s = 420
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
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
                    _1693 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                    require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    require return_data.size >= _1678 + (32 * _1693) + 32
                    mem[ceil32(return_data.size) + 352 len 32 * _1693] = mem[_1678 + 352 len 32 * _1693]
                    require _1693 - 1 < _1693
                    mem[288] = mem[(32 * _1693 - 1) + ceil32(return_data.size) + 352]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 3
                    mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                    return Array(len=3, data=mem[mem[64] + 64 len 96])
                mem[64] = ceil32(return_data.size) + 321
                mem[320] = return_data.size
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 325] = arg3
                mem[ceil32(return_data.size) + 357] = 64
                mem[ceil32(return_data.size) + 389] = 2
                idx = 0
                s = mem[64] + 100
                t = 128
                while idx < mem[96]:
                    mem[s] = mem[t + 12 len 20]
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
                        _1732 = mem[192]
                        mem[mem[64] + 32] = mem[192]
                        mem[mem[64] + 64 len 32 * _1732] = mem[224 len 32 * _1732]
                        return 32, mem[mem[64] + 32 len (32 * _1732) + 32]
                    _1679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1679] = return_data.size
                    mem[_1679 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 32
                    _1733 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _1733] = mem[224 len 32 * _1733]
                    return 32, mem[mem[64] + 32 len (32 * _1733) + 32]
                _1652 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1680 = mem[_1652]
                require mem[_1652] <= test266151307()
                require _1652 + return_data.size > _1652 + mem[_1652] + 31
                _1694 = mem[_1652 + mem[_1652]]
                require mem[_1652 + mem[_1652]] <= test266151307()
                require (32 * mem[_1652 + mem[_1652]]) + 32 >= 0 and _1652 + ceil32(return_data.size) + (32 * mem[_1652 + mem[_1652]]) + 32 <= test266151307()
                mem[64] = _1652 + ceil32(return_data.size) + (32 * mem[_1652 + mem[_1652]]) + 32
                mem[_1652 + ceil32(return_data.size)] = _1694
                require return_data.size >= _1680 + (32 * _1694) + 32
                mem[_1652 + ceil32(return_data.size) + 32 len 32 * _1694] = mem[_1652 + _1680 + 32 len 32 * _1694]
                require _1694 - 1 < _1694
                require 2 < mem[192]
                mem[288] = mem[(32 * _1694 - 1) + _1652 + ceil32(return_data.size) + 32]
                mem[mem[64]] = 32
                _2094 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2094] = mem[224 len 32 * _2094]
                return 32, mem[mem[64] + 32 len (32 * _2094) + 32]
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _1151 = mem[320 len 4], Mask(224, 32, arg3) >> 32
            require mem[320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 320 > mem[320 len 4], Mask(224, 32, arg3) >> 32 + 351
            _1161 = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _1151 + (32 * _1161) + 32
            mem[ceil32(return_data.size) + 352 len 32 * _1161] = mem[_1151 + 352 len 32 * _1161]
            var50001 = _1151 + (32 * _1161) + 352
            var50003 = ceil32(return_data.size) + (32 * _1161) + 352
            var50005 = _1161
            require _1161 - 1 < _1161
            mem[256] = mem[(32 * _1161 - 1) + ceil32(return_data.size) + 352]
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
            s = mem[64] + 100
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
                    _2098 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _2098] = mem[224 len 32 * _2098]
                    return 32, mem[mem[64] + 32 len (32 * _2098) + 32]
                _2063 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2063] = return_data.size
                mem[_2063 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2099 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2099] = mem[224 len 32 * _2099]
                return 32, mem[mem[64] + 32 len (32 * _2099) + 32]
            _2037 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2064 = mem[_2037]
            require mem[_2037] <= test266151307()
            require _2037 + return_data.size > _2037 + mem[_2037] + 31
            _2074 = mem[_2037 + mem[_2037]]
            require mem[_2037 + mem[_2037]] <= test266151307()
            require (32 * mem[_2037 + mem[_2037]]) + 32 >= 0 and _2037 + ceil32(return_data.size) + (32 * mem[_2037 + mem[_2037]]) + 32 <= test266151307()
            mem[64] = _2037 + ceil32(return_data.size) + (32 * mem[_2037 + mem[_2037]]) + 32
            mem[_2037 + ceil32(return_data.size)] = _2074
            require return_data.size >= _2064 + (32 * _2074) + 32
            mem[_2037 + ceil32(return_data.size) + 32 len 32 * _2074] = mem[_2037 + _2064 + 32 len 32 * _2074]
            require _2074 - 1 < _2074
            require 2 < mem[192]
            mem[288] = mem[(32 * _2074 - 1) + _2037 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2263 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2263] = mem[224 len 32 * _2263]
            return 32, mem[mem[64] + 32 len (32 * _2263) + 32]
        mem[64] = ceil32(return_data.size) + 321
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
            s = ceil32(return_data.size) + 421
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _1162 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
            require return_data.size >= _1153 + (32 * _1162) + 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1162] = mem[ceil32(return_data.size) + _1153 + 353 len 32 * _1162]
            require _1162 - 1 < _1162
            mem[288] = mem[(32 * _1162 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 3
            mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
            return Array(len=3, data=mem[mem[64] + 64 len 96])
        mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 325] = arg3
        mem[ceil32(return_data.size) + 357] = 64
        mem[ceil32(return_data.size) + 389] = 2
        idx = 0
        s = ceil32(return_data.size) + 421
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 421 len 64])
        if not ext_call.success:
            if return_data.size:
                mem[ceil32(return_data.size) + 321] = return_data.size
                mem[ceil32(return_data.size) + 353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not Mask(1, 2, arg1):
                    return Array(len=3, data=call.data[calldata.size len 96])
                mem[(2 * ceil32(return_data.size)) + 322] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 326] = arg3
                mem[(2 * ceil32(return_data.size)) + 358] = 64
                mem[(2 * ceil32(return_data.size)) + 390] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 422
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1698 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]) + 354
                mem[(4 * ceil32(return_data.size)) + 322] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 322 len 4], Mask(224, 32, arg3) >> 32 + 322]
                require return_data.size >= _1684 + (32 * _1698) + 32
                mem[(4 * ceil32(return_data.size)) + 354 len 32 * _1698] = mem[(2 * ceil32(return_data.size)) + _1684 + 354 len 32 * _1698]
                require _1698 - 1 < _1698
                mem[288] = mem[(32 * _1698 - 1) + (4 * ceil32(return_data.size)) + 354]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 3
                mem[mem[64] + 64 len 96] = call.data[calldata.size len 64], mem[288]
                return Array(len=3, data=mem[mem[64] + 64 len 96])
            if not Mask(1, 2, arg1):
                return Array(len=3, data=call.data[calldata.size len 96])
            mem[ceil32(return_data.size) + 321] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 325] = arg3
            mem[ceil32(return_data.size) + 357] = 64
            mem[ceil32(return_data.size) + 389] = 2
            idx = 0
            s = mem[64] + 100
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
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
                    _1736 = mem[192]
                    mem[mem[64] + 32] = mem[192]
                    mem[mem[64] + 64 len 32 * _1736] = mem[224 len 32 * _1736]
                    return 32, mem[mem[64] + 32 len (32 * _1736) + 32]
                _1681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1681] = return_data.size
                mem[_1681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _1737 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1737] = mem[224 len 32 * _1737]
                return 32, mem[mem[64] + 32 len (32 * _1737) + 32]
            _1657 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1682 = mem[_1657]
            require mem[_1657] <= test266151307()
            require _1657 + return_data.size > _1657 + mem[_1657] + 31
            _1697 = mem[_1657 + mem[_1657]]
            require mem[_1657 + mem[_1657]] <= test266151307()
            require (32 * mem[_1657 + mem[_1657]]) + 32 >= 0 and _1657 + ceil32(return_data.size) + (32 * mem[_1657 + mem[_1657]]) + 32 <= test266151307()
            mem[64] = _1657 + ceil32(return_data.size) + (32 * mem[_1657 + mem[_1657]]) + 32
            mem[_1657 + ceil32(return_data.size)] = _1697
            require return_data.size >= _1682 + (32 * _1697) + 32
            mem[_1657 + ceil32(return_data.size) + 32 len 32 * _1697] = mem[_1657 + _1682 + 32 len 32 * _1697]
            require _1697 - 1 < _1697
            require 2 < mem[192]
            mem[288] = mem[(32 * _1697 - 1) + _1657 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2095 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2095] = mem[224 len 32 * _2095]
            return 32, mem[mem[64] + 32 len (32 * _2095) + 32]
        mem[ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 321
        require return_data.size >= 32
        _1155 = mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 321 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 352
        _1163 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 32 >= 0 and ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353 <= test266151307()
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]) + 353
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 321] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 321 len 4], Mask(224, 32, arg3) >> 32 + 321]
        require return_data.size >= _1155 + (32 * _1163) + 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 353 len 32 * _1163] = mem[ceil32(return_data.size) + _1155 + 353 len 32 * _1163]
        var50001 = ceil32(return_data.size) + _1155 + (32 * _1163) + 353
        var50003 = ceil32(return_data.size) + ceil32(return_data.size) + (32 * _1163) + 353
        var50005 = _1163
        require _1163 - 1 < _1163
        mem[256] = mem[(32 * _1163 - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 353]
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
        s = mem[64] + 100
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
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
                _2100 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2100] = mem[224 len 32 * _2100]
                return 32, mem[mem[64] + 32 len (32 * _2100) + 32]
            _2065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2065] = return_data.size
            mem[_2065 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2101 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2101] = mem[224 len 32 * _2101]
            return 32, mem[mem[64] + 32 len (32 * _2101) + 32]
        _2042 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2066 = mem[_2042]
        require mem[_2042] <= test266151307()
        require _2042 + return_data.size > _2042 + mem[_2042] + 31
        _2077 = mem[_2042 + mem[_2042]]
        require mem[_2042 + mem[_2042]] <= test266151307()
        require (32 * mem[_2042 + mem[_2042]]) + 32 >= 0 and _2042 + ceil32(return_data.size) + (32 * mem[_2042 + mem[_2042]]) + 32 <= test266151307()
        mem[64] = _2042 + ceil32(return_data.size) + (32 * mem[_2042 + mem[_2042]]) + 32
        mem[_2042 + ceil32(return_data.size)] = _2077
        require return_data.size >= _2066 + (32 * _2077) + 32
        mem[_2042 + ceil32(return_data.size) + 32 len 32 * _2077] = mem[_2042 + _2066 + 32 len 32 * _2077]
        require _2077 - 1 < _2077
        require 2 < mem[192]
        mem[288] = mem[(32 * _2077 - 1) + _2042 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2264 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2264] = mem[224 len 32 * _2264]
        return 32, mem[mem[64] + 32 len (32 * _2264) + 32]
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
        s = mem[64] + 100
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
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
                _1742 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _1742] = mem[224 len 32 * _1742]
                return 32, mem[mem[64] + 32 len (32 * _1742) + 32]
            _1685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1685] = return_data.size
            mem[_1685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _1743 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1743] = mem[224 len 32 * _1743]
            return 32, mem[mem[64] + 32 len (32 * _1743) + 32]
        _1661 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1686 = mem[_1661]
        require mem[_1661] <= test266151307()
        require _1661 + return_data.size > _1661 + mem[_1661] + 31
        _1700 = mem[_1661 + mem[_1661]]
        require mem[_1661 + mem[_1661]] <= test266151307()
        require (32 * mem[_1661 + mem[_1661]]) + 32 >= 0 and _1661 + ceil32(return_data.size) + (32 * mem[_1661 + mem[_1661]]) + 32 <= test266151307()
        mem[64] = _1661 + ceil32(return_data.size) + (32 * mem[_1661 + mem[_1661]]) + 32
        mem[_1661 + ceil32(return_data.size)] = _1700
        require return_data.size >= _1686 + (32 * _1700) + 32
        mem[_1661 + ceil32(return_data.size) + 32 len 32 * _1700] = mem[_1661 + _1686 + 32 len 32 * _1700]
        require _1700 - 1 < _1700
        require 2 < mem[192]
        mem[288] = mem[(32 * _1700 - 1) + _1661 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2097 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2097] = mem[224 len 32 * _2097]
        return 32, mem[mem[64] + 32 len (32 * _2097) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
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
            s = mem[64] + 100
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
                _2067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2067] = return_data.size
                mem[_2067 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                _2103 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2103] = mem[224 len 32 * _2103]
                return 32, mem[mem[64] + 32 len (32 * _2103) + 32]
            _2045 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2068 = mem[_2045]
            require mem[_2045] <= test266151307()
            require _2045 + return_data.size > _2045 + mem[_2045] + 31
            _2079 = mem[_2045 + mem[_2045]]
            require mem[_2045 + mem[_2045]] <= test266151307()
            require (32 * mem[_2045 + mem[_2045]]) + 32 >= 0 and _2045 + ceil32(return_data.size) + (32 * mem[_2045 + mem[_2045]]) + 32 <= test266151307()
            mem[64] = _2045 + ceil32(return_data.size) + (32 * mem[_2045 + mem[_2045]]) + 32
            mem[_2045 + ceil32(return_data.size)] = _2079
            require return_data.size >= _2068 + (32 * _2079) + 32
            mem[_2045 + ceil32(return_data.size) + 32 len 32 * _2079] = mem[_2045 + _2068 + 32 len 32 * _2079]
            require _2079 - 1 < _2079
            require 2 < mem[192]
            mem[288] = mem[(32 * _2079 - 1) + _2045 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 32
            _2265 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2265] = mem[224 len 32 * _2265]
            return 32, mem[mem[64] + 32 len (32 * _2265) + 32]
        _1687 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1687] = return_data.size
        mem[_1687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not Mask(1, 2, arg1):
            mem[mem[64]] = 32
            _1758 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _1758] = mem[224 len 32 * _1758]
            return 32, mem[mem[64] + 32 len (32 * _1758) + 32]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = mem[64] + 100
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
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
                _2104 = mem[192]
                mem[mem[64] + 32] = mem[192]
                mem[mem[64] + 64 len 32 * _2104] = mem[224 len 32 * _2104]
                return 32, mem[mem[64] + 32 len (32 * _2104) + 32]
            _2069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2069] = return_data.size
            mem[_2069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 32
            _2105 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2105] = mem[224 len 32 * _2105]
            return 32, mem[mem[64] + 32 len (32 * _2105) + 32]
        _2046 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2070 = mem[_2046]
        require mem[_2046] <= test266151307()
        require _2046 + return_data.size > _2046 + mem[_2046] + 31
        _2080 = mem[_2046 + mem[_2046]]
        require mem[_2046 + mem[_2046]] <= test266151307()
        require (32 * mem[_2046 + mem[_2046]]) + 32 >= 0 and _2046 + ceil32(return_data.size) + (32 * mem[_2046 + mem[_2046]]) + 32 <= test266151307()
        mem[64] = _2046 + ceil32(return_data.size) + (32 * mem[_2046 + mem[_2046]]) + 32
        mem[_2046 + ceil32(return_data.size)] = _2080
        require return_data.size >= _2070 + (32 * _2080) + 32
        mem[_2046 + ceil32(return_data.size) + 32 len 32 * _2080] = mem[_2046 + _2070 + 32 len 32 * _2080]
        require _2080 - 1 < _2080
        require 2 < mem[192]
        mem[288] = mem[(32 * _2080 - 1) + _2046 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 32
        _2266 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2266] = mem[224 len 32 * _2266]
        return 32, mem[mem[64] + 32 len (32 * _2266) + 32]
    _1662 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1688 = mem[_1662]
    require mem[_1662] <= test266151307()
    require _1662 + return_data.size > _1662 + mem[_1662] + 31
    _1701 = mem[_1662 + mem[_1662]]
    require mem[_1662 + mem[_1662]] <= test266151307()
    require (32 * mem[_1662 + mem[_1662]]) + 32 >= 0 and _1662 + ceil32(return_data.size) + (32 * mem[_1662 + mem[_1662]]) + 32 <= test266151307()
    mem[64] = _1662 + ceil32(return_data.size) + (32 * mem[_1662 + mem[_1662]]) + 32
    mem[_1662 + ceil32(return_data.size)] = _1701
    require return_data.size >= _1688 + (32 * _1701) + 32
    mem[_1662 + ceil32(return_data.size) + 32 len 32 * _1701] = mem[_1662 + _1688 + 32 len 32 * _1701]
    require _1701 - 1 < _1701
    require 1 < mem[192]
    mem[256] = mem[(32 * _1701 - 1) + _1662 + ceil32(return_data.size) + 32]
    if not Mask(1, 2, arg1):
        mem[mem[64]] = 32
        _2106 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2106] = mem[224 len 32 * _2106]
        return 32, mem[mem[64] + 32 len (32 * _2106) + 32]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = mem[64] + 100
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
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
            _2267 = mem[192]
            mem[mem[64] + 32] = mem[192]
            mem[mem[64] + 64 len 32 * _2267] = mem[224 len 32 * _2267]
            return 32, mem[mem[64] + 32 len (32 * _2267) + 32]
        _2254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2254] = return_data.size
        mem[_2254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 32
        _2268 = mem[192]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64 len 32 * _2268] = mem[224 len 32 * _2268]
        return 32, mem[mem[64] + 32 len (32 * _2268) + 32]
    _2245 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2255 = mem[_2245]
    require mem[_2245] <= test266151307()
    require _2245 + return_data.size > _2245 + mem[_2245] + 31
    _2260 = mem[_2245 + mem[_2245]]
    require mem[_2245 + mem[_2245]] <= test266151307()
    require (32 * mem[_2245 + mem[_2245]]) + 32 >= 0 and _2245 + ceil32(return_data.size) + (32 * mem[_2245 + mem[_2245]]) + 32 <= test266151307()
    mem[64] = _2245 + ceil32(return_data.size) + (32 * mem[_2245 + mem[_2245]]) + 32
    mem[_2245 + ceil32(return_data.size)] = _2260
    require return_data.size >= _2255 + (32 * _2260) + 32
    mem[_2245 + ceil32(return_data.size) + 32 len 32 * _2260] = mem[_2245 + _2255 + 32 len 32 * _2260]
    require _2260 - 1 < _2260
    require 2 < mem[192]
    mem[288] = mem[(32 * _2260 - 1) + _2245 + ceil32(return_data.size) + 32]
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
                        t = _720 + 324
                        u = _720 + 32
                        while s < mem[_720]:
                            mem[t] = mem[u + 12 len 20]
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
                                _1422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1422] = return_data.size
                                mem[_1422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1418 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1423 = mem[_1418]
                            require mem[_1418] <= test266151307()
                            require _1418 + return_data.size > _1418 + mem[_1418] + 31
                            _1430 = mem[_1418 + mem[_1418]]
                            require mem[_1418 + mem[_1418]] <= test266151307()
                            require (32 * mem[_1418 + mem[_1418]]) + 32 >= 0 and _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32 <= test266151307()
                            mem[64] = _1418 + ceil32(return_data.size) + (32 * mem[_1418 + mem[_1418]]) + 32
                            mem[_1418 + ceil32(return_data.size)] = _1430
                            require return_data.size >= _1423 + (32 * _1430) + 32
                            t = _1418 + _1423 + 32
                            u = _1418 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1430:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _1430
                            require 2 < mem[_720 + 96]
                            mem[_720 + 192] = mem[_1418 + ceil32(return_data.size) + 32]
                else:
                    mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_720 + 260] = 64
                    mem[_720 + 292] = mem[_720]
                    s = 0
                    t = _720 + 324
                    u = _720 + 32
                    while s < mem[_720]:
                        mem[t] = mem[u + 12 len 20]
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
                                _1441 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = mem[64] + 100
                                u = _720 + 32
                                while s < _1441:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1441) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2133 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2133] = return_data.size
                                        mem[_2133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2115 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2134 = mem[_2115]
                                    require mem[_2115] <= test266151307()
                                    require _2115 + return_data.size > _2115 + mem[_2115] + 31
                                    _2152 = mem[_2115 + mem[_2115]]
                                    require mem[_2115 + mem[_2115]] <= test266151307()
                                    require (32 * mem[_2115 + mem[_2115]]) + 32 >= 0 and _2115 + ceil32(return_data.size) + (32 * mem[_2115 + mem[_2115]]) + 32 <= test266151307()
                                    mem[64] = _2115 + ceil32(return_data.size) + (32 * mem[_2115 + mem[_2115]]) + 32
                                    mem[_2115 + ceil32(return_data.size)] = _2152
                                    require return_data.size >= _2134 + (32 * _2152) + 32
                                    t = _2115 + _2134 + 32
                                    u = _2115 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2152:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2152
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2115 + ceil32(return_data.size) + 32]
                        else:
                            _1424 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1424] = return_data.size
                            mem[_1424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1437 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1443 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = mem[64] + 100
                                u = _720 + 32
                                while s < _1443:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1437 + (32 * _1443) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2135 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2135] = return_data.size
                                        mem[_2135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2116 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2136 = mem[_2116]
                                    require mem[_2116] <= test266151307()
                                    require _2116 + return_data.size > _2116 + mem[_2116] + 31
                                    _2153 = mem[_2116 + mem[_2116]]
                                    require mem[_2116 + mem[_2116]] <= test266151307()
                                    require (32 * mem[_2116 + mem[_2116]]) + 32 >= 0 and _2116 + ceil32(return_data.size) + (32 * mem[_2116 + mem[_2116]]) + 32 <= test266151307()
                                    mem[64] = _2116 + ceil32(return_data.size) + (32 * mem[_2116 + mem[_2116]]) + 32
                                    mem[_2116 + ceil32(return_data.size)] = _2153
                                    require return_data.size >= _2136 + (32 * _2153) + 32
                                    t = _2116 + _2136 + 32
                                    u = _2116 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2153:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2153
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2116 + ceil32(return_data.size) + 32]
                    else:
                        _1419 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1425 = mem[_1419]
                        require mem[_1419] <= test266151307()
                        require _1419 + return_data.size > _1419 + mem[_1419] + 31
                        _1431 = mem[_1419 + mem[_1419]]
                        require mem[_1419 + mem[_1419]] <= test266151307()
                        require (32 * mem[_1419 + mem[_1419]]) + 32 >= 0 and _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32 <= test266151307()
                        mem[64] = _1419 + ceil32(return_data.size) + (32 * mem[_1419 + mem[_1419]]) + 32
                        mem[_1419 + ceil32(return_data.size)] = _1431
                        require return_data.size >= _1425 + (32 * _1431) + 32
                        t = _1419 + _1425 + 32
                        u = _1419 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1431:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _1431
                        require 1 < mem[_720 + 96]
                        mem[_720 + 160] = mem[_1419 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2154 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2168 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = mem[64] + 100
                            u = _720 + 32
                            while s < _2168:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2154 + (32 * _2168) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2791 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2791] = return_data.size
                                    mem[_2791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2753 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2792 = mem[_2753]
                                require mem[_2753] <= test266151307()
                                require _2753 + return_data.size > _2753 + mem[_2753] + 31
                                _2819 = mem[_2753 + mem[_2753]]
                                require mem[_2753 + mem[_2753]] <= test266151307()
                                require (32 * mem[_2753 + mem[_2753]]) + 32 >= 0 and _2753 + ceil32(return_data.size) + (32 * mem[_2753 + mem[_2753]]) + 32 <= test266151307()
                                mem[64] = _2753 + ceil32(return_data.size) + (32 * mem[_2753 + mem[_2753]]) + 32
                                mem[_2753 + ceil32(return_data.size)] = _2819
                                require return_data.size >= _2792 + (32 * _2819) + 32
                                t = _2753 + _2792 + 32
                                u = _2753 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2819:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2819
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2753 + ceil32(return_data.size) + 32]
            else:
                mem[_720 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_720 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_720 + 260] = 64
                mem[_720 + 292] = mem[_720]
                s = 0
                t = _720 + 324
                u = _720 + 32
                while s < mem[_720]:
                    mem[t] = mem[u + 12 len 20]
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
                                _1444 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1449 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = mem[64] + 100
                                u = _720 + 32
                                while s < _1449:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1444 + (32 * _1449) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2137 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2137] = return_data.size
                                        mem[_2137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2118 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2138 = mem[_2118]
                                    require mem[_2118] <= test266151307()
                                    require _2118 + return_data.size > _2118 + mem[_2118] + 31
                                    _2155 = mem[_2118 + mem[_2118]]
                                    require mem[_2118 + mem[_2118]] <= test266151307()
                                    require (32 * mem[_2118 + mem[_2118]]) + 32 >= 0 and _2118 + ceil32(return_data.size) + (32 * mem[_2118 + mem[_2118]]) + 32 <= test266151307()
                                    mem[64] = _2118 + ceil32(return_data.size) + (32 * mem[_2118 + mem[_2118]]) + 32
                                    mem[_2118 + ceil32(return_data.size)] = _2155
                                    require return_data.size >= _2138 + (32 * _2155) + 32
                                    t = _2118 + _2138 + 32
                                    u = _2118 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2155:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2155
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2118 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1445 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = mem[64] + 100
                            u = _720 + 32
                            while s < _1445:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1445) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2171 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2186 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _720 + 32
                                        while s < _2186:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2171 + (32 * _2186) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2793 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2793] = return_data.size
                                                mem[_2793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2755 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2794 = mem[_2755]
                                            require mem[_2755] <= test266151307()
                                            require _2755 + return_data.size > _2755 + mem[_2755] + 31
                                            _2821 = mem[_2755 + mem[_2755]]
                                            require mem[_2755 + mem[_2755]] <= test266151307()
                                            require (32 * mem[_2755 + mem[_2755]]) + 32 >= 0 and _2755 + ceil32(return_data.size) + (32 * mem[_2755 + mem[_2755]]) + 32 <= test266151307()
                                            mem[64] = _2755 + ceil32(return_data.size) + (32 * mem[_2755 + mem[_2755]]) + 32
                                            mem[_2755 + ceil32(return_data.size)] = _2821
                                            require return_data.size >= _2794 + (32 * _2821) + 32
                                            t = _2755 + _2794 + 32
                                            u = _2755 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2821:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2821
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2755 + ceil32(return_data.size) + 32]
                                else:
                                    _2139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2139] = return_data.size
                                    mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2172 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2188 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _720 + 32
                                        while s < _2188:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2172 + (32 * _2188) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2795 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2795] = return_data.size
                                                mem[_2795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2756 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2796 = mem[_2756]
                                            require mem[_2756] <= test266151307()
                                            require _2756 + return_data.size > _2756 + mem[_2756] + 31
                                            _2822 = mem[_2756 + mem[_2756]]
                                            require mem[_2756 + mem[_2756]] <= test266151307()
                                            require (32 * mem[_2756 + mem[_2756]]) + 32 >= 0 and _2756 + ceil32(return_data.size) + (32 * mem[_2756 + mem[_2756]]) + 32 <= test266151307()
                                            mem[64] = _2756 + ceil32(return_data.size) + (32 * mem[_2756 + mem[_2756]]) + 32
                                            mem[_2756 + ceil32(return_data.size)] = _2822
                                            require return_data.size >= _2796 + (32 * _2822) + 32
                                            t = _2756 + _2796 + 32
                                            u = _2756 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2822:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2822
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2756 + ceil32(return_data.size) + 32]
                            else:
                                _2119 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2140 = mem[_2119]
                                require mem[_2119] <= test266151307()
                                require _2119 + return_data.size > _2119 + mem[_2119] + 31
                                _2156 = mem[_2119 + mem[_2119]]
                                require mem[_2119 + mem[_2119]] <= test266151307()
                                require (32 * mem[_2119 + mem[_2119]]) + 32 >= 0 and _2119 + ceil32(return_data.size) + (32 * mem[_2119 + mem[_2119]]) + 32 <= test266151307()
                                mem[64] = _2119 + ceil32(return_data.size) + (32 * mem[_2119 + mem[_2119]]) + 32
                                mem[_2119 + ceil32(return_data.size)] = _2156
                                require return_data.size >= _2140 + (32 * _2156) + 32
                                t = _2119 + _2140 + 32
                                u = _2119 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2156:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2156
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2119 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2823 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2846 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _720 + 32
                                    while s < _2846:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2823 + (32 * _2846) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3300] = return_data.size
                                            mem[_3300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3253 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3301 = mem[_3253]
                                        require mem[_3253] <= test266151307()
                                        require _3253 + return_data.size > _3253 + mem[_3253] + 31
                                        _3325 = mem[_3253 + mem[_3253]]
                                        require mem[_3253 + mem[_3253]] <= test266151307()
                                        require (32 * mem[_3253 + mem[_3253]]) + 32 >= 0 and _3253 + ceil32(return_data.size) + (32 * mem[_3253 + mem[_3253]]) + 32 <= test266151307()
                                        mem[64] = _3253 + ceil32(return_data.size) + (32 * mem[_3253 + mem[_3253]]) + 32
                                        mem[_3253 + ceil32(return_data.size)] = _3325
                                        require return_data.size >= _3301 + (32 * _3325) + 32
                                        t = _3253 + _3301 + 32
                                        u = _3253 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3325:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3325
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3253 + ceil32(return_data.size) + 32]
                    else:
                        _1426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1426] = return_data.size
                        mem[_1426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1446 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1451 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = mem[64] + 100
                                u = _720 + 32
                                while s < _1451:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1446 + (32 * _1451) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2141 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2141] = return_data.size
                                        mem[_2141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2120 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2142 = mem[_2120]
                                    require mem[_2120] <= test266151307()
                                    require _2120 + return_data.size > _2120 + mem[_2120] + 31
                                    _2157 = mem[_2120 + mem[_2120]]
                                    require mem[_2120 + mem[_2120]] <= test266151307()
                                    require (32 * mem[_2120 + mem[_2120]]) + 32 >= 0 and _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32 <= test266151307()
                                    mem[64] = _2120 + ceil32(return_data.size) + (32 * mem[_2120 + mem[_2120]]) + 32
                                    mem[_2120 + ceil32(return_data.size)] = _2157
                                    require return_data.size >= _2142 + (32 * _2157) + 32
                                    t = _2120 + _2142 + 32
                                    u = _2120 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2157:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2157
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_2120 + ceil32(return_data.size) + 32]
                        else:
                            _1439 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1447 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = mem[64] + 100
                            u = _720 + 32
                            while s < _1447:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1439 + (32 * _1447) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2175 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2190 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _720 + 32
                                        while s < _2190:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2175 + (32 * _2190) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2797 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2797] = return_data.size
                                                mem[_2797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2759 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2798 = mem[_2759]
                                            require mem[_2759] <= test266151307()
                                            require _2759 + return_data.size > _2759 + mem[_2759] + 31
                                            _2825 = mem[_2759 + mem[_2759]]
                                            require mem[_2759 + mem[_2759]] <= test266151307()
                                            require (32 * mem[_2759 + mem[_2759]]) + 32 >= 0 and _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32 <= test266151307()
                                            mem[64] = _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32
                                            mem[_2759 + ceil32(return_data.size)] = _2825
                                            require return_data.size >= _2798 + (32 * _2825) + 32
                                            t = _2759 + _2798 + 32
                                            u = _2759 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2825:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2825
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2759 + ceil32(return_data.size) + 32]
                                else:
                                    _2143 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2143] = return_data.size
                                    mem[_2143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2176 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2192 = mem[_720]
                                        mem[mem[64] + 68] = mem[_720]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _720 + 32
                                        while s < _2192:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2176 + (32 * _2192) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2799] = return_data.size
                                                mem[_2799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2760 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2800 = mem[_2760]
                                            require mem[_2760] <= test266151307()
                                            require _2760 + return_data.size > _2760 + mem[_2760] + 31
                                            _2826 = mem[_2760 + mem[_2760]]
                                            require mem[_2760 + mem[_2760]] <= test266151307()
                                            require (32 * mem[_2760 + mem[_2760]]) + 32 >= 0 and _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32 <= test266151307()
                                            mem[64] = _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32
                                            mem[_2760 + ceil32(return_data.size)] = _2826
                                            require return_data.size >= _2800 + (32 * _2826) + 32
                                            t = _2760 + _2800 + 32
                                            u = _2760 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2826:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _2826
                                            require 2 < mem[_720 + 96]
                                            mem[_720 + 192] = mem[_2760 + ceil32(return_data.size) + 32]
                            else:
                                _2121 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2144 = mem[_2121]
                                require mem[_2121] <= test266151307()
                                require _2121 + return_data.size > _2121 + mem[_2121] + 31
                                _2158 = mem[_2121 + mem[_2121]]
                                require mem[_2121 + mem[_2121]] <= test266151307()
                                require (32 * mem[_2121 + mem[_2121]]) + 32 >= 0 and _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32 <= test266151307()
                                mem[64] = _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32
                                mem[_2121 + ceil32(return_data.size)] = _2158
                                require return_data.size >= _2144 + (32 * _2158) + 32
                                t = _2121 + _2144 + 32
                                u = _2121 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2158:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2158
                                require 1 < mem[_720 + 96]
                                mem[_720 + 160] = mem[_2121 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2852 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _720 + 32
                                    while s < _2852:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2852) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3302] = return_data.size
                                            mem[_3302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3256 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3303 = mem[_3256]
                                        require mem[_3256] <= test266151307()
                                        require _3256 + return_data.size > _3256 + mem[_3256] + 31
                                        _3328 = mem[_3256 + mem[_3256]]
                                        require mem[_3256 + mem[_3256]] <= test266151307()
                                        require (32 * mem[_3256 + mem[_3256]]) + 32 >= 0 and _3256 + ceil32(return_data.size) + (32 * mem[_3256 + mem[_3256]]) + 32 <= test266151307()
                                        mem[64] = _3256 + ceil32(return_data.size) + (32 * mem[_3256 + mem[_3256]]) + 32
                                        mem[_3256 + ceil32(return_data.size)] = _3328
                                        require return_data.size >= _3303 + (32 * _3328) + 32
                                        t = _3256 + _3303 + 32
                                        u = _3256 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3328:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3328
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3256 + ceil32(return_data.size) + 32]
                else:
                    _1420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1427 = mem[_1420]
                    require mem[_1420] <= test266151307()
                    require _1420 + return_data.size > _1420 + mem[_1420] + 31
                    _1432 = mem[_1420 + mem[_1420]]
                    require mem[_1420 + mem[_1420]] <= test266151307()
                    require (32 * mem[_1420 + mem[_1420]]) + 32 >= 0 and _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32 <= test266151307()
                    mem[64] = _1420 + ceil32(return_data.size) + (32 * mem[_1420 + mem[_1420]]) + 32
                    mem[_1420 + ceil32(return_data.size)] = _1432
                    require return_data.size >= _1427 + (32 * _1432) + 32
                    t = _1420 + _1427 + 32
                    u = _1420 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1432:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _1432
                    require 0 < mem[_720 + 96]
                    mem[_720 + 128] = mem[_1420 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2177 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2194 = mem[_720]
                            mem[mem[64] + 68] = mem[_720]
                            s = 0
                            t = mem[64] + 100
                            u = _720 + 32
                            while s < _2194:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2177 + (32 * _2194) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2801] = return_data.size
                                    mem[_2801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2762 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2802 = mem[_2762]
                                require mem[_2762] <= test266151307()
                                require _2762 + return_data.size > _2762 + mem[_2762] + 31
                                _2828 = mem[_2762 + mem[_2762]]
                                require mem[_2762 + mem[_2762]] <= test266151307()
                                require (32 * mem[_2762 + mem[_2762]]) + 32 >= 0 and _2762 + ceil32(return_data.size) + (32 * mem[_2762 + mem[_2762]]) + 32 <= test266151307()
                                mem[64] = _2762 + ceil32(return_data.size) + (32 * mem[_2762 + mem[_2762]]) + 32
                                mem[_2762 + ceil32(return_data.size)] = _2828
                                require return_data.size >= _2802 + (32 * _2828) + 32
                                t = _2762 + _2802 + 32
                                u = _2762 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2828:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2828
                                require 2 < mem[_720 + 96]
                                mem[_720 + 192] = mem[_2762 + ceil32(return_data.size) + 32]
                    else:
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2178 = mem[_720]
                        mem[mem[64] + 68] = mem[_720]
                        s = 0
                        t = mem[64] + 100
                        u = _720 + 32
                        while s < _2178:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2178) + 32]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2855 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2874 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _720 + 32
                                    while s < _2874:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2855 + (32 * _2874) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3304 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3304] = return_data.size
                                            mem[_3304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3258 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3305 = mem[_3258]
                                        require mem[_3258] <= test266151307()
                                        require _3258 + return_data.size > _3258 + mem[_3258] + 31
                                        _3330 = mem[_3258 + mem[_3258]]
                                        require mem[_3258 + mem[_3258]] <= test266151307()
                                        require (32 * mem[_3258 + mem[_3258]]) + 32 >= 0 and _3258 + ceil32(return_data.size) + (32 * mem[_3258 + mem[_3258]]) + 32 <= test266151307()
                                        mem[64] = _3258 + ceil32(return_data.size) + (32 * mem[_3258 + mem[_3258]]) + 32
                                        mem[_3258 + ceil32(return_data.size)] = _3330
                                        require return_data.size >= _3305 + (32 * _3330) + 32
                                        t = _3258 + _3305 + 32
                                        u = _3258 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3330:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3330
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3258 + ceil32(return_data.size) + 32]
                            else:
                                _2803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2803] = return_data.size
                                mem[_2803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _2856 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _2876 = mem[_720]
                                    mem[mem[64] + 68] = mem[_720]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _720 + 32
                                    while s < _2876:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2856 + (32 * _2876) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3306] = return_data.size
                                            mem[_3306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3259 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3307 = mem[_3259]
                                        require mem[_3259] <= test266151307()
                                        require _3259 + return_data.size > _3259 + mem[_3259] + 31
                                        _3331 = mem[_3259 + mem[_3259]]
                                        require mem[_3259 + mem[_3259]] <= test266151307()
                                        require (32 * mem[_3259 + mem[_3259]]) + 32 >= 0 and _3259 + ceil32(return_data.size) + (32 * mem[_3259 + mem[_3259]]) + 32 <= test266151307()
                                        mem[64] = _3259 + ceil32(return_data.size) + (32 * mem[_3259 + mem[_3259]]) + 32
                                        mem[_3259 + ceil32(return_data.size)] = _3331
                                        require return_data.size >= _3307 + (32 * _3331) + 32
                                        t = _3259 + _3307 + 32
                                        u = _3259 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3331:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3331
                                        require 2 < mem[_720 + 96]
                                        mem[_720 + 192] = mem[_3259 + ceil32(return_data.size) + 32]
                        else:
                            _2763 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2804 = mem[_2763]
                            require mem[_2763] <= test266151307()
                            require _2763 + return_data.size > _2763 + mem[_2763] + 31
                            _2829 = mem[_2763 + mem[_2763]]
                            require mem[_2763 + mem[_2763]] <= test266151307()
                            require (32 * mem[_2763 + mem[_2763]]) + 32 >= 0 and _2763 + ceil32(return_data.size) + (32 * mem[_2763 + mem[_2763]]) + 32 <= test266151307()
                            mem[64] = _2763 + ceil32(return_data.size) + (32 * mem[_2763 + mem[_2763]]) + 32
                            mem[_2763 + ceil32(return_data.size)] = _2829
                            require return_data.size >= _2804 + (32 * _2829) + 32
                            t = _2763 + _2804 + 32
                            u = _2763 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2829:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2829
                            require 1 < mem[_720 + 96]
                            mem[_720 + 160] = mem[_2763 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _3332 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3355 = mem[_720]
                                mem[mem[64] + 68] = mem[_720]
                                s = 0
                                t = mem[64] + 100
                                u = _720 + 32
                                while s < _3355:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3332 + (32 * _3355) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3589 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3589] = return_data.size
                                        mem[_3589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3555 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3590 = mem[_3555]
                                    require mem[_3555] <= test266151307()
                                    require _3555 + return_data.size > _3555 + mem[_3555] + 31
                                    _3603 = mem[_3555 + mem[_3555]]
                                    require mem[_3555 + mem[_3555]] <= test266151307()
                                    require (32 * mem[_3555 + mem[_3555]]) + 32 >= 0 and _3555 + ceil32(return_data.size) + (32 * mem[_3555 + mem[_3555]]) + 32 <= test266151307()
                                    mem[64] = _3555 + ceil32(return_data.size) + (32 * mem[_3555 + mem[_3555]]) + 32
                                    mem[_3555 + ceil32(return_data.size)] = _3603
                                    require return_data.size >= _3590 + (32 * _3603) + 32
                                    t = _3555 + _3590 + 32
                                    u = _3555 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3603:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3603
                                    require 2 < mem[_720 + 96]
                                    mem[_720 + 192] = mem[_3555 + ceil32(return_data.size) + 32]
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
            _1523 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1523]
            mem[_1523 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            require 1 < mem[_1523]
            mem[_1523 + 64] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_1523 + 96] = 3
            mem[64] = _1523 + 224
            mem[_1523 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1523 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_1523 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1523 + 260] = 64
                        mem[_1523 + 292] = mem[_1523]
                        s = 0
                        t = _1523 + 324
                        u = _1523 + 32
                        while s < mem[_1523]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1523 + (32 * mem[_1523]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2145] = return_data.size
                                mem[_2145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2124 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2146 = mem[_2124]
                            require mem[_2124] <= test266151307()
                            require _2124 + return_data.size > _2124 + mem[_2124] + 31
                            _2160 = mem[_2124 + mem[_2124]]
                            require mem[_2124 + mem[_2124]] <= test266151307()
                            require (32 * mem[_2124 + mem[_2124]]) + 32 >= 0 and _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32 <= test266151307()
                            mem[64] = _2124 + ceil32(return_data.size) + (32 * mem[_2124 + mem[_2124]]) + 32
                            mem[_2124 + ceil32(return_data.size)] = _2160
                            require return_data.size >= _2146 + (32 * _2160) + 32
                            t = _2124 + _2146 + 32
                            u = _2124 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2160:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _2160
                            require 2 < mem[_1523 + 96]
                            mem[_1523 + 192] = mem[_2124 + ceil32(return_data.size) + 32]
                else:
                    mem[_1523 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_1523 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1523 + 260] = 64
                    mem[_1523 + 292] = mem[_1523]
                    s = 0
                    t = _1523 + 324
                    u = _1523 + 32
                    while s < mem[_1523]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1523 + (32 * mem[_1523]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2181 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2196 = mem[_1523]
                                mem[mem[64] + 68] = mem[_1523]
                                s = 0
                                t = mem[64] + 100
                                u = _1523 + 32
                                while s < _2196:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2181 + (32 * _2196) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2805 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2805] = return_data.size
                                        mem[_2805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2765 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2806 = mem[_2765]
                                    require mem[_2765] <= test266151307()
                                    require _2765 + return_data.size > _2765 + mem[_2765] + 31
                                    _2831 = mem[_2765 + mem[_2765]]
                                    require mem[_2765 + mem[_2765]] <= test266151307()
                                    require (32 * mem[_2765 + mem[_2765]]) + 32 >= 0 and _2765 + ceil32(return_data.size) + (32 * mem[_2765 + mem[_2765]]) + 32 <= test266151307()
                                    mem[64] = _2765 + ceil32(return_data.size) + (32 * mem[_2765 + mem[_2765]]) + 32
                                    mem[_2765 + ceil32(return_data.size)] = _2831
                                    require return_data.size >= _2806 + (32 * _2831) + 32
                                    t = _2765 + _2806 + 32
                                    u = _2765 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2831:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2831
                                    require 2 < mem[_1523 + 96]
                                    mem[_1523 + 192] = mem[_2765 + ceil32(return_data.size) + 32]
                        else:
                            _2147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2147] = return_data.size
                            mem[_2147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2198 = mem[_1523]
                                mem[mem[64] + 68] = mem[_1523]
                                s = 0
                                t = mem[64] + 100
                                u = _1523 + 32
                                while s < _2198:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2198) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2807 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2807] = return_data.size
                                        mem[_2807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2766 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2808 = mem[_2766]
                                    require mem[_2766] <= test266151307()
                                    require _2766 + return_data.size > _2766 + mem[_2766] + 31
                                    _2832 = mem[_2766 + mem[_2766]]
                                    require mem[_2766 + mem[_2766]] <= test266151307()
                                    require (32 * mem[_2766 + mem[_2766]]) + 32 >= 0 and _2766 + ceil32(return_data.size) + (32 * mem[_2766 + mem[_2766]]) + 32 <= test266151307()
                                    mem[64] = _2766 + ceil32(return_data.size) + (32 * mem[_2766 + mem[_2766]]) + 32
                                    mem[_2766 + ceil32(return_data.size)] = _2832
                                    require return_data.size >= _2808 + (32 * _2832) + 32
                                    t = _2766 + _2808 + 32
                                    u = _2766 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2832:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2832
                                    require 2 < mem[_1523 + 96]
                                    mem[_1523 + 192] = mem[_2766 + ceil32(return_data.size) + 32]
                    else:
                        _2125 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2148 = mem[_2125]
                        require mem[_2125] <= test266151307()
                        require _2125 + return_data.size > _2125 + mem[_2125] + 31
                        _2161 = mem[_2125 + mem[_2125]]
                        require mem[_2125 + mem[_2125]] <= test266151307()
                        require (32 * mem[_2125 + mem[_2125]]) + 32 >= 0 and _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32 <= test266151307()
                        mem[64] = _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32
                        mem[_2125 + ceil32(return_data.size)] = _2161
                        require return_data.size >= _2148 + (32 * _2161) + 32
                        t = _2125 + _2148 + 32
                        u = _2125 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2161:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 0 < _2161
                        require 1 < mem[_1523 + 96]
                        mem[_1523 + 160] = mem[_2125 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2862 = mem[_1523]
                            mem[mem[64] + 68] = mem[_1523]
                            s = 0
                            t = mem[64] + 100
                            u = _1523 + 32
                            while s < _2862:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2862) + 32]
                            if not ext_call.success:
                                if return_data.size:
                                    _3308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3308] = return_data.size
                                    mem[_3308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3263 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3309 = mem[_3263]
                                require mem[_3263] <= test266151307()
                                require _3263 + return_data.size > _3263 + mem[_3263] + 31
                                _3335 = mem[_3263 + mem[_3263]]
                                require mem[_3263 + mem[_3263]] <= test266151307()
                                require (32 * mem[_3263 + mem[_3263]]) + 32 >= 0 and _3263 + ceil32(return_data.size) + (32 * mem[_3263 + mem[_3263]]) + 32 <= test266151307()
                                mem[64] = _3263 + ceil32(return_data.size) + (32 * mem[_3263 + mem[_3263]]) + 32
                                mem[_3263 + ceil32(return_data.size)] = _3335
                                require return_data.size >= _3309 + (32 * _3335) + 32
                                t = _3263 + _3309 + 32
                                u = _3263 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3335:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3335
                                require 2 < mem[_1523 + 96]
                                mem[_1523 + 192] = mem[_3263 + ceil32(return_data.size) + 32]
            else:
                mem[_1523 + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_1523 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1523 + 260] = 64
                mem[_1523 + 292] = mem[_1523]
                s = 0
                t = _1523 + 324
                u = _1523 + 32
                while s < mem[_1523]:
                    mem[t] = mem[u + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1523 + (32 * mem[_1523]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2199 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2206 = mem[_1523]
                                mem[mem[64] + 68] = mem[_1523]
                                s = 0
                                t = mem[64] + 100
                                u = _1523 + 32
                                while s < _2206:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2199 + (32 * _2206) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2809 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2809] = return_data.size
                                        mem[_2809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2768 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2810 = mem[_2768]
                                    require mem[_2768] <= test266151307()
                                    require _2768 + return_data.size > _2768 + mem[_2768] + 31
                                    _2834 = mem[_2768 + mem[_2768]]
                                    require mem[_2768 + mem[_2768]] <= test266151307()
                                    require (32 * mem[_2768 + mem[_2768]]) + 32 >= 0 and _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32 <= test266151307()
                                    mem[64] = _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32
                                    mem[_2768 + ceil32(return_data.size)] = _2834
                                    require return_data.size >= _2810 + (32 * _2834) + 32
                                    t = _2768 + _2810 + 32
                                    u = _2768 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2834:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2834
                                    require 2 < mem[_1523 + 96]
                                    mem[_1523 + 192] = mem[_2768 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2200 = mem[_1523]
                            mem[mem[64] + 68] = mem[_1523]
                            s = 0
                            t = mem[64] + 100
                            u = _1523 + 32
                            while s < _2200:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2200) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2865 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2878 = mem[_1523]
                                        mem[mem[64] + 68] = mem[_1523]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1523 + 32
                                        while s < _2878:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2865 + (32 * _2878) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3310 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3310] = return_data.size
                                                mem[_3310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3265 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3311 = mem[_3265]
                                            require mem[_3265] <= test266151307()
                                            require _3265 + return_data.size > _3265 + mem[_3265] + 31
                                            _3337 = mem[_3265 + mem[_3265]]
                                            require mem[_3265 + mem[_3265]] <= test266151307()
                                            require (32 * mem[_3265 + mem[_3265]]) + 32 >= 0 and _3265 + ceil32(return_data.size) + (32 * mem[_3265 + mem[_3265]]) + 32 <= test266151307()
                                            mem[64] = _3265 + ceil32(return_data.size) + (32 * mem[_3265 + mem[_3265]]) + 32
                                            mem[_3265 + ceil32(return_data.size)] = _3337
                                            require return_data.size >= _3311 + (32 * _3337) + 32
                                            t = _3265 + _3311 + 32
                                            u = _3265 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3337:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3337
                                            require 2 < mem[_1523 + 96]
                                            mem[_1523 + 192] = mem[_3265 + ceil32(return_data.size) + 32]
                                else:
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2811] = return_data.size
                                    mem[_2811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2866 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2880 = mem[_1523]
                                        mem[mem[64] + 68] = mem[_1523]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1523 + 32
                                        while s < _2880:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2866 + (32 * _2880) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3312 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3312] = return_data.size
                                                mem[_3312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3266 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3313 = mem[_3266]
                                            require mem[_3266] <= test266151307()
                                            require _3266 + return_data.size > _3266 + mem[_3266] + 31
                                            _3338 = mem[_3266 + mem[_3266]]
                                            require mem[_3266 + mem[_3266]] <= test266151307()
                                            require (32 * mem[_3266 + mem[_3266]]) + 32 >= 0 and _3266 + ceil32(return_data.size) + (32 * mem[_3266 + mem[_3266]]) + 32 <= test266151307()
                                            mem[64] = _3266 + ceil32(return_data.size) + (32 * mem[_3266 + mem[_3266]]) + 32
                                            mem[_3266 + ceil32(return_data.size)] = _3338
                                            require return_data.size >= _3313 + (32 * _3338) + 32
                                            t = _3266 + _3313 + 32
                                            u = _3266 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3338:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3338
                                            require 2 < mem[_1523 + 96]
                                            mem[_1523 + 192] = mem[_3266 + ceil32(return_data.size) + 32]
                            else:
                                _2769 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2812 = mem[_2769]
                                require mem[_2769] <= test266151307()
                                require _2769 + return_data.size > _2769 + mem[_2769] + 31
                                _2835 = mem[_2769 + mem[_2769]]
                                require mem[_2769 + mem[_2769]] <= test266151307()
                                require (32 * mem[_2769 + mem[_2769]]) + 32 >= 0 and _2769 + ceil32(return_data.size) + (32 * mem[_2769 + mem[_2769]]) + 32 <= test266151307()
                                mem[64] = _2769 + ceil32(return_data.size) + (32 * mem[_2769 + mem[_2769]]) + 32
                                mem[_2769 + ceil32(return_data.size)] = _2835
                                require return_data.size >= _2812 + (32 * _2835) + 32
                                t = _2769 + _2812 + 32
                                u = _2769 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2835:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2835
                                require 1 < mem[_1523 + 96]
                                mem[_1523 + 160] = mem[_2769 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3339 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3363 = mem[_1523]
                                    mem[mem[64] + 68] = mem[_1523]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1523 + 32
                                    while s < _3363:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3339 + (32 * _3363) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3591 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3591] = return_data.size
                                            mem[_3591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3559 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3592 = mem[_3559]
                                        require mem[_3559] <= test266151307()
                                        require _3559 + return_data.size > _3559 + mem[_3559] + 31
                                        _3607 = mem[_3559 + mem[_3559]]
                                        require mem[_3559 + mem[_3559]] <= test266151307()
                                        require (32 * mem[_3559 + mem[_3559]]) + 32 >= 0 and _3559 + ceil32(return_data.size) + (32 * mem[_3559 + mem[_3559]]) + 32 <= test266151307()
                                        mem[64] = _3559 + ceil32(return_data.size) + (32 * mem[_3559 + mem[_3559]]) + 32
                                        mem[_3559 + ceil32(return_data.size)] = _3607
                                        require return_data.size >= _3592 + (32 * _3607) + 32
                                        t = _3559 + _3592 + 32
                                        u = _3559 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3607:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3607
                                        require 2 < mem[_1523 + 96]
                                        mem[_1523 + 192] = mem[_3559 + ceil32(return_data.size) + 32]
                    else:
                        _2149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2149] = return_data.size
                        mem[_2149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2201 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2208 = mem[_1523]
                                mem[mem[64] + 68] = mem[_1523]
                                s = 0
                                t = mem[64] + 100
                                u = _1523 + 32
                                while s < _2208:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2201 + (32 * _2208) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2813] = return_data.size
                                        mem[_2813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2770 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2814 = mem[_2770]
                                    require mem[_2770] <= test266151307()
                                    require _2770 + return_data.size > _2770 + mem[_2770] + 31
                                    _2836 = mem[_2770 + mem[_2770]]
                                    require mem[_2770 + mem[_2770]] <= test266151307()
                                    require (32 * mem[_2770 + mem[_2770]]) + 32 >= 0 and _2770 + ceil32(return_data.size) + (32 * mem[_2770 + mem[_2770]]) + 32 <= test266151307()
                                    mem[64] = _2770 + ceil32(return_data.size) + (32 * mem[_2770 + mem[_2770]]) + 32
                                    mem[_2770 + ceil32(return_data.size)] = _2836
                                    require return_data.size >= _2814 + (32 * _2836) + 32
                                    t = _2770 + _2814 + 32
                                    u = _2770 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2836:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _2836
                                    require 2 < mem[_1523 + 96]
                                    mem[_1523 + 192] = mem[_2770 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2202 = mem[_1523]
                            mem[mem[64] + 68] = mem[_1523]
                            s = 0
                            t = mem[64] + 100
                            u = _1523 + 32
                            while s < _2202:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2202) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2869 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2882 = mem[_1523]
                                        mem[mem[64] + 68] = mem[_1523]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1523 + 32
                                        while s < _2882:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2869 + (32 * _2882) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3314 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3314] = return_data.size
                                                mem[_3314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3269 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3315 = mem[_3269]
                                            require mem[_3269] <= test266151307()
                                            require _3269 + return_data.size > _3269 + mem[_3269] + 31
                                            _3341 = mem[_3269 + mem[_3269]]
                                            require mem[_3269 + mem[_3269]] <= test266151307()
                                            require (32 * mem[_3269 + mem[_3269]]) + 32 >= 0 and _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32 <= test266151307()
                                            mem[64] = _3269 + ceil32(return_data.size) + (32 * mem[_3269 + mem[_3269]]) + 32
                                            mem[_3269 + ceil32(return_data.size)] = _3341
                                            require return_data.size >= _3315 + (32 * _3341) + 32
                                            t = _3269 + _3315 + 32
                                            u = _3269 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3341:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3341
                                            require 2 < mem[_1523 + 96]
                                            mem[_1523 + 192] = mem[_3269 + ceil32(return_data.size) + 32]
                                else:
                                    _2815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2815] = return_data.size
                                    mem[_2815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2870 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2884 = mem[_1523]
                                        mem[mem[64] + 68] = mem[_1523]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1523 + 32
                                        while s < _2884:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2870 + (32 * _2884) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3316 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3316] = return_data.size
                                                mem[_3316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3270 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3317 = mem[_3270]
                                            require mem[_3270] <= test266151307()
                                            require _3270 + return_data.size > _3270 + mem[_3270] + 31
                                            _3342 = mem[_3270 + mem[_3270]]
                                            require mem[_3270 + mem[_3270]] <= test266151307()
                                            require (32 * mem[_3270 + mem[_3270]]) + 32 >= 0 and _3270 + ceil32(return_data.size) + (32 * mem[_3270 + mem[_3270]]) + 32 <= test266151307()
                                            mem[64] = _3270 + ceil32(return_data.size) + (32 * mem[_3270 + mem[_3270]]) + 32
                                            mem[_3270 + ceil32(return_data.size)] = _3342
                                            require return_data.size >= _3317 + (32 * _3342) + 32
                                            t = _3270 + _3317 + 32
                                            u = _3270 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3342:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require 0 < _3342
                                            require 2 < mem[_1523 + 96]
                                            mem[_1523 + 192] = mem[_3270 + ceil32(return_data.size) + 32]
                            else:
                                _2771 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2816 = mem[_2771]
                                require mem[_2771] <= test266151307()
                                require _2771 + return_data.size > _2771 + mem[_2771] + 31
                                _2837 = mem[_2771 + mem[_2771]]
                                require mem[_2771 + mem[_2771]] <= test266151307()
                                require (32 * mem[_2771 + mem[_2771]]) + 32 >= 0 and _2771 + ceil32(return_data.size) + (32 * mem[_2771 + mem[_2771]]) + 32 <= test266151307()
                                mem[64] = _2771 + ceil32(return_data.size) + (32 * mem[_2771 + mem[_2771]]) + 32
                                mem[_2771 + ceil32(return_data.size)] = _2837
                                require return_data.size >= _2816 + (32 * _2837) + 32
                                t = _2771 + _2816 + 32
                                u = _2771 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2837:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _2837
                                require 1 < mem[_1523 + 96]
                                mem[_1523 + 160] = mem[_2771 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3343 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3369 = mem[_1523]
                                    mem[mem[64] + 68] = mem[_1523]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1523 + 32
                                    while s < _3369:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3343 + (32 * _3369) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3593 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3593] = return_data.size
                                            mem[_3593 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3562 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3594 = mem[_3562]
                                        require mem[_3562] <= test266151307()
                                        require _3562 + return_data.size > _3562 + mem[_3562] + 31
                                        _3610 = mem[_3562 + mem[_3562]]
                                        require mem[_3562 + mem[_3562]] <= test266151307()
                                        require (32 * mem[_3562 + mem[_3562]]) + 32 >= 0 and _3562 + ceil32(return_data.size) + (32 * mem[_3562 + mem[_3562]]) + 32 <= test266151307()
                                        mem[64] = _3562 + ceil32(return_data.size) + (32 * mem[_3562 + mem[_3562]]) + 32
                                        mem[_3562 + ceil32(return_data.size)] = _3610
                                        require return_data.size >= _3594 + (32 * _3610) + 32
                                        t = _3562 + _3594 + 32
                                        u = _3562 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3610:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3610
                                        require 2 < mem[_1523 + 96]
                                        mem[_1523 + 192] = mem[_3562 + ceil32(return_data.size) + 32]
                else:
                    _2126 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2150 = mem[_2126]
                    require mem[_2126] <= test266151307()
                    require _2126 + return_data.size > _2126 + mem[_2126] + 31
                    _2162 = mem[_2126 + mem[_2126]]
                    require mem[_2126 + mem[_2126]] <= test266151307()
                    require (32 * mem[_2126 + mem[_2126]]) + 32 >= 0 and _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32 <= test266151307()
                    mem[64] = _2126 + ceil32(return_data.size) + (32 * mem[_2126 + mem[_2126]]) + 32
                    mem[_2126 + ceil32(return_data.size)] = _2162
                    require return_data.size >= _2150 + (32 * _2162) + 32
                    t = _2126 + _2150 + 32
                    u = _2126 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2162:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 0 < _2162
                    require 0 < mem[_1523 + 96]
                    mem[_1523 + 128] = mem[_2126 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2871 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2886 = mem[_1523]
                            mem[mem[64] + 68] = mem[_1523]
                            s = 0
                            t = mem[64] + 100
                            u = _1523 + 32
                            while s < _2886:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2871 + (32 * _2886) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3318] = return_data.size
                                    mem[_3318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3272 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3319 = mem[_3272]
                                require mem[_3272] <= test266151307()
                                require _3272 + return_data.size > _3272 + mem[_3272] + 31
                                _3344 = mem[_3272 + mem[_3272]]
                                require mem[_3272 + mem[_3272]] <= test266151307()
                                require (32 * mem[_3272 + mem[_3272]]) + 32 >= 0 and _3272 + ceil32(return_data.size) + (32 * mem[_3272 + mem[_3272]]) + 32 <= test266151307()
                                mem[64] = _3272 + ceil32(return_data.size) + (32 * mem[_3272 + mem[_3272]]) + 32
                                mem[_3272 + ceil32(return_data.size)] = _3344
                                require return_data.size >= _3319 + (32 * _3344) + 32
                                t = _3272 + _3319 + 32
                                u = _3272 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3344:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require 0 < _3344
                                require 2 < mem[_1523 + 96]
                                mem[_1523 + 192] = mem[_3272 + ceil32(return_data.size) + 32]
                    else:
                        _2838 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2872 = mem[_1523]
                        mem[mem[64] + 68] = mem[_1523]
                        s = 0
                        t = mem[64] + 100
                        u = _1523 + 32
                        while s < _2872:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2838 + (32 * _2872) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3375 = mem[_1523]
                                    mem[mem[64] + 68] = mem[_1523]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1523 + 32
                                    while s < _3375:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3375) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3595 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3595] = return_data.size
                                            mem[_3595 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3564 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3596 = mem[_3564]
                                        require mem[_3564] <= test266151307()
                                        require _3564 + return_data.size > _3564 + mem[_3564] + 31
                                        _3612 = mem[_3564 + mem[_3564]]
                                        require mem[_3564 + mem[_3564]] <= test266151307()
                                        require (32 * mem[_3564 + mem[_3564]]) + 32 >= 0 and _3564 + ceil32(return_data.size) + (32 * mem[_3564 + mem[_3564]]) + 32 <= test266151307()
                                        mem[64] = _3564 + ceil32(return_data.size) + (32 * mem[_3564 + mem[_3564]]) + 32
                                        mem[_3564 + ceil32(return_data.size)] = _3612
                                        require return_data.size >= _3596 + (32 * _3612) + 32
                                        t = _3564 + _3596 + 32
                                        u = _3564 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3612:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3612
                                        require 2 < mem[_1523 + 96]
                                        mem[_1523 + 192] = mem[_3564 + ceil32(return_data.size) + 32]
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
                                    _3377 = mem[_1523]
                                    mem[mem[64] + 68] = mem[_1523]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1523 + 32
                                    while s < _3377:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3373 + (32 * _3377) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3597] = return_data.size
                                            mem[_3597 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3565 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3598 = mem[_3565]
                                        require mem[_3565] <= test266151307()
                                        require _3565 + return_data.size > _3565 + mem[_3565] + 31
                                        _3613 = mem[_3565 + mem[_3565]]
                                        require mem[_3565 + mem[_3565]] <= test266151307()
                                        require (32 * mem[_3565 + mem[_3565]]) + 32 >= 0 and _3565 + ceil32(return_data.size) + (32 * mem[_3565 + mem[_3565]]) + 32 <= test266151307()
                                        mem[64] = _3565 + ceil32(return_data.size) + (32 * mem[_3565 + mem[_3565]]) + 32
                                        mem[_3565 + ceil32(return_data.size)] = _3613
                                        require return_data.size >= _3598 + (32 * _3613) + 32
                                        t = _3565 + _3598 + 32
                                        u = _3565 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3613:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require 0 < _3613
                                        require 2 < mem[_1523 + 96]
                                        mem[_1523 + 192] = mem[_3565 + ceil32(return_data.size) + 32]
                        else:
                            _3273 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3321 = mem[_3273]
                            require mem[_3273] <= test266151307()
                            require _3273 + return_data.size > _3273 + mem[_3273] + 31
                            _3345 = mem[_3273 + mem[_3273]]
                            require mem[_3273 + mem[_3273]] <= test266151307()
                            require (32 * mem[_3273 + mem[_3273]]) + 32 >= 0 and _3273 + ceil32(return_data.size) + (32 * mem[_3273 + mem[_3273]]) + 32 <= test266151307()
                            mem[64] = _3273 + ceil32(return_data.size) + (32 * mem[_3273 + mem[_3273]]) + 32
                            mem[_3273 + ceil32(return_data.size)] = _3345
                            require return_data.size >= _3321 + (32 * _3345) + 32
                            t = _3273 + _3321 + 32
                            u = _3273 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3345:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 0 < _3345
                            require 1 < mem[_1523 + 96]
                            mem[_1523 + 160] = mem[_3273 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3626 = mem[_1523]
                                mem[mem[64] + 68] = mem[_1523]
                                s = 0
                                t = mem[64] + 100
                                u = _1523 + 32
                                while s < _3626:
                                    mem[t] = mem[u + 12 len 20]
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
                                    _3683 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3695 = mem[_3683]
                                    require mem[_3683] <= test266151307()
                                    require _3683 + return_data.size > _3683 + mem[_3683] + 31
                                    _3701 = mem[_3683 + mem[_3683]]
                                    require mem[_3683 + mem[_3683]] <= test266151307()
                                    require (32 * mem[_3683 + mem[_3683]]) + 32 >= 0 and _3683 + ceil32(return_data.size) + (32 * mem[_3683 + mem[_3683]]) + 32 <= test266151307()
                                    mem[64] = _3683 + ceil32(return_data.size) + (32 * mem[_3683 + mem[_3683]]) + 32
                                    mem[_3683 + ceil32(return_data.size)] = _3701
                                    require return_data.size >= _3695 + (32 * _3701) + 32
                                    t = _3683 + _3695 + 32
                                    u = _3683 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3701:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 0 < _3701
                                    require 2 < mem[_1523 + 96]
                                    mem[_1523 + 192] = mem[_3683 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1523 + 96
            idx = idx + 1
            continue 
        _1415 = mem[64]
        mem[mem[64]] = 32
        _1416 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1416:
            mem[t] = u + -_1415 - 64
            _2099 = mem[s]
            _2110 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2099 + 32
            x = u + 32
            while v < _2110:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2110 + 1
            w = _2099 + (32 * _2110) + 64
            t = t + 32
            u = u + (32 * _2110) + 32
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
                        t = _762 + 324
                        u = _762 + 32
                        while s < mem[_762]:
                            mem[t] = mem[u + 12 len 20]
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
                                _1506 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1506] = return_data.size
                                mem[_1506 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1502 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1507 = mem[_1502]
                            require mem[_1502] <= test266151307()
                            require _1502 + return_data.size > _1502 + mem[_1502] + 31
                            _1514 = mem[_1502 + mem[_1502]]
                            require mem[_1502 + mem[_1502]] <= test266151307()
                            require (32 * mem[_1502 + mem[_1502]]) + 32 >= 0 and _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32 <= test266151307()
                            mem[64] = _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32
                            mem[_1502 + ceil32(return_data.size)] = _1514
                            require return_data.size >= _1507 + (32 * _1514) + 32
                            t = _1502 + _1507 + 32
                            u = _1502 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1514:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _1514 - 1 < _1514
                            require 2 < mem[_762 + 96]
                            mem[_762 + 192] = mem[(32 * _1514 - 1) + _1502 + ceil32(return_data.size) + 32]
                else:
                    mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_762 + 260] = 64
                    mem[_762 + 292] = mem[_762]
                    s = 0
                    t = _762 + 324
                    u = _762 + 32
                    while s < mem[_762]:
                        mem[t] = mem[u + 12 len 20]
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
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1525 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = mem[64] + 100
                                u = _762 + 32
                                while s < _1525:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1525) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2262 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2262] = return_data.size
                                        mem[_2262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2242 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2263 = mem[_2242]
                                    require mem[_2242] <= test266151307()
                                    require _2242 + return_data.size > _2242 + mem[_2242] + 31
                                    _2281 = mem[_2242 + mem[_2242]]
                                    require mem[_2242 + mem[_2242]] <= test266151307()
                                    require (32 * mem[_2242 + mem[_2242]]) + 32 >= 0 and _2242 + ceil32(return_data.size) + (32 * mem[_2242 + mem[_2242]]) + 32 <= test266151307()
                                    mem[64] = _2242 + ceil32(return_data.size) + (32 * mem[_2242 + mem[_2242]]) + 32
                                    mem[_2242 + ceil32(return_data.size)] = _2281
                                    require return_data.size >= _2263 + (32 * _2281) + 32
                                    t = _2242 + _2263 + 32
                                    u = _2242 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2281:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2281 - 1 < _2281
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2281 - 1) + _2242 + ceil32(return_data.size) + 32]
                        else:
                            _1508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1508] = return_data.size
                            mem[_1508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1527 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = mem[64] + 100
                                u = _762 + 32
                                while s < _1527:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1527) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2264 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2264] = return_data.size
                                        mem[_2264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2243 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2265 = mem[_2243]
                                    require mem[_2243] <= test266151307()
                                    require _2243 + return_data.size > _2243 + mem[_2243] + 31
                                    _2282 = mem[_2243 + mem[_2243]]
                                    require mem[_2243 + mem[_2243]] <= test266151307()
                                    require (32 * mem[_2243 + mem[_2243]]) + 32 >= 0 and _2243 + ceil32(return_data.size) + (32 * mem[_2243 + mem[_2243]]) + 32 <= test266151307()
                                    mem[64] = _2243 + ceil32(return_data.size) + (32 * mem[_2243 + mem[_2243]]) + 32
                                    mem[_2243 + ceil32(return_data.size)] = _2282
                                    require return_data.size >= _2265 + (32 * _2282) + 32
                                    t = _2243 + _2265 + 32
                                    u = _2243 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2282:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2282 - 1 < _2282
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2282 - 1) + _2243 + ceil32(return_data.size) + 32]
                    else:
                        _1503 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1509 = mem[_1503]
                        require mem[_1503] <= test266151307()
                        require _1503 + return_data.size > _1503 + mem[_1503] + 31
                        _1515 = mem[_1503 + mem[_1503]]
                        require mem[_1503 + mem[_1503]] <= test266151307()
                        require (32 * mem[_1503 + mem[_1503]]) + 32 >= 0 and _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32 <= test266151307()
                        mem[64] = _1503 + ceil32(return_data.size) + (32 * mem[_1503 + mem[_1503]]) + 32
                        mem[_1503 + ceil32(return_data.size)] = _1515
                        require return_data.size >= _1509 + (32 * _1515) + 32
                        t = _1503 + _1509 + 32
                        u = _1503 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1515:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _1515 - 1 < _1515
                        require 1 < mem[_762 + 96]
                        mem[_762 + 160] = mem[(32 * _1515 - 1) + _1503 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2283 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2297 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = mem[64] + 100
                            u = _762 + 32
                            while s < _2297:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2283 + (32 * _2297) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2968 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2968] = return_data.size
                                    mem[_2968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2923 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2969 = mem[_2923]
                                require mem[_2923] <= test266151307()
                                require _2923 + return_data.size > _2923 + mem[_2923] + 31
                                _2996 = mem[_2923 + mem[_2923]]
                                require mem[_2923 + mem[_2923]] <= test266151307()
                                require (32 * mem[_2923 + mem[_2923]]) + 32 >= 0 and _2923 + ceil32(return_data.size) + (32 * mem[_2923 + mem[_2923]]) + 32 <= test266151307()
                                mem[64] = _2923 + ceil32(return_data.size) + (32 * mem[_2923 + mem[_2923]]) + 32
                                mem[_2923 + ceil32(return_data.size)] = _2996
                                require return_data.size >= _2969 + (32 * _2996) + 32
                                t = _2923 + _2969 + 32
                                u = _2923 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2996:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2996 - 1 < _2996
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _2996 - 1) + _2923 + ceil32(return_data.size) + 32]
            else:
                mem[_762 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_762 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_762 + 260] = 64
                mem[_762 + 292] = mem[_762]
                s = 0
                t = _762 + 324
                u = _762 + 32
                while s < mem[_762]:
                    mem[t] = mem[u + 12 len 20]
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
                                _1528 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1533 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = mem[64] + 100
                                u = _762 + 32
                                while s < _1533:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1528 + (32 * _1533) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2266 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2266] = return_data.size
                                        mem[_2266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2246 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2267 = mem[_2246]
                                    require mem[_2246] <= test266151307()
                                    require _2246 + return_data.size > _2246 + mem[_2246] + 31
                                    _2284 = mem[_2246 + mem[_2246]]
                                    require mem[_2246 + mem[_2246]] <= test266151307()
                                    require (32 * mem[_2246 + mem[_2246]]) + 32 >= 0 and _2246 + ceil32(return_data.size) + (32 * mem[_2246 + mem[_2246]]) + 32 <= test266151307()
                                    mem[64] = _2246 + ceil32(return_data.size) + (32 * mem[_2246 + mem[_2246]]) + 32
                                    mem[_2246 + ceil32(return_data.size)] = _2284
                                    require return_data.size >= _2267 + (32 * _2284) + 32
                                    t = _2246 + _2267 + 32
                                    u = _2246 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2284:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2284 - 1 < _2284
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2284 - 1) + _2246 + ceil32(return_data.size) + 32]
                        else:
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1529 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = mem[64] + 100
                            u = _762 + 32
                            while s < _1529:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _1529) + 32]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2300 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2315 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _762 + 32
                                        while s < _2315:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2300 + (32 * _2315) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2970 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2970] = return_data.size
                                                mem[_2970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2926 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2971 = mem[_2926]
                                            require mem[_2926] <= test266151307()
                                            require _2926 + return_data.size > _2926 + mem[_2926] + 31
                                            _2998 = mem[_2926 + mem[_2926]]
                                            require mem[_2926 + mem[_2926]] <= test266151307()
                                            require (32 * mem[_2926 + mem[_2926]]) + 32 >= 0 and _2926 + ceil32(return_data.size) + (32 * mem[_2926 + mem[_2926]]) + 32 <= test266151307()
                                            mem[64] = _2926 + ceil32(return_data.size) + (32 * mem[_2926 + mem[_2926]]) + 32
                                            mem[_2926 + ceil32(return_data.size)] = _2998
                                            require return_data.size >= _2971 + (32 * _2998) + 32
                                            t = _2926 + _2971 + 32
                                            u = _2926 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2998:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _2998 - 1 < _2998
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _2998 - 1) + _2926 + ceil32(return_data.size) + 32]
                                else:
                                    _2268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2268] = return_data.size
                                    mem[_2268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _2301 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2317 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _762 + 32
                                        while s < _2317:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2301 + (32 * _2317) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2972 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2972] = return_data.size
                                                mem[_2972 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2927 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2973 = mem[_2927]
                                            require mem[_2927] <= test266151307()
                                            require _2927 + return_data.size > _2927 + mem[_2927] + 31
                                            _2999 = mem[_2927 + mem[_2927]]
                                            require mem[_2927 + mem[_2927]] <= test266151307()
                                            require (32 * mem[_2927 + mem[_2927]]) + 32 >= 0 and _2927 + ceil32(return_data.size) + (32 * mem[_2927 + mem[_2927]]) + 32 <= test266151307()
                                            mem[64] = _2927 + ceil32(return_data.size) + (32 * mem[_2927 + mem[_2927]]) + 32
                                            mem[_2927 + ceil32(return_data.size)] = _2999
                                            require return_data.size >= _2973 + (32 * _2999) + 32
                                            t = _2927 + _2973 + 32
                                            u = _2927 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2999:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _2999 - 1 < _2999
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _2999 - 1) + _2927 + ceil32(return_data.size) + 32]
                            else:
                                _2247 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2269 = mem[_2247]
                                require mem[_2247] <= test266151307()
                                require _2247 + return_data.size > _2247 + mem[_2247] + 31
                                _2285 = mem[_2247 + mem[_2247]]
                                require mem[_2247 + mem[_2247]] <= test266151307()
                                require (32 * mem[_2247 + mem[_2247]]) + 32 >= 0 and _2247 + ceil32(return_data.size) + (32 * mem[_2247 + mem[_2247]]) + 32 <= test266151307()
                                mem[64] = _2247 + ceil32(return_data.size) + (32 * mem[_2247 + mem[_2247]]) + 32
                                mem[_2247 + ceil32(return_data.size)] = _2285
                                require return_data.size >= _2269 + (32 * _2285) + 32
                                t = _2247 + _2269 + 32
                                u = _2247 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2285:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2285 - 1 < _2285
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2285 - 1) + _2247 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3000 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3023 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _762 + 32
                                    while s < _3023:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3000 + (32 * _3023) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3520 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3520] = return_data.size
                                            mem[_3520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3463 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3521 = mem[_3463]
                                        require mem[_3463] <= test266151307()
                                        require _3463 + return_data.size > _3463 + mem[_3463] + 31
                                        _3545 = mem[_3463 + mem[_3463]]
                                        require mem[_3463 + mem[_3463]] <= test266151307()
                                        require (32 * mem[_3463 + mem[_3463]]) + 32 >= 0 and _3463 + ceil32(return_data.size) + (32 * mem[_3463 + mem[_3463]]) + 32 <= test266151307()
                                        mem[64] = _3463 + ceil32(return_data.size) + (32 * mem[_3463 + mem[_3463]]) + 32
                                        mem[_3463 + ceil32(return_data.size)] = _3545
                                        require return_data.size >= _3521 + (32 * _3545) + 32
                                        t = _3463 + _3521 + 32
                                        u = _3463 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3545:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3545 - 1 < _3545
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3545 - 1) + _3463 + ceil32(return_data.size) + 32]
                    else:
                        _1510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1510] = return_data.size
                        mem[_1510 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _1530 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _1535 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = mem[64] + 100
                                u = _762 + 32
                                while s < _1535:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1530 + (32 * _1535) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2270 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2270] = return_data.size
                                        mem[_2270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2248 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2271 = mem[_2248]
                                    require mem[_2248] <= test266151307()
                                    require _2248 + return_data.size > _2248 + mem[_2248] + 31
                                    _2286 = mem[_2248 + mem[_2248]]
                                    require mem[_2248 + mem[_2248]] <= test266151307()
                                    require (32 * mem[_2248 + mem[_2248]]) + 32 >= 0 and _2248 + ceil32(return_data.size) + (32 * mem[_2248 + mem[_2248]]) + 32 <= test266151307()
                                    mem[64] = _2248 + ceil32(return_data.size) + (32 * mem[_2248 + mem[_2248]]) + 32
                                    mem[_2248 + ceil32(return_data.size)] = _2286
                                    require return_data.size >= _2271 + (32 * _2286) + 32
                                    t = _2248 + _2271 + 32
                                    u = _2248 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2286:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _2286 - 1 < _2286
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _2286 - 1) + _2248 + ceil32(return_data.size) + 32]
                        else:
                            _1523 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _1531 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = mem[64] + 100
                            u = _762 + 32
                            while s < _1531:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1523 + (32 * _1531) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2319 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _762 + 32
                                        while s < _2319:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2319) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2974] = return_data.size
                                                mem[_2974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2932 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2975 = mem[_2932]
                                            require mem[_2932] <= test266151307()
                                            require _2932 + return_data.size > _2932 + mem[_2932] + 31
                                            _3002 = mem[_2932 + mem[_2932]]
                                            require mem[_2932 + mem[_2932]] <= test266151307()
                                            require (32 * mem[_2932 + mem[_2932]]) + 32 >= 0 and _2932 + ceil32(return_data.size) + (32 * mem[_2932 + mem[_2932]]) + 32 <= test266151307()
                                            mem[64] = _2932 + ceil32(return_data.size) + (32 * mem[_2932 + mem[_2932]]) + 32
                                            mem[_2932 + ceil32(return_data.size)] = _3002
                                            require return_data.size >= _2975 + (32 * _3002) + 32
                                            t = _2932 + _2975 + 32
                                            u = _2932 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3002:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3002 - 1 < _3002
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3002 - 1) + _2932 + ceil32(return_data.size) + 32]
                                else:
                                    _2272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2272] = return_data.size
                                    mem[_2272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _2321 = mem[_762]
                                        mem[mem[64] + 68] = mem[_762]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _762 + 32
                                        while s < _2321:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2321) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _2976 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2976] = return_data.size
                                                mem[_2976 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2933 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2977 = mem[_2933]
                                            require mem[_2933] <= test266151307()
                                            require _2933 + return_data.size > _2933 + mem[_2933] + 31
                                            _3003 = mem[_2933 + mem[_2933]]
                                            require mem[_2933 + mem[_2933]] <= test266151307()
                                            require (32 * mem[_2933 + mem[_2933]]) + 32 >= 0 and _2933 + ceil32(return_data.size) + (32 * mem[_2933 + mem[_2933]]) + 32 <= test266151307()
                                            mem[64] = _2933 + ceil32(return_data.size) + (32 * mem[_2933 + mem[_2933]]) + 32
                                            mem[_2933 + ceil32(return_data.size)] = _3003
                                            require return_data.size >= _2977 + (32 * _3003) + 32
                                            t = _2933 + _2977 + 32
                                            u = _2933 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3003:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3003 - 1 < _3003
                                            require 2 < mem[_762 + 96]
                                            mem[_762 + 192] = mem[(32 * _3003 - 1) + _2933 + ceil32(return_data.size) + 32]
                            else:
                                _2249 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2273 = mem[_2249]
                                require mem[_2249] <= test266151307()
                                require _2249 + return_data.size > _2249 + mem[_2249] + 31
                                _2287 = mem[_2249 + mem[_2249]]
                                require mem[_2249 + mem[_2249]] <= test266151307()
                                require (32 * mem[_2249 + mem[_2249]]) + 32 >= 0 and _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32 <= test266151307()
                                mem[64] = _2249 + ceil32(return_data.size) + (32 * mem[_2249 + mem[_2249]]) + 32
                                mem[_2249 + ceil32(return_data.size)] = _2287
                                require return_data.size >= _2273 + (32 * _2287) + 32
                                t = _2249 + _2273 + 32
                                u = _2249 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2287:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _2287 - 1 < _2287
                                require 1 < mem[_762 + 96]
                                mem[_762 + 160] = mem[(32 * _2287 - 1) + _2249 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3004 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3029 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _762 + 32
                                    while s < _3029:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3004 + (32 * _3029) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3522 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3522] = return_data.size
                                            mem[_3522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3468 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3523 = mem[_3468]
                                        require mem[_3468] <= test266151307()
                                        require _3468 + return_data.size > _3468 + mem[_3468] + 31
                                        _3548 = mem[_3468 + mem[_3468]]
                                        require mem[_3468 + mem[_3468]] <= test266151307()
                                        require (32 * mem[_3468 + mem[_3468]]) + 32 >= 0 and _3468 + ceil32(return_data.size) + (32 * mem[_3468 + mem[_3468]]) + 32 <= test266151307()
                                        mem[64] = _3468 + ceil32(return_data.size) + (32 * mem[_3468 + mem[_3468]]) + 32
                                        mem[_3468 + ceil32(return_data.size)] = _3548
                                        require return_data.size >= _3523 + (32 * _3548) + 32
                                        t = _3468 + _3523 + 32
                                        u = _3468 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3548:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3548 - 1 < _3548
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3548 - 1) + _3468 + ceil32(return_data.size) + 32]
                else:
                    _1504 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1511 = mem[_1504]
                    require mem[_1504] <= test266151307()
                    require _1504 + return_data.size > _1504 + mem[_1504] + 31
                    _1516 = mem[_1504 + mem[_1504]]
                    require mem[_1504 + mem[_1504]] <= test266151307()
                    require (32 * mem[_1504 + mem[_1504]]) + 32 >= 0 and _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32 <= test266151307()
                    mem[64] = _1504 + ceil32(return_data.size) + (32 * mem[_1504 + mem[_1504]]) + 32
                    mem[_1504 + ceil32(return_data.size)] = _1516
                    require return_data.size >= _1511 + (32 * _1516) + 32
                    t = _1504 + _1511 + 32
                    u = _1504 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1516:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _1516 - 1 < _1516
                    require 0 < mem[_762 + 96]
                    mem[_762 + 128] = mem[(32 * _1516 - 1) + _1504 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _2306 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2323 = mem[_762]
                            mem[mem[64] + 68] = mem[_762]
                            s = 0
                            t = mem[64] + 100
                            u = _762 + 32
                            while s < _2323:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2306 + (32 * _2323) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _2978 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2978] = return_data.size
                                    mem[_2978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _2936 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2979 = mem[_2936]
                                require mem[_2936] <= test266151307()
                                require _2936 + return_data.size > _2936 + mem[_2936] + 31
                                _3005 = mem[_2936 + mem[_2936]]
                                require mem[_2936 + mem[_2936]] <= test266151307()
                                require (32 * mem[_2936 + mem[_2936]]) + 32 >= 0 and _2936 + ceil32(return_data.size) + (32 * mem[_2936 + mem[_2936]]) + 32 <= test266151307()
                                mem[64] = _2936 + ceil32(return_data.size) + (32 * mem[_2936 + mem[_2936]]) + 32
                                mem[_2936 + ceil32(return_data.size)] = _3005
                                require return_data.size >= _2979 + (32 * _3005) + 32
                                t = _2936 + _2979 + 32
                                u = _2936 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3005:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3005 - 1 < _3005
                                require 2 < mem[_762 + 96]
                                mem[_762 + 192] = mem[(32 * _3005 - 1) + _2936 + ceil32(return_data.size) + 32]
                    else:
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _2307 = mem[_762]
                        mem[mem[64] + 68] = mem[_762]
                        s = 0
                        t = mem[64] + 100
                        u = _762 + 32
                        while s < _2307:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _2307) + 32]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3032 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3051 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _762 + 32
                                    while s < _3051:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3032 + (32 * _3051) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3524 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3524] = return_data.size
                                            mem[_3524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3471 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3525 = mem[_3471]
                                        require mem[_3471] <= test266151307()
                                        require _3471 + return_data.size > _3471 + mem[_3471] + 31
                                        _3550 = mem[_3471 + mem[_3471]]
                                        require mem[_3471 + mem[_3471]] <= test266151307()
                                        require (32 * mem[_3471 + mem[_3471]]) + 32 >= 0 and _3471 + ceil32(return_data.size) + (32 * mem[_3471 + mem[_3471]]) + 32 <= test266151307()
                                        mem[64] = _3471 + ceil32(return_data.size) + (32 * mem[_3471 + mem[_3471]]) + 32
                                        mem[_3471 + ceil32(return_data.size)] = _3550
                                        require return_data.size >= _3525 + (32 * _3550) + 32
                                        t = _3471 + _3525 + 32
                                        u = _3471 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3550:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3550 - 1 < _3550
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3550 - 1) + _3471 + ceil32(return_data.size) + 32]
                            else:
                                _2980 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2980] = return_data.size
                                mem[_2980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3033 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3053 = mem[_762]
                                    mem[mem[64] + 68] = mem[_762]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _762 + 32
                                    while s < _3053:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3033 + (32 * _3053) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3526 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3526] = return_data.size
                                            mem[_3526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3472 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3527 = mem[_3472]
                                        require mem[_3472] <= test266151307()
                                        require _3472 + return_data.size > _3472 + mem[_3472] + 31
                                        _3551 = mem[_3472 + mem[_3472]]
                                        require mem[_3472 + mem[_3472]] <= test266151307()
                                        require (32 * mem[_3472 + mem[_3472]]) + 32 >= 0 and _3472 + ceil32(return_data.size) + (32 * mem[_3472 + mem[_3472]]) + 32 <= test266151307()
                                        mem[64] = _3472 + ceil32(return_data.size) + (32 * mem[_3472 + mem[_3472]]) + 32
                                        mem[_3472 + ceil32(return_data.size)] = _3551
                                        require return_data.size >= _3527 + (32 * _3551) + 32
                                        t = _3472 + _3527 + 32
                                        u = _3472 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3551:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3551 - 1 < _3551
                                        require 2 < mem[_762 + 96]
                                        mem[_762 + 192] = mem[(32 * _3551 - 1) + _3472 + ceil32(return_data.size) + 32]
                        else:
                            _2937 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2981 = mem[_2937]
                            require mem[_2937] <= test266151307()
                            require _2937 + return_data.size > _2937 + mem[_2937] + 31
                            _3006 = mem[_2937 + mem[_2937]]
                            require mem[_2937 + mem[_2937]] <= test266151307()
                            require (32 * mem[_2937 + mem[_2937]]) + 32 >= 0 and _2937 + ceil32(return_data.size) + (32 * mem[_2937 + mem[_2937]]) + 32 <= test266151307()
                            mem[64] = _2937 + ceil32(return_data.size) + (32 * mem[_2937 + mem[_2937]]) + 32
                            mem[_2937 + ceil32(return_data.size)] = _3006
                            require return_data.size >= _2981 + (32 * _3006) + 32
                            t = _2937 + _2981 + 32
                            u = _2937 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3006:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3006 - 1 < _3006
                            require 1 < mem[_762 + 96]
                            mem[_762 + 160] = mem[(32 * _3006 - 1) + _2937 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3575 = mem[_762]
                                mem[mem[64] + 68] = mem[_762]
                                s = 0
                                t = mem[64] + 100
                                u = _762 + 32
                                while s < _3575:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3575) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3837] = return_data.size
                                        mem[_3837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3796 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3838 = mem[_3796]
                                    require mem[_3796] <= test266151307()
                                    require _3796 + return_data.size > _3796 + mem[_3796] + 31
                                    _3851 = mem[_3796 + mem[_3796]]
                                    require mem[_3796 + mem[_3796]] <= test266151307()
                                    require (32 * mem[_3796 + mem[_3796]]) + 32 >= 0 and _3796 + ceil32(return_data.size) + (32 * mem[_3796 + mem[_3796]]) + 32 <= test266151307()
                                    mem[64] = _3796 + ceil32(return_data.size) + (32 * mem[_3796 + mem[_3796]]) + 32
                                    mem[_3796 + ceil32(return_data.size)] = _3851
                                    require return_data.size >= _3838 + (32 * _3851) + 32
                                    t = _3796 + _3838 + 32
                                    u = _3796 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3851:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3851 - 1 < _3851
                                    require 2 < mem[_762 + 96]
                                    mem[_762 + 192] = mem[(32 * _3851 - 1) + _3796 + ceil32(return_data.size) + 32]
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
            _1610 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1610]
            mem[_1610 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            require 1 < mem[_1610]
            mem[_1610 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_1610 + 96] = 3
            mem[64] = _1610 + 224
            mem[_1610 + 128 len 96] = call.data[calldata.size len 96]
            if not bool(cd[((32 * idx) + cd[4] + 36)]):
                if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                        mem[_1610 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1610 + 228] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_1610 + 260] = 64
                        mem[_1610 + 292] = mem[_1610]
                        s = 0
                        t = _1610 + 324
                        u = _1610 + 32
                        while s < mem[_1610]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1610 + (32 * mem[_1610]) + -mem[64] + 320]
                        if not ext_call.success:
                            if return_data.size:
                                _2274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2274] = return_data.size
                                mem[_2274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2253 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2275 = mem[_2253]
                            require mem[_2253] <= test266151307()
                            require _2253 + return_data.size > _2253 + mem[_2253] + 31
                            _2289 = mem[_2253 + mem[_2253]]
                            require mem[_2253 + mem[_2253]] <= test266151307()
                            require (32 * mem[_2253 + mem[_2253]]) + 32 >= 0 and _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32 <= test266151307()
                            mem[64] = _2253 + ceil32(return_data.size) + (32 * mem[_2253 + mem[_2253]]) + 32
                            mem[_2253 + ceil32(return_data.size)] = _2289
                            require return_data.size >= _2275 + (32 * _2289) + 32
                            t = _2253 + _2275 + 32
                            u = _2253 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2289:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _2289 - 1 < _2289
                            require 2 < mem[_1610 + 96]
                            mem[_1610 + 192] = mem[(32 * _2289 - 1) + _2253 + ceil32(return_data.size) + 32]
                else:
                    mem[_1610 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1610 + 228] = cd[((32 * idx) + cd[68] + 36)]
                    mem[_1610 + 260] = 64
                    mem[_1610 + 292] = mem[_1610]
                    s = 0
                    t = _1610 + 324
                    u = _1610 + 32
                    while s < mem[_1610]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor5)
                    staticcall stor5.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1610 + (32 * mem[_1610]) + -mem[64] + 320]
                    if not ext_call.success:
                        if not return_data.size:
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2310 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2325 = mem[_1610]
                                mem[mem[64] + 68] = mem[_1610]
                                s = 0
                                t = mem[64] + 100
                                u = _1610 + 32
                                while s < _2325:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2310 + (32 * _2325) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2982] = return_data.size
                                        mem[_2982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2940 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2983 = mem[_2940]
                                    require mem[_2940] <= test266151307()
                                    require _2940 + return_data.size > _2940 + mem[_2940] + 31
                                    _3008 = mem[_2940 + mem[_2940]]
                                    require mem[_2940 + mem[_2940]] <= test266151307()
                                    require (32 * mem[_2940 + mem[_2940]]) + 32 >= 0 and _2940 + ceil32(return_data.size) + (32 * mem[_2940 + mem[_2940]]) + 32 <= test266151307()
                                    mem[64] = _2940 + ceil32(return_data.size) + (32 * mem[_2940 + mem[_2940]]) + 32
                                    mem[_2940 + ceil32(return_data.size)] = _3008
                                    require return_data.size >= _2983 + (32 * _3008) + 32
                                    t = _2940 + _2983 + 32
                                    u = _2940 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3008:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3008 - 1 < _3008
                                    require 2 < mem[_1610 + 96]
                                    mem[_1610 + 192] = mem[(32 * _3008 - 1) + _2940 + ceil32(return_data.size) + 32]
                        else:
                            _2276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2276] = return_data.size
                            mem[_2276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2327 = mem[_1610]
                                mem[mem[64] + 68] = mem[_1610]
                                s = 0
                                t = mem[64] + 100
                                u = _1610 + 32
                                while s < _2327:
                                    mem[t] = mem[u + 12 len 20]
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
                                        _2984 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2984] = return_data.size
                                        mem[_2984 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2941 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2985 = mem[_2941]
                                    require mem[_2941] <= test266151307()
                                    require _2941 + return_data.size > _2941 + mem[_2941] + 31
                                    _3009 = mem[_2941 + mem[_2941]]
                                    require mem[_2941 + mem[_2941]] <= test266151307()
                                    require (32 * mem[_2941 + mem[_2941]]) + 32 >= 0 and _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32 <= test266151307()
                                    mem[64] = _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32
                                    mem[_2941 + ceil32(return_data.size)] = _3009
                                    require return_data.size >= _2985 + (32 * _3009) + 32
                                    t = _2941 + _2985 + 32
                                    u = _2941 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3009:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3009 - 1 < _3009
                                    require 2 < mem[_1610 + 96]
                                    mem[_1610 + 192] = mem[(32 * _3009 - 1) + _2941 + ceil32(return_data.size) + 32]
                    else:
                        _2254 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2277 = mem[_2254]
                        require mem[_2254] <= test266151307()
                        require _2254 + return_data.size > _2254 + mem[_2254] + 31
                        _2290 = mem[_2254 + mem[_2254]]
                        require mem[_2254 + mem[_2254]] <= test266151307()
                        require (32 * mem[_2254 + mem[_2254]]) + 32 >= 0 and _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32 <= test266151307()
                        mem[64] = _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32
                        mem[_2254 + ceil32(return_data.size)] = _2290
                        require return_data.size >= _2277 + (32 * _2290) + 32
                        t = _2254 + _2277 + 32
                        u = _2254 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2290:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _2290 - 1 < _2290
                        require 1 < mem[_1610 + 96]
                        mem[_1610 + 160] = mem[(32 * _2290 - 1) + _2254 + ceil32(return_data.size) + 32]
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3010 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3039 = mem[_1610]
                            mem[mem[64] + 68] = mem[_1610]
                            s = 0
                            t = mem[64] + 100
                            u = _1610 + 32
                            while s < _3039:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3010 + (32 * _3039) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3528 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3528] = return_data.size
                                    mem[_3528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3479 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3529 = mem[_3479]
                                require mem[_3479] <= test266151307()
                                require _3479 + return_data.size > _3479 + mem[_3479] + 31
                                _3555 = mem[_3479 + mem[_3479]]
                                require mem[_3479 + mem[_3479]] <= test266151307()
                                require (32 * mem[_3479 + mem[_3479]]) + 32 >= 0 and _3479 + ceil32(return_data.size) + (32 * mem[_3479 + mem[_3479]]) + 32 <= test266151307()
                                mem[64] = _3479 + ceil32(return_data.size) + (32 * mem[_3479 + mem[_3479]]) + 32
                                mem[_3479 + ceil32(return_data.size)] = _3555
                                require return_data.size >= _3529 + (32 * _3555) + 32
                                t = _3479 + _3529 + 32
                                u = _3479 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3555:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3555 - 1 < _3555
                                require 2 < mem[_1610 + 96]
                                mem[_1610 + 192] = mem[(32 * _3555 - 1) + _3479 + ceil32(return_data.size) + 32]
            else:
                mem[_1610 + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1610 + 228] = cd[((32 * idx) + cd[68] + 36)]
                mem[_1610 + 260] = 64
                mem[_1610 + 292] = mem[_1610]
                s = 0
                t = _1610 + 324
                u = _1610 + 32
                while s < mem[_1610]:
                    mem[t] = mem[u + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                staticcall stor4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1610 + (32 * mem[_1610]) + -mem[64] + 320]
                if not ext_call.success:
                    if not return_data.size:
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2328 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2335 = mem[_1610]
                                mem[mem[64] + 68] = mem[_1610]
                                s = 0
                                t = mem[64] + 100
                                u = _1610 + 32
                                while s < _2335:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2328 + (32 * _2335) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2986 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2986] = return_data.size
                                        mem[_2986 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2944 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2987 = mem[_2944]
                                    require mem[_2944] <= test266151307()
                                    require _2944 + return_data.size > _2944 + mem[_2944] + 31
                                    _3011 = mem[_2944 + mem[_2944]]
                                    require mem[_2944 + mem[_2944]] <= test266151307()
                                    require (32 * mem[_2944 + mem[_2944]]) + 32 >= 0 and _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32 <= test266151307()
                                    mem[64] = _2944 + ceil32(return_data.size) + (32 * mem[_2944 + mem[_2944]]) + 32
                                    mem[_2944 + ceil32(return_data.size)] = _3011
                                    require return_data.size >= _2987 + (32 * _3011) + 32
                                    t = _2944 + _2987 + 32
                                    u = _2944 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3011:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3011 - 1 < _3011
                                    require 2 < mem[_1610 + 96]
                                    mem[_1610 + 192] = mem[(32 * _3011 - 1) + _2944 + ceil32(return_data.size) + 32]
                        else:
                            _2312 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2329 = mem[_1610]
                            mem[mem[64] + 68] = mem[_1610]
                            s = 0
                            t = mem[64] + 100
                            u = _1610 + 32
                            while s < _2329:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2312 + (32 * _2329) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3042 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3055 = mem[_1610]
                                        mem[mem[64] + 68] = mem[_1610]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1610 + 32
                                        while s < _3055:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3042 + (32 * _3055) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3530 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3530] = return_data.size
                                                mem[_3530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3482 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3531 = mem[_3482]
                                            require mem[_3482] <= test266151307()
                                            require _3482 + return_data.size > _3482 + mem[_3482] + 31
                                            _3557 = mem[_3482 + mem[_3482]]
                                            require mem[_3482 + mem[_3482]] <= test266151307()
                                            require (32 * mem[_3482 + mem[_3482]]) + 32 >= 0 and _3482 + ceil32(return_data.size) + (32 * mem[_3482 + mem[_3482]]) + 32 <= test266151307()
                                            mem[64] = _3482 + ceil32(return_data.size) + (32 * mem[_3482 + mem[_3482]]) + 32
                                            mem[_3482 + ceil32(return_data.size)] = _3557
                                            require return_data.size >= _3531 + (32 * _3557) + 32
                                            t = _3482 + _3531 + 32
                                            u = _3482 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3557:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3557 - 1 < _3557
                                            require 2 < mem[_1610 + 96]
                                            mem[_1610 + 192] = mem[(32 * _3557 - 1) + _3482 + ceil32(return_data.size) + 32]
                                else:
                                    _2988 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2988] = return_data.size
                                    mem[_2988 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3043 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3057 = mem[_1610]
                                        mem[mem[64] + 68] = mem[_1610]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1610 + 32
                                        while s < _3057:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3043 + (32 * _3057) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3532 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3532] = return_data.size
                                                mem[_3532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3483 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3533 = mem[_3483]
                                            require mem[_3483] <= test266151307()
                                            require _3483 + return_data.size > _3483 + mem[_3483] + 31
                                            _3558 = mem[_3483 + mem[_3483]]
                                            require mem[_3483 + mem[_3483]] <= test266151307()
                                            require (32 * mem[_3483 + mem[_3483]]) + 32 >= 0 and _3483 + ceil32(return_data.size) + (32 * mem[_3483 + mem[_3483]]) + 32 <= test266151307()
                                            mem[64] = _3483 + ceil32(return_data.size) + (32 * mem[_3483 + mem[_3483]]) + 32
                                            mem[_3483 + ceil32(return_data.size)] = _3558
                                            require return_data.size >= _3533 + (32 * _3558) + 32
                                            t = _3483 + _3533 + 32
                                            u = _3483 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3558:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3558 - 1 < _3558
                                            require 2 < mem[_1610 + 96]
                                            mem[_1610 + 192] = mem[(32 * _3558 - 1) + _3483 + ceil32(return_data.size) + 32]
                            else:
                                _2945 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2989 = mem[_2945]
                                require mem[_2945] <= test266151307()
                                require _2945 + return_data.size > _2945 + mem[_2945] + 31
                                _3012 = mem[_2945 + mem[_2945]]
                                require mem[_2945 + mem[_2945]] <= test266151307()
                                require (32 * mem[_2945 + mem[_2945]]) + 32 >= 0 and _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32 <= test266151307()
                                mem[64] = _2945 + ceil32(return_data.size) + (32 * mem[_2945 + mem[_2945]]) + 32
                                mem[_2945 + ceil32(return_data.size)] = _3012
                                require return_data.size >= _2989 + (32 * _3012) + 32
                                t = _2945 + _2989 + 32
                                u = _2945 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3012:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3012 - 1 < _3012
                                require 1 < mem[_1610 + 96]
                                mem[_1610 + 160] = mem[(32 * _3012 - 1) + _2945 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3559 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3583 = mem[_1610]
                                    mem[mem[64] + 68] = mem[_1610]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1610 + 32
                                    while s < _3583:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3559 + (32 * _3583) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3839 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3839] = return_data.size
                                            mem[_3839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3803 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3840 = mem[_3803]
                                        require mem[_3803] <= test266151307()
                                        require _3803 + return_data.size > _3803 + mem[_3803] + 31
                                        _3855 = mem[_3803 + mem[_3803]]
                                        require mem[_3803 + mem[_3803]] <= test266151307()
                                        require (32 * mem[_3803 + mem[_3803]]) + 32 >= 0 and _3803 + ceil32(return_data.size) + (32 * mem[_3803 + mem[_3803]]) + 32 <= test266151307()
                                        mem[64] = _3803 + ceil32(return_data.size) + (32 * mem[_3803 + mem[_3803]]) + 32
                                        mem[_3803 + ceil32(return_data.size)] = _3855
                                        require return_data.size >= _3840 + (32 * _3855) + 32
                                        t = _3803 + _3840 + 32
                                        u = _3803 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3855:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3855 - 1 < _3855
                                        require 2 < mem[_1610 + 96]
                                        mem[_1610 + 192] = mem[(32 * _3855 - 1) + _3803 + ceil32(return_data.size) + 32]
                    else:
                        _2278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2278] = return_data.size
                        mem[_2278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                _2330 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _2337 = mem[_1610]
                                mem[mem[64] + 68] = mem[_1610]
                                s = 0
                                t = mem[64] + 100
                                u = _1610 + 32
                                while s < _2337:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2330 + (32 * _2337) + -mem[64] + 96]
                                if not ext_call.success:
                                    if return_data.size:
                                        _2990 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2990] = return_data.size
                                        mem[_2990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _2946 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2991 = mem[_2946]
                                    require mem[_2946] <= test266151307()
                                    require _2946 + return_data.size > _2946 + mem[_2946] + 31
                                    _3013 = mem[_2946 + mem[_2946]]
                                    require mem[_2946 + mem[_2946]] <= test266151307()
                                    require (32 * mem[_2946 + mem[_2946]]) + 32 >= 0 and _2946 + ceil32(return_data.size) + (32 * mem[_2946 + mem[_2946]]) + 32 <= test266151307()
                                    mem[64] = _2946 + ceil32(return_data.size) + (32 * mem[_2946 + mem[_2946]]) + 32
                                    mem[_2946 + ceil32(return_data.size)] = _3013
                                    require return_data.size >= _2991 + (32 * _3013) + 32
                                    t = _2946 + _2991 + 32
                                    u = _2946 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3013:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3013 - 1 < _3013
                                    require 2 < mem[_1610 + 96]
                                    mem[_1610 + 192] = mem[(32 * _3013 - 1) + _2946 + ceil32(return_data.size) + 32]
                        else:
                            _2313 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _2331 = mem[_1610]
                            mem[mem[64] + 68] = mem[_1610]
                            s = 0
                            t = mem[64] + 100
                            u = _1610 + 32
                            while s < _2331:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor5)
                            staticcall stor5.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2313 + (32 * _2331) + -mem[64] + 96]
                            if not ext_call.success:
                                if not return_data.size:
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3059 = mem[_1610]
                                        mem[mem[64] + 68] = mem[_1610]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1610 + 32
                                        while s < _3059:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3059) + 32]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3534] = return_data.size
                                                mem[_3534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3488 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3535 = mem[_3488]
                                            require mem[_3488] <= test266151307()
                                            require _3488 + return_data.size > _3488 + mem[_3488] + 31
                                            _3561 = mem[_3488 + mem[_3488]]
                                            require mem[_3488 + mem[_3488]] <= test266151307()
                                            require (32 * mem[_3488 + mem[_3488]]) + 32 >= 0 and _3488 + ceil32(return_data.size) + (32 * mem[_3488 + mem[_3488]]) + 32 <= test266151307()
                                            mem[64] = _3488 + ceil32(return_data.size) + (32 * mem[_3488 + mem[_3488]]) + 32
                                            mem[_3488 + ceil32(return_data.size)] = _3561
                                            require return_data.size >= _3535 + (32 * _3561) + 32
                                            t = _3488 + _3535 + 32
                                            u = _3488 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3561:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3561 - 1 < _3561
                                            require 2 < mem[_1610 + 96]
                                            mem[_1610 + 192] = mem[(32 * _3561 - 1) + _3488 + ceil32(return_data.size) + 32]
                                else:
                                    _2992 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2992] = return_data.size
                                    mem[_2992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                        _3047 = mem[64]
                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[mem[64] + 36] = 64
                                        _3061 = mem[_1610]
                                        mem[mem[64] + 68] = mem[_1610]
                                        s = 0
                                        t = mem[64] + 100
                                        u = _1610 + 32
                                        while s < _3061:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3047 + (32 * _3061) + -mem[64] + 96]
                                        if not ext_call.success:
                                            if return_data.size:
                                                _3536 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3536] = return_data.size
                                                mem[_3536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3489 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3537 = mem[_3489]
                                            require mem[_3489] <= test266151307()
                                            require _3489 + return_data.size > _3489 + mem[_3489] + 31
                                            _3562 = mem[_3489 + mem[_3489]]
                                            require mem[_3489 + mem[_3489]] <= test266151307()
                                            require (32 * mem[_3489 + mem[_3489]]) + 32 >= 0 and _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32 <= test266151307()
                                            mem[64] = _3489 + ceil32(return_data.size) + (32 * mem[_3489 + mem[_3489]]) + 32
                                            mem[_3489 + ceil32(return_data.size)] = _3562
                                            require return_data.size >= _3537 + (32 * _3562) + 32
                                            t = _3489 + _3537 + 32
                                            u = _3489 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _3562:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                            require _3562 - 1 < _3562
                                            require 2 < mem[_1610 + 96]
                                            mem[_1610 + 192] = mem[(32 * _3562 - 1) + _3489 + ceil32(return_data.size) + 32]
                            else:
                                _2947 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2993 = mem[_2947]
                                require mem[_2947] <= test266151307()
                                require _2947 + return_data.size > _2947 + mem[_2947] + 31
                                _3014 = mem[_2947 + mem[_2947]]
                                require mem[_2947 + mem[_2947]] <= test266151307()
                                require (32 * mem[_2947 + mem[_2947]]) + 32 >= 0 and _2947 + ceil32(return_data.size) + (32 * mem[_2947 + mem[_2947]]) + 32 <= test266151307()
                                mem[64] = _2947 + ceil32(return_data.size) + (32 * mem[_2947 + mem[_2947]]) + 32
                                mem[_2947 + ceil32(return_data.size)] = _3014
                                require return_data.size >= _2993 + (32 * _3014) + 32
                                t = _2947 + _2993 + 32
                                u = _2947 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3014:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3014 - 1 < _3014
                                require 1 < mem[_1610 + 96]
                                mem[_1610 + 160] = mem[(32 * _3014 - 1) + _2947 + ceil32(return_data.size) + 32]
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3589 = mem[_1610]
                                    mem[mem[64] + 68] = mem[_1610]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1610 + 32
                                    while s < _3589:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3589) + 32]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3841 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3841] = return_data.size
                                            mem[_3841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3808 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3842 = mem[_3808]
                                        require mem[_3808] <= test266151307()
                                        require _3808 + return_data.size > _3808 + mem[_3808] + 31
                                        _3858 = mem[_3808 + mem[_3808]]
                                        require mem[_3808 + mem[_3808]] <= test266151307()
                                        require (32 * mem[_3808 + mem[_3808]]) + 32 >= 0 and _3808 + ceil32(return_data.size) + (32 * mem[_3808 + mem[_3808]]) + 32 <= test266151307()
                                        mem[64] = _3808 + ceil32(return_data.size) + (32 * mem[_3808 + mem[_3808]]) + 32
                                        mem[_3808 + ceil32(return_data.size)] = _3858
                                        require return_data.size >= _3842 + (32 * _3858) + 32
                                        t = _3808 + _3842 + 32
                                        u = _3808 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3858:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3858 - 1 < _3858
                                        require 2 < mem[_1610 + 96]
                                        mem[_1610 + 192] = mem[(32 * _3858 - 1) + _3808 + ceil32(return_data.size) + 32]
                else:
                    _2255 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2279 = mem[_2255]
                    require mem[_2255] <= test266151307()
                    require _2255 + return_data.size > _2255 + mem[_2255] + 31
                    _2291 = mem[_2255 + mem[_2255]]
                    require mem[_2255 + mem[_2255]] <= test266151307()
                    require (32 * mem[_2255 + mem[_2255]]) + 32 >= 0 and _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32 <= test266151307()
                    mem[64] = _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32
                    mem[_2255 + ceil32(return_data.size)] = _2291
                    require return_data.size >= _2279 + (32 * _2291) + 32
                    t = _2255 + _2279 + 32
                    u = _2255 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2291:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _2291 - 1 < _2291
                    require 0 < mem[_1610 + 96]
                    mem[_1610 + 128] = mem[(32 * _2291 - 1) + _2255 + ceil32(return_data.size) + 32]
                    if not Mask(1, 1, cd[((32 * idx) + cd[4] + 36)]):
                        if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                            _3048 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 36] = 64
                            _3063 = mem[_1610]
                            mem[mem[64] + 68] = mem[_1610]
                            s = 0
                            t = mem[64] + 100
                            u = _1610 + 32
                            while s < _3063:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3048 + (32 * _3063) + -mem[64] + 96]
                            if not ext_call.success:
                                if return_data.size:
                                    _3538 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3538] = return_data.size
                                    mem[_3538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                _3492 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3539 = mem[_3492]
                                require mem[_3492] <= test266151307()
                                require _3492 + return_data.size > _3492 + mem[_3492] + 31
                                _3564 = mem[_3492 + mem[_3492]]
                                require mem[_3492 + mem[_3492]] <= test266151307()
                                require (32 * mem[_3492 + mem[_3492]]) + 32 >= 0 and _3492 + ceil32(return_data.size) + (32 * mem[_3492 + mem[_3492]]) + 32 <= test266151307()
                                mem[64] = _3492 + ceil32(return_data.size) + (32 * mem[_3492 + mem[_3492]]) + 32
                                mem[_3492 + ceil32(return_data.size)] = _3564
                                require return_data.size >= _3539 + (32 * _3564) + 32
                                t = _3492 + _3539 + 32
                                u = _3492 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _3564:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _3564 - 1 < _3564
                                require 2 < mem[_1610 + 96]
                                mem[_1610 + 192] = mem[(32 * _3564 - 1) + _3492 + ceil32(return_data.size) + 32]
                    else:
                        _3015 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 36] = 64
                        _3049 = mem[_1610]
                        mem[mem[64] + 68] = mem[_1610]
                        s = 0
                        t = mem[64] + 100
                        u = _1610 + 32
                        while s < _3049:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(stor5)
                        staticcall stor5.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3015 + (32 * _3049) + -mem[64] + 96]
                        if not ext_call.success:
                            if not return_data.size:
                                if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                    _3592 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[mem[64] + 36] = 64
                                    _3595 = mem[_1610]
                                    mem[mem[64] + 68] = mem[_1610]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1610 + 32
                                    while s < _3595:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3592 + (32 * _3595) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3843 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3843] = return_data.size
                                            mem[_3843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3811 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3844 = mem[_3811]
                                        require mem[_3811] <= test266151307()
                                        require _3811 + return_data.size > _3811 + mem[_3811] + 31
                                        _3860 = mem[_3811 + mem[_3811]]
                                        require mem[_3811 + mem[_3811]] <= test266151307()
                                        require (32 * mem[_3811 + mem[_3811]]) + 32 >= 0 and _3811 + ceil32(return_data.size) + (32 * mem[_3811 + mem[_3811]]) + 32 <= test266151307()
                                        mem[64] = _3811 + ceil32(return_data.size) + (32 * mem[_3811 + mem[_3811]]) + 32
                                        mem[_3811 + ceil32(return_data.size)] = _3860
                                        require return_data.size >= _3844 + (32 * _3860) + 32
                                        t = _3811 + _3844 + 32
                                        u = _3811 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3860:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3860 - 1 < _3860
                                        require 2 < mem[_1610 + 96]
                                        mem[_1610 + 192] = mem[(32 * _3860 - 1) + _3811 + ceil32(return_data.size) + 32]
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
                                    _3597 = mem[_1610]
                                    mem[mem[64] + 68] = mem[_1610]
                                    s = 0
                                    t = mem[64] + 100
                                    u = _1610 + 32
                                    while s < _3597:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor6)
                                    staticcall stor6.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _3593 + (32 * _3597) + -mem[64] + 96]
                                    if not ext_call.success:
                                        if return_data.size:
                                            _3845 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3845] = return_data.size
                                            mem[_3845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3812 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3846 = mem[_3812]
                                        require mem[_3812] <= test266151307()
                                        require _3812 + return_data.size > _3812 + mem[_3812] + 31
                                        _3861 = mem[_3812 + mem[_3812]]
                                        require mem[_3812 + mem[_3812]] <= test266151307()
                                        require (32 * mem[_3812 + mem[_3812]]) + 32 >= 0 and _3812 + ceil32(return_data.size) + (32 * mem[_3812 + mem[_3812]]) + 32 <= test266151307()
                                        mem[64] = _3812 + ceil32(return_data.size) + (32 * mem[_3812 + mem[_3812]]) + 32
                                        mem[_3812 + ceil32(return_data.size)] = _3861
                                        require return_data.size >= _3846 + (32 * _3861) + 32
                                        t = _3812 + _3846 + 32
                                        u = _3812 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _3861:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _3861 - 1 < _3861
                                        require 2 < mem[_1610 + 96]
                                        mem[_1610 + 192] = mem[(32 * _3861 - 1) + _3812 + ceil32(return_data.size) + 32]
                        else:
                            _3493 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3541 = mem[_3493]
                            require mem[_3493] <= test266151307()
                            require _3493 + return_data.size > _3493 + mem[_3493] + 31
                            _3565 = mem[_3493 + mem[_3493]]
                            require mem[_3493 + mem[_3493]] <= test266151307()
                            require (32 * mem[_3493 + mem[_3493]]) + 32 >= 0 and _3493 + ceil32(return_data.size) + (32 * mem[_3493 + mem[_3493]]) + 32 <= test266151307()
                            mem[64] = _3493 + ceil32(return_data.size) + (32 * mem[_3493 + mem[_3493]]) + 32
                            mem[_3493 + ceil32(return_data.size)] = _3565
                            require return_data.size >= _3541 + (32 * _3565) + 32
                            t = _3493 + _3541 + 32
                            u = _3493 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _3565:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _3565 - 1 < _3565
                            require 1 < mem[_1610 + 96]
                            mem[_1610 + 160] = mem[(32 * _3565 - 1) + _3493 + ceil32(return_data.size) + 32]
                            if Mask(1, 2, cd[((32 * idx) + cd[4] + 36)]):
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                                mem[mem[64] + 36] = 64
                                _3874 = mem[_1610]
                                mem[mem[64] + 68] = mem[_1610]
                                s = 0
                                t = mem[64] + 100
                                u = _1610 + 32
                                while s < _3874:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[68] + 36)], 64, mem[mem[64] + 68 len (32 * _3874) + 32]
                                if not ext_call.success:
                                    if return_data.size:
                                        _3953 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3953] = return_data.size
                                        mem[_3953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    _3942 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3954 = mem[_3942]
                                    require mem[_3942] <= test266151307()
                                    require _3942 + return_data.size > _3942 + mem[_3942] + 31
                                    _3960 = mem[_3942 + mem[_3942]]
                                    require mem[_3942 + mem[_3942]] <= test266151307()
                                    require (32 * mem[_3942 + mem[_3942]]) + 32 >= 0 and _3942 + ceil32(return_data.size) + (32 * mem[_3942 + mem[_3942]]) + 32 <= test266151307()
                                    mem[64] = _3942 + ceil32(return_data.size) + (32 * mem[_3942 + mem[_3942]]) + 32
                                    mem[_3942 + ceil32(return_data.size)] = _3960
                                    require return_data.size >= _3954 + (32 * _3960) + 32
                                    t = _3942 + _3954 + 32
                                    u = _3942 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _3960:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _3960 - 1 < _3960
                                    require 2 < mem[_1610 + 96]
                                    mem[_1610 + 192] = mem[(32 * _3960 - 1) + _3942 + ceil32(return_data.size) + 32]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _1610 + 96
            idx = idx + 1
            continue 
        _1499 = mem[64]
        mem[mem[64]] = 32
        _1500 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1500:
            mem[t] = u + -_1499 - 64
            _2225 = mem[s]
            _2236 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _2225 + 32
            x = u + 32
            while v < _2236:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _2236 + 1
            w = _2225 + (32 * _2236) + 64
            t = t + 32
            u = u + (32 * _2236) + 32
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
            s = (4 * ceil32(return_data.size)) + 292
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _1515 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            _1521 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1521
            require return_data.size >= _1515 + (32 * _1521) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1521] = mem[(4 * ceil32(return_data.size)) + _1515 + 224 len 32 * _1521]
            require 0 < _1521
            _2949 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 96
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            require cd[(arg4 + 100)] <= test266151307()
            require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
            _2951 = mem[64]
            require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
            mem[_2951] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
            mem[_2951 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2951 + 32] = 0
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[(arg4 + 68)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(cd[(arg4 + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2969]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3005 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3017 = mem[_3005]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2951 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4430 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4693 = mem[_4605]
                        if mem[_4605] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4605] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5133 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5133] == bool(mem[_5133])
                        if not mem[_5133]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4693 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4693 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5421] == bool(mem[_5421])
                        if not mem[_5421]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4377] = return_data.size
                        mem[_4377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4432 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4377 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4432 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4606 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4694 = mem[_4606]
                        if mem[_4606] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4606] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5134] == bool(mem[_5134])
                        if not mem[_5134]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4694 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4694 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5422] == bool(mem[_5422])
                        if not mem[_5422]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4478 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4478 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4725 = mem[_4647]
                        if mem[_4647] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4647] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5157] == bool(mem[_5157])
                        if not mem[_5157]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4725 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4725 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5445 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5445] == bool(mem[_5445])
                        if not mem[_5445]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4393] = return_data.size
                        mem[_4393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4480 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4393 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4480 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4726 = mem[_4648]
                        if mem[_4648] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4648] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5158] == bool(mem[_5158])
                        if not mem[_5158]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4726 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4726 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5446] == bool(mem[_5446])
                        if not mem[_5446]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 68)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3006 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3006] == bool(mem[_3006])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3073 = mem[_3059]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2951 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4434 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4697 = mem[_4607]
                        if mem[_4607] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4607] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5135] == bool(mem[_5135])
                        if not mem[_5135]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4697 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4697 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5423] == bool(mem[_5423])
                        if not mem[_5423]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4379] = return_data.size
                        mem[_4379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4379 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4436 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4608 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4698 = mem[_4608]
                        if mem[_4608] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4608] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5136 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5136] == bool(mem[_5136])
                        if not mem[_5136]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4698 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4698 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5424] == bool(mem[_5424])
                        if not mem[_5424]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4482 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4482 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4727 = mem[_4651]
                        if mem[_4651] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4651] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5159] == bool(mem[_5159])
                        if not mem[_5159]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4727 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4727 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5447] == bool(mem[_5447])
                        if not mem[_5447]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4394] = return_data.size
                        mem[_4394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4484 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4394 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4484 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4652 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4728 = mem[_4652]
                        if mem[_4652] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4652] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5160] == bool(mem[_5160])
                        if not mem[_5160]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4728 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4728 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5448] == bool(mem[_5448])
                        if not mem[_5448]:
                            revert with 0, 'Withdraw failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _1516 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _1522 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1522
            require return_data.size >= _1516 + (32 * _1522) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1522] = mem[(4 * ceil32(return_data.size)) + _1516 + 224 len 32 * _1522]
            require 0 < _1522
            _2950 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 96
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            require cd[(arg4 + 100)] <= test266151307()
            require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
            _2952 = mem[64]
            require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
            mem[_2952] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
            mem[_2952 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2952 + 32] = 0
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[(arg4 + 68)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(cd[(arg4 + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2970]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3019 = mem[_3007]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2952 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4438 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4438 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4701 = mem[_4609]
                        if mem[_4609] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4609] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5137] == bool(mem[_5137])
                        if not mem[_5137]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4701 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4701 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5425] == bool(mem[_5425])
                        if not mem[_5425]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4381] = return_data.size
                        mem[_4381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4440 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4381 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4440 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4702 = mem[_4610]
                        if mem[_4610] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4610] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5138] == bool(mem[_5138])
                        if not mem[_5138]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4702 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4702 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5426] == bool(mem[_5426])
                        if not mem[_5426]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4486 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4486 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4729 = mem[_4655]
                        if mem[_4655] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4655] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5161] == bool(mem[_5161])
                        if not mem[_5161]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4729 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4729 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5449] == bool(mem[_5449])
                        if not mem[_5449]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4395] = return_data.size
                        mem[_4395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4488 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4395 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4488 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4730 = mem[_4656]
                        if mem[_4656] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4656] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5162] == bool(mem[_5162])
                        if not mem[_5162]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4730 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4730 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5450] == bool(mem[_5450])
                        if not mem[_5450]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 68)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3008] == bool(mem[_3008])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3076 = mem[_3060]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2952 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4442 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4442 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4611 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4705 = mem[_4611]
                        if mem[_4611] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4611] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5139] == bool(mem[_5139])
                        if not mem[_5139]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4705 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4705 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5427] == bool(mem[_5427])
                        if not mem[_5427]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4383] = return_data.size
                        mem[_4383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4383 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4444 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4706 = mem[_4612]
                        if mem[_4612] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4612] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5140] == bool(mem[_5140])
                        if not mem[_5140]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4706 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4706 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5428] == bool(mem[_5428])
                        if not mem[_5428]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4490 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4490 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4731 = mem[_4659]
                        if mem[_4659] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4659] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5163] == bool(mem[_5163])
                        if not mem[_5163]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4731 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4731 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5451] == bool(mem[_5451])
                        if not mem[_5451]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4396] = return_data.size
                        mem[_4396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4492 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4396 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4492 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4732 = mem[_4660]
                        if mem[_4660] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4660] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5164] == bool(mem[_5164])
                        if not mem[_5164]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4732 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4732 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5452] == bool(mem[_5452])
                        if not mem[_5452]:
                            revert with 0, 'Withdraw failed!'
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
                s = (6 * ceil32(return_data.size)) + 292
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1513 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1519 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1513 + (32 * _1519) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1519] = mem[(6 * ceil32(return_data.size)) + _1513 + 224 len 32 * _1519]
                require 0 < _1519
                _2947 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2955 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2955] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2955 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2955 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2973 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2973]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3025 = mem[_3013]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2955 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4414 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4677 = mem[_4597]
                            if mem[_4597] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4597] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5125] == bool(mem[_5125])
                            if not mem[_5125]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4677 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4677 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5413] == bool(mem[_5413])
                            if not mem[_5413]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4369] = return_data.size
                            mem[_4369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4369 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4416 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4678 = mem[_4598]
                            if mem[_4598] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4598] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5126] == bool(mem[_5126])
                            if not mem[_5126]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4678 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4678 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5414 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5414] == bool(mem[_5414])
                            if not mem[_5414]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4462 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4631 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4717 = mem[_4631]
                            if mem[_4631] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4631] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5149] == bool(mem[_5149])
                            if not mem[_5149]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4717 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4717 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5437 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5437] == bool(mem[_5437])
                            if not mem[_5437]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4389] = return_data.size
                            mem[_4389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4464 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4389 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4464 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4632 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4718 = mem[_4632]
                            if mem[_4632] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4632] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5150] == bool(mem[_5150])
                            if not mem[_5150]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4718 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4718 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5438] == bool(mem[_5438])
                            if not mem[_5438]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3014] == bool(mem[_3014])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3085 = mem[_3063]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2955 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4418 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4418 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4681 = mem[_4599]
                            if mem[_4599] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4599] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5127] == bool(mem[_5127])
                            if not mem[_5127]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4681 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4681 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5415] == bool(mem[_5415])
                            if not mem[_5415]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4371] = return_data.size
                            mem[_4371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4371 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4420 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4682 = mem[_4600]
                            if mem[_4600] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4600] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5128 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5128] == bool(mem[_5128])
                            if not mem[_5128]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4682 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4682 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5416] == bool(mem[_5416])
                            if not mem[_5416]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4466 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4466 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4719 = mem[_4635]
                            if mem[_4635] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4635] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5151] == bool(mem[_5151])
                            if not mem[_5151]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4719 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4719 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5439] == bool(mem[_5439])
                            if not mem[_5439]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4390] = return_data.size
                            mem[_4390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4468 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4390 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4468 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4720 = mem[_4636]
                            if mem[_4636] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4636] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5152] == bool(mem[_5152])
                            if not mem[_5152]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4720 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4720 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5440] == bool(mem[_5440])
                            if not mem[_5440]:
                                revert with 0, 'Withdraw failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 292
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1514 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1520 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1514 + (32 * _1520) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1520] = mem[(6 * ceil32(return_data.size)) + _1514 + 224 len 32 * _1520]
                require 0 < _1520
                _2948 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2956 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2956] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2956 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2956 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2974 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2974]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3027 = mem[_3015]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2956 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4422 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4685 = mem[_4601]
                            if mem[_4601] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4601] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5129] == bool(mem[_5129])
                            if not mem[_5129]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4685 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4685 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5417] == bool(mem[_5417])
                            if not mem[_5417]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4373] = return_data.size
                            mem[_4373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4424 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4373 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4424 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4686 = mem[_4602]
                            if mem[_4602] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4602] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5130] == bool(mem[_5130])
                            if not mem[_5130]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4686 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4686 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5418 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5418] == bool(mem[_5418])
                            if not mem[_5418]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4470 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4470 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4721 = mem[_4639]
                            if mem[_4639] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4639] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5153] == bool(mem[_5153])
                            if not mem[_5153]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4721 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4721 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5441] == bool(mem[_5441])
                            if not mem[_5441]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4391] = return_data.size
                            mem[_4391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4391 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4472 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4722 = mem[_4640]
                            if mem[_4640] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4640] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5154] == bool(mem[_5154])
                            if not mem[_5154]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4722 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4722 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5442] == bool(mem[_5442])
                            if not mem[_5442]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3016] == bool(mem[_3016])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3088 = mem[_3064]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2956 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4426 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4426 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4689 = mem[_4603]
                            if mem[_4603] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4603] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5131] == bool(mem[_5131])
                            if not mem[_5131]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4689 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4689 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5419] == bool(mem[_5419])
                            if not mem[_5419]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4375] = return_data.size
                            mem[_4375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4428 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4375 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4428 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4690 = mem[_4604]
                            if mem[_4604] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4604] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5132] == bool(mem[_5132])
                            if not mem[_5132]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4690 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4690 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5420 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5420] == bool(mem[_5420])
                            if not mem[_5420]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4474 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4474 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4723 = mem[_4643]
                            if mem[_4643] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4643] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5155] == bool(mem[_5155])
                            if not mem[_5155]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4723 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4723 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5443] == bool(mem[_5443])
                            if not mem[_5443]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4392] = return_data.size
                            mem[_4392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4476 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4392 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4476 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4724 = mem[_4644]
                            if mem[_4644] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4644] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5156] == bool(mem[_5156])
                            if not mem[_5156]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4724 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4724 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5444] == bool(mem[_5444])
                            if not mem[_5444]:
                                revert with 0, 'Withdraw failed!'
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
                s = (7 * ceil32(return_data.size)) + 292
                t = (7 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1511 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1517 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1511 + (32 * _1517) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1517] = mem[(7 * ceil32(return_data.size)) + _1511 + 224 len 32 * _1517]
                require 0 < _1517
                _2945 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2953 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2953] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2953 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2953 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2971 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2971]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3021 = mem[_3009]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2953 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4398 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4661 = mem[_4589]
                            if mem[_4589] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4589] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5117] == bool(mem[_5117])
                            if not mem[_5117]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4661 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4661 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5405] == bool(mem[_5405])
                            if not mem[_5405]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4361] = return_data.size
                            mem[_4361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4400 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4361 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4400 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4662 = mem[_4590]
                            if mem[_4590] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4590] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5118 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5118] == bool(mem[_5118])
                            if not mem[_5118]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4662 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4662 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5406] == bool(mem[_5406])
                            if not mem[_5406]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4446 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4446 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4709 = mem[_4615]
                            if mem[_4615] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4615] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5141 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5141] == bool(mem[_5141])
                            if not mem[_5141]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4709 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4709 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5429] == bool(mem[_5429])
                            if not mem[_5429]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4385] = return_data.size
                            mem[_4385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4385 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4448 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4710 = mem[_4616]
                            if mem[_4616] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4616] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5142 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5142] == bool(mem[_5142])
                            if not mem[_5142]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4710 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4710 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5430] == bool(mem[_5430])
                            if not mem[_5430]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3010] == bool(mem[_3010])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3079 = mem[_3061]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2953 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4402 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4665 = mem[_4591]
                            if mem[_4591] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4591] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5119 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5119] == bool(mem[_5119])
                            if not mem[_5119]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4665 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4665 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5407] == bool(mem[_5407])
                            if not mem[_5407]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4363] = return_data.size
                            mem[_4363 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4404 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4363 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4404 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4666 = mem[_4592]
                            if mem[_4592] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4592] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5120 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5120] == bool(mem[_5120])
                            if not mem[_5120]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4666 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4666 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5408] == bool(mem[_5408])
                            if not mem[_5408]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4450 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4450 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4619 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4711 = mem[_4619]
                            if mem[_4619] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4619] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5143 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5143] == bool(mem[_5143])
                            if not mem[_5143]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4711 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4711 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5431 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5431] == bool(mem[_5431])
                            if not mem[_5431]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4386] = return_data.size
                            mem[_4386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4452 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4386 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4452 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4712 = mem[_4620]
                            if mem[_4620] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4620] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5144] == bool(mem[_5144])
                            if not mem[_5144]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4712 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4712 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5432] == bool(mem[_5432])
                            if not mem[_5432]:
                                revert with 0, 'Withdraw failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = arg3
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 292
                t = (7 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1512 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1518 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1512 + (32 * _1518) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1518] = mem[(7 * ceil32(return_data.size)) + _1512 + 224 len 32 * _1518]
                require 0 < _1518
                _2946 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2954 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2954] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2954 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2954 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2972 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2972]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3023 = mem[_3011]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2954 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4406 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4406 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4669 = mem[_4593]
                            if mem[_4593] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4593] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5121] == bool(mem[_5121])
                            if not mem[_5121]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4669 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4669 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5409] == bool(mem[_5409])
                            if not mem[_5409]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4365] = return_data.size
                            mem[_4365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4408 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4365 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4408 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4670 = mem[_4594]
                            if mem[_4594] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4594] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5122 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5122] == bool(mem[_5122])
                            if not mem[_5122]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4670 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4670 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5410] == bool(mem[_5410])
                            if not mem[_5410]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4454 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4454 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4713 = mem[_4623]
                            if mem[_4623] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4623] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5145] == bool(mem[_5145])
                            if not mem[_5145]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4713 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4713 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5433 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5433] == bool(mem[_5433])
                            if not mem[_5433]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4387] = return_data.size
                            mem[_4387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4387 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4456 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4624 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4714 = mem[_4624]
                            if mem[_4624] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4624] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5146] == bool(mem[_5146])
                            if not mem[_5146]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4714 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4714 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5434 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5434] == bool(mem[_5434])
                            if not mem[_5434]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3012] == bool(mem[_3012])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3082 = mem[_3062]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2954 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4410 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4673 = mem[_4595]
                            if mem[_4595] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4595] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5123] == bool(mem[_5123])
                            if not mem[_5123]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4673 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4673 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5411] == bool(mem[_5411])
                            if not mem[_5411]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4367] = return_data.size
                            mem[_4367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4367 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4412 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4674 = mem[_4596]
                            if mem[_4596] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4596] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5124] == bool(mem[_5124])
                            if not mem[_5124]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4674 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4674 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5412] == bool(mem[_5412])
                            if not mem[_5412]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4458 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4458 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4715 = mem[_4627]
                            if mem[_4627] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4627] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5147] == bool(mem[_5147])
                            if not mem[_5147]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4715 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4715 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5435] == bool(mem[_5435])
                            if not mem[_5435]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4388] = return_data.size
                            mem[_4388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4460 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4388 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4460 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4716 = mem[_4628]
                            if mem[_4628] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4628] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5148 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5148] == bool(mem[_5148])
                            if not mem[_5148]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4716 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4716 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5436 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5436] == bool(mem[_5436])
                            if not mem[_5436]:
                                revert with 0, 'Withdraw failed!'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
            s = (4 * ceil32(return_data.size)) + 292
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _1515 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            _1521 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1521
            require return_data.size >= _1515 + (32 * _1521) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1521] = mem[(4 * ceil32(return_data.size)) + _1515 + 224 len 32 * _1521]
            require 0 < _1521
            _2949 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 96
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            require cd[(arg4 + 100)] <= test266151307()
            require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
            _2951 = mem[64]
            require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
            mem[_2951] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
            mem[_2951 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2951 + 32] = 0
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[(arg4 + 68)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(cd[(arg4 + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2969]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3005 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3017 = mem[_3005]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2951 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4430 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4693 = mem[_4605]
                        if mem[_4605] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4605] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5133 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5133] == bool(mem[_5133])
                        if not mem[_5133]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4693 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4693 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5421] == bool(mem[_5421])
                        if not mem[_5421]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4377] = return_data.size
                        mem[_4377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4432 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4377 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4432 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4606 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4694 = mem[_4606]
                        if mem[_4606] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4606] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5134] == bool(mem[_5134])
                        if not mem[_5134]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4694 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4694 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5422] == bool(mem[_5422])
                        if not mem[_5422]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4478 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4478 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4725 = mem[_4647]
                        if mem[_4647] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4647] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5157] == bool(mem[_5157])
                        if not mem[_5157]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4725 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4725 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5445 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5445] == bool(mem[_5445])
                        if not mem[_5445]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4393] = return_data.size
                        mem[_4393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4480 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4393 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4480 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4726 = mem[_4648]
                        if mem[_4648] <= _3017:
                            revert with 0, 'Impossible?!'
                        if mem[_4648] - _3017 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5158] == bool(mem[_5158])
                        if not mem[_5158]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4726 - _3017 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4726 - _3017 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5446] == bool(mem[_5446])
                        if not mem[_5446]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 68)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3006 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3006] == bool(mem[_3006])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3073 = mem[_3059]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2951 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4434 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4697 = mem[_4607]
                        if mem[_4607] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4607] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5135] == bool(mem[_5135])
                        if not mem[_5135]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4697 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4697 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5423] == bool(mem[_5423])
                        if not mem[_5423]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4379] = return_data.size
                        mem[_4379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4379 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4436 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4608 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4698 = mem[_4608]
                        if mem[_4608] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4608] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5136 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5136] == bool(mem[_5136])
                        if not mem[_5136]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4698 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4698 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5424] == bool(mem[_5424])
                        if not mem[_5424]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4482 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4482 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4727 = mem[_4651]
                        if mem[_4651] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4651] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5159] == bool(mem[_5159])
                        if not mem[_5159]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4727 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4727 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5447] == bool(mem[_5447])
                        if not mem[_5447]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4394] = return_data.size
                        mem[_4394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4484 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4394 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4484 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4652 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4728 = mem[_4652]
                        if mem[_4652] <= _3073:
                            revert with 0, 'Impossible?!'
                        if mem[_4652] - _3073 <= _2949:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5160] == bool(mem[_5160])
                        if not mem[_5160]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4728 - _3073 - _2949
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4728 - _3073 - _2949
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5448] == bool(mem[_5448])
                        if not mem[_5448]:
                            revert with 0, 'Withdraw failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
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
            _1516 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _1522 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _1522
            require return_data.size >= _1516 + (32 * _1522) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _1522] = mem[(4 * ceil32(return_data.size)) + _1516 + 224 len 32 * _1522]
            require 0 < _1522
            _2950 = mem[(6 * ceil32(return_data.size)) + 224]
            require arg4.length >= 96
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
            require cd[(arg4 + 100)] <= test266151307()
            require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
            _2952 = mem[64]
            require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
            mem[_2952] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
            mem[_2952 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2952 + 32] = 0
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[(arg4 + 68)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(cd[(arg4 + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_2970]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3019 = mem[_3007]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2952 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4438 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4438 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4701 = mem[_4609]
                        if mem[_4609] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4609] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5137] == bool(mem[_5137])
                        if not mem[_5137]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4701 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4701 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5425] == bool(mem[_5425])
                        if not mem[_5425]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4381] = return_data.size
                        mem[_4381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4440 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4381 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4440 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4702 = mem[_4610]
                        if mem[_4610] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4610] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5138] == bool(mem[_5138])
                        if not mem[_5138]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4702 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4702 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5426] == bool(mem[_5426])
                        if not mem[_5426]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4486 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4486 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4729 = mem[_4655]
                        if mem[_4655] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4655] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5161] == bool(mem[_5161])
                        if not mem[_5161]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4729 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4729 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5449] == bool(mem[_5449])
                        if not mem[_5449]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4395] = return_data.size
                        mem[_4395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4488 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4395 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4488 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4730 = mem[_4656]
                        if mem[_4656] <= _3019:
                            revert with 0, 'Impossible?!'
                        if mem[_4656] - _3019 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5162] == bool(mem[_5162])
                        if not mem[_5162]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4730 - _3019 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4730 - _3019 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5450] == bool(mem[_5450])
                        if not mem[_5450]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 68)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3008] == bool(mem[_3008])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3076 = mem[_3060]
                mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2952 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4442 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4442 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4611 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4705 = mem[_4611]
                        if mem[_4611] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4611] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5139] == bool(mem[_5139])
                        if not mem[_5139]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4705 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4705 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5427] == bool(mem[_5427])
                        if not mem[_5427]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4383] = return_data.size
                        mem[_4383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4383 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4444 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4706 = mem[_4612]
                        if mem[_4612] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4612] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5140] == bool(mem[_5140])
                        if not mem[_5140]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4706 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4706 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5428] == bool(mem[_5428])
                        if not mem[_5428]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                    call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            _4490 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                            mem[mem[64] + ext_call.return_data[0] + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(ext_call.return_data[0]) + _4490 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4731 = mem[_4659]
                        if mem[_4659] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4659] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5163] == bool(mem[_5163])
                        if not mem[_5163]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4731 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4731 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5451] == bool(mem[_5451])
                        if not mem[_5451]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        _4396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4396] = return_data.size
                        mem[_4396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4492 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4396 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) <= return_data.size:
                                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                            mem[mem[64] + return_data.size + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _4492 + -mem[64] + 68
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4732 = mem[_4660]
                        if mem[_4660] <= _3076:
                            revert with 0, 'Impossible?!'
                        if mem[_4660] - _3076 <= _2950:
                            revert with 0, 'Nope aggregator!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5164] == bool(mem[_5164])
                        if not mem[_5164]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _4732 - _3076 - _2950
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4732 - _3076 - _2950
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5452] == bool(mem[_5452])
                        if not mem[_5452]:
                            revert with 0, 'Withdraw failed!'
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
                s = (6 * ceil32(return_data.size)) + 292
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1513 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1519 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1513 + (32 * _1519) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1519] = mem[(6 * ceil32(return_data.size)) + _1513 + 224 len 32 * _1519]
                require 0 < _1519
                _2947 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2955 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2955] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2955 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2955 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2973 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2973]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3025 = mem[_3013]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2955 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4414 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4677 = mem[_4597]
                            if mem[_4597] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4597] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5125] == bool(mem[_5125])
                            if not mem[_5125]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4677 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4677 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5413] == bool(mem[_5413])
                            if not mem[_5413]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4369] = return_data.size
                            mem[_4369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4369 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4416 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4678 = mem[_4598]
                            if mem[_4598] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4598] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5126] == bool(mem[_5126])
                            if not mem[_5126]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4678 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4678 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5414 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5414] == bool(mem[_5414])
                            if not mem[_5414]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4462 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4631 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4717 = mem[_4631]
                            if mem[_4631] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4631] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5149] == bool(mem[_5149])
                            if not mem[_5149]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4717 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4717 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5437 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5437] == bool(mem[_5437])
                            if not mem[_5437]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4389] = return_data.size
                            mem[_4389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4464 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4389 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4464 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4632 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4718 = mem[_4632]
                            if mem[_4632] <= _3025:
                                revert with 0, 'Impossible?!'
                            if mem[_4632] - _3025 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5150] == bool(mem[_5150])
                            if not mem[_5150]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4718 - _3025 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4718 - _3025 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5438] == bool(mem[_5438])
                            if not mem[_5438]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3014] == bool(mem[_3014])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3085 = mem[_3063]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2955 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4418 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4418 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4681 = mem[_4599]
                            if mem[_4599] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4599] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5127] == bool(mem[_5127])
                            if not mem[_5127]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4681 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4681 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5415] == bool(mem[_5415])
                            if not mem[_5415]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4371] = return_data.size
                            mem[_4371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4371 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4420 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4682 = mem[_4600]
                            if mem[_4600] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4600] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5128 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5128] == bool(mem[_5128])
                            if not mem[_5128]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4682 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4682 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5416] == bool(mem[_5416])
                            if not mem[_5416]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4466 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4466 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4719 = mem[_4635]
                            if mem[_4635] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4635] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5151] == bool(mem[_5151])
                            if not mem[_5151]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4719 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4719 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5439] == bool(mem[_5439])
                            if not mem[_5439]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4390] = return_data.size
                            mem[_4390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4468 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4390 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4468 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4720 = mem[_4636]
                            if mem[_4636] <= _3085:
                                revert with 0, 'Impossible?!'
                            if mem[_4636] - _3085 <= _2947:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5152] == bool(mem[_5152])
                            if not mem[_5152]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4720 - _3085 - _2947
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4720 - _3085 - _2947
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5440] == bool(mem[_5440])
                            if not mem[_5440]:
                                revert with 0, 'Withdraw failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 292
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1514 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1520 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1514 + (32 * _1520) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _1520] = mem[(6 * ceil32(return_data.size)) + _1514 + 224 len 32 * _1520]
                require 0 < _1520
                _2948 = mem[(7 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2956 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2956] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2956 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2956 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2974 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2974]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3027 = mem[_3015]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2956 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4422 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4422 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4685 = mem[_4601]
                            if mem[_4601] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4601] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5129] == bool(mem[_5129])
                            if not mem[_5129]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4685 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4685 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5417] == bool(mem[_5417])
                            if not mem[_5417]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4373] = return_data.size
                            mem[_4373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4424 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4373 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4424 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4686 = mem[_4602]
                            if mem[_4602] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4602] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5130] == bool(mem[_5130])
                            if not mem[_5130]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4686 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4686 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5418 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5418] == bool(mem[_5418])
                            if not mem[_5418]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4470 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4470 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4721 = mem[_4639]
                            if mem[_4639] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4639] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5153] == bool(mem[_5153])
                            if not mem[_5153]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4721 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4721 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5441] == bool(mem[_5441])
                            if not mem[_5441]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4391] = return_data.size
                            mem[_4391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4391 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4472 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4722 = mem[_4640]
                            if mem[_4640] <= _3027:
                                revert with 0, 'Impossible?!'
                            if mem[_4640] - _3027 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5154] == bool(mem[_5154])
                            if not mem[_5154]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4722 - _3027 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4722 - _3027 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5442] == bool(mem[_5442])
                            if not mem[_5442]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3016] == bool(mem[_3016])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3088 = mem[_3064]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2956 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4426 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4426 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4689 = mem[_4603]
                            if mem[_4603] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4603] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5131] == bool(mem[_5131])
                            if not mem[_5131]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4689 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4689 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5419] == bool(mem[_5419])
                            if not mem[_5419]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4375] = return_data.size
                            mem[_4375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4428 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4375 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4428 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4690 = mem[_4604]
                            if mem[_4604] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4604] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5132] == bool(mem[_5132])
                            if not mem[_5132]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4690 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4690 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5420 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5420] == bool(mem[_5420])
                            if not mem[_5420]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4474 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4474 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4723 = mem[_4643]
                            if mem[_4643] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4643] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5155] == bool(mem[_5155])
                            if not mem[_5155]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4723 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4723 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5443] == bool(mem[_5443])
                            if not mem[_5443]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4392] = return_data.size
                            mem[_4392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4476 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4392 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4476 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4724 = mem[_4644]
                            if mem[_4644] <= _3088:
                                revert with 0, 'Impossible?!'
                            if mem[_4644] - _3088 <= _2948:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5156] == bool(mem[_5156])
                            if not mem[_5156]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4724 - _3088 - _2948
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4724 - _3088 - _2948
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5444] == bool(mem[_5444])
                            if not mem[_5444]:
                                revert with 0, 'Withdraw failed!'
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
                s = (7 * ceil32(return_data.size)) + 292
                t = (7 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1511 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
                _1517 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _1511 + (32 * _1517) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1517] = mem[(7 * ceil32(return_data.size)) + _1511 + 224 len 32 * _1517]
                require 0 < _1517
                _2945 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2953 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2953] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2953 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2953 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2971 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2971]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3021 = mem[_3009]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2953 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4398 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4661 = mem[_4589]
                            if mem[_4589] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4589] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5117] == bool(mem[_5117])
                            if not mem[_5117]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4661 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4661 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5405] == bool(mem[_5405])
                            if not mem[_5405]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4361] = return_data.size
                            mem[_4361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4400 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4361 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4400 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4662 = mem[_4590]
                            if mem[_4590] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4590] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5118 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5118] == bool(mem[_5118])
                            if not mem[_5118]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4662 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4662 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5406] == bool(mem[_5406])
                            if not mem[_5406]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4446 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4446 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4709 = mem[_4615]
                            if mem[_4615] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4615] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5141 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5141] == bool(mem[_5141])
                            if not mem[_5141]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4709 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4709 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5429] == bool(mem[_5429])
                            if not mem[_5429]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4385] = return_data.size
                            mem[_4385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4385 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4448 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4710 = mem[_4616]
                            if mem[_4616] <= _3021:
                                revert with 0, 'Impossible?!'
                            if mem[_4616] - _3021 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5142 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5142] == bool(mem[_5142])
                            if not mem[_5142]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4710 - _3021 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4710 - _3021 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5430] == bool(mem[_5430])
                            if not mem[_5430]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3010] == bool(mem[_3010])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3079 = mem[_3061]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2953 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4402 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4665 = mem[_4591]
                            if mem[_4591] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4591] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5119 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5119] == bool(mem[_5119])
                            if not mem[_5119]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4665 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4665 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5407] == bool(mem[_5407])
                            if not mem[_5407]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4363] = return_data.size
                            mem[_4363 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4404 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4363 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4404 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4666 = mem[_4592]
                            if mem[_4592] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4592] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5120 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5120] == bool(mem[_5120])
                            if not mem[_5120]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4666 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4666 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5408] == bool(mem[_5408])
                            if not mem[_5408]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4450 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4450 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4619 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4711 = mem[_4619]
                            if mem[_4619] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4619] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5143 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5143] == bool(mem[_5143])
                            if not mem[_5143]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4711 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4711 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5431 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5431] == bool(mem[_5431])
                            if not mem[_5431]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4386] = return_data.size
                            mem[_4386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4452 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4386 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4452 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4712 = mem[_4620]
                            if mem[_4620] <= _3079:
                                revert with 0, 'Impossible?!'
                            if mem[_4620] - _3079 <= _2945:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5144] == bool(mem[_5144])
                            if not mem[_5144]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4712 - _3079 - _2945
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4712 - _3079 - _2945
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5432] == bool(mem[_5432])
                            if not mem[_5432]:
                                revert with 0, 'Withdraw failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = arg3
                mem[(7 * ceil32(return_data.size)) + 228] = 64
                mem[(7 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 292
                t = (7 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
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
                _1512 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + return_data.size + 192 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _1518 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1512 + (32 * _1518) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _1518] = mem[(7 * ceil32(return_data.size)) + _1512 + 224 len 32 * _1518]
                require 0 < _1518
                _2946 = mem[(8 * ceil32(return_data.size)) + 224]
                require arg4.length >= 96
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
                require cd[(arg4 + 100)] <= test266151307()
                require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= test266151307()
                _2954 = mem[64]
                require mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 32
                mem[_2954] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
                require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
                mem[_2954 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + _2954 + 32] = 0
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[(arg4 + 68)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[(arg4 + 68)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2972 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2972]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3023 = mem[_3011]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2954 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4406 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4406 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4669 = mem[_4593]
                            if mem[_4593] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4593] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5121] == bool(mem[_5121])
                            if not mem[_5121]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4669 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4669 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5409] == bool(mem[_5409])
                            if not mem[_5409]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4365] = return_data.size
                            mem[_4365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4408 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4365 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4408 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4670 = mem[_4594]
                            if mem[_4594] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4594] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5122 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5122] == bool(mem[_5122])
                            if not mem[_5122]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4670 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4670 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5410] == bool(mem[_5410])
                            if not mem[_5410]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4454 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4454 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4713 = mem[_4623]
                            if mem[_4623] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4623] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5145] == bool(mem[_5145])
                            if not mem[_5145]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4713 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4713 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5433 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5433] == bool(mem[_5433])
                            if not mem[_5433]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4387] = return_data.size
                            mem[_4387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4387 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4456 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4624 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4714 = mem[_4624]
                            if mem[_4624] <= _3023:
                                revert with 0, 'Impossible?!'
                            if mem[_4624] - _3023 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5146] == bool(mem[_5146])
                            if not mem[_5146]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4714 - _3023 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4714 - _3023 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5434 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5434] == bool(mem[_5434])
                            if not mem[_5434]:
                                revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = address(cd[(arg4 + 68)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[(arg4 + 68)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3012] == bool(mem[_3012])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3082 = mem[_3062]
                    mem[mem[64] len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]], mem[_2954 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32 len ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) - cd[(arg4 + cd[(arg4 + 100)] + 36)]]
                    if ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) <= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4410 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4673 = mem[_4595]
                            if mem[_4595] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4595] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5123] == bool(mem[_5123])
                            if not mem[_5123]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4673 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4673 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5411] == bool(mem[_5411])
                            if not mem[_5411]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4367] = return_data.size
                            mem[_4367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4367 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4412 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4674 = mem[_4596]
                            if mem[_4596] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4596] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5124] == bool(mem[_5124])
                            if not mem[_5124]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4674 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4674 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5412] == bool(mem[_5412])
                            if not mem[_5412]:
                                revert with 0, 'Withdraw failed!'
                    else:
                        mem[mem[64] + cd[(arg4 + cd[(arg4 + 100)] + 36)]] = 0
                        call address(cd[(arg4 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg4 + cd[(arg4 + 100)] + 36)] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                _4458 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                mem[mem[64] + 68 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                                    revert with 0, 32, ext_call.return_data[0], mem[mem[64] + 68 len ceil32(ext_call.return_data[0])]
                                mem[mem[64] + ext_call.return_data[0] + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(ext_call.return_data[0]) + _4458 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4715 = mem[_4627]
                            if mem[_4627] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4627] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5147] == bool(mem[_5147])
                            if not mem[_5147]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4715 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4715 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5435] == bool(mem[_5435])
                            if not mem[_5435]:
                                revert with 0, 'Withdraw failed!'
                        else:
                            _4388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4388] = return_data.size
                            mem[_4388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4460 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_4388 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) <= return_data.size:
                                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                                mem[mem[64] + return_data.size + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _4460 + -mem[64] + 68
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4716 = mem[_4628]
                            if mem[_4628] <= _3082:
                                revert with 0, 'Impossible?!'
                            if mem[_4628] - _3082 <= _2946:
                                revert with 0, 'Nope aggregator!'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5148 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5148] == bool(mem[_5148])
                            if not mem[_5148]:
                                revert with 0, 'Payback failed!'
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _4716 - _3082 - _2946
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _4716 - _3082 - _2946
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5436 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5436] == bool(mem[_5436])
                            if not mem[_5436]:
                                revert with 0, 'Withdraw failed!'
}



}
