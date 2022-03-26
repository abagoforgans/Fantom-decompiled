contract main {




// =====================  Runtime code  =====================


const version = 0001


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of struct stor102;

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor102[arg1].length)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_18663d3e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor102[arg1].length:
        revert with 0, 'template doesn't exist'
    stor102[arg1].field_0 = 0
    if 31 < stor102[arg1].length:
        idx = 0
        while stor102[arg1].length + 31 / 32 > idx:
            stor102[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor102[arg1].field_256 = 0
    stor102[arg1].field_512 = 0
    stor102[arg1].field_768 = 0
    stor102[arg1].field_1024 = 0
    idx = 0
    while stor102[arg1].field_1024 > idx:
        stor102[arg1][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor102[arg1].field_1280 = 0
    stor102[arg1].field_1536 = 0
    stor102[arg1].field_1792 = 0
    stor102[arg1].field_2048 = 0
    emit 0x87e0fd43: arg1
}

function sub_d294ed28(?) payable {
    require calldata.size - 4 >= 64
    if not stor102[arg1].length:
        return 0
    idx = 768
    s = 0
    while stor102[arg1].length + 768 > idx + 32:
        mem[idx + 32] = stor102[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor102[arg1].field_416 <= 2
    if stor102[arg1].field_1024:
        idx = ceil32(stor102[arg1].length) + 800
        s = 0
        while ceil32(stor102[arg1].length) + (32 * stor102[arg1].field_1024) + 768 > idx:
            mem[idx + 32] = stor102[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if not stor102[arg1].field_256:
        return 1
    require ext_code.size(stor102[arg1].field_256)
    staticcall stor102[arg1].field_256.0xd294ed28 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor102[arg1].field_0
    idx = 128
    s = 0
    while stor102[arg1].length + 96 > idx:
        mem[idx + 32] = stor102[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor102[arg1].field_1024:
        mem[ceil32(stor102[arg1].length) + 160] = stor102[arg1][4].field_0
        idx = ceil32(stor102[arg1].length) + 160
        s = 0
        while ceil32(stor102[arg1].length) + (32 * stor102[arg1].field_1024) + 128 > idx:
            mem[idx + 32] = stor102[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require stor102[arg1].field_416 <= 2
    mem[ceil32(stor102[arg1].length) + (32 * stor102[arg1].field_1024) + 512 len ceil32(stor102[arg1].length)] = mem[128 len ceil32(stor102[arg1].length)]
    mem[stor102[arg1].length + ceil32(stor102[arg1].length) + (32 * stor102[arg1].field_1024) + 512] = stor102[arg1].field_1024
    mem[stor102[arg1].length + ceil32(stor102[arg1].length) + (32 * stor102[arg1].field_1024) + 544 len floor32(stor102[arg1].field_1024)] = mem[ceil32(stor102[arg1].length) + 160 len floor32(stor102[arg1].field_1024)]
    return Array(len=stor102[arg1].length, data=mem[128 len ceil32(stor102[arg1].length)], mem[(2 * ceil32(stor102[arg1].length)) + (32 * stor102[arg1].field_1024) + 512 len (32 * stor102[arg1].field_1024) + stor102[arg1].length + -ceil32(stor102[arg1].length) + 32]), 
           stor102[arg1].field_256,
           stor102[arg1].field_256,
           stor102[arg1].field_512,
           stor102[arg1].field_768,
           stor102[arg1].length + 352,
           stor102[arg1].field_1280,
           stor102[arg1].field_1536,
           stor102[arg1].field_1792,
           stor102[arg1].field_2048
}

function sub_f3f4ef79(?) payable {
    require calldata.size - 4 >= 256
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if cd[164] < block.timestamp:
        return 0
    if cd[196] > cd[228]:
        return 0
    if cd[164] > cd[196]:
        return 0
    if not stor102[cd[4]].length:
        return 0
    idx = 768
    s = 0
    while stor102[cd[4]].length + 768 > idx + 32:
        mem[idx + 32] = stor102[cd[4]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor102[cd[4]].field_416 <= 2
    if stor102[cd[4]].field_1024:
        mem[ceil32(stor102[cd[4]].length) + 800] = stor102[cd[4]][4].field_0
        idx = ceil32(stor102[cd[4]].length) + 800
        s = 0
        while ceil32(stor102[cd[4]].length) + (32 * stor102[cd[4]].field_1024) + 768 > idx:
            mem[idx + 32] = stor102[cd[4]][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require stor102[cd[4]].field_416 <= 2
    require uint8(cd[36]) <= 2
    if uint8(cd[36]) != stor102[cd[4]].field_416:
        return 0
    if cd[68] < stor102[cd[4]].field_512:
        return 0
    if cd[68] > 10^18:
        return 0
    if cd[100] < stor102[cd[4]].field_768:
        return 0
    if cd[100] > 10^18:
        return 0
    if ('cd', 132).length != stor102[cd[4]].field_1024:
        return 0
    idx = 0
    while idx < ('cd', 132).length:
        require idx < stor102[cd[4]].field_1024
        require idx < ('cd', 132).length
        if cd[((32 * idx) + cd[132] + 36)] == mem[(32 * idx) + ceil32(stor102[cd[4]].length) + 800]:
            idx = idx + 1
            continue 
        else:
            return 0
    if cd[196] - cd[164] < stor102[cd[4]].field_1280:
        return 0
    if cd[228] - cd[164] > stor102[cd[4]].field_1536:
        return 0
    if cd[164] - block.timestamp < stor102[cd[4]].field_1792:
        return 0
    if cd[164] - block.timestamp > stor102[cd[4]].field_2048:
        return 0
    if not stor102[cd[4]].field_256:
        return 1
    require uint8(cd[36]) <= 2
    require ext_code.size(stor102[cd[4]].field_256)
    staticcall stor102[cd[4]].field_256.0xf3f4ef79 with:
            gas gas_remaining wei
           args cd[4], cd[36] << 248, cd[68], cd[100], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)]), cd[164], cd[196], cd[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_afa6f861(?) payable {
    require calldata.size - 4 >= 352
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 36).length:
        revert with 0, 'empty name'
    if Mask(255, 1, stor102[cd[4]].field_0 and (256 * not stor102[cd[4]].field_0) - 1):
        revert with 0, 'template already exists'
    if not ('cd', 196).length:
        revert with 0, 'empty opinions'
    mem[96] = ('cd', 196).length
    mem[128 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
    mem[(32 * ('cd', 196).length) + 128] = 0
    idx = 1
    while idx < ('cd', 196).length:
        require idx < ('cd', 196).length
        require idx - 1 < ('cd', 196).length
        if mem[(32 * idx - 1) + 128] > mem[(32 * idx) + 128]:
            revert with 0, 'wrong order of opinions'
        idx = idx + 1
        continue 
    require ('cd', 196).length - 1 < ('cd', 196).length
    if 0 == cd[((32 * ('cd', 196).length - 1) + cd[196] + 36)]:
        revert with 0, 'all opinions are zero'
    if cd[132] > 10^18:
        revert with 0, 'minVotes > 1.0'
    if cd[164] > 10^18:
        revert with 0, 'minAgreement > 1.0'
    stor102[cd[4]].field_256 = address(cd[68])
    stor102[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor102[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor102[cd[4]].length + 31 / 32 > idx:
        stor102[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    require uint8(cd[100]) <= 2
    stor102[cd[4]].field_416 = uint8(cd[100])
    stor102[cd[4]].field_512 = cd[132]
    stor102[cd[4]].field_768 = cd[164]
    stor102[cd[4]].field_1024 = ('cd', 196).length
    if not ('cd', 196).length:
        idx = 0
        while stor102[cd[4]].field_1024 > idx:
            stor102[cd[4]][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if 32 * ('cd', 196).length <= 0:
            idx = 0
            while stor102[cd[4]].field_1024 > idx:
                stor102[cd[4]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor102[cd[4]][4].field_0 = ('cd', 196)[0]
            s = 1
            idx = cd[196] + 68
            while cd[196] + (32 * ('cd', 196).length) + 36 > idx:
                stor102[cd[4]][s + 4].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * ('cd', 196).length) - 1) >> 5) + 1
            while stor102[cd[4]].field_1024 > idx:
                stor102[cd[4]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    stor102[cd[4]].field_1280 = cd[228]
    stor102[cd[4]].field_1536 = cd[260]
    stor102[cd[4]].field_1792 = cd[292]
    stor102[cd[4]].field_2048 = cd[324]
    emit 0x37b429de: cd[4]
}



}
