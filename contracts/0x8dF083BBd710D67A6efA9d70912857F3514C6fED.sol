contract main {




// =====================  Runtime code  =====================


#
#  - sub_16816262(?)
#
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function kill() {
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_f2bf71d0(?) {
    require calldata.size - 4 >= 128
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    stor0 = arg1
    stor1 = arg2
    stor2 = arg3
    stor3 = arg4
}

function getPairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Mdexibrary: ZERO_ADDRESS'
        return address(sha3(0, 11029687401977698836, sha3(arg1, arg2), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe))
    if not arg2:
        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
    return address(sha3(0, 11029687401977698836, sha3(arg2, arg1), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor4 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_3aa99232(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x991152411a7b5a14a8cf0cdde8439435328070df)
    staticcall 0x991152411a7b5a14a8cf0cdde8439435328070df.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender wrong'
    require ext_code.size(address(ext_call.return_data[0]))
    if address(('cd', 100)[1]) == address(('cd', 100)[2]):
        if cd[36]:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(('cd', 100)[1]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[1]))
            call address(('cd', 100)[1]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(('cd', 100)[0]), cd[36], address(('cd', 100)[2])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * cd[36] / 998) + 1
        else:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(('cd', 100)[1]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[1]))
            call address(('cd', 100)[1]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(('cd', 100)[0]), cd[68], address(('cd', 100)[2])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * cd[68] / 998) + 1
    else:
        if not cd[36]:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(('cd', 100)[1]), cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[164] = address(('cd', 100)[2])
            require ext_code.size(address(('cd', 100)[1]))
            call address(('cd', 100)[1]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(('cd', 100)[0]), cd[68], address(('cd', 100)[2])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
            mem[128] = address(ext_call.return_data[0])
            mem[148] = address(ext_call.return_data[0])
            mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[201] = 0x991152411a7b5a14a8cf0cdde8439435328070df000000000000000000000000
            mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
            mem[253] = 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe
            require ext_code.size(address(sha3(0, 11029687401977698836, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe)))
            staticcall address(sha3(0, 11029687401977698836, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if cd[68] <= 0:
                revert with 0, 32, 38, 0xfe4d6465786962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[391 len 26]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[50 len 14]:
                    if cd[68] > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[18 len 14] - cd[68]
                    if (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]) / ext_call.return_data[18 len 14] - cd[68] != 998:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
                else:
                    if cd[68] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[68]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not cd[68] * ext_call.return_data[50 len 14]:
                        if cd[68] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - cd[68]
                        if (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]) / ext_call.return_data[18 len 14] - cd[68] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
                    else:
                        if 1000 * cd[68] * ext_call.return_data[50 len 14] / cd[68] * ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if cd[68] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - cd[68]
                        if (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]) / ext_call.return_data[18 len 14] - cd[68] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])
                        if (1000 * cd[68] * ext_call.return_data[50 len 14] / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68])) + 1 < 1000 * cd[68] * ext_call.return_data[50 len 14] / (998 * ext_call.return_data[18 len 14]) - (998 * cd[68]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[68])) + 1
            else:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[18 len 14]:
                    if cd[68] > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[50 len 14] - cd[68]
                    if (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]) / ext_call.return_data[50 len 14] - cd[68] != 998:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
                else:
                    if cd[68] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[68]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not cd[68] * ext_call.return_data[18 len 14]:
                        if cd[68] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - cd[68]
                        if (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]) / ext_call.return_data[50 len 14] - cd[68] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
                    else:
                        if 1000 * cd[68] * ext_call.return_data[18 len 14] / cd[68] * ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if cd[68] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - cd[68]
                        if (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]) / ext_call.return_data[50 len 14] - cd[68] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])
                        if (1000 * cd[68] * ext_call.return_data[18 len 14] / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68])) + 1 < 1000 * cd[68] * ext_call.return_data[18 len 14] / (998 * ext_call.return_data[50 len 14]) - (998 * cd[68]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[68])) + 1
        else:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(('cd', 100)[1]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[164] = address(('cd', 100)[2])
            require ext_code.size(address(('cd', 100)[1]))
            call address(('cd', 100)[1]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(('cd', 100)[0]), cd[36], address(('cd', 100)[2])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            call address(('cd', 100)[2]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 100)[2]))
            staticcall address(('cd', 100)[2]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
            mem[128] = address(ext_call.return_data[0])
            mem[148] = address(ext_call.return_data[0])
            mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[201] = 0x991152411a7b5a14a8cf0cdde8439435328070df000000000000000000000000
            mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
            mem[253] = 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe
            require ext_code.size(address(sha3(0, 11029687401977698836, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe)))
            staticcall address(sha3(0, 11029687401977698836, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xc7afa4a3485a5e46a8e6c01f3d79956707846c2145019cf4004d190147370afe)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if cd[36] <= 0:
                revert with 0, 32, 38, 0xfe4d6465786962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[391 len 26]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[50 len 14]:
                    if cd[36] > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[18 len 14] - cd[36]
                    if (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]) / ext_call.return_data[18 len 14] - cd[36] != 998:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
                else:
                    if cd[36] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[36]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not cd[36] * ext_call.return_data[50 len 14]:
                        if cd[36] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - cd[36]
                        if (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]) / ext_call.return_data[18 len 14] - cd[36] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
                    else:
                        if 1000 * cd[36] * ext_call.return_data[50 len 14] / cd[36] * ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if cd[36] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - cd[36]
                        if (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]) / ext_call.return_data[18 len 14] - cd[36] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])
                        if (1000 * cd[36] * ext_call.return_data[50 len 14] / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36])) + 1 < 1000 * cd[36] * ext_call.return_data[50 len 14] / (998 * ext_call.return_data[18 len 14]) - (998 * cd[36]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32]) / (998 * Mask(112, 0, ext_call.return_data[0])) - (998 * cd[36])) + 1
            else:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[18 len 14]:
                    if cd[36] > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[50 len 14] - cd[36]
                    if (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]) / ext_call.return_data[50 len 14] - cd[36] != 998:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
                else:
                    if cd[36] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[36]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not cd[36] * ext_call.return_data[18 len 14]:
                        if cd[36] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - cd[36]
                        if (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]) / ext_call.return_data[50 len 14] - cd[36] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
                    else:
                        if 1000 * cd[36] * ext_call.return_data[18 len 14] / cd[36] * ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if cd[36] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - cd[36]
                        if (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]) / ext_call.return_data[50 len 14] - cd[36] != 998:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])
                        if (1000 * cd[36] * ext_call.return_data[18 len 14] / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36])) + 1 < 1000 * cd[36] * ext_call.return_data[18 len 14] / (998 * ext_call.return_data[50 len 14]) - (998 * cd[36]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0]) / (998 * Mask(112, 0, ext_call.return_data[32])) - (998 * cd[36])) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
