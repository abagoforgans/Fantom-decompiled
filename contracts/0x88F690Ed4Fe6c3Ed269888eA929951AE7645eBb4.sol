contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor6;
array of struct lockedTokens;
array of struct lockedUser;
mapping of struct tokenLocks;
uint256 stor11;
uint256 stor12;
address stor13;
uint32 stor14;
uint256 stor14;
address stor15;

function lockedUser(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < lockedUser[arg1].field_0
    return lockedUser[arg1][arg2].field_0
}

function lockedTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < lockedTokens[arg1].field_0
    return lockedTokens[arg1][arg2].field_0
}

function getUserLockForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenLocks[address(arg2)][address(arg1)].field_0, 
           tokenLocks[address(arg2)][address(arg1)].field_256,
           tokenLocks[address(arg2)][address(arg1)].field_512,
           tokenLocks[address(arg2)][address(arg1)].field_768,
           tokenLocks[address(arg2)][address(arg1)].field_1024
}

function owner() {
    return owner
}

function tokenLocks(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenLocks[arg1][arg2].field_0, 
           tokenLocks[arg1][arg2].field_256,
           tokenLocks[arg1][arg2].field_512,
           tokenLocks[arg1][arg2].field_768,
           tokenLocks[arg1][arg2].field_1024
}

function _fallback() payable {
    revert
}

