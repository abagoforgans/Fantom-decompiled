contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor151;
mapping of struct store;

function owner() payable {
    return owner
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not store[address(arg1)][address(arg2)].field_0:
        revert with 0, 32, 44, 0x6453696d706c6550726963654f7261636c653a3a67657450726963653a3a2062616420707269636520646174, mem[336 len 20]
    if not store[address(arg1)][address(arg2)].field_192:
        revert with 0, 32, 44, 0x6453696d706c6550726963654f7261636c653a3a67657450726963653a3a2062616420707269636520646174, mem[336 len 20]
    return store[address(arg1)][address(arg2)].field_0, store[address(arg1)][address(arg2)].field_192
}

function store(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return store[arg1][arg2].field_0, store[arg1][arg2].field_192
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setFeeder(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    stor151 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'rOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function setPrices(address[] arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6853696d706c6550726963654f7261636c653a3a6f6e6c794665656465723a3a206f6e6c79206665656465,
                    mem[207 len 21]
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x7353696d706c6550726963654f7261636c653a3a7365745072696365733a3a2062616420746f6b656e3173206c656e6774,
                    mem[213 len 15]
    if arg1.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6153696d706c6550726963654f7261636c653a3a7365745072696365733a3a2062616420707269636573206c656e6774,
                    mem[212 len 16]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        _14 = mem[64]
        mem[64] = mem[64] + 64
        mem[_14] = Mask(192, 0, cd[((32 * idx) + arg3 + 36)])
        mem[_14 + 32] = uint64(block.timestamp)
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 152)
        store[address(cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])].field_0 = Mask(192, 0, cd[((32 * idx) + arg3 + 36)])
        store[address(cd[((32 * idx) + arg1 + 36)])][address(cd[((32 * idx) + arg2 + 36)])].field_192 = uint64(block.timestamp)
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit PriceUpdate(cd[((32 * idx) + arg3 + 36)], address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
        stor151 = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
            stor151 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
                stor151 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                    stor151 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        stor151 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor151 = arg1
                        uint8(stor0.field_8) = 0
}



}
