contract main {




// =====================  Runtime code  =====================


address owner;
address masterAddress;
address sub_2f03e688Address;
address stor3;
address stor4;
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
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == mem[_211 + 12 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(masterAddress)
        if mem[_211 + 12 len 20] == this.address:
            staticcall masterAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_218] == mem[_218]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if block.timestamp <= mem[_218]:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _228 = mem[_226]
                require mem[_226] == mem[_226]
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
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _240 = mem[_237]
                require mem[_237] == mem[_237]
                mem[mem[64] + 4] = mem[_237]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _240
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_249] == mem[_249]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[_249] > _228:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_201f35c6Address)
                    staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_267] == mem[_267]
                    if block.timestamp > mem[_267]:
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
                        _292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_292] == mem[_292]
                        if mem[_292] > 0:
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
                            _326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_326] == mem[_326]
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
                    require ext_code.size(stor4)
                    staticcall stor4.claimable(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_279] == mem[_279]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_279] <= 0:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor3)
                        staticcall stor3.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_306] == mem[_306]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_306] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_344] == mem[_344]
                            if block.timestamp > mem[_344]:
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
                                _393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_393] == mem[_393]
                                if mem[_393] > 0:
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
                                    _454 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_454] == mem[_454]
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
                            _368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_368] == mem[_368]
                            if block.timestamp > mem[_368]:
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
                                _420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_420] == mem[_420]
                                if mem[_420] > 0:
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
                                    _483 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_483] == mem[_483]
                    else:
                        require ext_code.size(stor4)
                        call stor4.claim(uint256 arg1) with:
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
                        _322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_322] == mem[_322]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_322] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_369] == mem[_369]
                            if block.timestamp > mem[_369]:
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
                                _421 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_421] == mem[_421]
                                if mem[_421] > 0:
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
                                    _484 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_484] == mem[_484]
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
                            _394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_394] == mem[_394]
                            if block.timestamp > mem[_394]:
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
                                _448 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_448] == mem[_448]
                                if mem[_448] > 0:
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
                                    _511 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_511] == mem[_511]
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
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _235 = mem[_232]
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
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _247 = mem[_245]
                require mem[_245] == mem[_245]
                mem[mem[64] + 4] = mem[_245]
                require ext_code.size(masterAddress)
                staticcall masterAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _247
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == mem[_257]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[_257] > _235:
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
                        _307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_307] == mem[_307]
                        if mem[_307] > 0:
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
                            _348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_348] == mem[_348]
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
                    require ext_code.size(stor4)
                    staticcall stor4.claimable(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_291] == mem[_291]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_291] <= 0:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor3)
                        staticcall stor3.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_323] == mem[_323]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_323] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_370] == mem[_370]
                            if block.timestamp > mem[_370]:
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
                                _422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_422] == mem[_422]
                                if mem[_422] > 0:
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
                                    _485 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_485] == mem[_485]
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
                            _395 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_395] == mem[_395]
                            if block.timestamp > mem[_395]:
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
                                _449 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_449] == mem[_449]
                                if mem[_449] > 0:
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
                                    _512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_512] == mem[_512]
                    else:
                        require ext_code.size(stor4)
                        call stor4.claim(uint256 arg1) with:
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
                        _342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_342] == mem[_342]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_342] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_201f35c6Address)
                            staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_396] == mem[_396]
                            if block.timestamp > mem[_396]:
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
                                _450 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_450] == mem[_450]
                                if mem[_450] > 0:
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
                                    _513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_513] == mem[_513]
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
                            _423 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_423] == mem[_423]
                            if block.timestamp > mem[_423]:
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
                                _478 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_478] == mem[_478]
                                if mem[_478] > 0:
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
                                    _535 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_535] == mem[_535]
        else:
            staticcall masterAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == mem[_217 + 12 len 20]
            mem[mem[64] + 4] = mem[_217 + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(masterAddress)
            staticcall masterAddress.0xe985e9c5 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_230] == bool(mem[_230])
            if mem[_230]:
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
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] == mem[_243]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if block.timestamp <= mem[_243]:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _263 = mem[_258]
                    require mem[_258] == mem[_258]
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
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _287 = mem[_281]
                    require mem[_281] == mem[_281]
                    mem[mem[64] + 4] = mem[_281]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _287
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_305] == mem[_305]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_305] > _263:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_340] == mem[_340]
                        if block.timestamp > mem[_340]:
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
                            _390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_390] == mem[_390]
                            if mem[_390] > 0:
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
                                _445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_445] == mem[_445]
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
                        require ext_code.size(stor4)
                        staticcall stor4.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_362] == mem[_362]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_362] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor3)
                            staticcall stor3.claimable(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_411] == mem[_411]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if mem[_411] <= 0:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_471] == mem[_471]
                                if block.timestamp > mem[_471]:
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
                                    _526 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_526] == mem[_526]
                                    if mem[_526] > 0:
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
                                        _564 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_564] == mem[_564]
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
                                _500 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_500] == mem[_500]
                                if block.timestamp > mem[_500]:
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
                                    _545 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_545] == mem[_545]
                                    if mem[_545] > 0:
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
                                        _578 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_578] == mem[_578]
                        else:
                            require ext_code.size(stor4)
                            call stor4.claim(uint256 arg1) with:
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
                            _439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_439] == mem[_439]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if mem[_439] <= 0:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _501 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_501] == mem[_501]
                                if block.timestamp > mem[_501]:
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
                                    _546 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_546] == mem[_546]
                                    if mem[_546] > 0:
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
                                        _579 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_579] == mem[_579]
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
                                _527 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_527] == mem[_527]
                                if block.timestamp > mem[_527]:
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
                                    _561 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_561] == mem[_561]
                                    if mem[_561] > 0:
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
                                        _591 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_591] == mem[_591]
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
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _274 = mem[_269]
                    require mem[_269] == mem[_269]
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
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _300 = mem[_294]
                    require mem[_294] == mem[_294]
                    mem[mem[64] + 4] = mem[_294]
                    require ext_code.size(masterAddress)
                    staticcall masterAddress.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _300
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_320] == mem[_320]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if mem[_320] > _274:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(sub_201f35c6Address)
                        staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_366] == mem[_366]
                        if block.timestamp > mem[_366]:
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
                            _416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_416] == mem[_416]
                            if mem[_416] > 0:
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
                                _476 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_476] == mem[_476]
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
                        require ext_code.size(stor4)
                        staticcall stor4.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_385] == mem[_385]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if mem[_385] <= 0:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor3)
                            staticcall stor3.claimable(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_440] == mem[_440]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if mem[_440] <= 0:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _502 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_502] == mem[_502]
                                if block.timestamp > mem[_502]:
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
                                    _547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_547] == mem[_547]
                                    if mem[_547] > 0:
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
                                        _580 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_580] == mem[_580]
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
                                _528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_528] == mem[_528]
                                if block.timestamp > mem[_528]:
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
                                    _562 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_562] == mem[_562]
                                    if mem[_562] > 0:
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
                                        _592 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_592] == mem[_592]
                        else:
                            require ext_code.size(stor4)
                            call stor4.claim(uint256 arg1) with:
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
                            _469 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_469] == mem[_469]
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if mem[_469] <= 0:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(sub_201f35c6Address)
                                staticcall sub_201f35c6Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _529 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_529] == mem[_529]
                                if block.timestamp > mem[_529]:
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
                                    _563 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_563] == mem[_563]
                                    if mem[_563] > 0:
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
                                        _593 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_593] == mem[_593]
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
                                _548 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_548] == mem[_548]
                                if block.timestamp > mem[_548]:
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
                                    _577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_577] == mem[_577]
                                    if mem[_577] > 0:
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
                                        _599 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_599] == mem[_599]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
