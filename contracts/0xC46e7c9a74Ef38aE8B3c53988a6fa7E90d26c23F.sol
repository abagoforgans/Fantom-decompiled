contract main {




// =====================  Runtime code  =====================


#
#  - sub_855b3804(?)
#
address owner;
address masterAddress;
address sub_2f03e688Address;
uint128 stor5; offset 160
address sub_201f35c6Address;
array of struct stor6;
uint32 stor7;
uint32 stor7; offset 32
uint32 stor7; offset 64
uint32 stor7; offset 96
uint32 stor7; offset 128
uint32 stor7; offset 160
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
    return (stor5 << 224)
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

function sub_dd8adffe(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
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
           args 0, stor6[arg1].field_0, stor6[arg1].field_0, stor6[arg1].field_0, stor6[arg1].field_96, stor6[arg1].field_0, stor6[arg1].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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
            mem[mem[64] + 36] = stor6.length
            mem[mem[64] + 68] = stor6.length.field_32
            mem[mem[64] + 100] = stor6.length.field_64
            mem[mem[64] + 132] = stor6.length.field_96
            mem[mem[64] + 164] = stor6.length.field_128
            mem[mem[64] + 196] = stor6.length.field_160
            require ext_code.size(sub_2f03e688Address)
            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], stor6.length, stor6.length, stor6.length, stor6.length, stor6.length, stor6.length.field_160
        else:
            if mem[_31] == 2:
                mem[mem[64] + 36] = uint32(stor7.field_0)
                mem[mem[64] + 68] = uint32(stor7.field_32)
                mem[mem[64] + 100] = uint32(stor7.field_64)
                mem[mem[64] + 132] = uint32(stor7.field_96)
                mem[mem[64] + 164] = uint32(stor7.field_128)
                mem[mem[64] + 196] = uint32(stor7.field_160)
                require ext_code.size(sub_2f03e688Address)
                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], uint32(stor7.field_0), uint32(stor7.field_0), uint32(stor7.field_0), uint32(stor7.field_0), uint32(stor7.field_0), uint32(stor7.field_160)
            else:
                if mem[_31] == 3:
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
                    if mem[_31] == 10:
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
                        if mem[_31] == 4:
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
                            if mem[_31] == 6:
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
                                if mem[_31] == 7:
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
                                    if mem[_31] == 8:
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
                                        if mem[_31] == 9:
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
                                            if mem[_31] == 5:
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
                                                if mem[_31] != 11:
                                                    mem[mem[64] + 36] = stor6.length
                                                    mem[mem[64] + 68] = stor6.length.field_32
                                                    mem[mem[64] + 100] = stor6.length.field_64
                                                    mem[mem[64] + 132] = stor6.length.field_96
                                                    mem[mem[64] + 164] = stor6.length.field_128
                                                    mem[mem[64] + 196] = stor6.length.field_160
                                                    require ext_code.size(sub_2f03e688Address)
                                                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args cd[((32 * idx) + cd[4] + 36)], stor6.length, stor6.length, stor6.length, stor6.length, stor6.length, stor6.length.field_160
                                                else:
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
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
