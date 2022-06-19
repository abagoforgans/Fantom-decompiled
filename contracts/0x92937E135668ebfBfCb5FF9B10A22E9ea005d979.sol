contract main {




// =====================  Runtime code  =====================


#
#  - sub_e8fcae21(?)
#
address owner;
uint256 stor1;
array of address userLockedTokenAtIndex;
array of address lockedTokenAtIndex;
array of struct numLocksForToken;
uint256 stor6;
uint256 stor7;
array of struct whitelistedUserAtIndex;
mapping of uint256 stor9;
uint32 stor10;
address stor10;
uint256 stor10;
address stor11;

function getLockedTokenAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if lockedTokenAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < lockedTokenAtIndex.length
    return lockedTokenAtIndex[arg1]
}

function getNumLocksForToken(address arg1) {
    require calldata.size - 4 >= 32
    return numLocksForToken[address(arg1)].field_0
}

function getWhitelistedUsersLength() {
    return whitelistedUserAtIndex.length
}

function getNumLockedTokens() {
    return lockedTokenAtIndex.length
}

function getWhitelistedUserAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if whitelistedUserAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < whitelistedUserAtIndex.length
    return whitelistedUserAtIndex[arg1].field_0
}

function owner() {
    return owner
}

function getUserLockedTokenAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint256(userLockedTokenAtIndex[address(arg1)]) <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < uint256(userLockedTokenAtIndex[address(arg1)])
    return address(userLockedTokenAtIndex[address(arg1)][arg2])
}

function getUserNumLockedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userLockedTokenAtIndex[address(arg1)])
}

function getUserNumLocksForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)])
}

function tokenLocks(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < numLocksForToken[arg1].field_0
    return numLocksForToken[arg1][arg2].field_0, 
           numLocksForToken[arg1][arg2].field_256,
           numLocksForToken[arg1][arg2].field_512,
           numLocksForToken[arg1][arg2].field_768,
           numLocksForToken[arg1][arg2].field_1024,
           numLocksForToken[arg1][arg2].field_1280
}

function getUserLockForTokenAtIndex(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)])
    require uint256(userLockedTokenAtIndex[address(arg1)][2][address(arg2)][arg3]) < numLocksForToken[address(arg2)].field_0
    return numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_0, 
           numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_256,
           numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_512,
           numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_768,
           numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_1024,
           numLocksForToken[address(arg2)][uint256(stor2[address(arg1)][2][address(arg2)][arg3])].field_1280
}

function _fallback() payable {
    revert
}

function gFees() {
    return stor6, stor7
}

function getUserWhitelistStatus(address arg1) {
    require calldata.size - 4 >= 32
    return not not stor9[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStaking(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor10) = arg1
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
    stor7 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelistFeeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor9[address(arg1)]:
            whitelistedUserAtIndex.length++
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = arg1
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_160 = 0
            stor9[address(arg1)] = whitelistedUserAtIndex.length
    else:
        if stor9[address(arg1)]:
            require whitelistedUserAtIndex.length - 1 < whitelistedUserAtIndex.length
            require stor9[address(arg1)] - 1 < whitelistedUserAtIndex.length
            whitelistedUserAtIndex[stor9[address(arg1)]].field_0 = whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0
            stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
            require whitelistedUserAtIndex.length
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = 0
            whitelistedUserAtIndex.length--
            stor9[address(arg1)] = 0
}

function relock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    require arg2 < uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
    require uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) < numLocksForToken[address(arg1)].field_0
    if uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768 >= arg4:
        revert with 0, 'UNLOCK BEFORE'
    if not numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
        if 0 > numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768 = arg4
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
        call arg1 with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[388 len 4]
    else:
        require numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256
        if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 * stor7 / numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 * stor7 / 1000 > numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 -= numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 * stor7 / 1000
        numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768 = arg4
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 * stor7 / 1000) >> 32
        call arg1 with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(224, 32, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 * stor7 / 1000) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    stor1 = 1
}

function withdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 <= 0:
        revert with 0, 'ZERO WITHDRAWAL'
    require arg2 < uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
    require uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) < numLocksForToken[address(arg1)].field_0
    if uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) != arg3:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_1280 != msg.sender:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768 >= block.timestamp:
        revert with 0, 'Cannot withdraw yet!'
    if arg4 > numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 -= arg4
    if not numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
        require uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)]) - 1 < uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
        require arg2 < uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) = uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])])
        require uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])]) = 0
        uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])--
        if not uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)]):
            if uint256(userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)]):
                require uint256(userLockedTokenAtIndex[address(msg.sender)]) - 1 < uint256(userLockedTokenAtIndex[address(msg.sender)])
                require uint256(userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)]) - 1 < uint256(userLockedTokenAtIndex[address(msg.sender)])
                uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])])
                uint256(userLockedTokenAtIndex[address(msg.sender)][1][uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])])]) = uint256(userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)])
                require uint256(userLockedTokenAtIndex[address(msg.sender)])
                uint256(userLockedTokenAtIndex[address(msg.sender)][uint256(userLockedTokenAtIndex[address(msg.sender)])]) = 0
                uint256(userLockedTokenAtIndex[address(msg.sender)])--
                uint256(userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)]) = 0
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg4) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit onWithdraw(address(arg1), arg4);
    stor1 = 1
}

function incrementLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 <= 0:
        revert with 0, 'ZERO AMOUNT'
    require arg2 < uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)])
    require uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) < numLocksForToken[address(arg1)].field_0
    if uint256(userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2]) != arg3:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_1280 != msg.sender:
        revert with 0, 'Lock Mismatch!'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[352 len 4] = uint32(arg4)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg4),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg4),
                        mem[356 len 4]
        if not arg4:
            mem[392 len 64] = 0, address(stor10), 0
            call arg1 with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(stor10), 0) >> 32, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[424]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if 0 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 < numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 += arg4
            emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_0, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768);
        else:
            require arg4
            if arg4 * stor7 / arg4 != stor7:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg4),
                            mem[356 len 4]
            mem[392 len 64] = 0, address(stor10), Mask(224, 32, arg4 * stor7 / 1000) >> 32
            call arg1 with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args arg4 * stor7 / 1000, Mask(224, 32, address(stor10), Mask(224, 32, arg4 * stor7 / 1000) >> 32) >> 32, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[424]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg4 * stor7 / 1000 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 - (arg4 * stor7 / 1000) < numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 = numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 - (arg4 * stor7 / 1000)
            emit onDeposit(address(arg1), msg.sender, arg4 - (arg4 * stor7 / 1000), numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_0, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768);
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
        if not arg4:
            mem[ceil32(return_data.size) + 393 len 64] = 0, address(stor10), 0
            call arg1 with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(stor10), 0) >> 32, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if 0 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 < numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 += arg4
            emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_0, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768);
        else:
            require arg4
            if arg4 * stor7 / arg4 != stor7:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 330 len 31]
            mem[ceil32(return_data.size) + 393 len 64] = 0, address(stor10), Mask(224, 32, arg4 * stor7 / 1000) >> 32
            call arg1 with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args arg4 * stor7 / 1000, Mask(224, 32, address(stor10), Mask(224, 32, arg4 * stor7 / 1000) >> 32) >> 32, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg4 * stor7 / 1000 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 - (arg4 * stor7 / 1000) < numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 = numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_256 + arg4 - (arg4 * stor7 / 1000)
            emit onDeposit(address(arg1), msg.sender, arg4 - (arg4 * stor7 / 1000), numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_0, numLocksForToken[address(arg1)][uint256(stor2[address(msg.sender)][2][address(arg1)][arg2])].field_768);
    stor1 = 1
}



}
