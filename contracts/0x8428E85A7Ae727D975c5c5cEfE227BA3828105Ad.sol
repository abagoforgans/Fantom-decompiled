contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b251141(?)
#  - liquidate(address arg1, address arg2, uint256 arg3)
#  - sub_90060a33(?)
#
const getBlockTimestamp = uint32(block.timestamp)


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function exchangeRate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.totalBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 10^18
    if not ext_call.return_data[0]:
        return 10^18
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function getAmountIn(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    revert
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mul', 997, ('param', 'arg3'))))
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mul', 997, ('param', 'arg3'))))
    revert
}

function sub_9d47bbd0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getPair(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x796b89b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    if ext_call.return_data[128]:
        require uint32(ext_call.return_data[0] - ext_call.return_data[64])
        if ext_call.return_data[128]:
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
            return Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]))
        if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
        return Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]))
    require uint32(ext_call.return_data[0] - ext_call.return_data[96])
    if ext_call.return_data[128]:
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
        return Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]))
    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
    return Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]))
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    if not arg2:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
    else:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    if not arg2:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
    else:
        call stor1.liquidate(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2, address(cd[(arg4 + 36)]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x283e62cfe14b352db8e30a9575481dcbf589ad98, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor1)
        call stor1.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], address(this.address), block.timestamp + 30, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
        else:
            if ext_call.return_data[12 len 20] == address(cd[(arg4 + 100)]):
                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
            else:
                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] != address(cd[(arg4 + 100)]):
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                else:
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPrices(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x34fb08a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x796b89b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[128]:
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[128]:
                if uint32(ext_call.return_data[0] - ext_call.return_data[64]):
                    if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64])):
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    revert with 0, 'SafeMath: division by zero', 0
                                if 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                        if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                               4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                    t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                    while s < t:
                                        require s
                                        s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                        t = s
                                        continue 
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if t <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if t:
                                                                return 0, 0 / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                               4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                    else:
                                        if ext_call.return_data[0]:
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                        else:
                            if Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64])):
                                if 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64])) != 4294967296:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                            if not Mask(224, 0, 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            return 0
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        s = (Mask(224, 0, 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                        t = 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                        while s < t:
                                            require s
                                            s = (4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                            t = s
                                            continue 
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                        else:
                                            if ext_call.return_data[0]:
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                        else:
                                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                if t <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                if t:
                                                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                           4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
            else:
                if uint32(ext_call.return_data[0] - ext_call.return_data[64]):
                    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64])):
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    revert with 0, 'SafeMath: division by zero', 0
                                if 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                        if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                               4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                    t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                    while s < t:
                                        require s
                                        s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                        t = s
                                        continue 
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if t <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if t:
                                                                return 0, 0 / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                               4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                    else:
                                        if ext_call.return_data[0]:
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                        else:
                            if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64])):
                                if 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64])) != 4294967296:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                            if not Mask(224, 0, 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            return 0
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        s = (Mask(224, 0, 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                        t = 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                        while s < t:
                                            require s
                                            s = (4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[64]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                            t = s
                                            continue 
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                        else:
                                            if ext_call.return_data[0]:
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                        else:
                                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                if t <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                if t:
                                                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                           4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
    else:
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[128]:
                if uint32(ext_call.return_data[0] - ext_call.return_data[96]):
                    if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96])):
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    revert with 0, 'SafeMath: division by zero', 0
                                if 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                        if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                               4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                    t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                    while s < t:
                                        require s
                                        s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                        t = s
                                        continue 
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if t <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if t:
                                                                return 0, 0 / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                               4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                    else:
                                        if ext_call.return_data[0]:
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                        else:
                            if Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96])):
                                if 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96])) != 4294967296:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                            if not Mask(224, 0, 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            return 0
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        s = (Mask(224, 0, 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                        t = 4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                        while s < t:
                                            require s
                                            s = (4294967296 * 4294967296 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]) / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                            t = s
                                            continue 
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                        else:
                                            if ext_call.return_data[0]:
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                        else:
                                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                if t <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                if t:
                                                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                           4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
            else:
                if uint32(ext_call.return_data[0] - ext_call.return_data[96]):
                    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'TarotPriceOracle: UINT224_OVERFLOW'
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96])):
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                    revert with 0, 'SafeMath: division by zero', 0
                                if 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                        if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                    require 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require ext_call.return_data[0]
                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                               4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                    t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                    while s < t:
                                        require s
                                        s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                        t = s
                                        continue 
                                    if not ext_call.return_data[0]:
                                        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if 2 * Mask(111, 0, ext_call.return_data[0]):
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if t <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if t:
                                                                return 0, 0 / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                               4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                    else:
                                        if ext_call.return_data[0]:
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                        else:
                            if Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96])):
                                if 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96])) != 4294967296:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                    if not 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                                        if 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
                                            if not Mask(224, 0, 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                                                        require 2 * Mask(111, 0, ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    require 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            return 0
                                                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require ext_call.return_data[0]
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        return 0
                                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require ext_call.return_data[0]
                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require 2 * Mask(111, 0, ext_call.return_data[32])
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                    return 0
                                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 0
                                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                                                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                        s = (Mask(224, 0, 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
                                        t = 4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                                        while s < t:
                                            require s
                                            s = (4294967296 * 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - ext_call.return_data[32] / uint32(ext_call.return_data[0] - ext_call.return_data[96]) / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                                            t = s
                                            continue 
                                        if not ext_call.return_data[0]:
                                            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                if not ext_call.return_data[0]:
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if t <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                if t:
                                                                    return 0, 0 / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                        else:
                                                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                        else:
                                            if ext_call.return_data[0]:
                                                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                if 2 * Mask(111, 0, ext_call.return_data[0]):
                                                    if not ext_call.return_data[0]:
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                    if t <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    if t:
                                                                        return 0, 0 / t
                                                                else:
                                                                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                            else:
                                                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                    else:
                                                                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            if 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                        if t <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        if t:
                                                                            return 0, 0 / t
                                                                    else:
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return 0, 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                                                                else:
                                                                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                                                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                            if t <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            if t:
                                                                                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
                                                                        else:
                                                                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                                                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                if t <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                if t:
                                                                                    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                                                                                           4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
    revert
}



}
