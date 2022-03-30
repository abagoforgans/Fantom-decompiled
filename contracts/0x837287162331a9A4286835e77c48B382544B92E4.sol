contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
array of struct pump;
array of struct stor3;
mapping of uint8 stor99;

function getPump(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pump.length
    mem[128] = uint256(stor[sha3((3 * arg1) + ('name', 'pump', 2) + 1)].field_0)
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'pump', 2) + 1].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'pump', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(pump[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'pump', 2) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'pump', 2) + 1].length]),
           uint256(pump[arg1].field_512)
}

function _fallback() payable {
    revert
}

function newReaction(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor3.length++
    uint256(stor3[stor3.length].field_0) = arg1
    uint256(stor3[stor3.length].field_256) = arg2
    address(stor3[stor3.length].field_512) = msg.sender
    uint256(stor3[stor3.length].field_768) = block.timestamp
}

function updateUserMetadata(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    uint256(stor0[address(msg.sender)][2][].field_0) = Array(len=arg1.length, data=arg1[all])
}

function usernameExists(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor1[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function newPump(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    pump.length++
    address(pump[pump.length].field_0) = msg.sender
    uint256(stor[sha3((3 * pump.length) + ('name', 'pump', 2) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(pump[pump.length].field_512) = block.timestamp
    emit 0x7a6d3339: msg.sender, Array(len=arg1.length, data=arg1[all]), block.timestamp
}

function newUser(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if bool(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) == 1:
        revert with 0, 'Username exists.'
    address(stor0[address(msg.sender)].field_0) = msg.sender
    uint256(stor0[address(msg.sender)][1][].field_0) = Array(len=arg1.length, data=arg1[all])
    bool(stor0[address(msg.sender)].field_512) = 0
    uint255(stor0[address(msg.sender)].field_513) = 0
    Mask(248, 0, stor0[address(msg.sender)].field_520) = mem[ceil32(arg1.length) + 416 len 31]
    idx = 0
    while stor0[address(msg.sender)][2].length + 31 / 32 > idx:
        uint256(stor0[address(msg.sender)][idx + 2].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor0[address(msg.sender)].field_768) = block.timestamp
    emit NewUser(msg.sender, Array(len=arg1.length, data=arg1[all]), block.timestamp);
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 0
    mem[96] = stor0[arg1][1].length
    mem[128] = uint256(stor0[arg1][1].field_0)
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160
    mem[ceil32(stor0[arg1][1].length) + 128] = stor0[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[ceil32(stor0[arg1][1].length) + 160] = uint256(stor0[arg1][2].field_0)
    idx = ceil32(stor0[arg1][1].length) + 160
    s = 0
    while ceil32(stor0[arg1][1].length) + stor0[arg1][2].length + 128 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160] = address(stor0[arg1].field_0)
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 256] = uint256(stor0[arg1].field_768)
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192] = 128
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 288] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320 len ceil32(stor0[arg1][1].length)] = mem[128 len ceil32(stor0[arg1][1].length)]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 224] = stor0[arg1][1].length + 160
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320] = stor0[arg1][2].length
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352 len ceil32(stor0[arg1][2].length)] = mem[ceil32(stor0[arg1][1].length) + 160 len ceil32(stor0[arg1][2].length)]
    if not stor0[arg1][2].length % 32:
        return address(stor0[arg1].field_0), 
               Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32]),
               stor0[arg1][1].length + 160,
               uint256(stor0[arg1].field_768)
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352] = mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + -stor0[arg1][2].length % 32 + 384 len stor0[arg1][2].length % 32]
    return address(stor0[arg1].field_0), 
           Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64]),
           stor0[arg1][1].length + 160,
           uint256(stor0[arg1].field_768)
}



}
