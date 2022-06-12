contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f86e9472(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).level_up(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fd3ae8d2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_59b3e8c0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_877a7b03(?) payable {
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
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a9b958b9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_99e31838(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < cd[68]:
        s = 0
        while s < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * s) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).summon(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * s) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            if mem[_21] < 1:
                revert with 0, 17
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _22 - 1
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, _22 - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_198a5509(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 == arg4:
        require ext_code.size(address(arg2))
        call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args 0, uint32(arg3), 20, 14, 10, 8, 8, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 2 == arg4:
            require ext_code.size(address(arg2))
            call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args 0, uint32(arg3), 12, 10, 10, 8, 8, 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 3 == arg4:
                require ext_code.size(address(arg2))
                call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(arg3), 8, 10, 10, 10, 19, 14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 4 == arg4:
                    require ext_code.size(address(arg2))
                    call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args 0, uint32(arg3), 10, 10, 10, 10, 20, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 5 == arg4:
                        require ext_code.size(address(arg2))
                        call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args 0, uint32(arg3), 20, 10, 14, 8, 8, 8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args 0, uint32(arg3), 20, 14, 10, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 7 == arg4:
                                require ext_code.size(address(arg2))
                                call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args 0, uint32(arg3), 15, 8, 10, 8, 14, 18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 8 == arg4:
                                    require ext_code.size(address(arg2))
                                    call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args 0, uint32(arg3), 18, 14, 10, 8, 15, 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == arg4:
                                        require ext_code.size(address(arg2))
                                        call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args 0, uint32(arg3), 10, 20, 10, 12, 8, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 10 == arg4:
                                            require ext_code.size(address(arg2))
                                            call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(arg3), 8, 10, 10, 20, 12, 8
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 11 == arg4:
                                                require ext_code.size(address(arg2))
                                                call address(arg2).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(arg3), 8, 12, 10, 20, 10, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_0924af38(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 100).length:
            revert with 0, 50
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 == cd[((32 * idx) + cd[100] + 36)]:
            mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[100] = cd[((32 * idx) + cd[68] + 36)]
            mem[132] = 20
            mem[164] = 14
            mem[196] = 10
            mem[228] = 8
            mem[260] = 8
            mem[292] = 8
            require ext_code.size(address(cd[36]))
            call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[68] + 36)], 20, 14, 10, 8, 8, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == cd[((32 * idx) + cd[100] + 36)]:
                mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[100] = cd[((32 * idx) + cd[68] + 36)]
                mem[132] = 12
                mem[164] = 10
                mem[196] = 10
                mem[228] = 8
                mem[260] = 8
                mem[292] = 20
                require ext_code.size(address(cd[36]))
                call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[68] + 36)], 12, 10, 10, 8, 8, 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == cd[((32 * idx) + cd[100] + 36)]:
                    mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[((32 * idx) + cd[68] + 36)]
                    mem[132] = 8
                    mem[164] = 10
                    mem[196] = 10
                    mem[228] = 10
                    mem[260] = 19
                    mem[292] = 14
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[68] + 36)], 8, 10, 10, 10, 19, 14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == cd[((32 * idx) + cd[100] + 36)]:
                        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[((32 * idx) + cd[68] + 36)]
                        mem[132] = 10
                        mem[164] = 10
                        mem[196] = 10
                        mem[228] = 10
                        mem[260] = 20
                        mem[292] = 8
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[68] + 36)], 10, 10, 10, 10, 20, 8
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == cd[((32 * idx) + cd[100] + 36)]:
                            mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[((32 * idx) + cd[68] + 36)]
                            mem[132] = 20
                            mem[164] = 10
                            mem[196] = 14
                            mem[228] = 8
                            mem[260] = 8
                            mem[292] = 8
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[68] + 36)], 20, 10, 14, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == cd[((32 * idx) + cd[100] + 36)]:
                                mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                mem[132] = 20
                                mem[164] = 14
                                mem[196] = 10
                                mem[228] = 8
                                mem[260] = 8
                                mem[292] = 8
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[68] + 36)], 20, 14, 10, 8, 8, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == cd[((32 * idx) + cd[100] + 36)]:
                                    mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                    mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[132] = 15
                                    mem[164] = 8
                                    mem[196] = 10
                                    mem[228] = 8
                                    mem[260] = 14
                                    mem[292] = 18
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[68] + 36)], 15, 8, 10, 8, 14, 18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == cd[((32 * idx) + cd[100] + 36)]:
                                        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                        mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[132] = 18
                                        mem[164] = 14
                                        mem[196] = 10
                                        mem[228] = 8
                                        mem[260] = 15
                                        mem[292] = 8
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[68] + 36)], 18, 14, 10, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == cd[((32 * idx) + cd[100] + 36)]:
                                            mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                            mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[132] = 10
                                            mem[164] = 20
                                            mem[196] = 10
                                            mem[228] = 12
                                            mem[260] = 8
                                            mem[292] = 8
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * idx) + cd[68] + 36)], 10, 20, 10, 12, 8, 8
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == cd[((32 * idx) + cd[100] + 36)]:
                                                mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                                mem[132] = 8
                                                mem[164] = 10
                                                mem[196] = 10
                                                mem[228] = 20
                                                mem[260] = 12
                                                mem[292] = 8
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * idx) + cd[68] + 36)], 8, 10, 10, 20, 12, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == cd[((32 * idx) + cd[100] + 36)]:
                                                    mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                    mem[100] = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[132] = 8
                                                    mem[164] = 12
                                                    mem[196] = 10
                                                    mem[228] = 20
                                                    mem[260] = 10
                                                    mem[292] = 8
                                                    require ext_code.size(address(cd[36]))
                                                    call address(cd[36]).point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args cd[((32 * idx) + cd[68] + 36)], 8, 12, 10, 20, 10, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
