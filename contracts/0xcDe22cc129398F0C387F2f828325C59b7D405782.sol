contract main {




// =====================  Runtime code  =====================


const weth = 0x74b23882a30290451a17c44f4f05243b6b58c76d

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address owner;
address sub_14b78b61Address;
address sub_1b8f959cAddress;
address sub_0834899eAddress;

function sub_0834899e(?) payable {
    return sub_0834899eAddress
}

function sub_14b78b61(?) payable {
    return sub_14b78b61Address
}

function sub_1b8f959c(?) payable {
    return sub_1b8f959cAddress
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

function sub_0dafdf9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0834899eAddress = address(arg1)
}

function sub_44855fa7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_14b78b61Address = address(arg1)
    sub_1b8f959cAddress = address(arg2)
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

function sub_d33c4021(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0xd33c402100000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = address(arg2)
    require ext_code.size(sub_0834899eAddress)
    staticcall sub_0834899eAddress.0xd33c4021 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 == Mask(96, 0, arg1) << 64
    require 0, address(arg2) << 64 <= test266151307()
    require 0, address(arg2) << 64 + 127 < return_data.size + 96
    _6 = mem[0, address(arg2) << 64 + 96]
    if mem[0, address(arg2) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require return_data.size >= 0, address(arg2) << 64 + (32 * _6) + 32
    s = 0, address(arg2) << 64 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = address(_4)
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _6
    idx = 0
    s = mem[64] + 96
    t = ceil32(return_data.size) + 128
    while idx < _6:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _14 + (32 * _6) + -mem[64] + 96
}

function sub_0e69909c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0xd33c402100000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    if address(arg1) != address(arg2):
        mem[132] = address(arg2)
        require ext_code.size(sub_0834899eAddress)
        staticcall sub_0834899eAddress.0xd33c4021 with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        require mem[96 len 4], address(arg1) << 64 == Mask(96, 0, arg1) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require 0, address(arg2) << 64 + 127 < return_data.size + 96
        _14 = mem[0, address(arg2) << 64 + 96]
        if mem[0, address(arg2) << 64 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, address(arg2) << 64 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _14
        require return_data.size >= 0, address(arg2) << 64 + (32 * _14) + 32
        s = 0, address(arg2) << 64 + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _14:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if _14 <= 2:
            if address(arg1) != address(arg2):
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(sub_0834899eAddress)
                staticcall sub_0834899eAddress.0xed824cbc with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _484 = mem[_466]
                require mem[_466] == mem[_466 + 12 len 20]
                _502 = mem[_466 + 32]
                require mem[_466 + 32] == mem[_466 + 44 len 20]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg2)
                if mem[_466 + 12 len 20]:
                    if mem[_466 + 44 len 20]:
                        require ext_code.size(address(_502))
                        staticcall address(_502).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _562 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_562] == mem[_562 + 12 len 20]
                        return address(_484), address(_502), mem[_562 + 12 len 20]
                    require ext_code.size(sub_1b8f959cAddress)
                    staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_613] == mem[_613 + 12 len 20]
                    return address(_484), sub_1b8f959cAddress, mem[_613 + 12 len 20]
                if mem[_466 + 44 len 20]:
                    require ext_code.size(address(_502))
                    staticcall address(_502).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_614] == mem[_614 + 12 len 20]
                    return sub_14b78b61Address, address(_502), mem[_614 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_659] == mem[_659 + 12 len 20]
                return sub_14b78b61Address, sub_1b8f959cAddress, mem[_659 + 12 len 20]
            if address(arg1) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require ext_code.size(sub_0834899eAddress)
                staticcall sub_0834899eAddress.0xed824cbc with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _496 = mem[_485]
                require mem[_485] == mem[_485 + 12 len 20]
                _508 = mem[_485 + 32]
                require mem[_485 + 32] == mem[_485 + 44 len 20]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if mem[_485 + 12 len 20]:
                    if mem[_485 + 44 len 20]:
                        require ext_code.size(address(_508))
                        staticcall address(_508).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_615] == mem[_615 + 12 len 20]
                        return address(_496), address(_508), mem[_615 + 12 len 20]
                    require ext_code.size(sub_1b8f959cAddress)
                    staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_660] == mem[_660 + 12 len 20]
                    return address(_496), sub_1b8f959cAddress, mem[_660 + 12 len 20]
                if mem[_485 + 44 len 20]:
                    require ext_code.size(address(_508))
                    staticcall address(_508).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_661] == mem[_661 + 12 len 20]
                    return sub_14b78b61Address, address(_508), mem[_661 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_691] == mem[_691 + 12 len 20]
                return sub_14b78b61Address, sub_1b8f959cAddress, mem[_691 + 12 len 20]
            mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require ext_code.size(sub_0834899eAddress)
            staticcall sub_0834899eAddress.0xed824cbc with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _497 = mem[_486]
            require mem[_486] == mem[_486 + 12 len 20]
            _509 = mem[_486 + 32]
            require mem[_486 + 32] == mem[_486 + 44 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            if mem[_486 + 12 len 20]:
                if mem[_486 + 44 len 20]:
                    require ext_code.size(address(_509))
                    staticcall address(_509).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_618] == mem[_618 + 12 len 20]
                    return address(_497), address(_509), mem[_618 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_662] == mem[_662 + 12 len 20]
                return address(_497), sub_1b8f959cAddress, mem[_662 + 12 len 20]
            if mem[_486 + 44 len 20]:
                require ext_code.size(address(_509))
                staticcall address(_509).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_663] == mem[_663 + 12 len 20]
                return sub_14b78b61Address, address(_509), mem[_663 + 12 len 20]
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _693 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_693] == mem[_693 + 12 len 20]
            return sub_14b78b61Address, sub_1b8f959cAddress, mem[_693 + 12 len 20]
        if 0 >= _14:
            revert with 'NH{q', 50
        if 1 >= _14:
            revert with 'NH{q', 50
        _453 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_453)
        require ext_code.size(sub_0834899eAddress)
        staticcall sub_0834899eAddress.0xed824cbc with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_453)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _481 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _493 = mem[_481]
        require mem[_481] == mem[_481 + 12 len 20]
        _505 = mem[_481 + 32]
        require mem[_481 + 32] == mem[_481 + 44 len 20]
        if 0 >= _14:
            revert with 'NH{q', 50
        if 1 >= _14:
            revert with 'NH{q', 50
        if mem[_481 + 12 len 20]:
            if mem[_481 + 44 len 20]:
                _572 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = address(_572)
                require ext_code.size(address(_505))
                staticcall address(_505).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_572)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _694 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_694] == mem[_694 + 12 len 20]
                return address(_493), address(_505), mem[_694 + 12 len 20]
            _622 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = address(_622)
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_622)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _717 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_717] == mem[_717 + 12 len 20]
            return address(_493), sub_1b8f959cAddress, mem[_717 + 12 len 20]
        if mem[_481 + 44 len 20]:
            _624 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = address(_624)
            require ext_code.size(address(_505))
            staticcall address(_505).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_624)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _718 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_718] == mem[_718 + 12 len 20]
            return sub_14b78b61Address, address(_505), mem[_718 + 12 len 20]
        _666 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_666)
        require ext_code.size(sub_1b8f959cAddress)
        staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_666)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _736 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_736] == mem[_736 + 12 len 20]
        return sub_14b78b61Address, sub_1b8f959cAddress, mem[_736 + 12 len 20]
    if address(arg1) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        mem[132] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        require ext_code.size(sub_0834899eAddress)
        staticcall sub_0834899eAddress.0xd33c4021 with:
                gas gas_remaining wei
               args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        require mem[96 len 4], address(arg1) << 64 == Mask(96, 0, arg1) << 64
        require 0, 0x21be370d5312f44cb42ce377bc9b8a0c <= test266151307()
        require 0, 0x21be370d5312f44cb42ce377bc9b8a0c + 127 < return_data.size + 96
        _18 = mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96]
        if mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(32 * mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96]) + 97 > test266151307() or ceil32(32 * mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96]) + 97
        mem[ceil32(return_data.size) + 96] = mem[0, 0x21be370d5312f44cb42ce377bc9b8a0c + 96]
        require return_data.size >= 0, 0x21be370d5312f44cb42ce377bc9b8a0c + (32 * _18) + 32
        s = 0, 0x21be370d5312f44cb42ce377bc9b8a0c + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _18:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if _18 <= 2:
            if address(arg1) != address(arg2):
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(sub_0834899eAddress)
                staticcall sub_0834899eAddress.0xed824cbc with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _487 = mem[_471]
                require mem[_471] == mem[_471 + 12 len 20]
                _503 = mem[_471 + 32]
                require mem[_471 + 32] == mem[_471 + 44 len 20]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = address(arg2)
                if mem[_471 + 12 len 20]:
                    if mem[_471 + 44 len 20]:
                        require ext_code.size(address(_503))
                        staticcall address(_503).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_579] == mem[_579 + 12 len 20]
                        return address(_487), address(_503), mem[_579 + 12 len 20]
                    require ext_code.size(sub_1b8f959cAddress)
                    staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_628] == mem[_628 + 12 len 20]
                    return address(_487), sub_1b8f959cAddress, mem[_628 + 12 len 20]
                if mem[_471 + 44 len 20]:
                    require ext_code.size(address(_503))
                    staticcall address(_503).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_629] == mem[_629 + 12 len 20]
                    return sub_14b78b61Address, address(_503), mem[_629 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_669] == mem[_669 + 12 len 20]
                return sub_14b78b61Address, sub_1b8f959cAddress, mem[_669 + 12 len 20]
            if address(arg1) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                require ext_code.size(sub_0834899eAddress)
                staticcall sub_0834899eAddress.0xed824cbc with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _498 = mem[_488]
                require mem[_488] == mem[_488 + 12 len 20]
                _510 = mem[_488 + 32]
                require mem[_488 + 32] == mem[_488 + 44 len 20]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if mem[_488 + 12 len 20]:
                    if mem[_488 + 44 len 20]:
                        require ext_code.size(address(_510))
                        staticcall address(_510).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_630] == mem[_630 + 12 len 20]
                        return address(_498), address(_510), mem[_630 + 12 len 20]
                    require ext_code.size(sub_1b8f959cAddress)
                    staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_670] == mem[_670 + 12 len 20]
                    return address(_498), sub_1b8f959cAddress, mem[_670 + 12 len 20]
                if mem[_488 + 44 len 20]:
                    require ext_code.size(address(_510))
                    staticcall address(_510).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_671] == mem[_671 + 12 len 20]
                    return sub_14b78b61Address, address(_510), mem[_671 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_699] == mem[_699 + 12 len 20]
                return sub_14b78b61Address, sub_1b8f959cAddress, mem[_699 + 12 len 20]
            mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            require ext_code.size(sub_0834899eAddress)
            staticcall sub_0834899eAddress.0xed824cbc with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _499 = mem[_489]
            require mem[_489] == mem[_489 + 12 len 20]
            _511 = mem[_489 + 32]
            require mem[_489 + 32] == mem[_489 + 44 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            if mem[_489 + 12 len 20]:
                if mem[_489 + 44 len 20]:
                    require ext_code.size(address(_511))
                    staticcall address(_511).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_633] == mem[_633 + 12 len 20]
                    return address(_499), address(_511), mem[_633 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_672] == mem[_672 + 12 len 20]
                return address(_499), sub_1b8f959cAddress, mem[_672 + 12 len 20]
            if mem[_489 + 44 len 20]:
                require ext_code.size(address(_511))
                staticcall address(_511).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_673] == mem[_673 + 12 len 20]
                return sub_14b78b61Address, address(_511), mem[_673 + 12 len 20]
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_701] == mem[_701 + 12 len 20]
            return sub_14b78b61Address, sub_1b8f959cAddress, mem[_701 + 12 len 20]
        if 0 >= _18:
            revert with 'NH{q', 50
        if 1 >= _18:
            revert with 'NH{q', 50
        _456 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_456)
        require ext_code.size(sub_0834899eAddress)
        staticcall sub_0834899eAddress.0xed824cbc with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_456)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _482 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _494 = mem[_482]
        require mem[_482] == mem[_482 + 12 len 20]
        _506 = mem[_482 + 32]
        require mem[_482 + 32] == mem[_482 + 44 len 20]
        if 0 >= _18:
            revert with 'NH{q', 50
        if 1 >= _18:
            revert with 'NH{q', 50
        if mem[_482 + 12 len 20]:
            if mem[_482 + 44 len 20]:
                _589 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
                mem[mem[64] + 36] = address(_589)
                require ext_code.size(address(_506))
                staticcall address(_506).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_589)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_702] == mem[_702 + 12 len 20]
                return address(_494), address(_506), mem[_702 + 12 len 20]
            _637 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = address(_637)
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_637)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _724 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_724] == mem[_724 + 12 len 20]
            return address(_494), sub_1b8f959cAddress, mem[_724 + 12 len 20]
        if mem[_482 + 44 len 20]:
            _639 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = address(_639)
            require ext_code.size(address(_506))
            staticcall address(_506).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_639)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _725 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_725] == mem[_725 + 12 len 20]
            return sub_14b78b61Address, address(_506), mem[_725 + 12 len 20]
        _676 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_676)
        require ext_code.size(sub_1b8f959cAddress)
        staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_676)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _740 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_740] == mem[_740 + 12 len 20]
        return sub_14b78b61Address, sub_1b8f959cAddress, mem[_740 + 12 len 20]
    mem[132] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    require ext_code.size(sub_0834899eAddress)
    staticcall sub_0834899eAddress.0xd33c4021 with:
            gas gas_remaining wei
           args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], address(arg1) << 64 == Mask(96, 0, arg1) << 64
    require 0, 0x74b23882a30290451a17c44f4f05243b <= test266151307()
    require 0, 0x74b23882a30290451a17c44f4f05243b + 127 < return_data.size + 96
    _19 = mem[0, 0x74b23882a30290451a17c44f4f05243b + 96]
    if mem[0, 0x74b23882a30290451a17c44f4f05243b + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[0, 0x74b23882a30290451a17c44f4f05243b + 96]) + 97 > test266151307() or ceil32(32 * mem[0, 0x74b23882a30290451a17c44f4f05243b + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, 0x74b23882a30290451a17c44f4f05243b + 96]) + 97
    mem[ceil32(return_data.size) + 96] = mem[0, 0x74b23882a30290451a17c44f4f05243b + 96]
    require return_data.size >= 0, 0x74b23882a30290451a17c44f4f05243b + (32 * _19) + 32
    s = 0, 0x74b23882a30290451a17c44f4f05243b + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _19:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _19 <= 2:
        if address(arg1) != address(arg2):
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(sub_0834899eAddress)
            staticcall sub_0834899eAddress.0xed824cbc with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _490 = mem[_476]
            require mem[_476] == mem[_476 + 12 len 20]
            _504 = mem[_476 + 32]
            require mem[_476 + 32] == mem[_476 + 44 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = address(arg2)
            if mem[_476 + 12 len 20]:
                if mem[_476 + 44 len 20]:
                    require ext_code.size(address(_504))
                    staticcall address(_504).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _596 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_596] == mem[_596 + 12 len 20]
                    return address(_490), address(_504), mem[_596 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_643] == mem[_643 + 12 len 20]
                return address(_490), sub_1b8f959cAddress, mem[_643 + 12 len 20]
            if mem[_476 + 44 len 20]:
                require ext_code.size(address(_504))
                staticcall address(_504).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _644 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_644] == mem[_644 + 12 len 20]
                return sub_14b78b61Address, address(_504), mem[_644 + 12 len 20]
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_679] == mem[_679 + 12 len 20]
            return sub_14b78b61Address, sub_1b8f959cAddress, mem[_679 + 12 len 20]
        if address(arg1) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            require ext_code.size(sub_0834899eAddress)
            staticcall sub_0834899eAddress.0xed824cbc with:
                    gas gas_remaining wei
                   args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _500 = mem[_491]
            require mem[_491] == mem[_491 + 12 len 20]
            _512 = mem[_491 + 32]
            require mem[_491 + 32] == mem[_491 + 44 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if mem[_491 + 12 len 20]:
                if mem[_491 + 44 len 20]:
                    require ext_code.size(address(_512))
                    staticcall address(_512).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    return address(_500), address(_512), mem[_645 + 12 len 20]
                require ext_code.size(sub_1b8f959cAddress)
                staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_680] == mem[_680 + 12 len 20]
                return address(_500), sub_1b8f959cAddress, mem[_680 + 12 len 20]
            if mem[_491 + 44 len 20]:
                require ext_code.size(address(_512))
                staticcall address(_512).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_681] == mem[_681 + 12 len 20]
                return sub_14b78b61Address, address(_512), mem[_681 + 12 len 20]
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_707] == mem[_707 + 12 len 20]
            return sub_14b78b61Address, sub_1b8f959cAddress, mem[_707 + 12 len 20]
        mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        require ext_code.size(sub_0834899eAddress)
        staticcall sub_0834899eAddress.0xed824cbc with:
                gas gas_remaining wei
               args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _492 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _501 = mem[_492]
        require mem[_492] == mem[_492 + 12 len 20]
        _513 = mem[_492 + 32]
        require mem[_492 + 32] == mem[_492 + 44 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        if mem[_492 + 12 len 20]:
            if mem[_492 + 44 len 20]:
                require ext_code.size(address(_513))
                staticcall address(_513).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_648] == mem[_648 + 12 len 20]
                return address(_501), address(_513), mem[_648 + 12 len 20]
            require ext_code.size(sub_1b8f959cAddress)
            staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _682 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_682] == mem[_682 + 12 len 20]
            return address(_501), sub_1b8f959cAddress, mem[_682 + 12 len 20]
        if mem[_492 + 44 len 20]:
            require ext_code.size(address(_513))
            staticcall address(_513).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _683 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_683] == mem[_683 + 12 len 20]
            return sub_14b78b61Address, address(_513), mem[_683 + 12 len 20]
        require ext_code.size(sub_1b8f959cAddress)
        staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _709 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_709] == mem[_709 + 12 len 20]
        return sub_14b78b61Address, sub_1b8f959cAddress, mem[_709 + 12 len 20]
    if 0 >= _19:
        revert with 'NH{q', 50
    if 1 >= _19:
        revert with 'NH{q', 50
    _459 = mem[ceil32(return_data.size) + 160]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
    mem[mem[64] + 36] = address(_459)
    require ext_code.size(sub_0834899eAddress)
    staticcall sub_0834899eAddress.0xed824cbc with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_459)
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _483 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _495 = mem[_483]
    require mem[_483] == mem[_483 + 12 len 20]
    _507 = mem[_483 + 32]
    require mem[_483 + 32] == mem[_483 + 44 len 20]
    if 0 >= _19:
        revert with 'NH{q', 50
    if 1 >= _19:
        revert with 'NH{q', 50
    if mem[_483 + 12 len 20]:
        if mem[_483 + 44 len 20]:
            _606 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
            mem[mem[64] + 36] = address(_606)
            require ext_code.size(address(_507))
            staticcall address(_507).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_606)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_710] == mem[_710 + 12 len 20]
            return address(_495), address(_507), mem[_710 + 12 len 20]
        _652 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_652)
        require ext_code.size(sub_1b8f959cAddress)
        staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_652)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _731 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_731] == mem[_731 + 12 len 20]
        return address(_495), sub_1b8f959cAddress, mem[_731 + 12 len 20]
    if mem[_483 + 44 len 20]:
        _654 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
        mem[mem[64] + 36] = address(_654)
        require ext_code.size(address(_507))
        staticcall address(_507).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_654)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _732 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_732] == mem[_732 + 12 len 20]
        return sub_14b78b61Address, address(_507), mem[_732 + 12 len 20]
    _686 = mem[ceil32(return_data.size) + 160]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
    mem[mem[64] + 36] = address(_686)
    require ext_code.size(sub_1b8f959cAddress)
    staticcall sub_1b8f959cAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_686)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _744 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_744] == mem[_744 + 12 len 20]
    return sub_14b78b61Address, sub_1b8f959cAddress, mem[_744 + 12 len 20]
}



}
