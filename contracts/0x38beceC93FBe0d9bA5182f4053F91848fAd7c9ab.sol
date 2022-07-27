contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e07e04fc(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == uint8(arg6)
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg4))
        staticcall address(arg4).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor1)
        staticcall stor1.0xb65af940 with:
                gas gas_remaining wei
               args uint8(arg6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        if address(arg2) == address(arg2):
            staticcall address(ext_call.return_data[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg4), arg1, mem[(4 * ceil32(return_data.size)) + 228 len 28]
            call address(arg2).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 232 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not ext_call.return_data[0]:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
            else:
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not return_data.size:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                else:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                    if not mem[(4 * ceil32(return_data.size)) + 260]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
        else:
            staticcall address(ext_call.return_data[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg4), arg1, mem[(4 * ceil32(return_data.size)) + 228 len 28]
            call address(arg2).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 232 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not ext_call.return_data[0]:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
            else:
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not return_data.size:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                else:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                    if not mem[(4 * ceil32(return_data.size)) + 260]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
    else:
        if not address(arg3):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg4))
        staticcall address(arg4).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor1)
        staticcall stor1.0xb65af940 with:
                gas gas_remaining wei
               args uint8(arg6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        if address(arg2) == address(arg3):
            staticcall address(ext_call.return_data[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg4), arg1, mem[(4 * ceil32(return_data.size)) + 228 len 28]
            call address(arg2).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 232 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not ext_call.return_data[0]:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
            else:
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not return_data.size:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                else:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                    if not mem[(4 * ceil32(return_data.size)) + 260]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
        else:
            staticcall address(ext_call.return_data[0]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg4), arg1, mem[(4 * ceil32(return_data.size)) + 228 len 28]
            call address(arg2).mem[(4 * ceil32(return_data.size)) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 232 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not ext_call.return_data[0]:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
            else:
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if not return_data.size:
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                else:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 260] == bool(mem[(4 * ceil32(return_data.size)) + 260])
                    if not mem[(4 * ceil32(return_data.size)) + 260]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if address(arg2) == address(arg3):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg2) < address(arg3):
                        if not address(arg2):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg2):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
                    else:
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(address(arg4))
                        if address(arg2) == address(arg3):
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg5), 128, 0, None
                        else:
                            call address(arg4).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg5), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
