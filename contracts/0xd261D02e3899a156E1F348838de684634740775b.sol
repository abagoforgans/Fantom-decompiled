contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address swapFactoryAddress;
array of struct userLockedTokenAtIndex;
array of struct lockedTokenAtIndex;
mapping of uint256 stor5;
array of struct numLocksForToken;
uint256 stor7;
uint256 stor8;
array of struct whitelistedUserAtIndex;
mapping of uint256 stor10;
uint32 stor11;
address stor11;
uint256 stor11;

function getLockedTokenAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if lockedTokenAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < lockedTokenAtIndex.length
    return lockedTokenAtIndex[arg1].field_0
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

function swapFactory() {
    return swapFactoryAddress
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
    if userLockedTokenAtIndex[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < userLockedTokenAtIndex[address(arg1)].field_0
    return userLockedTokenAtIndex[address(arg1)][arg2].field_0
}

function getUserNumLockedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return userLockedTokenAtIndex[address(arg1)].field_0
}

function getUserNumLocksForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userLockedTokenAtIndex[address(arg1)][2][address(arg2)].field_0
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
    require arg3 < userLockedTokenAtIndex[address(arg1)][2][address(arg2)].field_0
    require userLockedTokenAtIndex[address(arg1)][2][address(arg2)][arg3].field_0 < numLocksForToken[address(arg2)].field_0
    return numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_0, 
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_256,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_512,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_768,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_1024,
           numLocksForToken[address(arg2)][stor3[address(arg1)][2][address(arg2)][arg3].field_0].field_1280
}

function _fallback() payable {
    revert
}

function gFees() {
    return stor7, stor8
}

function getUserWhitelistStatus(address arg1) {
    require calldata.size - 4 >= 32
    return not not stor10[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor11) = arg1
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    stor8 = arg2
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
        if not stor10[address(arg1)]:
            whitelistedUserAtIndex.length++
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = arg1
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_160 = 0
            stor10[address(arg1)] = whitelistedUserAtIndex.length
    else:
        if stor10[address(arg1)]:
            require whitelistedUserAtIndex.length - 1 < whitelistedUserAtIndex.length
            require stor10[address(arg1)] - 1 < whitelistedUserAtIndex.length
            whitelistedUserAtIndex[stor10[address(arg1)]].field_0 = whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0
            stor10[stor9[stor9.length].field_0] = stor10[address(arg1)]
            require whitelistedUserAtIndex.length
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = 0
            whitelistedUserAtIndex.length--
            stor10[address(arg1)] = 0
}

function splitLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 <= 0:
        revert with 0, 'ZERO AMOUNT'
    require arg2 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
    require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'Lock Mismatch!'
    if stor7 != msg.value:
        revert with 0, 'Fee not met!'
    call address(stor11) with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 > numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 -= arg4
    numLocksForToken[address(arg1)].field_0++
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg4
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg4
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = msg.sender
    userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0++
    userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
    stor1 = 1
}

function relock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    require arg2 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
    require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768 >= arg4:
        revert with 0, 'UNLOCK BEFORE'
    if not numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
        if 0 > numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768 = arg4
        mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
        call arg1 with:
           funct uint32(stor11)
             gas gas_remaining wei
            args 0, mem[388 len 4]
    else:
        require numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256
        if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 * stor8 / numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 != stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 * stor8 / 1000 > numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 -= numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 * stor8 / 1000
        numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768 = arg4
        mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 * stor8 / 1000) >> 32
        call arg1 with:
           funct uint32(stor11)
             gas gas_remaining wei
            args Mask(224, 32, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 * stor8 / 1000) << 224, mem[388 len 4]
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
        revert with 0, 'ZERO WITHDRAWL'
    require arg2 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
    require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768 >= block.timestamp:
        revert with 0, 'Cannot withdraw yet!'
    if arg4 > numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 -= arg4
    if not numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
        require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0 - 1 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
        require arg2 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
        userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 = userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0].field_0
        require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
        userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0].field_0 = 0
        userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0--
        if not userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0:
            if userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)].field_0:
                require userLockedTokenAtIndex[address(msg.sender)].field_0 - 1 < userLockedTokenAtIndex[address(msg.sender)].field_0
                require userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)].field_0 - 1 < userLockedTokenAtIndex[address(msg.sender)].field_0
                userLockedTokenAtIndex[address(msg.sender)][userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)].field_0].field_0 = userLockedTokenAtIndex[address(msg.sender)][userLockedTokenAtIndex[address(msg.sender)].field_0].field_0
                userLockedTokenAtIndex[address(msg.sender)][1][userLockedTokenAtIndex[address(msg.sender)][userLockedTokenAtIndex[address(msg.sender)].field_0].field_0].field_0 = userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)].field_0
                require userLockedTokenAtIndex[address(msg.sender)].field_0
                userLockedTokenAtIndex[address(msg.sender)][userLockedTokenAtIndex[address(msg.sender)].field_0].field_0 = 0
                userLockedTokenAtIndex[address(msg.sender)].field_0--
                userLockedTokenAtIndex[address(msg.sender)][1][address(arg1)].field_0 = 0
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg4) >> 32
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
    require arg2 < userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)].field_0
    require userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[address(msg.sender)][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'Lock Mismatch!'
    if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'Lock Mismatch!'
    mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
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
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg4),
                        mem[356 len 4]
        if not arg4:
            mem[392 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args 0, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
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
            if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 += arg4
            emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768);
        else:
            require arg4
            if arg4 * stor8 / arg4 != stor8:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg4),
                            mem[356 len 4]
            mem[392 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg4 * stor8 / 1000) >> 32
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, arg4 * stor8 / 1000) << 224, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[424]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg4 * stor8 / 1000 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000) < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 = numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000)
            emit onDeposit(address(arg1), msg.sender, arg4 - (arg4 * stor8 / 1000), numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768);
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
            mem[ceil32(return_data.size) + 393 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if 0 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 += arg4
                emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768);
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if 0 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 += arg4
                emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                               address(arg1),
                               msg.sender,
                               arg4,
                               numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0,
                               numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768,
                               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
        else:
            require arg4
            if arg4 * stor8 / arg4 != stor8:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 330 len 31]
            mem[ceil32(return_data.size) + 393 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg4 * stor8 / 1000) >> 32
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, arg4 * stor8 / 1000) << 224, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if arg4 * stor8 / 1000 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000) < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 = numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000)
                emit onDeposit(address(arg1), msg.sender, arg4 - (arg4 * stor8 / 1000), numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768);
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if arg4 * stor8 / 1000 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000) < numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 = numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_256 + arg4 - (arg4 * stor8 / 1000)
                emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                               address(arg1),
                               msg.sender,
                               arg4 - (arg4 * stor8 / 1000),
                               numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_0,
                               numLocksForToken[address(arg1)][stor3[address(msg.sender)][2][address(arg1)][arg2].field_0].field_768,
                               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    stor1 = 1
}