function gFees() {
    return stor11, stor12
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
    stor13 = arg1
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor15 = arg1
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11 = arg1
    stor12 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function relock(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 >= 10^10:
        revert with 0, 'TIMESTAMP INVALID'
    if tokenLocks[address(arg1)][msg.sender].field_1024 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if tokenLocks[address(arg1)][msg.sender].field_768 >= arg2:
        revert with 0, 'UNLOCK BEFORE'
    tokenLocks[address(arg1)][msg.sender].field_768 = arg2
    stor1 = 1
}

function getLockForToken(address arg1) {
    require calldata.size - 4 >= 32
    if lockedTokens[address(arg1)].field_0:
        mem[128] = lockedTokens[address(arg1)].field_0
        if (32 * lockedTokens[address(arg1)].field_0) + 32 > 64:
            mem[160] = lockedTokens[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * lockedTokens[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = lockedTokens[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * lockedTokens[address(arg1)].field_0) + 128] = 32
    mem[(32 * lockedTokens[address(arg1)].field_0) + 160] = lockedTokens[address(arg1)].field_0
    mem[(32 * lockedTokens[address(arg1)].field_0) + 192 len floor32(lockedTokens[address(arg1)].field_0)] = mem[128 len floor32(lockedTokens[address(arg1)].field_0)]
    return memory
      from (32 * lockedTokens[address(arg1)].field_0) + 128
       len (96 * lockedTokens[address(arg1)].field_0) + 64
}

function getLockForUser(address arg1) {
    require calldata.size - 4 >= 32
    if not lockedUser[address(arg1)].field_0:
        mem[(32 * lockedUser[address(arg1)].field_0) + 128] = 32
        mem[(32 * lockedUser[address(arg1)].field_0) + 160] = lockedUser[address(arg1)].field_0
        mem[(32 * lockedUser[address(arg1)].field_0) + 192 len floor32(lockedUser[address(arg1)].field_0)] = mem[128 len floor32(lockedUser[address(arg1)].field_0)]
        return memory
          from (32 * lockedUser[address(arg1)].field_0) + 128
           len (96 * lockedUser[address(arg1)].field_0) + 64
    mem[128] = lockedUser[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * lockedUser[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = lockedUser[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * lockedUser[address(arg1)].field_0) + 192 len floor32(lockedUser[address(arg1)].field_0)] = mem[128 len floor32(lockedUser[address(arg1)].field_0)]
    return Array(len=lockedUser[address(arg1)].field_0, data=mem[128 len floor32(lockedUser[address(arg1)].field_0)], mem[(32 * lockedUser[address(arg1)].field_0) + floor32(lockedUser[address(arg1)].field_0) + 192 len (32 * lockedUser[address(arg1)].field_0) - floor32(lockedUser[address(arg1)].field_0)]), 
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, 'ZERO WITHDRAWL'
    if tokenLocks[address(arg1)][msg.sender].field_1024 != msg.sender:
        revert with 0, 'LOCK MISMATCH'
    if tokenLocks[address(arg1)][msg.sender].field_768 >= block.timestamp:
        revert with 0, 'NOT YET'
    if arg2 > tokenLocks[address(arg1)][msg.sender].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenLocks[address(arg1)][msg.sender].field_256 -= arg2
    if tokenLocks[address(arg1)][msg.sender].field_256 - arg2:
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[309 len 19]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[309 len 19]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 310 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 310 len 19]
    else:
        stor6[arg1][Mask(160, 96, msg.sender) >> 96] = 0
        mem[268 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[332 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[381 len 19]
            if not arg1, Mask(96, 160, msg.sender) >> 160:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[381 len 19]
        else:
            mem[300 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 382 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[300]:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 382 len 19]
    emit onWithdraw(address(arg1), arg2);
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
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        49,
                        0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
        if stor11 != msg.value:
            revert with 0, 'FEE NOT MET'
        call stor13 with:
           value stor11 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            mem[328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
            call arg1 with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args 0, mem[392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[441 len 19]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[441 len 19]
            else:
                mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[360]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + 442 len 19]
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg1][arg4]:
                if arg4 != msg.sender:
                    revert with 0, '_withdrawer no sender'
                if arg2 + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tokenLocks[address(arg1)][address(arg4)].field_256 += arg2
                if arg2 + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                tokenLocks[address(arg1)][address(arg4)].field_512 += arg2
                tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
            else:
                tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                tokenLocks[address(arg1)][address(arg4)].field_256 = arg2
                tokenLocks[address(arg1)][address(arg4)].field_512 = arg2
                tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                stor6[arg1][arg4] = 1
                if not stor6[arg4][arg1]:
                    lockedTokens[address(arg1)].field_0++
                    lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                    lockedUser[address(arg4)].field_0++
                    lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                    stor6[arg4][arg1] = 1
                emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
        else:
            if stor12 * arg2 / arg2 != stor12:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg2),
                            mem[356 len 4]
            mem[328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, stor12 * arg2 / 1000) >> 32
            call arg1 with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(224, 32, stor12 * arg2 / 1000) << 224, mem[392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[441 len 19]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[441 len 19]
            else:
                mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[360]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + 442 len 19]
            if stor12 * arg2 / 1000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[arg1][arg4]:
                if arg4 != msg.sender:
                    revert with 0, '_withdrawer no sender'
                if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256
                if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512
                tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
            else:
                tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000)
                tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000)
                tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                stor6[arg1][arg4] = 1
                if not stor6[arg4][arg1]:
                    lockedTokens[address(arg1)].field_0++
                    lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                    lockedUser[address(arg4)].field_0++
                    lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                    stor6[arg4][arg1] = 1
                emit onDeposit(address(arg1), msg.sender, arg2 - (stor12 * arg2 / 1000), block.timestamp, arg3);
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            49,
                            0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 346 len 15]
        if stor11 != msg.value:
            revert with 0, 'FEE NOT MET'
        call stor13 with:
           value stor11 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            mem[ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), 0
            call arg1 with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg1][arg4]:
                    if arg4 != msg.sender:
                        revert with 0, '_withdrawer no sender'
                    if arg2 + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_256 += arg2
                    if arg2 + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_512 += arg2
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                        tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
                else:
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                    stor6[arg1][arg4] = 1
                    if not stor6[arg4][arg1]:
                        lockedTokens[address(arg1)].field_0++
                        lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                        lockedUser[address(arg4)].field_0++
                        lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                        stor6[arg4][arg1] = 1
                    emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[(2 * ceil32(return_data.size)) + 443 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[(2 * ceil32(return_data.size)) + 443 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                if 0 > arg2:
                    revert with 0, 
                                'SafeMath: subtraction overflow',
                                mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if stor6[arg1][address(arg4) << (8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 20) - 160]:
                    if arg4 != msg.sender:
                        revert with 0, '_withdrawer no sender'
                    if arg2 + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_256 += arg2
                    if arg2 + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_512 += arg2
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                        tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
                else:
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                    stor6[arg1][arg4] = 1
                    if not stor6[arg4][arg1]:
                        lockedTokens[address(arg1)].field_0++
                        lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                        lockedUser[address(arg4)].field_0++
                        lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                        stor6[arg4][arg1] = 1
                    emit onDeposit(address(arg1), msg.sender, arg2, block.timestamp, arg3);
        else:
            if stor12 * arg2 / arg2 != stor12:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 330 len 31]
            mem[ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), Mask(224, 32, stor12 * arg2 / 1000) >> 32
            call arg1 with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args Mask(224, 32, stor12 * arg2 / 1000) << 224, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 442 len 19]
                if stor12 * arg2 / 1000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor6[arg1][arg4]:
                    if arg4 != msg.sender:
                        revert with 0, '_withdrawer no sender'
                    if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256
                    if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                        tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
                else:
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000)
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000)
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                    stor6[arg1][arg4] = 1
                    if not stor6[arg4][arg1]:
                        lockedTokens[address(arg1)].field_0++
                        lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                        lockedUser[address(arg4)].field_0++
                        lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                        stor6[arg4][arg1] = 1
                    emit onDeposit(address(arg1), msg.sender, arg2 - (stor12 * arg2 / 1000), block.timestamp, arg3);
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[(2 * ceil32(return_data.size)) + 443 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x725472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[(2 * ceil32(return_data.size)) + 443 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                if stor12 * arg2 / 1000 > arg2:
                    revert with 0, 
                                'SafeMath: subtraction overflow',
                                mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if stor6[arg1][address(arg4) << (8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 20) - 160]:
                    if arg4 != msg.sender:
                        revert with 0, '_withdrawer no sender'
                    if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256 < tokenLocks[address(arg1)][address(arg4)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_256
                    if arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512 < tokenLocks[address(arg1)][address(arg4)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000) + tokenLocks[address(arg1)][address(arg4)].field_512
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    if arg3 > tokenLocks[address(arg1)][address(arg4)].field_768:
                        tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    emit onDeposit(address(arg1), msg.sender, tokenLocks[address(arg1)][address(arg4)].field_256, tokenLocks[address(arg1)][address(arg4)].field_0, tokenLocks[address(arg1)][address(arg4)].field_768);
                else:
                    tokenLocks[address(arg1)][address(arg4)].field_0 = block.timestamp
                    tokenLocks[address(arg1)][address(arg4)].field_256 = arg2 - (stor12 * arg2 / 1000)
                    tokenLocks[address(arg1)][address(arg4)].field_512 = arg2 - (stor12 * arg2 / 1000)
                    tokenLocks[address(arg1)][address(arg4)].field_768 = arg3
                    tokenLocks[address(arg1)][address(arg4)].field_1024 = arg4
                    stor6[arg1][arg4] = 1
                    if not stor6[arg4][arg1]:
                        lockedTokens[address(arg1)].field_0++
                        lockedTokens[address(arg1)][lockedTokens[address(arg1)].field_0].field_0 = arg4
                        lockedUser[address(arg4)].field_0++
                        lockedUser[address(arg4)][lockedUser[address(arg4)].field_0].field_0 = arg1
                        stor6[arg4][arg1] = 1
                    emit onDeposit(address(arg1), msg.sender, arg2 - (stor12 * arg2 / 1000), block.timestamp, arg3);
    stor1 = 1
}



}
