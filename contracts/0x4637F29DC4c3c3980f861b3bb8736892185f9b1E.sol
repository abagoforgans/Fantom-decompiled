contract main {




// =====================  Runtime code  =====================


const PERIOD = 3600


address owner;
address stor1;
mapping of struct store;

function owner() payable {
    return owner
}

function store(address arg1) payable {
    require calldata.size - 4 >= 32
    return store[arg1].field_0, store[arg1].field_256, store[arg1].field_512
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'DOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setFeeder(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'DOwnable: caller is not the owne'
    stor1 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'DOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function update(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 != msg.sender:
        revert with 0, 'Oracle::onlyFeeder:: only feeder'
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f7261636c653a3a7570646174653a3a207061697220646f65736e2774206578697374,
                    mem[200 len 28]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        if uint32(uint32(block.timestamp) - store[ext_call.return_data[12 len 20]].field_0) < 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e4f7261636c653a3a7570646174653a3a20504552494f445f4e4f545f454c41505345,
                        mem[199 len 29]
        store[ext_call.return_data[12 len 20]].field_256 = ext_call.return_data[0]
        store[ext_call.return_data[12 len 20]].field_512 = ext_call.return_data[0]
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(uint32(block.timestamp) - store[ext_call.return_data[12 len 20]].field_0) < 3600:
            revert with 0, 32, 35, 0x2e4f7261636c653a3a7570646174653a3a20504552494f445f4e4f545f454c41505345, mem[327 len 29]
        store[ext_call.return_data[12 len 20]].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        store[ext_call.return_data[12 len 20]].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
    store[ext_call.return_data[12 len 20]].field_0 = uint32(block.timestamp)
}

function sub_f4d69640(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f7261636c653a3a636f6e73756c743a3a207061697220646f65736e2774206578697374,
                    mem[201 len 27]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        if address(ext_call.return_data[0]) == arg2:
            require uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)
            if not arg3:
                return 0
            require arg3
            if Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3 / arg3 != Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)):
                revert with 0, 32, 35, 0xe04669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[295 len 29]
            return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3) >> 112)
        if arg2 != address(ext_call.return_data[0]):
            revert with 0, 'Oracle::consult:: INVALID_TOKEN'
        require uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)
        if not arg3:
            return 0
        require arg3
        if Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3 / arg3 != Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)):
            revert with 0, 32, 35, 0xe04669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[295 len 29]
        return (Mask(32, 112, Mask(224, 0, ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3) >> 112)
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'FixedPoint: DIV_BY_ZERO'
    require Mask(112, 0, ext_call.return_data[32])
    if address(ext_call.return_data[0]) == arg2:
        require uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)
        if not arg3:
            return 0
        require arg3
        if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3 / arg3 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)):
            revert with 0, 32, 35, 0xe04669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[423 len 29]
        return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_256 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3) >> 112)
    if arg2 != address(ext_call.return_data[0]):
        revert with 0, 'Oracle::consult:: INVALID_TOKEN'
    require uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)
    if not arg3:
        return 0
    require arg3
    if Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3 / arg3 != Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)):
        revert with 0, 32, 35, 0xe04669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[423 len 29]
    return (Mask(32, 112, Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - store[address(ext_call.return_data[0])].field_512 / uint32(uint32(block.timestamp) - store[address(ext_call.return_data[0])].field_0)) * arg3) >> 112)
}



}
