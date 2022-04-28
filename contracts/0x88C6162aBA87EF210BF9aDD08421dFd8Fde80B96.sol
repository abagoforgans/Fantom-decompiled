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
mapping of uint256 stor6;
array of address allProxyRegistries;
address registryManagerAddress;
mapping of uint256 totalBalances;
mapping of uint256 unlockTime;
mapping of uint8 stor13;
mapping of address stor14;

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
    return bool(paused)
}

function allTokenHolders(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allTokenHoldersLength[arg1].field_256
    return stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'allTokenHoldersLength', 12))) + arg2].field_0
}

function getRegistryManager() payable {
    return registryManagerAddress
}

function allProxyRegistries(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allProxyRegistries.length
    return allProxyRegistries[arg1]
}

function allHeldTokensLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return allHeldTokensLength[address(arg1)].field_256
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allHeldTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allHeldTokensLength[address(arg1)].field_256
    return stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + arg2].field_0
}

function totalBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalances[arg1]
}

function allTokenHoldersLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return allTokenHoldersLength[arg1].field_256
}

function _fallback() payable {
    revert
}

function getTokenData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor13[arg1] <= 2
    return stor13[arg1], stor14[arg1]
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if unlockTime[address(msg.sender)][arg1] >= arg2:
        revert with 0, 'ALREADY_LOCKED'
    unlockTime[address(msg.sender)][arg1] = arg2
}

function setRegistryManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    if not arg1:
        revert with 0, 'UNAUTHORIZED'
    registryManagerAddress = arg1
}

function relinquishControl() payable {
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor5[msg.sender] = 0
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

function sub_7c881076(?) payable {
    require calldata.size - 4 >= 96
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require arg2 <= 2
    stor13[arg1] = arg2
    stor14[arg1] = arg3
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
        mem[0] = 7
        mem[100] = arg1
        require ext_code.size(allProxyRegistries[idx])
        staticcall allProxyRegistries[idx].proxies(address rg1) with:
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

function addProxyRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'UNAUTHORIZED'
    if allProxyRegistries.length:
        require stor6[address(arg1)] < allProxyRegistries.length
        if allProxyRegistries[stor6[address(arg1)]] == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                        mem[206 len 22]
    allProxyRegistries.length++
    allProxyRegistries[allProxyRegistries.length] = arg1
    stor6[address(arg1)] = allProxyRegistries.length - 1
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

function tokenHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not allTokenHoldersLength[arg1].field_256:
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 128] = 32
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 160] = allTokenHoldersLength[arg1].field_256
        mem[(32 * allTokenHoldersLength[arg1].field_256) + 192 len floor32(allTokenHoldersLength[arg1].field_256)] = mem[128 len floor32(allTokenHoldersLength[arg1].field_256)]
        return memory
          from (32 * allTokenHoldersLength[arg1].field_256) + 128
           len (96 * allTokenHoldersLength[arg1].field_256) + 64
    mem[128] = allTokenHoldersLength[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * allTokenHoldersLength[arg1].field_256) + 96 > idx:
        mem[idx + 32] = allTokenHoldersLength[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allTokenHoldersLength[arg1].field_256) + 192 len floor32(allTokenHoldersLength[arg1].field_256)] = mem[128 len floor32(allTokenHoldersLength[arg1].field_256)]
    return Array(len=allTokenHoldersLength[arg1].field_256, data=mem[128 len floor32(allTokenHoldersLength[arg1].field_256)], mem[(32 * allTokenHoldersLength[arg1].field_256) + floor32(allTokenHoldersLength[arg1].field_256) + 192 len (32 * allTokenHoldersLength[arg1].field_256) - floor32(allTokenHoldersLength[arg1].field_256)]), 
}

function removeProxyRegistryAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if registryManagerAddress != msg.sender:
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'UNAUTHORIZED'
    if arg1 >= allProxyRegistries.length:
        revert with 0, 'INVALID_INDEX'
    if not allProxyRegistries.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                    mem[206 len 22]
    require stor6[stor7[arg1]] < allProxyRegistries.length
    if allProxyRegistries[stor6[allProxyRegistries[arg1]]] != allProxyRegistries[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                    mem[206 len 22]
    if allProxyRegistries.length - 1 != stor6[stor7[arg1]]:
        require allProxyRegistries.length - 1 < allProxyRegistries.length
        stor6[stor7[stor7.length]] = stor6[stor7[arg1]]
        require stor6[stor7[arg1]] < allProxyRegistries.length
        allProxyRegistries[stor6[allProxyRegistries[arg1]]] = allProxyRegistries[allProxyRegistries.length]
    stor6[stor7[arg1]] = 0
    require allProxyRegistries.length - 1 < allProxyRegistries.length
    allProxyRegistries[allProxyRegistries.length] = 0
}

function heldTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not allHeldTokensLength[address(arg1)].field_256:
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 128] = 32
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 160] = allHeldTokensLength[address(arg1)].field_256
        mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 192 len floor32(allHeldTokensLength[address(arg1)].field_256)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)]
        return memory
          from (32 * allHeldTokensLength[address(arg1)].field_256) + 128
           len (96 * allHeldTokensLength[address(arg1)].field_256) + 64
    mem[128] = allHeldTokensLength[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * allHeldTokensLength[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = allHeldTokensLength[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allHeldTokensLength[address(arg1)].field_256) + 192 len floor32(allHeldTokensLength[address(arg1)].field_256)] = mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)]
    return Array(len=allHeldTokensLength[address(arg1)].field_256, data=mem[128 len floor32(allHeldTokensLength[address(arg1)].field_256)], mem[(32 * allHeldTokensLength[address(arg1)].field_256) + floor32(allHeldTokensLength[address(arg1)].field_256) + 192 len (32 * allHeldTokensLength[address(arg1)].field_256) - floor32(allHeldTokensLength[address(arg1)].field_256)]), 
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
                if allHeldTokensLength[address(arg1)].field_256:
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0].field_0 == mem[(32 * idx) + 192]:
                        revert with 0, 32, 42, 0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                allHeldTokensLength[address(arg1)].field_256++
                stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 192]
                allHeldTokensLength[address(arg1)][mem[(32 * idx) + 192]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                require idx < 1
                if allTokenHoldersLength[mem[(32 * idx) + 192]].field_256:
                    require allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 192]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0].field_0 == arg1:
                        revert with 0, 32, 42, 0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574, mem[398 len 22]
                allTokenHoldersLength[mem[(32 * idx) + 192]].field_256++
                stor[allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 192, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                allTokenHoldersLength[mem[(32 * idx) + 192]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 192]].field_256 - 1
        require idx < 1
        if mem[(32 * idx) + 256] + totalBalances[mem[(32 * idx) + 192]] < totalBalances[mem[(32 * idx) + 192]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < 1
        mem[0] = mem[(32 * idx) + 192]
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 192]] += mem[(32 * idx) + 256]
        if not arg1:
            require idx < 1
            require idx < 1
            if mem[(32 * idx) + 256] > totalBalances[mem[(32 * idx) + 192]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < 1
            mem[0] = mem[(32 * idx) + 192]
            mem[32] = 9
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
            args msg.sender, 0, arg2, arg3, 160, 3, 0
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
                    0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
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
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + 192]:
                    require idx < 1
                    if not allHeldTokensLength[address(arg1)].field_256:
                        revert with 0, 32, 42, 0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                        revert with 0, 32, 42, 0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                    if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                    allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                    require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                    require idx < 1
                    if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        revert with 0, 32, 42, 0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                        revert with 0, 32, 42, 0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574, mem[366 len 22]
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                    allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                    require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
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
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    if bool(stor5[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 3
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 0x3078300000000000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 
                    32,
                    33,
                    0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 325 len 31]
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 332 len 24]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 336 len 20]
    idx = 0
    while idx < arg2.length:
        if arg1:
            require idx < arg2.length
            if not arg1:
                revert with 0, 
                            32,
                            43,
                            0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[(32 * arg2.length) + (32 * arg3.length) + 335 len 21]
            if not balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < arg2.length
                if allHeldTokensLength[address(arg1)].field_256:
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                allHeldTokensLength[address(arg1)].field_256++
                stor[allHeldTokensLength[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg1)].field_256 - 1
                require idx < arg2.length
                if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 == arg1:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 334 len 22]
                allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg1
                allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
        require idx < arg3.length
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
        if not arg1:
            require idx < arg3.length
            require idx < arg2.length
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] < mem[(32 * idx) + (32 * arg2.length) + 160]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg2.length
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 1)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + 288] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = (32 * arg2.length) + 96
    mem[(64 * arg2.length) + (32 * arg3.length) + 320] = arg3.length
    s = 0
    while arg2.length < 32 * arg3.length:
        mem[(67 * arg2.length) + (32 * arg3.length) + 352] = mem[(34 * arg2.length) + 160]
        s = arg2.length + 32
        continue 
    emit TransferBatch(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 320 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 292] = 160
    mem[(32 * arg2.length) + (32 * arg3.length) + 388] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 324] = (32 * arg2.length) + 192
    mem[(64 * arg2.length) + (32 * arg3.length) + 420] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 452 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 356] = (32 * arg3.length) + (32 * arg2.length) + 224
    mem[(64 * arg3.length) + (64 * arg2.length) + 452] = 3
    mem[(64 * arg3.length) + (64 * arg2.length) + 484] = 0
    require ext_code.size(arg1)
    call arg1.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 420 len (32 * arg2.length) - floor32(arg2.length)], arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(64 * arg2.length) + (32 * arg3.length) + floor32(arg3.length) + 452 len (32 * arg3.length) + -floor32(arg3.length) + 64]
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        Mask(192, 0, (32 * arg2.length) + 192)
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[(32 * arg2.length) + (32 * arg3.length) + 224 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if ext_call.return_data[0] + mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 256
    if not (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 376 len 12]
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 260] = 32
    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]
    if mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]:
        mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 256]
        mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 356 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] - 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 288 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] - 1)]
    if not mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32:
        revert with 0, 
                    32,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 292 len mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] + 32]
    mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324] = mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + (32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + -(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32) + 356 len mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224] % 32]
    revert with 0, 
                32,
                mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224],
                mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 324 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ext_call.return_data[0] + 224]) + 32]
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    mem[32] = 5
    if 1 == bool(stor5[msg.sender]):
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            if arg1:
                require idx < arg2.length
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg3.length
                    require idx < arg2.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 303 len 21]
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg2.length) + 160]:
                        require idx < arg2.length
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg2.length
                        if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
            require idx < arg3.length
            require idx < arg2.length
            if not arg1:
                if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg2.length
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _1246 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _1247 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1247] = 36
            mem[_1247 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if _1246 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _1246
                idx = idx + 1
                continue 
            _1266 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _1266 + 68] = mem[idx + _1247 + 32]
                idx = idx + 32
                continue 
            mem[_1266 + 100] = mem[_1266 + 128 len 4]
            revert with memory
              from mem[64]
               len _1266 + -mem[64] + 132
        _1238 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _1240 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _1238 + 96] = mem[(32 * arg2.length) + 128]
        _1291 = mem[(32 * arg2.length) + 128]
        mem[(32 * _1240) + _1238 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _1291) + (32 * _1240) + _1238 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
    else:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x4e436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x2e455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            if arg1:
                require idx < arg2.length
                if unlockTime[address(arg1)][mem[(32 * idx) + 128]] > block.timestamp:
                    revert with 0, 'TOKEN_LOCKED'
                if arg1:
                    require idx < arg3.length
                    require idx < arg2.length
                    if not arg1:
                        revert with 0, 
                                    32,
                                    43,
                                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 303 len 21]
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] == mem[(32 * idx) + (32 * arg2.length) + 160]:
                        require idx < arg2.length
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg2.length
                        if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 302 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
            require idx < arg3.length
            require idx < arg2.length
            if not arg1:
                if mem[(32 * idx) + (32 * arg2.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg2.length
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg2.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg2.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _1249 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _1250 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1250] = 36
            mem[_1250 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 1)
            if _1249 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _1249
                idx = idx + 1
                continue 
            _1271 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _1271 + 68] = mem[idx + _1250 + 32]
                idx = idx + 32
                continue 
            mem[_1271 + 100] = mem[_1271 + 128 len 4]
            revert with memory
              from mem[64]
               len _1271 + -mem[64] + 132
        _1242 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _1244 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _1242 + 96] = mem[(32 * arg2.length) + 128]
        _1295 = mem[(32 * arg2.length) + 128]
        mem[(32 * _1244) + _1242 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _1295) + (32 * _1244) + _1242 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
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
                    0x2e455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
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
                mem[32] = sha3(address(arg1), 10)
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
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                        if not allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                        allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12) + 1
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256].field_0 = 0
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
                    if allHeldTokensLength[address(arg2)].field_256:
                        require allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg2)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                    allHeldTokensLength[address(arg2)].field_256++
                    stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                    require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0].field_0 == arg2:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                    allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1
            if not arg1:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < allProxyRegistries.length:
            mem[0] = 7
            mem[ceil32(arg5.length) + 132] = arg1
            require ext_code.size(allProxyRegistries[idx])
            staticcall allProxyRegistries[idx].proxies(address rg1) with:
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
                    mem[32] = sha3(address(arg1), 10)
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
                            if not allHeldTokensLength[address(arg1)].field_256:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                            if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0:
                                require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                                allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                                require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                            allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                            require idx < 1
                            if not allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 != arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                            if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0:
                                require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                                allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0
                                require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                                stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                            mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                            allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 = 0
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12) + 1
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256].field_0 = 0
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
                        if allHeldTokensLength[address(arg2)].field_256:
                            require allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg2)].field_256
                            if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                        allHeldTokensLength[address(arg2)].field_256++
                        stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                        allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                        require idx < 1
                        if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0].field_0 == arg2:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                            mem[ceil32(arg5.length) + 366 len 22]
                        allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256++
                        stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                        mem[0] = arg2
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                        allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1
                if not arg1:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 9
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
                if not arg2:
                    require idx < 1
                    require idx < 1
                    if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < 1
                    mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    mem[32] = 9
                    totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
                idx = idx + 1
                continue 
            mem[ceil32(arg5.length) + 288 len 42] = 0x2e455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
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
                mem[32] = sha3(address(arg1), 10)
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
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 != mem[(32 * idx) + ceil32(arg5.length) + 160]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < 1
                        if not allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                        allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        mem[0] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12) + 1
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256].field_0 = 0
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
                    if allHeldTokensLength[address(arg2)].field_256:
                        require allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 < allHeldTokensLength[address(arg2)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0].field_0 == mem[(32 * idx) + ceil32(arg5.length) + 160]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                    allHeldTokensLength[address(arg2)].field_256++
                    stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + ceil32(arg5.length) + 160]
                    allHeldTokensLength[address(arg2)][mem[(32 * idx) + ceil32(arg5.length) + 160]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                    require idx < 1
                    if allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0].field_0 == arg2:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[ceil32(arg5.length) + 366 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 160, ('mul', 32, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg5')))))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + ceil32(arg5.length) + 160], 12)
                    allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + ceil32(arg5.length) + 160]].field_256 - 1
            if not arg1:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] + totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] < totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] += mem[(32 * idx) + ceil32(arg5.length) + 224]
            if not arg2:
                require idx < 1
                require idx < 1
                if mem[(32 * idx) + ceil32(arg5.length) + 224] > totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < 1
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + ceil32(arg5.length) + 160]] -= mem[(32 * idx) + ceil32(arg5.length) + 224]
            idx = idx + 1
            continue 
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x2e455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
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
                    0x2e455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
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
                mem[32] = sha3(address(arg1), 10)
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
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg3.length
                        if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        mem[32] = sha3(mem[(32 * idx) + 128], 12)
                        allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        mem[0] = sha3(mem[(32 * idx) + 128], 12) + 1
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
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
                    if allHeldTokensLength[address(arg2)].field_256:
                        require allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg2)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    allHeldTokensLength[address(arg2)].field_256++
                    stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                    allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                    require idx < arg3.length
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0].field_0 == arg2:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 12)
                    allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _10269 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _10278 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _10279 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10279] = 42
            mem[_10279 + 32 len 42] = 0x2e455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_10269, 1)
            if _10278 <= balanceOf[_10269][address(arg1)]:
                balanceOf[_10269][address(arg1)] -= _10278
                if _10278 + balanceOf[_10269][arg2] < balanceOf[_10269][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_10269, 1)
                balanceOf[_10269][address(arg2)] = _10278 + balanceOf[_10269][arg2]
                idx = idx + 1
                continue 
            _10302 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _10302 + 68] = mem[idx + _10279 + 32]
                idx = idx + 32
                continue 
            mem[_10302 + 100] = mem[_10302 + 122 len 10]
            revert with memory
              from mem[64]
               len _10302 + -mem[64] + 132
        _10265 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _10267 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _10265 + 96] = mem[(32 * arg3.length) + 128]
        _13778 = mem[(32 * arg3.length) + 128]
        mem[(32 * _10267) + _10265 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _13778) + (32 * _10267) + _10265 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _14091 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _14315 = mem[(32 * arg3.length) + 128]
        mem[(32 * _14091) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _14315) + (32 * _14091) + 224
        mem[(32 * _14315) + (32 * _14091) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _14541 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _14315) + (32 * _14091) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _14541 % 32:
            require ext_code.size(arg2)
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _14315) + (32 * _14091) + 224, mem[mem[64] + 164 len _14541 + (32 * _14315) + (32 * _14091) + 96]
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
            _14791 = mem[64]
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
            if not _14791 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _14833 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_14791 + ext_call.return_data[0]]
            _14835 = mem[_14791 + ext_call.return_data[0]]
            if not mem[_14791 + ext_call.return_data[0]]:
                if not mem[_14791 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_14791 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_14791 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_14791 + ext_call.return_data[0]]) + mem[64] + -(mem[_14791 + ext_call.return_data[0]] % 32) + 100 len mem[_14791 + ext_call.return_data[0]] % 32]
                revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_14835)]
            mem[mem[64] + 68] = mem[_14791 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_14835 - 1)] = mem[_14791 + ext_call.return_data[0] + 64 len floor32(_14835 - 1)]
            if not _14835 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _14835 + 32]
            mem[floor32(_14835) + mem[64] + 68] = mem[floor32(_14835) + mem[64] + -(_14835 % 32) + 100 len _14835 % 32]
            revert with memory
              from mem[64]
               len floor32(_14835) + _14833 + -mem[64] + 100
        mem[floor32(_14541) + (32 * _14315) + (32 * _14091) + mem[64] + 260] = mem[floor32(_14541) + (32 * _14315) + (32 * _14091) + mem[64] + -(_14541 % 32) + 292 len _14541 % 32]
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _14315) + (32 * _14091) + 224, mem[mem[64] + 164 len floor32(_14541) + (32 * _14315) + (32 * _14091) + 128]
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
        _14802 = mem[64]
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
        if not _14802 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _14845 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_14802 + ext_call.return_data[0]]
        _14847 = mem[_14802 + ext_call.return_data[0]]
        if not mem[_14802 + ext_call.return_data[0]]:
            if not mem[_14802 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_14802 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_14802 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_14802 + ext_call.return_data[0]]) + mem[64] + -(mem[_14802 + ext_call.return_data[0]] % 32) + 100 len mem[_14802 + ext_call.return_data[0]] % 32]
            revert with memory
              from mem[64]
               len floor32(_14847) + _14845 + -mem[64] + 100
        mem[mem[64] + 68] = mem[_14802 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_14847 - 1)] = mem[_14802 + ext_call.return_data[0] + 64 len floor32(_14847 - 1)]
        if not _14847 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _14847 + 32]
        mem[floor32(_14847) + mem[64] + 68] = mem[floor32(_14847) + mem[64] + -(_14847 % 32) + 100 len _14847 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_14847) + 64]
    idx = 0
    while idx < allProxyRegistries.length:
        mem[0] = 7
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 196] = arg1
        require ext_code.size(allProxyRegistries[idx])
        staticcall allProxyRegistries[idx].proxies(address rg1) with:
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
                mem[32] = sha3(address(arg1), 10)
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
                        if not allHeldTokensLength[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                            require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                            allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                            require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                        allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                        require idx < arg3.length
                        if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                        if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                            require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                            require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                            stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                        mem[32] = sha3(mem[(32 * idx) + 128], 12)
                        allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        mem[0] = sha3(mem[(32 * idx) + 128], 12) + 1
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
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
                    if allHeldTokensLength[address(arg2)].field_256:
                        require allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg2)].field_256
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    allHeldTokensLength[address(arg2)].field_256++
                    stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                    allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                    require idx < arg3.length
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0].field_0 == arg2:
                            revert with 0, 
                                        32,
                                        42,
                                        0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                    stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 12)
                    allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
            if not arg1:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
            if not arg2:
                require idx < arg4.length
                require idx < arg3.length
                if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _13793 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _13808 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _13809 = mem[64]
            mem[64] = mem[64] + 96
            mem[_13809] = 42
            mem[_13809 + 32 len 42] = 0x2e455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_13793, 1)
            if _13808 <= balanceOf[_13793][address(arg1)]:
                balanceOf[_13793][address(arg1)] -= _13808
                if _13808 + balanceOf[_13793][arg2] < balanceOf[_13793][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_13793, 1)
                balanceOf[_13793][address(arg2)] = _13808 + balanceOf[_13793][arg2]
                idx = idx + 1
                continue 
            _13819 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _13819 + 68] = mem[idx + _13809 + 32]
                idx = idx + 32
                continue 
            mem[_13819 + 100] = mem[_13819 + 122 len 10]
            revert with memory
              from mem[64]
               len _13819 + -mem[64] + 132
        _13785 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _13787 = mem[96]
        idx = 0
        while idx < 32 * _13787:
            mem[idx + mem[64] + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_13785 + 32] = (32 * _13787) + 96
        mem[(32 * _13787) + _13785 + 96] = mem[(32 * arg3.length) + 128]
        _14076 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _14076:
            mem[idx + (32 * _13787) + _13785 + 128] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _14076) + (32 * _13787) + _13785 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        _14328 = mem[64]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _14330 = mem[96]
        idx = 0
        while idx < 32 * mem[96]:
            mem[idx + mem[64] + 196] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[_14328 + 100] = (32 * mem[96]) + 192
        mem[(32 * _14330) + _14328 + 196] = mem[(32 * arg3.length) + 128]
        _14547 = mem[(32 * arg3.length) + 128]
        idx = 0
        while idx < 32 * _14547:
            mem[idx + (32 * _14330) + _14328 + 228] = mem[idx + (32 * arg3.length) + 160]
            idx = idx + 32
            continue 
        mem[_14328 + 132] = (32 * _14547) + (32 * _14330) + 224
        mem[(32 * _14547) + (32 * _14330) + _14328 + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _14758 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        idx = 0
        while idx < _14758:
            mem[idx + (32 * _14547) + (32 * _14330) + _14328 + 260] = mem[idx + (32 * arg3.length) + (32 * arg4.length) + 192]
            idx = idx + 32
            continue 
        if not _14758 % 32:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _14758 + (32 * _14547) + (32 * _14330) + _14328 + -mem[64] + 256]
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
            _14995 = mem[64]
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
            if not _14995 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _15024 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_14995 + ext_call.return_data[0]]
            _15026 = mem[_14995 + ext_call.return_data[0]]
            if not mem[_14995 + ext_call.return_data[0]]:
                if not mem[_14995 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_14995 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_14995 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_14995 + ext_call.return_data[0]]) + mem[64] + -(mem[_14995 + ext_call.return_data[0]] % 32) + 100 len mem[_14995 + ext_call.return_data[0]] % 32]
            else:
                mem[mem[64] + 68] = mem[_14995 + ext_call.return_data[0] + 32]
                idx = 32
                while idx < _15026:
                    mem[idx + mem[64] + 68] = mem[idx + _14995 + ext_call.return_data[0] + 32]
                    idx = idx + 32
                    continue 
                if not _15026 % 32:
                    revert with memory
                      from mem[64]
                       len _15026 + _15024 + -mem[64] + 68
                mem[floor32(_15026) + _15024 + 68] = mem[floor32(_15026) + _15024 + -(_15026 % 32) + 100 len _15026 % 32]
            revert with memory
              from mem[64]
               len floor32(_15026) + _15024 + -mem[64] + 100
        mem[floor32(_14758) + (32 * _14547) + (32 * _14330) + _14328 + 260] = mem[floor32(_14758) + (32 * _14547) + (32 * _14330) + _14328 + -(_14758 % 32) + 292 len _14758 % 32]
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(_14758) + (32 * _14547) + (32 * _14330) + _14328 + -mem[64] + 288]
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
        _15005 = mem[64]
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
        if not _15005 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _15046 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_15005 + ext_call.return_data[0]]
        _15048 = mem[_15005 + ext_call.return_data[0]]
        if not mem[_15005 + ext_call.return_data[0]]:
            if not mem[_15005 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_15005 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_15005 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_15005 + ext_call.return_data[0]]) + mem[64] + -(mem[_15005 + ext_call.return_data[0]] % 32) + 100 len mem[_15005 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_15005 + ext_call.return_data[0] + 32]
            idx = 32
            while idx < _15048:
                mem[idx + mem[64] + 68] = mem[idx + _15005 + ext_call.return_data[0] + 32]
                idx = idx + 32
                continue 
            if not _15048 % 32:
                revert with memory
                  from mem[64]
                   len _15048 + _15046 + -mem[64] + 68
            mem[floor32(_15048) + _15046 + 68] = mem[floor32(_15048) + _15046 + -(_15048 % 32) + 100 len _15048 % 32]
        revert with memory
          from mem[64]
           len floor32(_15048) + _15046 + -mem[64] + 100
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
            mem[32] = sha3(address(arg1), 10)
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
                    if not allHeldTokensLength[address(arg1)].field_256:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 != mem[(32 * idx) + 128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6455496e743235365365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    if allHeldTokensLength[address(arg1)].field_256 - 1 != allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0:
                        require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                        allHeldTokensLength[address(arg1)][stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0].field_0 = allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0
                        require allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg1)].field_256
                        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0
                    allHeldTokensLength[address(arg1)][mem[(32 * idx) + 128]].field_0 = 0
                    require allHeldTokensLength[address(arg1)].field_256 - 1 < allHeldTokensLength[address(arg1)].field_256
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg1)].field_256].field_0 = 0
                    require idx < arg3.length
                    if not allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 != arg1:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73416464726573735365743a206b657920646f6573206e6f7420657869737420696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                    if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 != allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0:
                        require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        allTokenHoldersLength[mem[(32 * idx) + 128]][stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0
                        require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                        stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0].field_0 = stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0
                    mem[32] = sha3(mem[(32 * idx) + 128], 12)
                    allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg1)].field_0 = 0
                    require allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    mem[0] = sha3(mem[(32 * idx) + 128], 12) + 1
                    stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]].field_256].field_0 = 0
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
                if allHeldTokensLength[address(arg2)].field_256:
                    require allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 < allHeldTokensLength[address(arg2)].field_256
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11))) + allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0].field_0 == mem[(32 * idx) + 128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6455496e743235365365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                allHeldTokensLength[address(arg2)].field_256++
                stor[allHeldTokensLength[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'allHeldTokensLength', 11)))].field_0 = mem[(32 * idx) + 128]
                allHeldTokensLength[address(arg2)][mem[(32 * idx) + 128]].field_0 = allHeldTokensLength[address(arg2)].field_256 - 1
                require idx < arg3.length
                if allTokenHoldersLength[mem[(32 * idx) + 128]].field_256:
                    require allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 < allTokenHoldersLength[mem[(32 * idx) + 128]].field_256
                    if stor[('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12))) + allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0].field_0 == arg2:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73416464726573735365743a206b657920616c72656164792065786973747320696e2074686520736574,
                                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 302 len 22]
                allTokenHoldersLength[mem[(32 * idx) + 128]].field_256++
                stor[allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 + ('array', 1, ('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('name', 'allTokenHoldersLength', 12)))].field_0 = arg2
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 12)
                allTokenHoldersLength[mem[(32 * idx) + 128]][address(arg2)].field_0 = allTokenHoldersLength[mem[(32 * idx) + 128]].field_256 - 1
        if not arg1:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] + totalBalances[mem[(32 * idx) + 128]] < totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] += mem[(32 * idx) + (32 * arg3.length) + 160]
        if not arg2:
            require idx < arg4.length
            require idx < arg3.length
            if mem[(32 * idx) + (32 * arg3.length) + 160] > totalBalances[mem[(32 * idx) + 128]]:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            totalBalances[mem[(32 * idx) + 128]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _13791 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _13801 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _13802 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13802] = 42
        mem[_13802 + 32 len 42] = 0x2e455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_13791, 1)
        if _13801 <= balanceOf[_13791][address(arg1)]:
            balanceOf[_13791][address(arg1)] -= _13801
            if _13801 + balanceOf[_13791][arg2] < balanceOf[_13791][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_13791, 1)
            balanceOf[_13791][address(arg2)] = _13801 + balanceOf[_13791][arg2]
            idx = idx + 1
            continue 
        _13814 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _13814 + 68] = mem[idx + _13802 + 32]
            idx = idx + 32
            continue 
        mem[_13814 + 100] = mem[_13814 + 122 len 10]
        revert with memory
          from mem[64]
           len _13814 + -mem[64] + 132
    _13781 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _13783 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _13781 + 96] = mem[(32 * arg3.length) + 128]
    _14072 = mem[(32 * arg3.length) + 128]
    mem[(32 * _13783) + _13781 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _14072) + (32 * _13783) + _13781 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _14327 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _14544 = mem[(32 * arg3.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _14544) + (32 * mem[96]) + 224
    mem[(32 * _14544) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _14755 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _14544) + (32 * _14327) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _14755 % 32:
        require ext_code.size(arg2)
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _14755 + (32 * _14544) + (32 * _14327) + 160]
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
        _14993 = mem[64]
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
        if not _14993 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _15017 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_14993 + ext_call.return_data[0]]
        _15019 = mem[_14993 + ext_call.return_data[0]]
        if not mem[_14993 + ext_call.return_data[0]]:
            if not mem[_14993 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_14993 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_14993 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_14993 + ext_call.return_data[0]]) + mem[64] + -(mem[_14993 + ext_call.return_data[0]] % 32) + 100 len mem[_14993 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_14993 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_15019 - 1)] = mem[_14993 + ext_call.return_data[0] + 64 len floor32(_15019 - 1)]
            if not _15019 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _15019 + 32]
            mem[floor32(_15019) + mem[64] + 68] = mem[floor32(_15019) + mem[64] + -(_15019 % 32) + 100 len _15019 % 32]
        revert with memory
          from mem[64]
           len floor32(_15019) + _15017 + -mem[64] + 100
    mem[floor32(_14755) + (32 * _14544) + (32 * _14327) + mem[64] + 260] = mem[floor32(_14755) + (32 * _14544) + (32 * _14327) + mem[64] + -(_14755 % 32) + 292 len _14755 % 32]
    require ext_code.size(arg2)
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_14755) + (32 * _14544) + (32 * _14327) + 192]
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
    _15000 = mem[64]
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
    if not _15000 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _15036 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_15000 + ext_call.return_data[0]]
    _15038 = mem[_15000 + ext_call.return_data[0]]
    if not mem[_15000 + ext_call.return_data[0]]:
        if not mem[_15000 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_15000 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_15000 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_15000 + ext_call.return_data[0]]) + mem[64] + -(mem[_15000 + ext_call.return_data[0]] % 32) + 100 len mem[_15000 + ext_call.return_data[0]] % 32]
    else:
        mem[mem[64] + 68] = mem[_15000 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_15038 - 1)] = mem[_15000 + ext_call.return_data[0] + 64 len floor32(_15038 - 1)]
        if not _15038 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _15038 + 32]
        mem[floor32(_15038) + mem[64] + 68] = mem[floor32(_15038) + mem[64] + -(_15038 % 32) + 100 len _15038 % 32]
    revert with memory
      from mem[64]
       len floor32(_15038) + _15036 + -mem[64] + 100
}



}