function lockLPToken(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg3 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    if arg2 <= 0:
        revert with 0, 'INSUFFICIENT'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(swapFactoryAddress)
    staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'Wrong Router!'
    if not stor10[address(msg.sender)]:
        if stor7 != msg.value:
            revert with 0, 'Fee not met!'
        call address(stor11) with:
           value stor7 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
        if not arg2:
            mem[392 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args 0, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[424]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            numLocksForToken[address(arg1)].field_0++
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
            if not stor5[address(arg1)]:
                lockedTokenAtIndex.length++
                lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                stor5[address(arg1)] = lockedTokenAtIndex.length
            if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                userLockedTokenAtIndex[address(arg4)].field_0++
                userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
            userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
            userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
            emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
        else:
            require arg2
            if arg2 * stor8 / arg2 != stor8:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg2),
                            mem[356 len 4]
            mem[392 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg2 * stor8 / 1000) >> 32
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, arg2 * stor8 / 1000) << 224, mem[456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[424]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if arg2 * stor8 / 1000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            numLocksForToken[address(arg1)].field_0++
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2 - (arg2 * stor8 / 1000)
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2 - (arg2 * stor8 / 1000)
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
            numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
            if not stor5[address(arg1)]:
                lockedTokenAtIndex.length++
                lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                stor5[address(arg1)] = lockedTokenAtIndex.length
            if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                userLockedTokenAtIndex[address(arg4)].field_0++
                userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
            userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
            userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
            emit onDeposit(address(arg1), msg.sender, arg2 - (arg2 * stor8 / 1000), block.timestamp, arg3);
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
        if not arg2:
            mem[ceil32(return_data.size) + 393 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                numLocksForToken[address(arg1)].field_0++
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
                if not stor5[address(arg1)]:
                    lockedTokenAtIndex.length++
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                    stor5[address(arg1)] = lockedTokenAtIndex.length
                if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                    userLockedTokenAtIndex[address(arg4)].field_0++
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                    userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
                emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                numLocksForToken[address(arg1)].field_0++
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
                if not stor5[address(arg1)]:
                    lockedTokenAtIndex.length++
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                    stor5[address(arg1)] = lockedTokenAtIndex.length
                if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                    userLockedTokenAtIndex[address(arg4)].field_0++
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                    userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
                emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                               address(arg1),
                               msg.sender,
                               arg2,
                               block.timestamp,
                               arg3,
                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
        else:
            require arg2
            if arg2 * stor8 / arg2 != stor8:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 330 len 31]
            mem[ceil32(return_data.size) + 393 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg2 * stor8 / 1000) >> 32
            call arg1 with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, arg2 * stor8 / 1000) << 224, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if arg2 * stor8 / 1000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                numLocksForToken[address(arg1)].field_0++
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2 - (arg2 * stor8 / 1000)
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2 - (arg2 * stor8 / 1000)
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
                if not stor5[address(arg1)]:
                    lockedTokenAtIndex.length++
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                    stor5[address(arg1)] = lockedTokenAtIndex.length
                if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                    userLockedTokenAtIndex[address(arg4)].field_0++
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                    userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
                emit onDeposit(address(arg1), msg.sender, arg2 - (arg2 * stor8 / 1000), block.timestamp, arg3);
            else:
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 425]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if arg2 * stor8 / 1000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                numLocksForToken[address(arg1)].field_0++
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = block.timestamp
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg2 - (arg2 * stor8 / 1000)
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg2 - (arg2 * stor8 / 1000)
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = arg3
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
                numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = arg4
                if not stor5[address(arg1)]:
                    lockedTokenAtIndex.length++
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_0 = arg1
                    lockedTokenAtIndex[lockedTokenAtIndex.length].field_160 = 0
                    stor5[address(arg1)] = lockedTokenAtIndex.length
                if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
                    userLockedTokenAtIndex[address(arg4)].field_0++
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
                    userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
                    userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
                userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
                emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                               address(arg1),
                               msg.sender,
                               arg2 - (arg2 * stor8 / 1000),
                               block.timestamp,
                               arg3,
                               mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    stor1 = 1
}



}
