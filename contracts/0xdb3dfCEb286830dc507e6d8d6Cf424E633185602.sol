contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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

function sub_d20391d4(?) payable {
    require calldata.size - 4 >= 352
    require 356 <= calldata.size
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require arg1 == uint8(arg1)
    if var31002 >= uint8(arg1):
        require arg2 == uint8(arg2)
        if var42002 < uint8(arg2):
            mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 2
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            call var46002.mem[var46004 len 4] with:
                 gas gas_remaining wei
                args mem[var46004 + 4 len var46005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var50001 == -1:
                revert with 0, 17
            require arg2 == uint8(arg2)
            # nil
        else:
            require arg3 == uint8(arg3)
            if var53002 >= uint8(arg3):
                require arg4 == uint8(arg4)
                # nil
            else:
                mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = 3
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call var57002.mem[var57004 len 4] with:
                     gas gas_remaining wei
                    args mem[var57004 + 4 len var57005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var61001 == -1:
                    revert with 0, 17
                # nil
    else:
        mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 1
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        call var35002.mem[var35004 len 4] with:
             gas gas_remaining wei
            args mem[var35004 + 4 len var35005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var39001 == -1:
            revert with 0, 17
        require arg1 == uint8(arg1)
        if var53002 >= uint8(arg1):
            require arg2 == uint8(arg2)
            # nil
        else:
            mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 1
            require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
            call var57002.mem[var57004 len 4] with:
                 gas gas_remaining wei
                args mem[var57004 + 4 len var57005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}



}
