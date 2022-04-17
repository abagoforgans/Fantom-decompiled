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
        return address(sha3(0, 17241416772799840749, sha3(arg1, arg2), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
    if not arg2:
        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
    return address(sha3(0, 17241416772799840749, sha3(arg2, arg1), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
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

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
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
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender wrong'
    require ext_code.size(address(ext_call.return_data[0]))
    if address(cd[(arg4 + 68)]) == address(cd[(arg4 + 100)]):
        if arg2:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg2 / 997) + 1
        else:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * arg3 / 997) + 1
    else:
        if not arg2:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).underlying() with:
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
            mem[201] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
            mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
            mem[253] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg3 <= 0:
                revert with 0, 32, 38, 0xfe4d6465786962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[391 len 26]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[50 len 14]:
                    if arg3 > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[18 len 14] - arg3
                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                else:
                    if arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not arg3 * ext_call.return_data[50 len 14]:
                        if arg3 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - arg3
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                    else:
                        if 1000 * arg3 * ext_call.return_data[50 len 14] / arg3 * ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if arg3 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - arg3
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg3) / ext_call.return_data[18 len 14] - arg3 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
                        if (1000 * arg3 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 < 1000 * arg3 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg3):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
            else:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[18 len 14]:
                    if arg3 > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[50 len 14] - arg3
                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                else:
                    if arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not arg3 * ext_call.return_data[18 len 14]:
                        if arg3 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - arg3
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                    else:
                        if 1000 * arg3 * ext_call.return_data[18 len 14] / arg3 * ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if arg3 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - arg3
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg3) / ext_call.return_data[50 len 14] - arg3 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
                        if (1000 * arg3 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 < 1000 * arg3 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg3):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
        else:
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).underlying() with:
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
            mem[201] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
            mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
            mem[253] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg2 <= 0:
                revert with 0, 32, 38, 0xfe4d6465786962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[391 len 26]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[50 len 14]:
                    if arg2 > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[18 len 14] - arg2
                    if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / ext_call.return_data[18 len 14] - arg2 != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (997 * ext_call.return_data[18 len 14]) - (997 * arg2)
                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                else:
                    if arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg2:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not arg2 * ext_call.return_data[50 len 14]:
                        if arg2 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - arg2
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / ext_call.return_data[18 len 14] - arg2 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * arg2)
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                    else:
                        if 1000 * arg2 * ext_call.return_data[50 len 14] / arg2 * ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if arg2 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - arg2
                        if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / ext_call.return_data[18 len 14] - arg2 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * arg2)
                        if (1000 * arg2 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 1000 * arg2 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
            else:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774d6465786962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
                if not ext_call.return_data[18 len 14]:
                    if arg2 > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[50 len 14] - arg2
                    if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / ext_call.return_data[50 len 14] - arg2 != 997:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    require (997 * ext_call.return_data[50 len 14]) - (997 * arg2)
                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[349] = address(ext_call.return_data[0])
                        mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                        mem[417] = ext_call.return_data[0]
                        mem[481] = this.address
                        mem[513] = block.timestamp + 60
                        mem[449] = 160
                        mem[545] = 2
                        mem[577 len 0] = None
                        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 381
                        require return_data.size >= 32
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                        require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                        require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                else:
                    if arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg2:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not arg2 * ext_call.return_data[18 len 14]:
                        if arg2 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - arg2
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / ext_call.return_data[50 len 14] - arg2 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * arg2)
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                    else:
                        if 1000 * arg2 * ext_call.return_data[18 len 14] / arg2 * ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if arg2 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - arg2
                        if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / ext_call.return_data[50 len 14] - arg2 != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * arg2)
                        if (1000 * arg2 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 1000 * arg2 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[349] = address(ext_call.return_data[0])
                            mem[381] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[385] = (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                            mem[417] = ext_call.return_data[0]
                            mem[481] = this.address
                            mem[513] = block.timestamp + 60
                            mem[449] = 160
                            mem[545] = 2
                            mem[577 len 0] = None
                            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
                            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, ext_call.return_data[0], Array(len=2, data=mem[577 len 64]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[381 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 381
                            require return_data.size >= 32
                            require mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 <= 4294967296
                            require mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 32 <= return_data.size
                            require mem[mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381] <= 4294967296 and mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + (32 * mem[mem[381 len 4], Mask(224, 32, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1) >> 32 + 381]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
