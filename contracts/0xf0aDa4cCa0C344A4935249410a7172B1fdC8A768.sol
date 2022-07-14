contract main {




// =====================  Runtime code  =====================


#
#  - sub_00d79885(?)
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - definixCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - polyZapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1750699e(?)
#  - sub_1b4dd2e9(?)
#  - pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1c9f2b97(?)
#  - polydexCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_21aa670e(?)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_29a9cf88(?)
#  - sub_2b2fd72c(?)
#  - sub_39815037(?)
#  - sub_3b1365d8(?)
#  - jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_40c77747(?)
#  - wardenCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_48639c9d(?)
#  - sub_48c5b27e(?)
#  - cheeseswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_5c629f0f(?)
#  - sub_61987d16(?)
#  - coinswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_783a23b3(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_8955316a(?)
#  - zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_9955d5b1(?)
#  - sub_9b6dda6e(?)
#  - sub_b48bd9a4(?)
#  - sub_b9103bf3(?)
#  - sub_bb4d259f(?)
#  - apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_c0dfa316(?)
#  - shibaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_cb749d94(?)
#  - ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_cdc84872(?)
#  - sub_d053452f(?)
#  - sub_e0d4e83d(?)
#  - cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - planetCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_f05ffd30(?)
#  - sub_f17194aa(?)
#  - sub_fd5cc49d(?)
#  - sub_fdb610cd(?)
#
mapping of uint8 stor0;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function operator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(msg.sender)]:
        stor0[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(msg.sender)]:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_735bed27(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if not arg2.length:
        if 0 >= arg2.length:
            revert with 'NH{q', 50
        mem[128] = arg1
        if arg2.length < 1:
            revert with 'NH{q', 17
        if var318002 < arg2.length - 1:
            if var320001 >= arg2.length:
                revert with 'NH{q', 50
            # nil
        else:
            mem[(32 * arg2.length) + 128] = 32
            mem[(32 * arg2.length) + 160] = arg2.length
            mem[(32 * arg2.length) + 192 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            return memory
              from (32 * arg2.length) + 128
               len (96 * arg2.length) + 64
    else:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        if 0 >= arg2.length:
            revert with 'NH{q', 50
        mem[128] = arg1
        if arg2.length < 1:
            revert with 'NH{q', 17
        if var319002 < arg2.length - 1:
            if var321001 >= arg2.length:
                revert with 'NH{q', 50
            # nil
        else:
            mem[(32 * arg2.length) + 128] = 32
            mem[(32 * arg2.length) + 160] = arg2.length
            mem[(32 * arg2.length) + 192 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
            return memory
              from (32 * arg2.length) + 128
               len (96 * arg2.length) + 64
}

function sub_c9ba946a(?) payable {
    require calldata.size - 4 >= 160
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
    require cd[132] == cd[132]
    if not stor0[address(msg.sender)]:
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if not ('cd', 36).length:
        if var326002 < ('cd', 36).length - 1:
            if var328001 >= ('cd', 36).length:
                revert with 'NH{q', 50
            # nil
        else:
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ext_code.size(address(('cd', 68)[0]))
            if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != this.address:
                call address(('cd', 68)[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(('cd', 36)[0]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if var558001 >= ('cd', 36).length - 1:
                require cd[((32 * var558001) + cd[36] + 36)] == address(cd[((32 * var558001) + cd[36] + 36)])
                if var558001 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var558001) + cd[68] + 36)] == address(cd[((32 * var558001) + cd[68] + 36)])
                if var558001 > -2:
                    revert with 'NH{q', 17
                if var558001 + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var558001 + 1) + cd[68] + 36)] == address(cd[((32 * var558001 + 1) + cd[68] + 36)])
                if var558001 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * var558001) + cd[36] + 36)]))
                staticcall address(cd[((32 * var558001) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if address(cd[((32 * var558001) + cd[68] + 36)]) < address(cd[((32 * var558001 + 1) + cd[68] + 36)]):
                    require ext_code.size(address(cd[((32 * var558001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var558001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var558001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var558001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var558001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var558001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var558001) + cd[68] + 36)]) != address(cd[((32 * var558001) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var558001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var558001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var558001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var558001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var558001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var558001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var558001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var558001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                else:
                    require ext_code.size(address(cd[((32 * var558001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var558001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var558001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var558001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var558001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var558001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var558001) + cd[68] + 36)]) != address(cd[((32 * var558001 + 1) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var558001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var558001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var558001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var558001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var558001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var558001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var558001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var558001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var558001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
            else:
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 36)[0]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if var552001 >= ('cd', 36).length - 1:
                require cd[((32 * var552001) + cd[36] + 36)] == address(cd[((32 * var552001) + cd[36] + 36)])
                if var552001 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var552001) + cd[68] + 36)] == address(cd[((32 * var552001) + cd[68] + 36)])
                if var552001 > -2:
                    revert with 'NH{q', 17
                if var552001 + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var552001 + 1) + cd[68] + 36)] == address(cd[((32 * var552001 + 1) + cd[68] + 36)])
                if var552001 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * var552001) + cd[36] + 36)]))
                staticcall address(cd[((32 * var552001) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if address(cd[((32 * var552001) + cd[68] + 36)]) < address(cd[((32 * var552001 + 1) + cd[68] + 36)]):
                    require ext_code.size(address(cd[((32 * var552001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var552001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var552001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var552001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var552001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var552001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var552001) + cd[68] + 36)]) != address(cd[((32 * var552001) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var552001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var552001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var552001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var552001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var552001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var552001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var552001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var552001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                else:
                    require ext_code.size(address(cd[((32 * var552001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var552001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var552001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var552001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var552001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var552001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var552001) + cd[68] + 36)]) != address(cd[((32 * var552001 + 1) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var552001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var552001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var552001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var552001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var552001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var552001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var552001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var552001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var552001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
    else:
        if var327002 < ('cd', 36).length - 1:
            if var329001 >= ('cd', 36).length:
                revert with 'NH{q', 50
            # nil
        else:
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ext_code.size(address(('cd', 68)[0]))
            if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != this.address:
                call address(('cd', 68)[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(('cd', 36)[0]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if var559001 >= ('cd', 36).length - 1:
                require cd[((32 * var559001) + cd[36] + 36)] == address(cd[((32 * var559001) + cd[36] + 36)])
                if var559001 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var559001) + cd[68] + 36)] == address(cd[((32 * var559001) + cd[68] + 36)])
                if var559001 > -2:
                    revert with 'NH{q', 17
                if var559001 + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var559001 + 1) + cd[68] + 36)] == address(cd[((32 * var559001 + 1) + cd[68] + 36)])
                if var559001 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * var559001) + cd[36] + 36)]))
                staticcall address(cd[((32 * var559001) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if address(cd[((32 * var559001) + cd[68] + 36)]) < address(cd[((32 * var559001 + 1) + cd[68] + 36)]):
                    require ext_code.size(address(cd[((32 * var559001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var559001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var559001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var559001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var559001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var559001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var559001) + cd[68] + 36)]) != address(cd[((32 * var559001) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var559001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var559001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var559001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var559001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var559001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var559001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var559001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var559001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                else:
                    require ext_code.size(address(cd[((32 * var559001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var559001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var559001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var559001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var559001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var559001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var559001) + cd[68] + 36)]) != address(cd[((32 * var559001 + 1) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var559001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var559001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var559001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var559001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var559001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var559001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var559001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var559001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var559001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
            else:
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 36)[0]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if var553001 >= ('cd', 36).length - 1:
                require cd[((32 * var553001) + cd[36] + 36)] == address(cd[((32 * var553001) + cd[36] + 36)])
                if var553001 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var553001) + cd[68] + 36)] == address(cd[((32 * var553001) + cd[68] + 36)])
                if var553001 > -2:
                    revert with 'NH{q', 17
                if var553001 + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * var553001 + 1) + cd[68] + 36)] == address(cd[((32 * var553001 + 1) + cd[68] + 36)])
                if var553001 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * var553001) + cd[36] + 36)]))
                staticcall address(cd[((32 * var553001) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if address(cd[((32 * var553001) + cd[68] + 36)]) < address(cd[((32 * var553001 + 1) + cd[68] + 36)]):
                    require ext_code.size(address(cd[((32 * var553001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var553001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var553001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var553001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var553001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var553001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var553001) + cd[68] + 36)]) != address(cd[((32 * var553001) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var553001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var553001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var553001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var553001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var553001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var553001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var553001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var553001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                else:
                    require ext_code.size(address(cd[((32 * var553001 + 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var553001 + 1) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var553001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * var553001) + cd[68] + 36)]))
                    staticcall address(cd[((32 * var553001) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * var553001) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(cd[((32 * var553001) + cd[68] + 36)]) != address(cd[((32 * var553001 + 1) + cd[68] + 36)]):
                        if Mask(112, 0, ext_call.return_data[32]) and cd[((32 * var553001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var553001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * cd[((32 * var553001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var553001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * var553001) + cd[100] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10000 * ext_call.return_data[0] > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var553001) + cd[100] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * cd[((32 * var553001) + cd[100] + 36)]) < ext_call.return_data[0] * cd[((32 * var553001) + cd[100] + 36)]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and cd[((32 * var553001) + cd[100] + 36)] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        # nil
}



}
