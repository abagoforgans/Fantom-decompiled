contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct tokenWhiteList;

function tokenWhiteList(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if not uint256(tokenWhiteList[address(arg1)].field_0):
        revert with 0, 'This is invalid'
    uint256(tokenWhiteList[address(arg1)].field_0)++
    address(tokenWhiteList[address(arg1)][uint256(tokenWhiteList[address(arg1)].field_0)].field_0) = arg2
}

function deleteTokenWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if not uint256(tokenWhiteList[address(arg1)].field_0):
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
        revert with 0, 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(tokenWhiteList[address(arg1)][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(tokenWhiteList[address(arg1)].field_0) > idx:
            uint256(tokenWhiteList[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
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
        s = (32 * uint256(tokenWhiteList[address(arg1)].field_0)) + 192
        t = 128
        while idx < uint256(tokenWhiteList[address(arg1)].field_0):
            mem[s] = mem[t + 12 len 20]
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
    s = mem[64] + 64
    t = 128
    while idx < uint256(tokenWhiteList[address(arg1)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(tokenWhiteList[address(arg1)].field_0)) + -mem[64] + 192
}

function removeTokenFromWhiteList(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    if not uint256(tokenWhiteList[address(arg1)].field_0):
        revert with 0, 'This is invalid'
    if var34001 < 1:
        revert with 0, 17
    if var38002 > var38001:
    if var40001 >= uint256(tokenWhiteList[address(arg1)].field_0):
        revert with 0, 50
    if address(stor[sha3(var42002) + var42001]) != arg2:
        if var46001 == -1:
            revert with 0, 17
        if var54001 < 1:
            revert with 0, 17
        if var58002 > var58001:
        if var60001 >= uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 0, 50
        if address(stor[sha3(var62002) + var62001]) != arg2:
            if var66001 == -1:
                revert with 0, 17
            # nil
        else:
            if var64001 >= uint256(tokenWhiteList[address(arg1)].field_0):
                revert with 0, 50
            address(stor[var66001 + sha3(var66002)]) = 0
            if var68001 < 1:
                revert with 0, 17
            # nil
    else:
        if var44001 >= uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 0, 50
        address(stor[var46001 + sha3(var46002)]) = 0
        if var48001 < 1:
            revert with 0, 17
        if var52001 >= uint256(stor[var52002]):
            revert with 0, 50
        if var52003 >= uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 0, 50
        address(tokenWhiteList[address(arg1)][var52003].field_0) = address(stor[var52001 + sha3(var52002)])
        if not uint256(tokenWhiteList[address(arg1)].field_0):
            revert with 0, 49
        address(tokenWhiteList[address(arg1)][uint256(tokenWhiteList[address(arg1)].field_0)].field_0) = 0
        uint256(tokenWhiteList[address(arg1)].field_0)--
        if var51001 == -1:
            revert with 0, 17
        if var59001 < 1:
            revert with 0, 17
        if var63002 > var63001:
        # nil
}



}
