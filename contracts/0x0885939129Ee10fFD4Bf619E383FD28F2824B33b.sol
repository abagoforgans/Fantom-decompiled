contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 blockNow;
array of uint256 name;
array of uint256 name2;
array of uint256 sub_d31c9598;
array of uint256 sub_917051ed;
array of uint256 sub_9e202fca;
array of uint256 sub_dae34cbf;
mapping of struct checkpoints;

function name() payable {
    return name[0 len name.length].field_0
}

function name2() payable {
    return name2[0 len name2.length].field_0
}

function blockNow() payable {
    return blockNow
}

function owner() payable {
    return owner
}

function sub_917051ed(?) payable {
    return sub_917051ed[0 len sub_917051ed.length]
}

function sub_9e202fca(?) payable {
    return sub_9e202fca[0 len sub_9e202fca.length]
}

function sub_d31c9598(?) payable {
    return sub_d31c9598[0 len sub_d31c9598.length]
}

function sub_dae34cbf(?) payable {
    return sub_dae34cbf[0 len sub_dae34cbf.length]
}

function checkpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return checkpoints[arg1].field_0, checkpoints[arg1].field_256
}

function _fallback() payable {
    revert
}

function SetcheckPoint() payable {
    checkpoints[msg.sender].field_0 = block.number
    checkpoints[msg.sender].field_256++
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_5fcc3b40(?) payable {
    uint8(name.length) = 8
    name.length.field_8 = 0
    name.length.field_224 = 1312902469
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(name2.length) = 10
    name2.length.field_8 = 0
    name2.length.field_216 = 336103032114
    idx = 0
    while name2.length + 31 / 32 > idx:
        name2[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function initialize(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
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
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
