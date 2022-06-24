contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a49c42ce(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b1cc29bc(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: delegate call to non-contract'
        delegate arg1 with:
           funct (Mask(32, 224, unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), 0) >> 224)
             gas gas_remaining wei
            args (Mask(256, -32, unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), 0) << 32)
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}

function sub_84faab1f(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_30] == mem[_30]
            if mem[_30] <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_31] == mem[_31]
            if mem[_31] <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_f338e5a1(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == mem[_40]
            if mem[_40] <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_54] == mem[_54]
                if mem[_54] > -86401:
                    revert with 'NH{q', 17
                if mem[_54] + (24 * 3600) > block.timestamp:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == mem[_41]
            if mem[_41] <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_55] == mem[_55]
                if mem[_55] > -86401:
                    revert with 'NH{q', 17
                if mem[_55] + (24 * 3600) > block.timestamp:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 193 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 39) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 193] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 193 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 197 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length > 0:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            delegate arg1 with:
               funct (Mask(32, 224, 0, address(stor3608), 0) >> 224)
                 gas gas_remaining wei
                args (Mask(256, -32, 0, address(stor3608), 0) << 32)
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length > 0:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            delegate arg1 with:
               funct (Mask(32, 224, 0, address(stor3608), 0) >> 224)
                 gas gas_remaining wei
                args (Mask(256, -32, 0, address(stor3608), 0) << 32)
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length > 0:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
                stor4910 = 0
                if address(stor3608) != address(stor3608):
                    revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                if ext_code.size(arg1) <= 0:
                    revert with 0, 'ERC1967: new implementation is not a contract'
            else:
                if not delegate.return_code:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25, -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25) + 256, 0) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25) + 256
                stor4910 = 0
                if address(stor3608) != address(stor3608):
                    revert with 0, 
                                'ERC1967Upgrade: upgrade breaks further upgrades',
                                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 491 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if ext_code.size(arg1) <= 0:
                    revert with 0, 
                                'ERC1967: new implementation is not a contract',
                                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 491 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            ('gt', ('extcodesize', ('param', 'arg1')), 0)
            address(stor3608) = arg1
            emit Upgraded(arg1);
}



}
