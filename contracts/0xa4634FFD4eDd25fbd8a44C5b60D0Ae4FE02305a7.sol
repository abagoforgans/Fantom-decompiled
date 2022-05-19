contract main {




// =====================  Runtime code  =====================


const getBlockTimestamp = uint32(block.timestamp)

const MIN_T = 1200


mapping of struct stor0;

function _fallback() payable {
    revert
}

function getPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_512,
           bool(stor0[arg1].field_576),
           bool(stor0[arg1].field_584)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)].field_584:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe53706972697450726963654f7261636c653a20414c52454144595f494e495449414c495a45,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[18 len 14]
    stor0[address(arg1)].field_0 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
    stor0[address(arg1)].field_256 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
    stor0[address(arg1)].field_512 = uint32(block.timestamp)
    stor0[address(arg1)].field_544 = uint32(block.timestamp)
    stor0[address(arg1)].field_576 = 1
    stor0[address(arg1)].field_584 = 1
    emit PriceUpdate(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), block.timestamp << 224, 1, arg1);
}

function getResult(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(arg1)].field_584:
        revert with 0, 32, 34, 0x5753706972697450726963654f7261636c653a204e4f545f494e495449414c495a45, mem[582 len 30]
    require ext_code.size(arg1)
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[18 len 14]
    if stor0[address(arg1)].field_576:
        if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) < 1200:
            if stor0[address(arg1)].field_576:
                if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) < 1200:
                    revert with 0, 'SpiritPriceOracle: NOT_READY'
                require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
                if stor0[address(arg1)].field_576:
                    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
                    return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
                           uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
                return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
                       uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
            if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) < 1200:
                revert with 0, 'SpiritPriceOracle: NOT_READY'
            require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
            if stor0[address(arg1)].field_576:
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
                return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
                       uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
            return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
                   uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
        if not stor0[address(arg1)].field_576:
            stor0[address(arg1)].field_0 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            stor0[address(arg1)].field_512 = uint32(block.timestamp)
        else:
            stor0[address(arg1)].field_256 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            stor0[address(arg1)].field_544 = uint32(block.timestamp)
        stor0[address(arg1)].field_576 = Mask(192, 0, not bool(stor0[address(arg1)].field_576))
        emit PriceUpdate(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), block.timestamp << 224, not bool(stor0[address(arg1)].field_576), arg1);
        if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) < 1200:
            revert with 0, 'SpiritPriceOracle: NOT_READY'
        require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
        if stor0[address(arg1)].field_576:
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
            return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
                   uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
        if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
        return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
               uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
    if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) < 1200:
        if stor0[address(arg1)].field_576:
            if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) < 1200:
                revert with 0, 'SpiritPriceOracle: NOT_READY'
            require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
            if stor0[address(arg1)].field_576:
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
                return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
                       uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
            return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
                   uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
        if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) < 1200:
            revert with 0, 'SpiritPriceOracle: NOT_READY'
        require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
        if stor0[address(arg1)].field_576:
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
            return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
                   uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
        if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
        return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512), 
               uint32(uint32(block.timestamp) - stor0[address(arg1)].field_512)
    if not stor0[address(arg1)].field_576:
        stor0[address(arg1)].field_0 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
        stor0[address(arg1)].field_512 = uint32(block.timestamp)
    else:
        stor0[address(arg1)].field_256 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
        stor0[address(arg1)].field_544 = uint32(block.timestamp)
    stor0[address(arg1)].field_576 = Mask(192, 0, not bool(stor0[address(arg1)].field_576))
    emit PriceUpdate(ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14]) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), block.timestamp << 224, not bool(stor0[address(arg1)].field_576), arg1);
    if uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) < 1200:
        revert with 0, 'SpiritPriceOracle: NOT_READY'
    require uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
    if stor0[address(arg1)].field_576:
        if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
        return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_0 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
               uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 32, 35, 0x4453706972697450726963654f7261636c653a2055494e543232345f4f564552464c4f, mem[583 len 29]
    return 4294967296 * ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - stor0[address(arg1)].field_256 / uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544), 
           uint32(uint32(block.timestamp) - stor0[address(arg1)].field_544)
}



}
