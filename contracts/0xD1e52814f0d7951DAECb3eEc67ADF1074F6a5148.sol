contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 paused;
mapping of uint8 stor5;
array of address allProxyRegistries;
address registryManagerAddress;
mapping of uint256 totalBalances;
mapping of uint256 unlockTime;
array of uint256 allHeldTokensLength;
array of struct allTokenHolders;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor0[Mask(32, 224, arg1)]))
}

function unlockTime(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return unlockTime[address(arg1)][arg2]
}

function allProxyRegistriesLength() payable {
    return allProxyRegistries.length
}

function paused() payable {
    return bool(paused)
}

function allTokenHolders(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(allTokenHolders[arg1].field_0)
    return address(allTokenHolders[arg1][arg2].field_0)
}

function getRegistryManager() payable {
    return registryManagerAddress
}

function allProxyRegistries(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allProxyRegistries.length
    return address(allProxyRegistries[arg1])
}

function allHeldTokensLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return allHeldTokensLength[address(arg1)]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allHeldTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allHeldTokensLength[address(arg1)]
    return allHeldTokensLength[address(arg1)][arg2]
}

function totalBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalances[arg1]
}

function allTokenHoldersLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(allTokenHolders[arg1].field_0)
}

function _fallback() payable {
    revert
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if unlockTime[address(msg.sender)][arg1] >= arg2:
        revert with 0, 'ALREADY_LOCKED'
    unlockTime[address(msg.sender)][arg2] = arg2
}

function setRegistryManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg1:
        revert with 0, 'UNAUTHORIZED'
    registryManagerAddress = arg1
}

function addProxyRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    allProxyRegistries.length++
    address(allProxyRegistries[allProxyRegistries.length]) = arg1
}

