contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 stor4;
mapping of uint8 stor5;
array of address allProxyRegistries;
address registryManagerAddress;
mapping of uint256 totalBalances;
mapping of uint256 unlockTime;
array of struct allHeldTokensLength;
mapping of uint256 stor11;
mapping of uint256 stor12;
array of struct allTokenHolders;
mapping of uint256 stor14;
mapping of uint256 stor15;
mapping of uint8 stor16;
mapping of address stor17;

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
    return bool(stor0[Mask(32, 224, arg1)])
}

function unlockTime(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return unlockTime[address(arg1)][arg2]
}

function allProxyRegistriesLength() payable {
    return allProxyRegistries.length
}

function paused() payable {
    return bool(stor4)
}

function allTokenHolders(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allTokenHolders[arg1].field_0
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
    return allHeldTokensLength[address(arg1)].field_0
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allHeldTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allHeldTokensLength[address(arg1)].field_0
    return allHeldTokensLength[address(arg1)][arg2].field_0
}

function totalBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalances[arg1]
}

function allTokenHoldersLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return allTokenHolders[arg1].field_0
}

function _fallback() payable {
    revert
}

function getTokenData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor16[arg1], stor17[arg1]
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
        if bool(stor5[msg.sender]) != 1:
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

function sub_7c881076(?) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor16[arg1] = arg2
    stor17[arg1] = arg3
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
            idx = idx + 1
            continue 
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg2:
            idx = idx + 1
            continue 
        return 1
    return bool(stor2[address(arg1)][address(arg2)])
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

function removeProxyRegistryAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'UNAUTHORIZED'
    if arg1 >= allProxyRegistries.length:
        revert with 0, 'INVALID_INDEX'
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    require arg1 < allProxyRegistries.length
    address(allProxyRegistries[arg1]) = address(allProxyRegistries[allProxyRegistries.length])
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    address(allProxyRegistries[allProxyRegistries.length]) = 0
    if not allProxyRegistries.length - 1:
        allProxyRegistries.length = 0
        idx = 0
        while allProxyRegistries.length > idx:
            uint256(allProxyRegistries[idx]) = 0
            idx = idx + 1
            continue 
    else:
        require allProxyRegistries.length - 1 < allProxyRegistries.length
        address(allProxyRegistries[allProxyRegistries.length]) = 0
}

function tokenHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not allTokenHolders[arg1].field_0:
        mem[(32 * allTokenHolders[arg1].field_0) + 128] = 32
        mem[(32 * allTokenHolders[arg1].field_0) + 160] = allTokenHolders[arg1].field_0
        mem[(32 * allTokenHolders[arg1].field_0) + 192 len floor32(allTokenHolders[arg1].field_0)] = mem[128 len floor32(allTokenHolders[arg1].field_0)]
        return memory
          from (32 * allTokenHolders[arg1].field_0) + 128
           len (96 * allTokenHolders[arg1].field_0) + 64
    mem[128] = address(allTokenHolders[arg1].field_0)
    idx = 128
    s = 0
    while (32 * allTokenHolders[arg1].field_0) + 96 > idx:
        mem[idx + 32] = address(allTokenHolders[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allTokenHolders[arg1].field_0) + 192 len floor32(allTokenHolders[arg1].field_0)] = mem[128 len floor32(allTokenHolders[arg1].field_0)]
    return Array(len=allTokenHolders[arg1].field_0, data=mem[128 len floor32(allTokenHolders[arg1].field_0)], mem[(32 * allTokenHolders[arg1].field_0) + floor32(allTokenHolders[arg1].field_0) + 192 len (32 * allTokenHolders[arg1].field_0) - floor32(allTokenHolders[arg1].field_0)]), 
}

function heldTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not allHeldTokensLength[address(arg1)].field_0:
        mem[(32 * allHeldTokensLength[address(arg1)].field_0) + 128] = 32
        mem[(32 * allHeldTokensLength[address(arg1)].field_0) + 160] = allHeldTokensLength[address(arg1)].field_0
        mem[(32 * allHeldTokensLength[address(arg1)].field_0) + 192 len floor32(allHeldTokensLength[address(arg1)].field_0)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_0)]
        return memory
          from (32 * allHeldTokensLength[address(arg1)].field_0) + 128
           len (96 * allHeldTokensLength[address(arg1)].field_0) + 64
    mem[128] = allHeldTokensLength[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * allHeldTokensLength[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = allHeldTokensLength[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allHeldTokensLength[address(arg1)].field_0) + 192 len floor32(allHeldTokensLength[address(arg1)].field_0)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_0)]
    return Array(len=allHeldTokensLength[address(arg1)].field_0, data=mem[128 len floor32(allHeldTokensLength[address(arg1)].field_0)], mem[(32 * allHeldTokensLength[address(arg1)].field_0) + floor32(allHeldTokensLength[address(arg1)].field_0) + 192 len (32 * allHeldTokensLength[address(arg1)].field_0) - floor32(allHeldTokensLength[address(arg1)].field_0)]), 
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
    if stor4:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[400 len 20]
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1:
            if not arg1:
                revert with 0, 32, 43, 0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[399 len 21]
            if not balanceOf[mem[(32 * idx) + 192]][address(arg1)]:
                require idx < 1
                allHeldTokensLength[address(arg1)].field_0++
                allHeldTokensLength[address(arg1)][allHeldTokensLength[address(arg1)].field_0].field_0 = mem[(32 * idx) + 192]
                stor12[address(arg1)]++
                require idx < 1
                stor11[address(arg1)][mem[(32 * idx) + 192]] = stor12[address(arg1)]
                require idx < 1
                allTokenHolders[mem[(32 * idx) + 192]].field_0++
                address(allTokenHolders[mem[(32 * idx) + 192]][allTokenHolders[mem[(32 * idx) + 192]].field_0].field_0) = arg1
                require idx < 1
                require idx < 1
                stor15[mem[(32 * idx) + 192]]++
                require idx < 1
                require idx < 1
                stor14[mem[(32 * idx) + 192]][address(arg1)] = stor15[mem[(32 * idx) + 192]] - 1
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
    if bool(stor5[msg.sender]) != 1:
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
    if stor4:
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
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + 192]:
                    require idx < 1
                    if stor11[address(arg1)][mem[(32 * idx) + 128]] > -1:
                        if stor11[address(arg1)][mem[(32 * idx) + 128]] < stor12[address(arg1)]:
                            require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                            require stor11[address(arg1)][mem[(32 * idx) + 128]] < allHeldTokensLength[address(arg1)].field_0
                            allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + 128]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                            require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                            allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                            stor12[address(arg1)]--
                            if not stor12[address(arg1)] - 1:
                                allHeldTokensLength[address(arg1)].field_0 = 0
                                s = sha3(sha3(address(arg1), 10))
                                while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                            require idx < 1
                            stor11[address(arg1)][mem[(32 * idx) + 128]] = -1
                    require idx < 1
                    if stor14[mem[(32 * idx) + 128]][address(arg1)] > -1:
                        require idx < 1
                        if stor14[mem[(32 * idx) + 128]][address(arg1)] < stor15[mem[(32 * idx) + 128]]:
                            require idx < 1
                            require idx < 1
                            require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            require idx < 1
                            require stor14[mem[(32 * idx) + 128]][address(arg1)] < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            address(allTokenHolders[mem[(32 * idx) + 128]][stor14[mem[(32 * idx) + 128]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0)
                            require idx < 1
                            require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                            require idx < 1
                            stor15[mem[(32 * idx) + 128]]--
                            require idx < 1
                            if stor15[mem[(32 * idx) + 128]] - 1 <= 0:
                                allTokenHolders[mem[(32 * idx) + 128]].field_0 = 0
                                s = sha3(sha3(mem[(32 * idx) + 128], 13))
                                while sha3(sha3(mem[(32 * idx) + 128], 13)) + allTokenHolders[mem[(32 * idx) + 128]].field_0 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                            require idx < 1
                            stor14[mem[(32 * idx) + 128]][address(arg1)] = -1
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
        if stor4:
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
                    if balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] == mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                        if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > -1:
                            if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < stor12[address(arg1)]:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                require stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                stor12[address(arg1)]--
                                if not stor12[address(arg1)] - 1:
                                    allHeldTokensLength[address(arg1)].field_0 = 0
                                    s = sha3(sha3(address(arg1), 10))
                                    while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = -1
                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                        if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] > -1:
                            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                            mem[32] = 15
                            if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0)
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]--
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                if stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 <= 0:
                                    allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                                    s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13))
                                    while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13)) + allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                                stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] = -1
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
                    allHeldTokensLength[address(arg2)].field_0++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    stor12[address(arg2)]++
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    stor11[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = stor12[address(arg2)]
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0++
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0) = arg2
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]++
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                    stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)] = stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1
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
                idx = idx + 1
                continue 
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 128] = 1
            mem[ceil32(arg5.length) + 160] = arg3
            mem[ceil32(arg5.length) + 192] = 1
            mem[ceil32(arg5.length) + 224] = arg4
            if stor4:
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
                        if balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] == mem[(32 * idx) + ceil32(arg5.length) + 224]:
                            require idx < 1
                            if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > -1:
                                if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < stor12[address(arg1)]:
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    require stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                    stor12[address(arg1)]--
                                    if not stor12[address(arg1)] - 1:
                                        allHeldTokensLength[address(arg1)].field_0 = 0
                                        s = sha3(sha3(address(arg1), 10))
                                        while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                        allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                    require idx < 1
                                    stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = -1
                            require idx < 1
                            mem[0] = arg1
                            mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                            if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] > -1:
                                require idx < 1
                                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                                mem[32] = 15
                                if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                                    require idx < 1
                                    require idx < 1
                                    require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                    require idx < 1
                                    require stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0)
                                    require idx < 1
                                    require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                    require idx < 1
                                    stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]--
                                    require idx < 1
                                    if stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 <= 0:
                                        allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                                        s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13))
                                        while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13)) + allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                    require idx < 1
                                    mem[0] = arg1
                                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                                    stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] = -1
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
                        allHeldTokensLength[address(arg2)].field_0++
                        allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        stor12[address(arg2)]++
                        require idx < 1
                        stor11[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = stor12[address(arg2)]
                        require idx < 1
                        allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0++
                        address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0) = arg2
                        require idx < 1
                        require idx < 1
                        stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]++
                        require idx < 1
                        require idx < 1
                        mem[0] = arg2
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                        stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)] = stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1
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
        if stor4:
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
                    if balanceOf[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] == mem[(32 * idx) + ceil32(arg5.length) + 224]:
                        require idx < 1
                        if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] > -1:
                            if stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < stor12[address(arg1)]:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                require stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                stor12[address(arg1)]--
                                if not stor12[address(arg1)] - 1:
                                    allHeldTokensLength[address(arg1)].field_0 = 0
                                    s = sha3(sha3(address(arg1), 10))
                                    while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                require idx < 1
                                stor11[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = -1
                        require idx < 1
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                        if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] > -1:
                            require idx < 1
                            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                            mem[32] = 15
                            if stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                                require idx < 1
                                require idx < 1
                                require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                require idx < 1
                                require stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0)
                                require idx < 1
                                require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                require idx < 1
                                stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]--
                                require idx < 1
                                if stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 <= 0:
                                    allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                                    s = sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13))
                                    while sha3(sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 13)) + allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]].field_0) = 0
                                require idx < 1
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                                stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)] = -1
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
                    allHeldTokensLength[address(arg2)].field_0++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    stor12[address(arg2)]++
                    require idx < 1
                    stor11[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]] = stor12[address(arg2)]
                    require idx < 1
                    allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0++
                    address(allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]][allTokenHolders[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0) = arg2
                    require idx < 1
                    require idx < 1
                    stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]]++
                    require idx < 1
                    require idx < 1
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 14)
                    stor14[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)] = stor15[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1
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
        if stor4:
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
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg3.length) + 160]:
                        require idx < arg3.length
                        if stor11[address(arg1)][mem[(32 * idx) + 128]] > -1:
                            if stor11[address(arg1)][mem[(32 * idx) + 128]] < stor12[address(arg1)]:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                require stor11[address(arg1)][mem[(32 * idx) + 128]] < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + 128]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                stor12[address(arg1)]--
                                if not stor12[address(arg1)] - 1:
                                    allHeldTokensLength[address(arg1)].field_0 = 0
                                    s = sha3(sha3(address(arg1), 10))
                                    while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                require idx < arg3.length
                                stor11[address(arg1)][mem[(32 * idx) + 128]] = -1
                        require idx < arg3.length
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + 128], 14)
                        if stor14[mem[(32 * idx) + 128]][address(arg1)] > -1:
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 15
                            if stor14[mem[(32 * idx) + 128]][address(arg1)] < stor15[mem[(32 * idx) + 128]]:
                                require idx < arg3.length
                                require idx < arg3.length
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                require idx < arg3.length
                                require stor14[mem[(32 * idx) + 128]][address(arg1)] < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor14[mem[(32 * idx) + 128]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0)
                                require idx < arg3.length
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                                require idx < arg3.length
                                stor15[mem[(32 * idx) + 128]]--
                                require idx < arg3.length
                                if stor15[mem[(32 * idx) + 128]] - 1 <= 0:
                                    allTokenHolders[mem[(32 * idx) + 128]].field_0 = 0
                                    s = sha3(sha3(mem[(32 * idx) + 128], 13))
                                    while sha3(sha3(mem[(32 * idx) + 128], 13)) + allTokenHolders[mem[(32 * idx) + 128]].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                                require idx < arg3.length
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + 128], 14)
                                stor14[mem[(32 * idx) + 128]][address(arg1)] = -1
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
                    allHeldTokensLength[address(arg2)].field_0++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + 128]
                    stor12[address(arg2)]++
                    require idx < arg3.length
                    stor11[address(arg2)][mem[(32 * idx) + 128]] = stor12[address(arg2)]
                    require idx < arg3.length
                    allTokenHolders[mem[(32 * idx) + 128]].field_0++
                    address(allTokenHolders[mem[(32 * idx) + 128]][allTokenHolders[mem[(32 * idx) + 128]].field_0].field_0) = arg2
                    require idx < arg3.length
                    require idx < arg3.length
                    stor15[mem[(32 * idx) + 128]]++
                    require idx < arg3.length
                    require idx < arg3.length
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 14)
                    stor14[mem[(32 * idx) + 128]][address(arg2)] = stor15[mem[(32 * idx) + 128]] - 1
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
            _15807 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _15816 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _15817 = mem[64]
            mem[64] = mem[64] + 96
            mem[_15817] = 42
            mem[_15817 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_15807, 1)
            if _15816 <= balanceOf[_15807][address(arg1)]:
                balanceOf[_15807][address(arg1)] -= _15816
                if _15816 + balanceOf[_15807][arg2] < balanceOf[_15807][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_15807, 1)
                balanceOf[_15807][address(arg2)] = _15816 + balanceOf[_15807][arg2]
                idx = idx + 1
                continue 
            _15856 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _15856 + 68] = mem[idx + _15817 + 32]
                idx = idx + 32
                continue 
            mem[_15856 + 100] = mem[_15856 + 122 len 10]
            revert with memory
              from mem[64]
               len _15856 + -mem[64] + 132
        _15803 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _15805 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _15803 + 96] = mem[(32 * arg3.length) + 128]
        _22073 = mem[(32 * arg3.length) + 128]
        mem[(32 * _15805) + _15803 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _22073) + (32 * _15805) + _15803 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _24342 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _24810 = mem[(32 * arg3.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _24810) + (32 * mem[96]) + 224
        mem[(32 * _24810) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _25036 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _24810) + (32 * _24342) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _25036 % 32:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _25036 + (32 * _24810) + (32 * _24342) + 160]
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
            _25286 = mem[64]
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
            if not _25286 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _25328 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_25286 + ext_call.return_data[0]]
            _25330 = mem[_25286 + ext_call.return_data[0]]
            if not mem[_25286 + ext_call.return_data[0]]:
                if not mem[_25286 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_25286 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_25286 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25286 + ext_call.return_data[0]]) + mem[64] + -(mem[_25286 + ext_call.return_data[0]] % 32) + 100 len mem[_25286 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_25286 + ext_call.return_data[0] + 32]
                mem[mem[64] + 100 len floor32(_25330 - 1)] = mem[_25286 + ext_call.return_data[0] + 64 len floor32(_25330 - 1)]
                if not _25330 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _25330 + 32]
                mem[floor32(_25330) + mem[64] + 68] = mem[floor32(_25330) + mem[64] + -(_25330 % 32) + 100 len _25330 % 32]
            revert with memory
              from mem[64]
               len floor32(_25330) + _25328 + -mem[64] + 100
        mem[floor32(_25036) + (32 * _24810) + (32 * _24342) + mem[64] + 260] = mem[floor32(_25036) + (32 * _24810) + (32 * _24342) + mem[64] + -(_25036 % 32) + 292 len _25036 % 32]
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_25036) + (32 * _24810) + (32 * _24342) + 192]
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
        _25297 = mem[64]
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
        if not _25297 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _25340 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_25297 + ext_call.return_data[0]]
        _25342 = mem[_25297 + ext_call.return_data[0]]
        if not mem[_25297 + ext_call.return_data[0]]:
            if not mem[_25297 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_25297 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_25297 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25297 + ext_call.return_data[0]]) + mem[64] + -(mem[_25297 + ext_call.return_data[0]] % 32) + 100 len mem[_25297 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_25297 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_25342 - 1)] = mem[_25297 + ext_call.return_data[0] + 64 len floor32(_25342 - 1)]
            if not _25342 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _25342 + 32]
            mem[floor32(_25342) + mem[64] + 68] = mem[floor32(_25342) + mem[64] + -(_25342 % 32) + 100 len _25342 % 32]
        revert with memory
          from mem[64]
           len floor32(_25342) + _25340 + -mem[64] + 100
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
            idx = idx + 1
            continue 
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            idx = idx + 1
            continue 
        if stor4:
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
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg3.length) + 160]:
                        require idx < arg3.length
                        if stor11[address(arg1)][mem[(32 * idx) + 128]] > -1:
                            if stor11[address(arg1)][mem[(32 * idx) + 128]] < stor12[address(arg1)]:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                require stor11[address(arg1)][mem[(32 * idx) + 128]] < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + 128]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                stor12[address(arg1)]--
                                if not stor12[address(arg1)] - 1:
                                    allHeldTokensLength[address(arg1)].field_0 = 0
                                    s = sha3(sha3(address(arg1), 10))
                                    while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                    allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                                require idx < arg3.length
                                stor11[address(arg1)][mem[(32 * idx) + 128]] = -1
                        require idx < arg3.length
                        mem[0] = arg1
                        mem[32] = sha3(mem[(32 * idx) + 128], 14)
                        if stor14[mem[(32 * idx) + 128]][address(arg1)] > -1:
                            require idx < arg3.length
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 15
                            if stor14[mem[(32 * idx) + 128]][address(arg1)] < stor15[mem[(32 * idx) + 128]]:
                                require idx < arg3.length
                                require idx < arg3.length
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                require idx < arg3.length
                                require stor14[mem[(32 * idx) + 128]][address(arg1)] < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor14[mem[(32 * idx) + 128]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0)
                                require idx < arg3.length
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                                require idx < arg3.length
                                stor15[mem[(32 * idx) + 128]]--
                                require idx < arg3.length
                                if stor15[mem[(32 * idx) + 128]] - 1 <= 0:
                                    allTokenHolders[mem[(32 * idx) + 128]].field_0 = 0
                                    s = sha3(sha3(mem[(32 * idx) + 128], 13))
                                    while sha3(sha3(mem[(32 * idx) + 128], 13)) + allTokenHolders[mem[(32 * idx) + 128]].field_0 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                    address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                                require idx < arg3.length
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + 128], 14)
                                stor14[mem[(32 * idx) + 128]][address(arg1)] = -1
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
                    allHeldTokensLength[address(arg2)].field_0++
                    allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + 128]
                    stor12[address(arg2)]++
                    require idx < arg3.length
                    stor11[address(arg2)][mem[(32 * idx) + 128]] = stor12[address(arg2)]
                    require idx < arg3.length
                    allTokenHolders[mem[(32 * idx) + 128]].field_0++
                    address(allTokenHolders[mem[(32 * idx) + 128]][allTokenHolders[mem[(32 * idx) + 128]].field_0].field_0) = arg2
                    require idx < arg3.length
                    require idx < arg3.length
                    stor15[mem[(32 * idx) + 128]]++
                    require idx < arg3.length
                    require idx < arg3.length
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 14)
                    stor14[mem[(32 * idx) + 128]][address(arg2)] = stor15[mem[(32 * idx) + 128]] - 1
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
            _22088 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _22109 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _22110 = mem[64]
            mem[64] = mem[64] + 96
            mem[_22110] = 42
            mem[_22110 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_22088, 1)
            if _22109 <= balanceOf[_22088][address(arg1)]:
                balanceOf[_22088][address(arg1)] -= _22109
                if _22109 + balanceOf[_22088][arg2] < balanceOf[_22088][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_22088, 1)
                balanceOf[_22088][address(arg2)] = _22109 + balanceOf[_22088][arg2]
                idx = idx + 1
                continue 
            _22151 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _22151 + 68] = mem[idx + _22110 + 32]
                idx = idx + 32
                continue 
            mem[_22151 + 100] = mem[_22151 + 122 len 10]
            revert with memory
              from mem[64]
               len _22151 + -mem[64] + 132
        _22080 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _22082 = mem[96]
        idx = 0
        while idx < 32 * _22082:
            mem[idx + mem[64] + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_22080 + 32] = (32 * _22082) + 96
        mem[(32 * _22082) + _22080 + 96] = mem[(32 * arg3.length) + 128]
        _24319 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _24319:
            mem[idx + (32 * _22082) + _22080 + 128] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _24319) + (32 * _22082) + _22080 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        _24823 = mem[64]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _24825 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[idx + mem[64] + 196] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_24823 + 100] = (32 * mem[96]) + 192
        mem[(32 * _24825) + _24823 + 196] = mem[(32 * arg3.length) + 128]
        _25042 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _25042:
            mem[idx + (32 * _24825) + _24823 + 228] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        mem[_24823 + 132] = (32 * _25042) + (32 * _24825) + 224
        mem[(32 * _25042) + (32 * _24825) + _24823 + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _25253 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        idx = 0
        while idx < _25253:
            mem[idx + (32 * _25042) + (32 * _24825) + _24823 + 260] = mem[idx + (32 * arg3.length) + (32 * arg4.length) + 192]
            idx = idx + 32
            continue 
        if not _25253 % 32:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _25253 + (32 * _25042) + (32 * _24825) + _24823 + -mem[64] + 256]
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
            _25490 = mem[64]
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
            if not _25490 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _25519 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_25490 + ext_call.return_data[0]]
            _25521 = mem[_25490 + ext_call.return_data[0]]
            if not mem[_25490 + ext_call.return_data[0]]:
                if not mem[_25490 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_25490 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_25490 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25490 + ext_call.return_data[0]]) + mem[64] + -(mem[_25490 + ext_call.return_data[0]] % 32) + 100 len mem[_25490 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_25490 + ext_call.return_data[0] + 32]
                idx = 32
                while idx < _25521:
                    mem[idx + mem[64] + 68] = mem[idx + _25490 + ext_call.return_data[0] + 32]
                    idx = idx + 32
                    continue 
                if not _25521 % 32:
                    revert with memory
                      from mem[64]
                       len _25521 + _25519 + -mem[64] + 68
                mem[floor32(_25521) + _25519 + 68] = mem[floor32(_25521) + _25519 + -(_25521 % 32) + 100 len _25521 % 32]
            revert with memory
              from mem[64]
               len floor32(_25521) + _25519 + -mem[64] + 100
        mem[floor32(_25253) + (32 * _25042) + (32 * _24825) + _24823 + 260] = mem[floor32(_25253) + (32 * _25042) + (32 * _24825) + _24823 + -(_25253 % 32) + 292 len _25253 % 32]
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_25253) + (32 * _25042) + (32 * _24825) + _24823 + -mem[64] + 288]
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
        _25500 = mem[64]
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
        if not _25500 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_25500 + ext_call.return_data[0]]
        _25543 = mem[_25500 + ext_call.return_data[0]]
        if not mem[_25500 + ext_call.return_data[0]]:
            if not mem[_25500 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_25500 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_25500 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25500 + ext_call.return_data[0]]) + mem[64] + -(mem[_25500 + ext_call.return_data[0]] % 32) + 100 len mem[_25500 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_25500 + ext_call.return_data[0] + 32]
            idx = 32
            while idx < _25543:
                mem[idx + mem[64] + 68] = mem[idx + _25500 + ext_call.return_data[0] + 32]
                idx = idx + 32
                continue 
            if not _25543 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _25543 + 32]
            mem[floor32(_25543) + mem[64] + 68] = mem[floor32(_25543) + mem[64] + -(_25543 % 32) + 100 len _25543 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_25543) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    if stor4:
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
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg3.length) + 160]:
                    require idx < arg3.length
                    if stor11[address(arg1)][mem[(32 * idx) + 128]] > -1:
                        if stor11[address(arg1)][mem[(32 * idx) + 128]] < stor12[address(arg1)]:
                            require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                            require stor11[address(arg1)][mem[(32 * idx) + 128]] < allHeldTokensLength[address(arg1)].field_0
                            allHeldTokensLength[address(arg1)][stor11[address(arg1)][mem[(32 * idx) + 128]]].field_0 = allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0
                            require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                            allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                            stor12[address(arg1)]--
                            if not stor12[address(arg1)] - 1:
                                allHeldTokensLength[address(arg1)].field_0 = 0
                                s = sha3(sha3(address(arg1), 10))
                                while sha3(sha3(address(arg1), 10)) + allHeldTokensLength[address(arg1)].field_0 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                require stor12[address(arg1)] - 1 < allHeldTokensLength[address(arg1)].field_0
                                allHeldTokensLength[address(arg1)][stor12[address(arg1)]].field_0 = 0
                            require idx < arg3.length
                            stor11[address(arg1)][mem[(32 * idx) + 128]] = -1
                    require idx < arg3.length
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 14)
                    if stor14[mem[(32 * idx) + 128]][address(arg1)] > -1:
                        require idx < arg3.length
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 15
                        if stor14[mem[(32 * idx) + 128]][address(arg1)] < stor15[mem[(32 * idx) + 128]]:
                            require idx < arg3.length
                            require idx < arg3.length
                            require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            require idx < arg3.length
                            require stor14[mem[(32 * idx) + 128]][address(arg1)] < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            address(allTokenHolders[mem[(32 * idx) + 128]][stor14[mem[(32 * idx) + 128]][address(arg1)]].field_0) = address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0)
                            require idx < arg3.length
                            require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                            address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                            require idx < arg3.length
                            stor15[mem[(32 * idx) + 128]]--
                            require idx < arg3.length
                            if stor15[mem[(32 * idx) + 128]] - 1 <= 0:
                                allTokenHolders[mem[(32 * idx) + 128]].field_0 = 0
                                s = sha3(sha3(mem[(32 * idx) + 128], 13))
                                while sha3(sha3(mem[(32 * idx) + 128], 13)) + allTokenHolders[mem[(32 * idx) + 128]].field_0 > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                require stor15[mem[(32 * idx) + 128]] - 1 < allTokenHolders[mem[(32 * idx) + 128]].field_0
                                address(allTokenHolders[mem[(32 * idx) + 128]][stor15[mem[(32 * idx) + 128]]].field_0) = 0
                            require idx < arg3.length
                            mem[0] = arg1
                            mem[32] = sha3(mem[(32 * idx) + 128], 14)
                            stor14[mem[(32 * idx) + 128]][address(arg1)] = -1
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
                allHeldTokensLength[address(arg2)].field_0++
                allHeldTokensLength[address(arg2)][allHeldTokensLength[address(arg2)].field_0].field_0 = mem[(32 * idx) + 128]
                stor12[address(arg2)]++
                require idx < arg3.length
                stor11[address(arg2)][mem[(32 * idx) + 128]] = stor12[address(arg2)]
                require idx < arg3.length
                allTokenHolders[mem[(32 * idx) + 128]].field_0++
                address(allTokenHolders[mem[(32 * idx) + 128]][allTokenHolders[mem[(32 * idx) + 128]].field_0].field_0) = arg2
                require idx < arg3.length
                require idx < arg3.length
                stor15[mem[(32 * idx) + 128]]++
                require idx < arg3.length
                require idx < arg3.length
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 14)
                stor14[mem[(32 * idx) + 128]][address(arg2)] = stor15[mem[(32 * idx) + 128]] - 1
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
        _22086 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _22097 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _22098 = mem[64]
        mem[64] = mem[64] + 96
        mem[_22098] = 42
        mem[_22098 + 32 len 42] = 0x73455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_22086, 1)
        if _22097 <= balanceOf[_22086][address(arg1)]:
            balanceOf[_22086][address(arg1)] -= _22097
            if _22097 + balanceOf[_22086][arg2] < balanceOf[_22086][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_22086, 1)
            balanceOf[_22086][address(arg2)] = _22097 + balanceOf[_22086][arg2]
            idx = idx + 1
            continue 
        _22145 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _22145 + 68] = mem[idx + _22098 + 32]
            idx = idx + 32
            continue 
        mem[_22145 + 100] = mem[_22145 + 122 len 10]
        revert with memory
          from mem[64]
           len _22145 + -mem[64] + 132
    _22076 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _22078 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _22076 + 96] = mem[(32 * arg3.length) + 128]
    _24315 = mem[(32 * arg3.length) + 128]
    mem[(32 * _22078) + _22076 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _24315) + (32 * _22078) + _22076 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _24822 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _25039 = mem[(32 * arg3.length) + 128]
    mem[(32 * _24822) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _25039) + (32 * _24822) + 224
    mem[(32 * _25039) + (32 * _24822) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _25250 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _25039) + (32 * _24822) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _25250 % 32:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _25039) + (32 * _24822) + 224, mem[mem[64] + 164 len _25250 + (32 * _25039) + (32 * _24822) + 96]
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
        _25488 = mem[64]
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
        if not _25488 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _25512 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_25488 + ext_call.return_data[0]]
        _25514 = mem[_25488 + ext_call.return_data[0]]
        if not mem[_25488 + ext_call.return_data[0]]:
            if not mem[_25488 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_25488 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_25488 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25488 + ext_call.return_data[0]]) + mem[64] + -(mem[_25488 + ext_call.return_data[0]] % 32) + 100 len mem[_25488 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_25488 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_25514 - 1)] = mem[_25488 + ext_call.return_data[0] + 64 len floor32(_25514 - 1)]
            if not _25514 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _25514 + 32]
            mem[floor32(_25514) + mem[64] + 68] = mem[floor32(_25514) + mem[64] + -(_25514 % 32) + 100 len _25514 % 32]
        revert with memory
          from mem[64]
           len floor32(_25514) + _25512 + -mem[64] + 100
    mem[floor32(_25250) + (32 * _25039) + (32 * _24822) + mem[64] + 260] = mem[floor32(_25250) + (32 * _25039) + (32 * _24822) + mem[64] + -(_25250 % 32) + 292 len _25250 % 32]
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _25039) + (32 * _24822) + 224, mem[mem[64] + 164 len floor32(_25250) + (32 * _25039) + (32 * _24822) + 128]
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
    _25495 = mem[64]
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
    if not _25495 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _25531 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_25495 + ext_call.return_data[0]]
    _25533 = mem[_25495 + ext_call.return_data[0]]
    if not mem[_25495 + ext_call.return_data[0]]:
        if not mem[_25495 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_25495 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_25495 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_25495 + ext_call.return_data[0]]) + mem[64] + -(mem[_25495 + ext_call.return_data[0]] % 32) + 100 len mem[_25495 + ext_call.return_data[0]] % 32]
    else:
        mem[mem[64] + 68] = mem[_25495 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_25533 - 1)] = mem[_25495 + ext_call.return_data[0] + 64 len floor32(_25533 - 1)]
        if not _25533 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _25533 + 32]
        mem[floor32(_25533) + mem[64] + 68] = mem[floor32(_25533) + mem[64] + -(_25533 % 32) + 100 len _25533 % 32]
    revert with memory
      from mem[64]
       len floor32(_25533) + _25531 + -mem[64] + 100
}



}
