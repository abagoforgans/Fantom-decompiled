contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint32 stor3;
uint256 stor4;
uint256 stor5;
uint32 stor6;
address stor6; offset 32
address stor7;
address controllerAddress;

function owner() payable {
    return owner
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    controllerAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2bd7f5b3(?) payable {
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) == stor3:
            revert with 0, 'OFOMO Last and current are equal'
        require uint32(uint32(block.timestamp) - stor3)
        if Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
            revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               block.timestamp << 224,
               Mask(32, 112, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[32])
    if uint32(block.timestamp) == stor3:
        revert with 0, 'OFOMO Last and current are equal'
    require uint32(uint32(block.timestamp) - stor3)
    if Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
        revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
    return ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), 
           ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])),
           block.timestamp << 224,
           Mask(32, 112, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112
}

function sub_cefcecf7(?) payable {
    require ext_code.size(stor7)
    staticcall stor7.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) == uint32(stor6.field_0):
            revert with 0, 'USDC Last and current are equal'
        require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
        if Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
            revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               block.timestamp << 224,
               Mask(32, 112, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[32])
    if uint32(block.timestamp) == uint32(stor6.field_0):
        revert with 0, 'USDC Last and current are equal'
    require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
    if Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
        revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
    return ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])), 
           ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])),
           block.timestamp << 224,
           Mask(32, 112, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112
}

function update() payable {
    if controllerAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) == stor3:
            revert with 0, 'OFOMO Last and current are equal'
        require uint32(uint32(block.timestamp) - stor3)
        if Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
            revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        stor3 = uint32(block.timestamp)
        stor2 = ext_call.return_data[0]
        stor1 = ext_call.return_data[0]
        require ext_code.size(stor7)
        staticcall stor7.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        staticcall stor7.price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        staticcall stor7.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
            if uint32(block.timestamp) == uint32(stor6.field_0):
                revert with 0, 'USDC Last and current are equal'
            require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
            if Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[359 len 29]
            uint32(stor6.field_0) = uint32(block.timestamp)
            stor5 = ext_call.return_data[0]
            stor4 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            if uint32(block.timestamp) == uint32(stor6.field_0):
                revert with 0, 'USDC Last and current are equal'
            require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
            if Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[487 len 29]
            uint32(stor6.field_0) = uint32(block.timestamp)
            stor5 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            stor4 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(block.timestamp) == stor3:
            revert with 0, 'OFOMO Last and current are equal'
        require uint32(uint32(block.timestamp) - stor3)
        if Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
            revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
        stor3 = uint32(block.timestamp)
        stor2 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
        stor1 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
        require ext_code.size(stor7)
        staticcall stor7.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        staticcall stor7.price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor7)
        staticcall stor7.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
            if uint32(block.timestamp) == uint32(stor6.field_0):
                revert with 0, 'USDC Last and current are equal'
            require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
            if Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[487 len 29]
            uint32(stor6.field_0) = uint32(block.timestamp)
            stor5 = ext_call.return_data[0]
            stor4 = ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            require Mask(112, 0, ext_call.return_data[32])
            if uint32(block.timestamp) == uint32(stor6.field_0):
                revert with 0, 'USDC Last and current are equal'
            require uint32(uint32(block.timestamp) - uint32(stor6.field_0))
            if Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[615 len 29]
            uint32(stor6.field_0) = uint32(block.timestamp)
            stor5 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
            stor4 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64]))
}

function getData() payable {
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6.field_32))
    staticcall address(stor6.field_32).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) == stor3:
            revert with 0, 'OFOMO Last and current are equal'
        if uint32(uint32(block.timestamp) - stor3):
            if Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
            require ext_code.size(stor7)
            staticcall stor7.price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor7)
            staticcall stor7.price1CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor7)
            staticcall stor7.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                if uint32(block.timestamp) == uint32(stor6.field_0):
                    revert with 0, 'USDC Last and current are equal'
                if uint32(uint32(block.timestamp) - uint32(stor6.field_0)):
                    if Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                        revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[359 len 29]
                    if Mask(32, 112, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112:
                        return (10^6 * Mask(32, 112, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112 / Mask(32, 80, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 80)
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO'
                if Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO'
                    if Mask(112, 0, ext_call.return_data[32]):
                        if uint32(block.timestamp) == uint32(stor6.field_0):
                            revert with 0, 'USDC Last and current are equal'
                        if uint32(uint32(block.timestamp) - uint32(stor6.field_0)):
                            if Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[487 len 29]
                            if Mask(32, 112, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112:
                                return (10^6 * Mask(32, 112, (10^9 * ext_call.return_data[0]) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112 / Mask(32, 80, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 80)
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if Mask(112, 0, ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if Mask(112, 0, ext_call.return_data[32]):
                if uint32(block.timestamp) == stor3:
                    revert with 0, 'OFOMO Last and current are equal'
                if uint32(uint32(block.timestamp) - stor3):
                    if Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) != Mask(224, 0, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)):
                        revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[391 len 29]
                    require ext_code.size(stor7)
                    staticcall stor7.price0CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    staticcall stor7.price1CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    staticcall stor7.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        if uint32(block.timestamp) == uint32(stor6.field_0):
                            revert with 0, 'USDC Last and current are equal'
                        if uint32(uint32(block.timestamp) - uint32(stor6.field_0)):
                            if Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                                revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[487 len 29]
                            if Mask(32, 112, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112:
                                return (10^6 * Mask(32, 112, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112 / Mask(32, 80, (10^6 * ext_call.return_data[0]) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 80)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO'
                        if Mask(112, 0, ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO'
                            if Mask(112, 0, ext_call.return_data[32]):
                                if uint32(block.timestamp) == uint32(stor6.field_0):
                                    revert with 0, 'USDC Last and current are equal'
                                if uint32(uint32(block.timestamp) - uint32(stor6.field_0)):
                                    if Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) != Mask(224, 0, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))):
                                        revert with 0, 32, 35, 0xfe4669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[615 len 29]
                                    if Mask(32, 112, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 112:
                                        return (10^6 * Mask(32, 112, (10^9 * ext_call.return_data[0]) + (10^9 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^9 * stor1) / uint32(uint32(block.timestamp) - stor3)) >> 112 / Mask(32, 80, (10^6 * ext_call.return_data[0]) + (10^6 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) - (10^6 * stor5) / uint32(uint32(block.timestamp) - uint32(stor6.field_0))) >> 80)
    revert
}



}