function relinquishControl() payable {
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor5[address(arg1)] = 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 6
        mem[100] = arg1
        require ext_code.size(address(allProxyRegistries[idx]))
        staticcall address(allProxyRegistries[idx]).proxies(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg2:
            idx = idx + 1
            continue 
        return 1
    return bool(stor2[address(arg1)][address(arg2)])
}

function removeProxyRegistryAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if arg1 >= allProxyRegistries.length:
        revert with 0, 'INVALID_INDEX'
    if 1 >= allProxyRegistries.length:
        allProxyRegistries.length = 0
        idx = 0
        while allProxyRegistries.length > idx:
            uint256(allProxyRegistries[idx]) = 0
            idx = idx + 1
            continue 
    else:
        require allProxyRegistries.length - 1 < allProxyRegistries.length
        require arg1 < allProxyRegistries.length
        address(allProxyRegistries[arg1]) = address(allProxyRegistries[allProxyRegistries.length])
        require allProxyRegistries.length - 1 < allProxyRegistries.length
        address(allProxyRegistries[allProxyRegistries.length]) = 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    if not arg1:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[261 len 31]
    mem[192] = arg2
    mem[224] = 1
    mem[256] = arg3
    if paused:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[400 len 20]
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1:
            if not arg1:
                revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[399 len 21]
            if not balanceOf[mem[(32 * idx) + 192]][address(arg1)]:
                require idx < 1
                allHeldTokensLength[address(arg1)]++
                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]] = mem[(32 * idx) + 192]
                require idx < 1
                uint256(allTokenHolders[mem[(32 * idx) + 192]].field_0)++
                address(allTokenHolders[mem[(32 * idx) + 192]][uint256(allTokenHolders[mem[(32 * idx) + 192]].field_0)].field_0) = arg1
        require idx < 1
        if mem[(32 * idx) + 256] + totalBalances[mem[(32 * idx) + 192]] < totalBalances[mem[(32 * idx) + 192]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < 1
        mem[0] = mem[(32 * idx) + 192]
        mem[32] = 8
        totalBalances[mem[(32 * idx) + 192]] += mem[(32 * idx) + 256]
        if not arg1:
            require idx < 1
            require idx < 1
            if mem[(32 * idx) + 256] > totalBalances[mem[(32 * idx) + 192]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 192]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 192]] -= mem[(32 * idx) + 256]
        idx = idx + 1
        continue 
    if arg3 + balanceOf[arg2][address(arg1)] < balanceOf[arg2][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 3, '0x0' % 16777216
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg3)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg3)
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 1 == bool(stor5[msg.sender]):
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[199 len 29]
        mem[128] = arg2
        mem[160] = 1
        mem[192] = arg3
        mem[224] = 0
        if paused:
            revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[368 len 20]
        idx = 0
        while idx < 1:
            require idx < 1
            if arg1:
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < 1
                    if not arg1:
                        revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[367 len 21]
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + 192]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + 128]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < 1
                            if var65005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < 1
                                require var69006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < 1
                                if address(stor[sha3(var71002) + var71001]) != arg1:
                                    require var72006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var74001 + sha3(var74002)])
                                    require idx < 1
                                    s = var74004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var77006])
                                    require idx < 1
                                    require var81006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var83002) + var83001]) = address(var83003)
                                    require idx < 1
                                    s = var83004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < 1
                            if var68005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < 1
                                require var72006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < 1
                                if address(stor[sha3(var74002) + var74001]) != arg1:
                                    require var75006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var77001 + sha3(var77002)])
                                    require var77004 < 1
                                    s = var77004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * var77004) + 128]].field_0):
                                        require s < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                        require s < 1
                                        if address(allTokenHolders[mem[(32 * s) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * s) + 128]][s].field_256)
                                        else:
                                            require s < 1
                                            require uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            require s < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * s) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * s) + 128]][uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)].field_0)
                                        require s + 1 < 1
                                        mem[0] = mem[(32 * s + 1) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                    require s < 1
                                    uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) = stor0.length
                                    if not stor0.length:
                                        t = sha3(sha3(mem[(32 * s) + 128], 11))
                                        while sha3(sha3(mem[(32 * s) + 128], 11)) + uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(mem[(32 * s) + 128], 11))
                                        idx = sha3(0)
                                        while sha3(0) + stor0.length > idx:
                                            uint256(stor[t]) = uint256(stor[idx])
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        t = sha3(sha3(mem[(32 * s) + 128], 11)) + stor0.length
                                        while sha3(sha3(mem[(32 * s) + 128], 11)) + uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                    require s < 1
                                    require s < 1
                                    if not arg1:
                                        if mem[(32 * s) + 192] + totalBalances[mem[(32 * s) + 128]] < totalBalances[mem[(32 * s) + 128]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require s < 1
                                        totalBalances[mem[(32 * s) + 128]] += mem[(32 * s) + 192]
                                    if mem[(32 * s) + 192] > totalBalances[mem[(32 * s) + 128]]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require s < 1
                                    mem[0] = mem[(32 * s) + 128]
                                    mem[32] = 8
                                    totalBalances[mem[(32 * s) + 128]] -= mem[(32 * s) + 192]
                                    s = s + 1
                                    continue 
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var80006])
                                require idx < 1
                                require var84006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var86002) + var86001]) = address(var86003)
                                require idx < 1
                                s = var86004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < 1
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                        require idx < 1
                        uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) = stor0.length
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + 128], 11))
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = sha3(sha3(mem[(32 * idx) + 128], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            require idx < 1
            if not arg1:
                if mem[(32 * idx) + 192] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 1
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if mem[(32 * idx) + 192] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
    else:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[199 len 29]
        mem[128] = arg2
        mem[160] = 1
        mem[192] = arg3
        mem[224] = 0
        if paused:
            revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[368 len 20]
        idx = 0
        while idx < 1:
            require idx < 1
            if arg1:
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < 1
                    if not arg1:
                        revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[367 len 21]
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + 192]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + 128]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < 1
                            if var66005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < 1
                                require var70006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < 1
                                if address(stor[sha3(var72002) + var72001]) != arg1:
                                    require var73006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var75001 + sha3(var75002)])
                                    require idx < 1
                                    s = var75004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var78006])
                                    require idx < 1
                                    require var82006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var84002) + var84001]) = address(var84003)
                                    require idx < 1
                                    s = var84004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < 1
                            if var69005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < 1
                                require var73006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < 1
                                if address(stor[sha3(var75002) + var75001]) != arg1:
                                    require var76006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var78001 + sha3(var78002)])
                                    require var78004 < 1
                                    s = var78004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * var78004) + 128]].field_0):
                                        require s < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                        require s < 1
                                        if address(allTokenHolders[mem[(32 * s) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * s) + 128]][s].field_256)
                                        else:
                                            require s < 1
                                            require uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            require s < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * s) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * s) + 128]][uint256(allTokenHolders[mem[(32 * s) + 128]].field_0)].field_0)
                                        require s + 1 < 1
                                        mem[0] = mem[(32 * s + 1) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                    require s < 1
                                    uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) = stor0.length
                                    if not stor0.length:
                                        t = sha3(sha3(mem[(32 * s) + 128], 11))
                                        while sha3(sha3(mem[(32 * s) + 128], 11)) + uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(mem[(32 * s) + 128], 11))
                                        idx = sha3(0)
                                        while sha3(0) + stor0.length > idx:
                                            uint256(stor[t]) = uint256(stor[idx])
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        t = sha3(sha3(mem[(32 * s) + 128], 11)) + stor0.length
                                        while sha3(sha3(mem[(32 * s) + 128], 11)) + uint256(allTokenHolders[mem[(32 * s) + 128]].field_0) > t:
                                            uint256(stor[t]) = 0
                                            t = t + 1
                                            continue 
                                    require s < 1
                                    require s < 1
                                    if not arg1:
                                        if mem[(32 * s) + 192] + totalBalances[mem[(32 * s) + 128]] < totalBalances[mem[(32 * s) + 128]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require s < 1
                                        totalBalances[mem[(32 * s) + 128]] += mem[(32 * s) + 192]
                                    if mem[(32 * s) + 192] > totalBalances[mem[(32 * s) + 128]]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require s < 1
                                    mem[0] = mem[(32 * s) + 128]
                                    mem[32] = 8
                                    totalBalances[mem[(32 * s) + 128]] -= mem[(32 * s) + 192]
                                    s = s + 1
                                    continue 
                                require idx < 1
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var81006])
                                require idx < 1
                                require var85006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var87002) + var87001]) = address(var87003)
                                require idx < 1
                                s = var87004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < 1
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < 1
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < 1
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                        require idx < 1
                        uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) = stor0.length
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + 128], 11))
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = sha3(sha3(mem[(32 * idx) + 128], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            require idx < 1
            if not arg1:
                if mem[(32 * idx) + 192] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 1
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
            if mem[(32 * idx) + 192] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg5.length) + 128
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 == msg.sender:
        mem[ceil32(arg5.length) + 128] = 1
        require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg5.length) + 160] = arg3
        mem[ceil32(arg5.length) + 192] = 1
        mem[ceil32(arg5.length) + 224] = arg4
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[ceil32(arg5.length) + 368 len 20]
        idx = 0
        while idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
            if arg1:
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            if var68005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require var72006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                if address(stor[sha3(var74002) + var74001]) != arg1:
                                    require var75006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var77001 + sha3(var77002)])
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    s = var77004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var80006])
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require var84006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    address(stor[sha3(var86002) + var86001]) = address(var86003)
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    s = var86004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            if var71005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require var75006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                if address(stor[sha3(var77002) + var77001]) != arg1:
                                    require var78006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var80001 + sha3(var80002)])
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    s = var80004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var83006])
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    require var87006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    address(stor[sha3(var89002) + var89001]) = address(var89003)
                                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                    s = var89004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) = stor0.length
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                            while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = 0
                            t = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            if arg2:
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[ceil32(arg5.length) + 367 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
            if not arg1:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < allProxyRegistries.length:
            mem[0] = 6
            mem[ceil32(arg5.length) + 132] = arg1
            require ext_code.size(address(allProxyRegistries[idx]))
            staticcall address(allProxyRegistries[idx]).proxies(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 128] = 1
            mem[ceil32(arg5.length) + 160] = arg3
            mem[ceil32(arg5.length) + 192] = 1
            mem[ceil32(arg5.length) + 224] = arg4
            if paused:
                revert with 0, 
                            32,
                            44,
                            0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                            mem[ceil32(arg5.length) + 368 len 20]
            idx = 0
            while idx < 1:
                if arg1:
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = sha3(address(arg1), 9)
                    if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                        revert with 0, 'TOKEN_LOCKED'
                    if arg1:
                        require idx < 1
                        require idx < 1
                        if not arg1:
                            revert with 0, 
                                        32,
                                        43,
                                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                        mem[ceil32(arg5.length) + 367 len 21]
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                        if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                            s = 0
                            while s < allHeldTokensLength[address(arg1)]:
                                require idx < 1
                                require s < allHeldTokensLength[address(arg1)]
                                if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                    require s < allHeldTokensLength[address(arg1)]
                                    stor0.length++
                                    uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                                else:
                                    require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                    require s < allHeldTokensLength[address(arg1)]
                                    allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                                mem[0] = arg1
                                mem[32] = 10
                                s = s + 1
                                continue 
                            allHeldTokensLength[address(arg1)] = stor0.length
                            if not stor0.length:
                                t = sha3(sha3(address(arg1), 10))
                                while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                                require idx < 1
                                if var81005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < 1
                                    require var85006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    require idx < 1
                                    if address(stor[sha3(var87002) + var87001]) != arg1:
                                        require var88006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(stor[var90001 + sha3(var90002)])
                                        require idx < 1
                                        s = var90004
                                        while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                stor0.length++
                                                address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                            else:
                                                require idx < 1
                                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                require idx < 1
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                            mem[32] = 11
                                            s = s + 1
                                            continue 
                                    else:
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var93006])
                                        require idx < 1
                                        require var97006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(stor[sha3(var99002) + var99001]) = address(var99003)
                                        require idx < 1
                                        s = var99004
                                        while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                stor0.length++
                                                address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                            else:
                                                require idx < 1
                                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                require idx < 1
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                            mem[32] = 11
                                            s = s + 1
                                            continue 
                            else:
                                t = sha3(sha3(address(arg1), 10))
                                s = sha3(0)
                                while sha3(0) + stor0.length > s:
                                    uint256(stor[t]) = uint256(stor[s])
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3(sha3(address(arg1), 10)) + stor0.length
                                while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                require idx < 1
                                if var84005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                    require idx < 1
                                    require var88006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    require idx < 1
                                    if address(stor[sha3(var90002) + var90001]) != arg1:
                                        require var91006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(stor[var93001 + sha3(var93002)])
                                        require idx < 1
                                        s = var93004
                                        while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                stor0.length++
                                                address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                            else:
                                                require idx < 1
                                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                require idx < 1
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                            mem[32] = 11
                                            s = s + 1
                                            continue 
                                    else:
                                        require idx < 1
                                        require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var96006])
                                        require idx < 1
                                        require var100006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        address(stor[sha3(var102002) + var102001]) = address(var102003)
                                        require idx < 1
                                        s = var102004
                                        while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                stor0.length++
                                                address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                            else:
                                                require idx < 1
                                                require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                require idx < 1
                                                require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                            require idx < 1
                                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                            mem[32] = 11
                                            s = s + 1
                                            continue 
                            require idx < 1
                            mem[32] = 11
                            uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) = stor0.length
                            mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                            if not stor0.length:
                                s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                                while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = 0
                                t = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                                s = sha3(0)
                                while sha3(0) + stor0.length > s:
                                    uint256(stor[t]) = uint256(stor[s])
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + stor0.length
                                while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                if arg2:
                    require idx < 1
                    if not arg2:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                        require idx < 1
                        allHeldTokensLength[address(arg2)]++
                        allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        require idx < 1
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
                if not arg1:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 8
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
                if not arg2:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 8
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 288 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            if arg4 > balanceOf[arg3][address(arg1)]:
                mem[ceil32(arg5.length) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg5.length) + 356] = 32
                idx = 0
                while idx < 42:
                    mem[idx + ceil32(arg5.length) + 420] = mem[idx + ceil32(arg5.length) + 288]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg5.length) + 452] = mem[ceil32(arg5.length) + 474 len 10]
                revert with 0, 32, 42, mem[ceil32(arg5.length) + 420 len 64]
            balanceOf[arg3][address(arg1)] -= arg4
            if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
            emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
            if ext_code.size(arg2):
                idx = 0
                while idx < arg5.length:
                    mem[idx + ceil32(arg5.length) + 548] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=mem[ceil32(arg5.length) + 548 len arg5.length])
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                Mask(96, 0, arg4)
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x64455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
        mem[ceil32(arg5.length) + 160] = arg3
        mem[ceil32(arg5.length) + 192] = 1
        mem[ceil32(arg5.length) + 224] = arg4
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[ceil32(arg5.length) + 368 len 20]
        idx = 0
        while idx < 1:
            if arg1:
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < 1
                    require idx < 1
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[ceil32(arg5.length) + 367 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                    if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] - mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < 1
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < 1
                            if var77005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                require idx < 1
                                require var81006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                require idx < 1
                                if address(stor[sha3(var83002) + var83001]) != arg1:
                                    require var84006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var86001 + sha3(var86002)])
                                    require idx < 1
                                    s = var86004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var89006])
                                    require idx < 1
                                    require var93006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    address(stor[sha3(var95002) + var95001]) = address(var95003)
                                    require idx < 1
                                    s = var95004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < 1
                            if var80005 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                require idx < 1
                                require var84006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                require idx < 1
                                if address(stor[sha3(var86002) + var86001]) != arg1:
                                    require var87006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var89001 + sha3(var89002)])
                                    require idx < 1
                                    s = var89004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < 1
                                    require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(stor[var92006])
                                    require idx < 1
                                    require var96006 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                    address(stor[sha3(var98002) + var98001]) = address(var98003)
                                    require idx < 1
                                    s = var98004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0):
                                        require idx < 1
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                        require idx < 1
                                        if address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256)
                                        else:
                                            require idx < 1
                                            require uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            require idx < 1
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0)
                                        require idx < 1
                                        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        require idx < 1
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) = stor0.length
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                            while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = 0
                            t = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)) + uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            if arg2:
                require idx < 1
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[ceil32(arg5.length) + 367 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 1)
                if not balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)]:
                    require idx < 1
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    require idx < 1
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 11)
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][uint256(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0)].field_0) = arg2
            if not arg1:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
        idx = 0
        while idx < arg3.length:
            if arg1:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg4.length
                    require idx < arg3.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < arg3.length
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + 128]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < arg3.length
                            if var69005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require var73006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < arg3.length
                                if address(stor[sha3(var75002) + var75001]) != arg1:
                                    require var76006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var78001 + sha3(var78002)])
                                    require idx < arg3.length
                                    s = var78004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var81006])
                                    require idx < arg3.length
                                    require var85006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var87002) + var87001]) = address(var87003)
                                    require idx < arg3.length
                                    s = var87004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < arg3.length
                            if var72005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require var76006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < arg3.length
                                if address(stor[sha3(var78002) + var78001]) != arg1:
                                    require var79006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var81001 + sha3(var81002)])
                                    require idx < arg3.length
                                    s = var81004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var84006])
                                    require idx < arg3.length
                                    require var88006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var90002) + var90001]) = address(var90003)
                                    require idx < arg3.length
                                    s = var90004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        require idx < arg3.length
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) = stor0.length
                        mem[0] = sha3(mem[(32 * idx) + 128], 11)
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + 128], 11))
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = 0
                            t = sha3(sha3(mem[(32 * idx) + 128], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            if arg2:
                require idx < arg3.length
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                    require idx < arg3.length
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + 128], 11)
                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _5562 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _5574 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _5575 = mem[64]
            mem[64] = mem[64] + 96
            mem[_5575] = 42
            mem[_5575 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_5562, 1)
            if _5574 <= balanceOf[_5562][address(arg1)]:
                balanceOf[_5562][address(arg1)] -= _5574
                if _5574 + balanceOf[_5562][arg2] < balanceOf[_5562][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_5562, 1)
                balanceOf[_5562][address(arg2)] = _5574 + balanceOf[_5562][arg2]
                idx = idx + 1
                continue 
            _5602 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _5602 + 68] = mem[idx + _5575 + 32]
                idx = idx + 32
                continue 
            mem[_5602 + 100] = mem[_5602 + 122 len 10]
            revert with memory
              from mem[64]
               len _5602 + -mem[64] + 132
        _5556 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _5558 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _5556 + 96] = mem[(32 * arg3.length) + 128]
        _7987 = mem[(32 * arg3.length) + 128]
        mem[(32 * _5558) + _5556 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _7987) + (32 * _5558) + _5556 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _9758 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _11391 = mem[(32 * arg3.length) + 128]
        mem[(32 * _9758) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _11391) + (32 * _9758) + 224
        mem[(32 * _11391) + (32 * _9758) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _13474 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _11391) + (32 * _9758) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _13474 % 32:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11391) + (32 * _9758) + 224, mem[mem[64] + 164 len _13474 + (32 * _11391) + (32 * _9758) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _17080 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _17080 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _17360 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_17080 + ext_call.return_data[0]]
            _17362 = mem[_17080 + ext_call.return_data[0]]
            if not mem[_17080 + ext_call.return_data[0]]:
                if not mem[_17080 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_17080 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_17080 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_17080 + ext_call.return_data[0]]) + mem[64] + -(mem[_17080 + ext_call.return_data[0]] % 32) + 100 len mem[_17080 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_17080 + ext_call.return_data[0] + 32]
                mem[mem[64] + 100 len floor32(_17362 - 1)] = mem[_17080 + ext_call.return_data[0] + 64 len floor32(_17362 - 1)]
                if not _17362 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _17362 + 32]
                mem[floor32(_17362) + mem[64] + 68] = mem[floor32(_17362) + mem[64] + -(_17362 % 32) + 100 len _17362 % 32]
            revert with memory
              from mem[64]
               len floor32(_17362) + _17360 + -mem[64] + 100
        mem[floor32(_13474) + (32 * _11391) + (32 * _9758) + mem[64] + 260] = mem[floor32(_13474) + (32 * _11391) + (32 * _9758) + mem[64] + -(_13474 % 32) + 292 len _13474 % 32]
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11391) + (32 * _9758) + 224, mem[mem[64] + 164 len floor32(_13474) + (32 * _11391) + (32 * _9758) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _17116 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _17116 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_17116 + ext_call.return_data[0]]
        _17424 = mem[_17116 + ext_call.return_data[0]]
        if not mem[_17116 + ext_call.return_data[0]]:
            if not mem[_17116 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_17116 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_17116 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_17116 + ext_call.return_data[0]]) + mem[64] + -(mem[_17116 + ext_call.return_data[0]] % 32) + 100 len mem[_17116 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_17424)]
        mem[mem[64] + 68] = mem[_17116 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_17424 - 1)] = mem[_17116 + ext_call.return_data[0] + 64 len floor32(_17424 - 1)]
        if not _17424 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _17424 + 32]
        mem[floor32(_17424) + mem[64] + 68] = mem[floor32(_17424) + mem[64] + -(_17424 % 32) + 100 len _17424 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_17424) + 64]
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 6
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = arg1
        require ext_code.size(address(allProxyRegistries[idx]))
        staticcall address(allProxyRegistries[idx]).proxies(address rg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            idx = idx + 1
            continue 
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
        idx = 0
        while idx < arg3.length:
            if arg1:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(arg1), 9)
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg4.length
                    require idx < arg3.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                        s = 0
                        while s < allHeldTokensLength[address(arg1)]:
                            require idx < arg3.length
                            require s < allHeldTokensLength[address(arg1)]
                            if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + 128]:
                                require s < allHeldTokensLength[address(arg1)]
                                stor0.length++
                                uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                            else:
                                require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                                require s < allHeldTokensLength[address(arg1)]
                                allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                            mem[0] = arg1
                            mem[32] = 10
                            s = s + 1
                            continue 
                        allHeldTokensLength[address(arg1)] = stor0.length
                        if not stor0.length:
                            t = sha3(sha3(address(arg1), 10))
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                            require idx < arg3.length
                            if var82005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require var86006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < arg3.length
                                if address(stor[sha3(var88002) + var88001]) != arg1:
                                    require var89006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var91001 + sha3(var91002)])
                                    require idx < arg3.length
                                    s = var91004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var94006])
                                    require idx < arg3.length
                                    require var98006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var100002) + var100001]) = address(var100003)
                                    require idx < arg3.length
                                    s = var100004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        else:
                            t = sha3(sha3(address(arg1), 10))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(address(arg1), 10)) + stor0.length
                            while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            require idx < arg3.length
                            if var85005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                require idx < arg3.length
                                require var89006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                require idx < arg3.length
                                if address(stor[sha3(var91002) + var91001]) != arg1:
                                    require var92006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    stor0.length++
                                    address(stor0[stor0.length]) = address(stor[var94001 + sha3(var94002)])
                                    require idx < arg3.length
                                    s = var94004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < arg3.length
                                    require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var97006])
                                    require idx < arg3.length
                                    require var101006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    address(stor[sha3(var103002) + var103001]) = address(var103003)
                                    require idx < arg3.length
                                    s = var103004
                                    while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            stor0.length++
                                            address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                        else:
                                            require idx < arg3.length
                                            require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            require idx < arg3.length
                                            require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                            address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                        require idx < arg3.length
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 11
                                        s = s + 1
                                        continue 
                        require idx < arg3.length
                        mem[32] = 11
                        uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) = stor0.length
                        mem[0] = sha3(mem[(32 * idx) + 128], 11)
                        if not stor0.length:
                            s = sha3(sha3(mem[(32 * idx) + 128], 11))
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = 0
                            t = sha3(sha3(mem[(32 * idx) + 128], 11))
                            s = sha3(0)
                            while sha3(0) + stor0.length > s:
                                uint256(stor[t]) = uint256(stor[s])
                                t = t + 1
                                s = s + 1
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 11)) + stor0.length
                            while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            if arg2:
                require idx < arg3.length
                if not arg2:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                    require idx < arg3.length
                    allHeldTokensLength[address(arg2)]++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                    require idx < arg3.length
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                    mem[0] = sha3(mem[(32 * idx) + 128], 11)
                    address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _8009 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _8029 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _8030 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8030] = 42
            mem[_8030 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_8009, 1)
            if _8029 <= balanceOf[_8009][address(arg1)]:
                balanceOf[_8009][address(arg1)] -= _8029
                if _8029 + balanceOf[_8009][arg2] < balanceOf[_8009][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_8009, 1)
                balanceOf[_8009][address(arg2)] = _8029 + balanceOf[_8009][arg2]
                idx = idx + 1
                continue 
            _8053 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _8053 + 68] = mem[idx + _8030 + 32]
                idx = idx + 32
                continue 
            mem[_8053 + 100] = mem[_8053 + 122 len 10]
            revert with memory
              from mem[64]
               len _8053 + -mem[64] + 132
        _7996 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _7998 = mem[96]
        idx = 0
        while idx < 32 * _7998:
            mem[idx + mem[64] + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_7996 + 32] = (32 * _7998) + 96
        mem[(32 * _7998) + _7996 + 96] = mem[(32 * arg3.length) + 128]
        _9732 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _9732:
            mem[idx + (32 * _7998) + _7996 + 128] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _9732) + (32 * _7998) + _7996 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        _11460 = mem[64]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _11462 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[idx + mem[64] + 196] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_11460 + 100] = (32 * mem[96]) + 192
        mem[(32 * _11462) + _11460 + 196] = mem[(32 * arg3.length) + 128]
        _13488 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _13488:
            mem[idx + (32 * _11462) + _11460 + 228] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        mem[_11460 + 132] = (32 * _13488) + (32 * _11462) + 224
        mem[(32 * _13488) + (32 * _11462) + _11460 + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _16837 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        idx = 0
        while idx < _16837:
            mem[idx + (32 * _13488) + (32 * _11462) + _11460 + 260] = mem[idx + (32 * arg3.length) + (32 * arg4.length) + 192]
            idx = idx + 32
            continue 
        if not _16837 % 32:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _16837 + (32 * _13488) + (32 * _11462) + _11460 + -mem[64] + 256]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _21201 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _21201 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_21201 + ext_call.return_data[0]]
            _21471 = mem[_21201 + ext_call.return_data[0]]
            if not mem[_21201 + ext_call.return_data[0]]:
                if not mem[_21201 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_21201 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_21201 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_21201 + ext_call.return_data[0]]) + mem[64] + -(mem[_21201 + ext_call.return_data[0]] % 32) + 100 len mem[_21201 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_21201 + ext_call.return_data[0] + 32]
                idx = 32
                while idx < _21471:
                    mem[idx + mem[64] + 68] = mem[idx + _21201 + ext_call.return_data[0] + 32]
                    idx = idx + 32
                    continue 
                if not _21471 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _21471 + 32]
                mem[floor32(_21471) + mem[64] + 68] = mem[floor32(_21471) + mem[64] + -(_21471 % 32) + 100 len _21471 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_21471) + 64]
        mem[floor32(_16837) + (32 * _13488) + (32 * _11462) + _11460 + 260] = mem[floor32(_16837) + (32 * _13488) + (32 * _11462) + _11460 + -(_16837 % 32) + 292 len _16837 % 32]
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_16837) + (32 * _13488) + (32 * _11462) + _11460 + -mem[64] + 288]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _21251 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _21251 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _21529 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_21251 + ext_call.return_data[0]]
        _21531 = mem[_21251 + ext_call.return_data[0]]
        if not mem[_21251 + ext_call.return_data[0]]:
            if not mem[_21251 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_21251 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_21251 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_21251 + ext_call.return_data[0]]) + mem[64] + -(mem[_21251 + ext_call.return_data[0]] % 32) + 100 len mem[_21251 + ext_call.return_data[0]] % 32]
            revert with memory
              from mem[64]
               len floor32(_21531) + _21529 + -mem[64] + 100
        mem[mem[64] + 68] = mem[_21251 + ext_call.return_data[0] + 32]
        idx = 32
        while idx < _21531:
            mem[idx + mem[64] + 68] = mem[idx + _21251 + ext_call.return_data[0] + 32]
            idx = idx + 32
            continue 
        if not _21531 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _21531 + 32]
        mem[floor32(_21531) + mem[64] + 68] = mem[floor32(_21531) + mem[64] + -(_21531 % 32) + 100 len _21531 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_21531) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
    idx = 0
    while idx < arg3.length:
        if arg1:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 9)
            if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                revert with 0, 'TOKEN_LOCKED'
            if arg1:
                require idx < arg4.length
                require idx < arg3.length
                if not arg1:
                    revert with 0, 
                                32,
                                43,
                                0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                if not balanceOf[mem[(32 * idx) + 128]][address(arg1)] - mem[(32 * idx) + (32 * arg3.length) + 160]:
                    s = 0
                    while s < allHeldTokensLength[address(arg1)]:
                        require idx < arg3.length
                        require s < allHeldTokensLength[address(arg1)]
                        if allHeldTokensLength[address(arg1)][s] != mem[(32 * idx) + 128]:
                            require s < allHeldTokensLength[address(arg1)]
                            stor0.length++
                            uint256(stor0[stor0.length]) = allHeldTokensLength[address(arg1)][s]
                        else:
                            require allHeldTokensLength[address(arg1)] - 1 < allHeldTokensLength[address(arg1)]
                            require s < allHeldTokensLength[address(arg1)]
                            allHeldTokensLength[address(arg1)][s] = allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)]]
                        mem[0] = arg1
                        mem[32] = 10
                        s = s + 1
                        continue 
                    allHeldTokensLength[address(arg1)] = stor0.length
                    if not stor0.length:
                        t = sha3(sha3(address(arg1), 10))
                        while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        require idx < arg3.length
                        if var78005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < arg3.length
                            require var82006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            require idx < arg3.length
                            if address(stor[sha3(var84002) + var84001]) != arg1:
                                require var85006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                stor0.length++
                                address(stor0[stor0.length]) = address(stor[var87001 + sha3(var87002)])
                                require idx < arg3.length
                                s = var87004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var90006])
                                require idx < arg3.length
                                require var94006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var96002) + var96001]) = address(var96003)
                                require idx < arg3.length
                                s = var96004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                    else:
                        t = sha3(sha3(address(arg1), 10))
                        s = sha3(0)
                        while sha3(0) + stor0.length > s:
                            uint256(stor[t]) = uint256(stor[s])
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(address(arg1), 10)) + stor0.length
                        while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)] > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        require idx < arg3.length
                        if var81005 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                            require idx < arg3.length
                            require var85006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                            require idx < arg3.length
                            if address(stor[sha3(var87002) + var87001]) != arg1:
                                require var88006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                stor0.length++
                                address(stor0[stor0.length]) = address(stor[var90001 + sha3(var90002)])
                                require idx < arg3.length
                                s = var90004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                            else:
                                require idx < arg3.length
                                require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(stor[var93006])
                                require idx < arg3.length
                                require var97006 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                address(stor[sha3(var99002) + var99001]) = address(var99003)
                                require idx < arg3.length
                                s = var99004
                                while s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0):
                                    require idx < arg3.length
                                    require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                    require idx < arg3.length
                                    if address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) != arg1:
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        stor0.length++
                                        address(stor0[stor0.length]) = address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256)
                                    else:
                                        require idx < arg3.length
                                        require uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) - 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        require idx < arg3.length
                                        require s + 1 < uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)
                                        address(allTokenHolders[mem[(32 * idx) + 128]][s].field_256) = address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0)
                                    require idx < arg3.length
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 11
                                    s = s + 1
                                    continue 
                    require idx < arg3.length
                    mem[32] = 11
                    uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) = stor0.length
                    mem[0] = sha3(mem[(32 * idx) + 128], 11)
                    if not stor0.length:
                        s = sha3(sha3(mem[(32 * idx) + 128], 11))
                        while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        mem[0] = 0
                        t = sha3(sha3(mem[(32 * idx) + 128], 11))
                        s = sha3(0)
                        while sha3(0) + stor0.length > s:
                            uint256(stor[t]) = uint256(stor[s])
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 11)) + stor0.length
                        while sha3(sha3(mem[(32 * idx) + 128], 11)) + uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
        if arg2:
            require idx < arg3.length
            if not arg2:
                revert with 0, 
                            32,
                            43,
                            0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 303 len 21]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if not balanceOf[mem[(32 * idx) + 128]][address(arg2)]:
                require idx < arg3.length
                allHeldTokensLength[address(arg2)]++
                allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)]] = mem[(32 * idx) + 128]
                require idx < arg3.length
                mem[32] = 11
                uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)++
                mem[0] = sha3(mem[(32 * idx) + 128], 11)
                address(allTokenHolders[mem[(32 * idx) + 128]][uint256(allTokenHolders[mem[(32 * idx) + 128]].field_0)].field_0) = arg2
        if not arg1:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
        if not arg2:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _8004 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _8020 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _8021 = mem[64]
        mem[64] = mem[64] + 96
        mem[_8021] = 42
        mem[_8021 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_8004, 1)
        if _8020 <= balanceOf[_8004][address(arg1)]:
            balanceOf[_8004][address(arg1)] -= _8020
            if _8020 + balanceOf[_8004][arg2] < balanceOf[_8004][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_8004, 1)
            balanceOf[_8004][address(arg2)] = _8020 + balanceOf[_8004][arg2]
            idx = idx + 1
            continue 
        _8044 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _8044 + 68] = mem[idx + _8021 + 32]
            idx = idx + 32
            continue 
        mem[_8044 + 100] = mem[_8044 + 122 len 10]
        revert with memory
          from mem[64]
           len _8044 + -mem[64] + 132
    _7990 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _7992 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _7990 + 96] = mem[(32 * arg3.length) + 128]
    _9728 = mem[(32 * arg3.length) + 128]
    mem[(32 * _7992) + _7990 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _9728) + (32 * _7992) + _7990 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _11454 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _13481 = mem[(32 * arg3.length) + 128]
    mem[(32 * _11454) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _13481) + (32 * _11454) + 224
    mem[(32 * _13481) + (32 * _11454) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _16830 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _13481) + (32 * _11454) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _16830 % 32:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13481) + (32 * _11454) + 224, mem[mem[64] + 164 len _16830 + (32 * _13481) + (32 * _11454) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _21188 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _21188 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _21446 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_21188 + ext_call.return_data[0]]
        _21448 = mem[_21188 + ext_call.return_data[0]]
        if not mem[_21188 + ext_call.return_data[0]]:
            if not mem[_21188 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_21188 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_21188 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_21188 + ext_call.return_data[0]]) + mem[64] + -(mem[_21188 + ext_call.return_data[0]] % 32) + 100 len mem[_21188 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_21188 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_21448 - 1)] = mem[_21188 + ext_call.return_data[0] + 64 len floor32(_21448 - 1)]
            if not _21448 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _21448 + 32]
            mem[floor32(_21448) + mem[64] + 68] = mem[floor32(_21448) + mem[64] + -(_21448 % 32) + 100 len _21448 % 32]
        revert with memory
          from mem[64]
           len floor32(_21448) + _21446 + -mem[64] + 100
    mem[floor32(_16830) + (32 * _13481) + (32 * _11454) + mem[64] + 260] = mem[floor32(_16830) + (32 * _13481) + (32 * _11454) + mem[64] + -(_16830 % 32) + 292 len _16830 % 32]
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13481) + (32 * _11454) + 224, mem[mem[64] + 164 len floor32(_16830) + (32 * _13481) + (32 * _11454) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _21229 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _21229 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _21502 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_21229 + ext_call.return_data[0]]
    _21504 = mem[_21229 + ext_call.return_data[0]]
    if not mem[_21229 + ext_call.return_data[0]]:
        if not mem[_21229 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_21229 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_21229 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_21229 + ext_call.return_data[0]]) + mem[64] + -(mem[_21229 + ext_call.return_data[0]] % 32) + 100 len mem[_21229 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_21504)]
    mem[mem[64] + 68] = mem[_21229 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_21504 - 1)] = mem[_21229 + ext_call.return_data[0] + 64 len floor32(_21504 - 1)]
    if not _21504 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _21504 + 32]
    mem[floor32(_21504) + mem[64] + 68] = mem[floor32(_21504) + mem[64] + -(_21504 % 32) + 100 len _21504 % 32]
    revert with memory
      from mem[64]
       len floor32(_21504) + _21502 + -mem[64] + 100
}



}
