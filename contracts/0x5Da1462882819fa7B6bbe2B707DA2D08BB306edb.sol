contract main {




// =====================  Runtime code  =====================


address owner;
address masterAddress;
address sub_2f03e688Address;
address stor3;
address sub_201f35c6Address;
uint128 stor6; offset 160
address stor6;
array of struct stor7;
uint32 stor8;
uint32 stor8; offset 32
uint32 stor8; offset 64
uint32 stor8; offset 96
uint32 stor8; offset 128
uint32 stor8; offset 160
uint32 stor9;
uint32 stor9; offset 32
uint32 stor9; offset 64
uint32 stor9; offset 96
uint32 stor9; offset 128
uint32 stor9; offset 160
uint32 stor10;
uint32 stor10; offset 32
uint32 stor10; offset 64
uint32 stor10; offset 96
uint32 stor10; offset 128
uint32 stor10; offset 160
uint32 stor11;
uint32 stor11; offset 32
uint32 stor11; offset 64
uint32 stor11; offset 96
uint32 stor11; offset 128
uint32 stor11; offset 160
uint32 stor12;
uint32 stor12; offset 32
uint32 stor12; offset 64
uint32 stor12; offset 96
uint32 stor12; offset 128
uint32 stor12; offset 160
uint32 stor13;
uint32 stor13; offset 32
uint32 stor13; offset 64
uint32 stor13; offset 96
uint32 stor13; offset 128
uint32 stor13; offset 160
uint32 stor14;
uint32 stor14; offset 32
uint32 stor14; offset 64
uint32 stor14; offset 96
uint32 stor14; offset 128
uint32 stor14; offset 160

function sub_201f35c6(?) payable {
    return sub_201f35c6Address
}

function sub_2f03e688(?) payable {
    return sub_2f03e688Address
}

function owner() payable {
    return owner
}

function master() payable {
    return masterAddress
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

function dd(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 0
    if arg1 == 2:
        return 1
    if arg1 == 3:
        return 2
    if arg1 == 10:
        return 2
    if arg1 == 4:
        return 3
    if arg1 == 6:
        return 4
    if arg1 == 7:
        return 4
    if arg1 == 8:
        return 5
    if arg1 == 9:
        return 6
    if arg1 == 5:
        return 6
    if arg1 != 11:
        return 0
    return 7
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    emit 0xb57a07ac: address(arg1), address(arg2), tx.origin, arg3, Array(len=arg4.length, data=arg4[all]), gas_remaining
    require ext_code.size(masterAddress)
    call masterAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), tx.origin, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (Mask(96, 0, stor6.field_160) << 224)
}

function sub_51341fe2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        call masterAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e385323a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 8:
        revert with 'NH{q', 50
    if arg1 >= 8:
        revert with 'NH{q', 50
    if arg1 >= 8:
        revert with 'NH{q', 50
    if arg1 >= 8:
        revert with 'NH{q', 50
    if arg1 >= 8:
        revert with 'NH{q', 50
    if arg1 >= 8:
        revert with 'NH{q', 50
    require ext_code.size(sub_2f03e688Address)
    staticcall sub_2f03e688Address.calculate_point_buy(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
            gas gas_remaining wei
           args 0, stor7[arg1].field_0, stor7[arg1].field_0, stor7[arg1].field_0, stor7[arg1].field_96, stor7[arg1].field_0, stor7[arg1].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_3d4936ac(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(masterAddress)
        staticcall masterAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19 + 12 len 20]
        mem[mem[64] + 4] = mem[_19 + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(masterAddress)
        staticcall masterAddress.0xe985e9c5 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_23] == bool(mem[_23])
        if mem[_23]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(masterAddress)
            staticcall masterAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == mem[_27 + 12 len 20]
            if mem[_27 + 12 len 20] != this.address:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(masterAddress)
                call masterAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_dd8adffe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        staticcall masterAddress.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19 + 12 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if mem[_19 + 12 len 20] == this.address:
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(masterAddress)
            call masterAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(masterAddress)
            staticcall masterAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == mem[_25 + 12 len 20]
            mem[mem[64] + 4] = mem[_25 + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(masterAddress)
            staticcall masterAddress.0xe985e9c5 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == bool(mem[_29])
            if mem[_29]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                call masterAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_083beed4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint8(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(stor6.field_0))
        staticcall address(stor6.field_0).get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 1152
        require _12 + 31 < _12 + return_data.size
        _13 = mem[64]
        if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 1152
        require 1152 <= return_data.size
        s = 0
        t = _12
        u = _13
        while s < 36:
            require mem[t] == mem[t + 31 len 1]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if mem[_13 + 255 len 1] < uint8(cd[36]):
            mem[_13 + 224] = uint8(cd[36])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xe67d77e800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            s = 0
            t = _13
            u = mem[64] + 36
            while s < 36:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(stor6.field_0))
            staticcall address(stor6.field_0).0xe67d77e8 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
            if mem[_21]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                s = 0
                t = _13
                u = mem[64] + 36
                while s < 36:
                    mem[u] = mem[t + 31 len 1]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x54d3652a with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9150f451(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        staticcall masterAddress.class(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        if mem[_31] == 1:
            mem[mem[64] + 36] = stor7.length
            mem[mem[64] + 68] = stor7.length.field_32
            mem[mem[64] + 100] = stor7.length.field_64
            mem[mem[64] + 132] = stor7.length.field_96
            mem[mem[64] + 164] = stor7.length.field_128
            mem[mem[64] + 196] = stor7.length.field_160
            require ext_code.size(sub_2f03e688Address)
            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], stor7.length, stor7.length, stor7.length, stor7.length, stor7.length, stor7.length.field_160
        else:
            if mem[_31] == 2:
                mem[mem[64] + 36] = uint32(stor8.field_0)
                mem[mem[64] + 68] = uint32(stor8.field_32)
                mem[mem[64] + 100] = uint32(stor8.field_64)
                mem[mem[64] + 132] = uint32(stor8.field_96)
                mem[mem[64] + 164] = uint32(stor8.field_128)
                mem[mem[64] + 196] = uint32(stor8.field_160)
                require ext_code.size(sub_2f03e688Address)
                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], uint32(stor8.field_0), uint32(stor8.field_0), uint32(stor8.field_0), uint32(stor8.field_0), uint32(stor8.field_0), uint32(stor8.field_160)
            else:
                if mem[_31] == 3:
                    mem[mem[64] + 36] = uint32(stor9.field_0)
                    mem[mem[64] + 68] = uint32(stor9.field_32)
                    mem[mem[64] + 100] = uint32(stor9.field_64)
                    mem[mem[64] + 132] = uint32(stor9.field_96)
                    mem[mem[64] + 164] = uint32(stor9.field_128)
                    mem[mem[64] + 196] = uint32(stor9.field_160)
                    require ext_code.size(sub_2f03e688Address)
                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)], uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_160)
                else:
                    if mem[_31] == 10:
                        mem[mem[64] + 36] = uint32(stor9.field_0)
                        mem[mem[64] + 68] = uint32(stor9.field_32)
                        mem[mem[64] + 100] = uint32(stor9.field_64)
                        mem[mem[64] + 132] = uint32(stor9.field_96)
                        mem[mem[64] + 164] = uint32(stor9.field_128)
                        mem[mem[64] + 196] = uint32(stor9.field_160)
                        require ext_code.size(sub_2f03e688Address)
                        call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_0), uint32(stor9.field_160)
                    else:
                        if mem[_31] == 4:
                            mem[mem[64] + 36] = uint32(stor10.field_0)
                            mem[mem[64] + 68] = uint32(stor10.field_32)
                            mem[mem[64] + 100] = uint32(stor10.field_64)
                            mem[mem[64] + 132] = uint32(stor10.field_96)
                            mem[mem[64] + 164] = uint32(stor10.field_128)
                            mem[mem[64] + 196] = uint32(stor10.field_160)
                            require ext_code.size(sub_2f03e688Address)
                            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)], uint32(stor10.field_0), uint32(stor10.field_0), uint32(stor10.field_0), uint32(stor10.field_0), uint32(stor10.field_0), uint32(stor10.field_160)
                        else:
                            if mem[_31] == 6:
                                mem[mem[64] + 36] = uint32(stor11.field_0)
                                mem[mem[64] + 68] = uint32(stor11.field_32)
                                mem[mem[64] + 100] = uint32(stor11.field_64)
                                mem[mem[64] + 132] = uint32(stor11.field_96)
                                mem[mem[64] + 164] = uint32(stor11.field_128)
                                mem[mem[64] + 196] = uint32(stor11.field_160)
                                require ext_code.size(sub_2f03e688Address)
                                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)], uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_160)
                            else:
                                if mem[_31] == 7:
                                    mem[mem[64] + 36] = uint32(stor11.field_0)
                                    mem[mem[64] + 68] = uint32(stor11.field_32)
                                    mem[mem[64] + 100] = uint32(stor11.field_64)
                                    mem[mem[64] + 132] = uint32(stor11.field_96)
                                    mem[mem[64] + 164] = uint32(stor11.field_128)
                                    mem[mem[64] + 196] = uint32(stor11.field_160)
                                    require ext_code.size(sub_2f03e688Address)
                                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)], uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_0), uint32(stor11.field_160)
                                else:
                                    if mem[_31] == 8:
                                        mem[mem[64] + 36] = uint32(stor12.field_0)
                                        mem[mem[64] + 68] = uint32(stor12.field_32)
                                        mem[mem[64] + 100] = uint32(stor12.field_64)
                                        mem[mem[64] + 132] = uint32(stor12.field_96)
                                        mem[mem[64] + 164] = uint32(stor12.field_128)
                                        mem[mem[64] + 196] = uint32(stor12.field_160)
                                        require ext_code.size(sub_2f03e688Address)
                                        call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)], uint32(stor12.field_0), uint32(stor12.field_0), uint32(stor12.field_0), uint32(stor12.field_0), uint32(stor12.field_0), uint32(stor12.field_160)
                                    else:
                                        if mem[_31] == 9:
                                            mem[mem[64] + 36] = uint32(stor13.field_0)
                                            mem[mem[64] + 68] = uint32(stor13.field_32)
                                            mem[mem[64] + 100] = uint32(stor13.field_64)
                                            mem[mem[64] + 132] = uint32(stor13.field_96)
                                            mem[mem[64] + 164] = uint32(stor13.field_128)
                                            mem[mem[64] + 196] = uint32(stor13.field_160)
                                            require ext_code.size(sub_2f03e688Address)
                                            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * idx) + cd[4] + 36)], uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_160)
                                        else:
                                            if mem[_31] == 5:
                                                mem[mem[64] + 36] = uint32(stor13.field_0)
                                                mem[mem[64] + 68] = uint32(stor13.field_32)
                                                mem[mem[64] + 100] = uint32(stor13.field_64)
                                                mem[mem[64] + 132] = uint32(stor13.field_96)
                                                mem[mem[64] + 164] = uint32(stor13.field_128)
                                                mem[mem[64] + 196] = uint32(stor13.field_160)
                                                require ext_code.size(sub_2f03e688Address)
                                                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * idx) + cd[4] + 36)], uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_0), uint32(stor13.field_160)
                                            else:
                                                if mem[_31] != 11:
                                                    mem[mem[64] + 36] = stor7.length
                                                    mem[mem[64] + 68] = stor7.length.field_32
                                                    mem[mem[64] + 100] = stor7.length.field_64
                                                    mem[mem[64] + 132] = stor7.length.field_96
                                                    mem[mem[64] + 164] = stor7.length.field_128
                                                    mem[mem[64] + 196] = stor7.length.field_160
                                                    require ext_code.size(sub_2f03e688Address)
                                                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args cd[((32 * idx) + cd[4] + 36)], stor7.length, stor7.length, stor7.length, stor7.length, stor7.length, stor7.length.field_160
                                                else:
                                                    mem[mem[64] + 36] = uint32(stor14.field_0)
                                                    mem[mem[64] + 68] = uint32(stor14.field_32)
                                                    mem[mem[64] + 100] = uint32(stor14.field_64)
                                                    mem[mem[64] + 132] = uint32(stor14.field_96)
                                                    mem[mem[64] + 164] = uint32(stor14.field_128)
                                                    mem[mem[64] + 196] = uint32(stor14.field_160)
                                                    require ext_code.size(sub_2f03e688Address)
                                                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args cd[((32 * idx) + cd[4] + 36)], uint32(stor14.field_0), uint32(stor14.field_0), uint32(stor14.field_0), uint32(stor14.field_0), uint32(stor14.field_0), uint32(stor14.field_160)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_855b3804(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        staticcall masterAddress.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == mem[_185 + 12 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        if mem[_185 + 12 len 20] == this.address:
            staticcall masterAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_192] == mem[_192]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if block.timestamp <= mem[_192]:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _202 = mem[_200]
                require mem[_200] == mem[_200]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _211 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_211]
                require mem[_211] == mem[_211]
                mem[mem[64] + 4] = mem[_211]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_223] == mem[_223]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[_223] > _202:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_201f35c6Address)
                    staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_241] == mem[_241]
                    if block.timestamp > mem[_241]:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_266] == mem[_266]
                        if mem[_266] > 0:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            call sub_201f35c6Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _300 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_300] == mem[_300]
                else:
                    require ext_code.size(masterAddress)
                    call masterAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(stor3)
                    staticcall stor3.claimable(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_253] == mem[_253]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_253] <= 0:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_280] == mem[_280]
                        if block.timestamp > mem[_280]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_315] == mem[_315]
                            if mem[_315] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_354] == mem[_354]
                    else:
                        require ext_code.size(stor3)
                        call stor3.claim(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_296] == mem[_296]
                        if block.timestamp > mem[_296]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_334] == mem[_334]
                            if mem[_334] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_370] == mem[_370]
            else:
                require ext_code.size(masterAddress)
                call masterAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _209 = mem[_206]
                require mem[_206] == mem[_206]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _221 = mem[_219]
                require mem[_219] == mem[_219]
                mem[mem[64] + 4] = mem[_219]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _221
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_231] == mem[_231]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[_231] > _209:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_201f35c6Address)
                    staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_254] == mem[_254]
                    if block.timestamp > mem[_254]:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_281] == mem[_281]
                        if mem[_281] > 0:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            call sub_201f35c6Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_319] == mem[_319]
                else:
                    require ext_code.size(masterAddress)
                    call masterAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(stor3)
                    staticcall stor3.claimable(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_265] == mem[_265]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_265] <= 0:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_297] == mem[_297]
                        if block.timestamp > mem[_297]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_335] == mem[_335]
                            if mem[_335] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_371] == mem[_371]
                    else:
                        require ext_code.size(stor3)
                        call stor3.claim(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _316 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_316] == mem[_316]
                        if block.timestamp > mem[_316]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_350] == mem[_350]
                            if mem[_350] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_388] == mem[_388]
        else:
            staticcall masterAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_191] == mem[_191 + 12 len 20]
            mem[mem[64] + 4] = mem[_191 + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(masterAddress)
            staticcall masterAddress.0xe985e9c5 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == bool(mem[_204])
            if mem[_204]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == mem[_217]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if block.timestamp <= mem[_217]:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _237 = mem[_232]
                    require mem[_232] == mem[_232]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.level(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _261 = mem[_255]
                    require mem[_255] == mem[_255]
                    mem[mem[64] + 4] = mem[_255]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _261
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_279] == mem[_279]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_279] > _237:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_312] == mem[_312]
                        if block.timestamp > mem[_312]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_347] == mem[_347]
                            if mem[_347] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_385] == mem[_385]
                    else:
                        require ext_code.size(masterAddress)
                        call masterAddress.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor3)
                        staticcall stor3.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_329] == mem[_329]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_329] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_363] == mem[_363]
                            if block.timestamp > mem[_363]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_397] == mem[_397]
                                if mem[_397] > 0:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(sub_201f35c6Address)
                                    call sub_201f35c6Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _416 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_416] == mem[_416]
                        else:
                            require ext_code.size(stor3)
                            call stor3.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_382] == mem[_382]
                            if block.timestamp > mem[_382]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_407] == mem[_407]
                                if mem[_407] > 0:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(sub_201f35c6Address)
                                    call sub_201f35c6Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _423 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_423] == mem[_423]
                else:
                    require ext_code.size(masterAddress)
                    call masterAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _243 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _248 = mem[_243]
                    require mem[_243] == mem[_243]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.level(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _274 = mem[_268]
                    require mem[_268] == mem[_268]
                    mem[mem[64] + 4] = mem[_268]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _274
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_294] == mem[_294]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_294] > _248:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_332] == mem[_332]
                        if block.timestamp > mem[_332]:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_364] == mem[_364]
                            if mem[_364] > 0:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                call sub_201f35c6Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _399 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_399] == mem[_399]
                    else:
                        require ext_code.size(masterAddress)
                        call masterAddress.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor3)
                        staticcall stor3.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_345] == mem[_345]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_345] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_383] == mem[_383]
                            if block.timestamp > mem[_383]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_408] == mem[_408]
                                if mem[_408] > 0:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(sub_201f35c6Address)
                                    call sub_201f35c6Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _424 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_424] == mem[_424]
                        else:
                            require ext_code.size(stor3)
                            call stor3.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _398 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_398] == mem[_398]
                            if block.timestamp > mem[_398]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_415] == mem[_415]
                                if mem[_415] > 0:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(sub_201f35c6Address)
                                    call sub_201f35c6Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _429 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_429] == mem[_429]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
