contract main {




// =====================  Runtime code  =====================


#
#  - lockLPToken(address arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5, address arg6)
#
address owner;
uint256 stor1;
address uniswapFactoryAddress;
array of struct userLockedTokenAtIndex;
array of address lockedTokenAtIndex;
array of struct numLocksForToken;
uint256 stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor14;
uint256 stor15;
array of struct whitelistedUserAtIndex;
mapping of uint256 stor17;
uint32 stor18;
address stor18;
uint256 stor18;
uint32 stor19;
address stor19;
uint256 stor19;
address sub_76323bd8Address;

function getLockedTokenAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= lockedTokenAtIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return lockedTokenAtIndex[arg1]
}

function getNumLocksForToken(address arg1) {
    require calldata.size - 4 >= 32
    return numLocksForToken[address(arg1)].field_0
}

function getWhitelistedUsersLength() {
    return whitelistedUserAtIndex.length
}

function sub_76323bd8(?) {
    return sub_76323bd8Address
}

function getNumLockedTokens() {
    return lockedTokenAtIndex.length
}

function uniswapFactory() {
    return uniswapFactoryAddress
}

function getWhitelistedUserAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= whitelistedUserAtIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return whitelistedUserAtIndex[arg1].field_0
}

function owner() {
    return owner
}

function getUserLockedTokenAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= userLockedTokenAtIndex[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
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

function getUserWhitelistStatus(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[address(arg1)])
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
    return stor7, stor8, stor9, stor10, stor11, stor12, stor13, stor14, stor15
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(stor18) = arg1
}

function setSecondaryFeeToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor8 = arg1
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(stor19) = arg1
}

function setMigrationIn(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_76323bd8Address = arg1
}

function setReferralTokenAndHold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor13 = arg1
    stor14 = arg2
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor12 = arg1
    stor15 = arg2
    stor7 = arg3
    stor9 = arg4
    stor10 = arg5
    stor11 = arg6
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelistFeeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2:
        if not stor17[address(arg1)]:
            whitelistedUserAtIndex.length++
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = arg1
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_160 = 0
            stor17[address(arg1)] = whitelistedUserAtIndex.length
    else:
        if stor17[address(arg1)]:
            require whitelistedUserAtIndex.length - 1 < whitelistedUserAtIndex.length
            require stor17[address(arg1)] - 1 < whitelistedUserAtIndex.length
            whitelistedUserAtIndex[stor17[address(arg1)]].field_0 = whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0
            stor17[stor16[stor16.length].field_0] = stor17[address(arg1)]
            require whitelistedUserAtIndex.length
            whitelistedUserAtIndex[whitelistedUserAtIndex.length].field_0 = 0
            whitelistedUserAtIndex.length--
            stor17[address(arg1)] = 0
}

function transferLockOwnership(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    if arg4 == msg.sender:
        revert with 0, 'OWNER'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if not userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0:
        userLockedTokenAtIndex[address(arg4)].field_0++
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_0 = arg1
        userLockedTokenAtIndex[address(arg4)][userLockedTokenAtIndex[address(arg4)].field_0].field_160 = 0
        userLockedTokenAtIndex[address(arg4)][1][address(arg1)].field_0 = userLockedTokenAtIndex[address(arg4)].field_0
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0++
    userLockedTokenAtIndex[address(arg4)][2][address(arg1)][userLockedTokenAtIndex[address(arg4)][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1024
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0 - 1 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 = userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0 = 0
    userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0--
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 = arg4
}

function splitLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg4:
        revert with 0, 'ZERO AMOUNT'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if stor7 != msg.value:
        revert with 0, 'FEE NOT MET'
    call address(stor18) with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 > numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 -= arg4
    numLocksForToken[address(arg1)].field_0++
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_256 = arg4
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_512 = arg4
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_768 = numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1024 = numLocksForToken[address(arg1)].field_0
    numLocksForToken[address(arg1)][numLocksForToken[address(arg1)].field_0].field_1280 = msg.sender
    userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0++
    userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0 = numLocksForToken[address(arg1)].field_0
    stor1 = 1
}

function withdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg4:
        revert with 0, 'ZERO WITHDRAWL'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 >= block.timestamp:
        revert with 0, 'NOT YET'
    if arg4 > numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 -= arg4
    if not numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 - arg4:
        require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0 - 1 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 = userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0
        require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0 = 0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0--
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

function migrate(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if not address(stor19):
        revert with 0, 'NOT SET'
    if arg4 <= 0:
        revert with 0, 'ZERO MIGRATION'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if arg4 > numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 -= arg4
    if not numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 - arg4:
        require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0 - 1 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 = userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0
        require userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)][userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0].field_0 = 0
        userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0--
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor19), uint32(stor19), Mask(224, 32, arg4) >> 32
    call arg1 with:
       funct uint32(stor19)
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
    require ext_code.size(address(stor19))
    call address(stor19).migrate(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args address(arg1), arg4, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
}

