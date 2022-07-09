contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct tokenWhiteList;

function tokenWhiteList(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(tokenWhiteList[arg1].field_0)
    return address(tokenWhiteList[arg1][arg2].field_0)
}

function _fallback() payable {
    revert
}

function addTokenToWhiteList(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if uint256(tokenWhiteList[address(arg1)].field_0) <= 0:
        revert with 0, 'This is invalid'
    uint256(tokenWhiteList[address(arg1)].field_0)++
    address(tokenWhiteList[address(arg1)][uint256(tokenWhiteList[address(arg1)].field_0)].field_0) = arg2
}

function deleteTokenWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if uint256(tokenWhiteList[address(arg1)].field_0) <= 0:
        revert with 0, 'This is invalid'
    uint256(tokenWhiteList[address(arg1)].field_0) = 0
    idx = 0
    while uint256(tokenWhiteList[address(arg1)].field_0) > idx:
        uint256(tokenWhiteList[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
}

function createTokenWhiteList(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if uint256(tokenWhiteList[address(arg1)].field_0):
        revert with 0, 'A whitelist for this contract already exists'
    uint256(tokenWhiteList[address(arg1)].field_0) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(tokenWhiteList[address(arg1)].field_0) > idx:
            uint256(tokenWhiteList[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        idx = arg2 + (32 * arg2.length) + 36
        while sha3(sha3(address(arg1), 1)) + uint256(tokenWhiteList[address(arg1)].field_0) > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}

function removeTokenFromWhiteList(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if uint256(tokenWhiteList[address(arg1)].field_0) <= 0:
        revert with 0, 'This is invalid'
    if var66003 < 1:
        revert with 'NH{q', 17
    if var70002 > var70001:
    if var72001 >= uint256(tokenWhiteList[address(arg1)].field_0):
        revert with 'NH{q', 50
    if arg2 != address(stor[sha3(var74002) + var74001]):
        if var82001 == -1:
            revert with 'NH{q', 17
        # nil
    else:
        if var76001 >= uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 'NH{q', 50
        address(stor[sha3(var78002) + var78001]) = 0
        if var88003 < 1:
            revert with 'NH{q', 17
        if var92001 >= uint256(stor[var92002]):
            revert with 'NH{q', 50
        if var92003 >= uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 'NH{q', 50
        address(tokenWhiteList[address(arg1)][var92003].field_0) = address(stor[sha3(var92002) + var92001])
        if not uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 'NH{q', 49
        address(tokenWhiteList[address(arg1)][uint256(tokenWhiteList[address(arg1)].field_0)].field_0) = 0
        uint256(tokenWhiteList[address(arg1)].field_0)--
        # nil
}

function getTokenList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 128
    mem[96] = uint256(tokenWhiteList[address(arg1)].field_0)
    if not uint256(tokenWhiteList[address(arg1)].field_0):
        mem[(32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 160] = uint256(tokenWhiteList[address(arg1)].field_0)
        idx = 0
        s = 128
        t = (32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 192
        while idx < uint256(tokenWhiteList[address(arg1)].field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 128
           len (96 * uint256(tokenWhiteList[address(arg1)].field_0)) + 64
    mem[128] = address(tokenWhiteList[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(tokenWhiteList[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 128] = 32
    mem[(32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 160] = uint256(tokenWhiteList[address(arg1)].field_0)
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < uint256(tokenWhiteList[address(arg1)].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(tokenWhiteList[address(arg1)].field_0)) + -mem[64] + 192
}



}