function relock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if arg4 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 >= arg4:
        revert with 0, 'UNLOCK BEFORE'
    if not numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
        if 0 > numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 = arg4
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), 0
        call arg1 with:
           funct uint32(stor18)
             gas gas_remaining wei
            args 0, mem[388 len 4]
    else:
        if stor11 * numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 / numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor11 * numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 / 1000 > numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 -= stor11 * numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 / 1000
        numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768 = arg4
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, stor11 * numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 / 1000) >> 32
        call arg1 with:
           funct uint32(stor18)
             gas gas_remaining wei
            args Mask(224, 32, stor11 * numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 / 1000) << 224, mem[388 len 4]
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

function incrementLock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg4:
        revert with 0, 'ZERO AMOUNT'
    require arg2 < userLockedTokenAtIndex[msg.sender][2][address(arg1)].field_0
    require userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 < numLocksForToken[address(arg1)].field_0
    if userLockedTokenAtIndex[msg.sender][2][address(arg1)][arg2].field_0 != arg3:
        revert with 0, 'LOCK MISMATCH'
    if numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_1280 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
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
                        0x725472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg4),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x725472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg4),
                        mem[356 len 4]
        if not arg4:
            mem[392 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), 0
            call arg1 with:
               funct uint32(stor18)
                 gas gas_remaining wei
                args 0, mem[456 len 4]
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
            if arg4 + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 += arg4
            emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
        else:
            if stor11 * arg4 / arg4 != stor11:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg4),
                            mem[356 len 4]
            mem[392 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, stor11 * arg4 / 1000) >> 32
            call arg1 with:
               funct uint32(stor18)
                 gas gas_remaining wei
                args Mask(224, 32, stor11 * arg4 / 1000) << 224, mem[456 len 4]
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
            if stor11 * arg4 / 1000 > arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                revert with 0, 'SafeMath: addition overflow'
            numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 = arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256
            emit onDeposit(address(arg1), msg.sender, arg4 - (stor11 * arg4 / 1000), numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x725472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if not return_data.size:
            if not arg4:
                mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), 0
                call arg1 with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if 0 > arg4:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4 + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 += arg4
                    emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
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
                    if arg4 + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 += arg4
                    emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                   address(arg1),
                                   msg.sender,
                                   arg4,
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0,
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768,
                                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
            else:
                if stor11 * arg4 / arg4 != stor11:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, stor11 * arg4 / 1000) >> 32
                call arg1 with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(224, 32, stor11 * arg4 / 1000) << 224, mem[ceil32(return_data.size) + 457 len 4]
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
                if stor11 * arg4 / 1000 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 = arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256
                emit onDeposit(address(arg1), msg.sender, arg4 - (stor11 * arg4 / 1000), numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x725472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            if not arg4:
                mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), 0
                call arg1 with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if 0 > arg4:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4 + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 += arg4
                    emit onDeposit(address(arg1), msg.sender, arg4, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
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
                    if arg4 + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 += arg4
                    emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                   address(arg1),
                                   msg.sender,
                                   arg4,
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0,
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768,
                                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
            else:
                if stor11 * arg4 / arg4 != stor11:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, stor11 * arg4 / 1000) >> 32
                call arg1 with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(224, 32, stor11 * arg4 / 1000) << 224, mem[ceil32(return_data.size) + 457 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if stor11 * arg4 / 1000 > arg4:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 = arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256
                    emit onDeposit(address(arg1), msg.sender, arg4 - (stor11 * arg4 / 1000), numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0, numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768);
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
                    if stor11 * arg4 / 1000 > arg4:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 < numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256 = arg4 - (stor11 * arg4 / 1000) + numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_256
                    emit onDeposit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                                   address(arg1),
                                   msg.sender,
                                   arg4 - (stor11 * arg4 / 1000),
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_0,
                                   numLocksForToken[address(arg1)][stor3[msg.sender][2][address(arg1)][arg2].field_0].field_768,
                                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    stor1 = 1
}



}
