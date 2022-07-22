contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address burnAddress;
uint256 startBlock;
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512
}

function startBlock() payable {
    return startBlock
}

function burnAddress() payable {
    return burnAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_256:
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_256 = block.number
        else:
            if poolInfo[arg1].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_256 > 0:
                poolInfo[arg1].field_256 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_256:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_512)
        staticcall poolInfo[idx].field_512.sharesTotal() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_256 = block.number
            idx = idx + 1
            continue 
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = 30
        mem[_19 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_256 <= block.number:
            if block.number - poolInfo[idx].field_256 > 0:
                poolInfo[idx].field_256 = block.number
            idx = idx + 1
            continue 
        _20 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_20 + idx + 68] = mem[_19 + idx + 32]
            idx = idx + 32
            continue 
        mem[_20 + 68] = mem[_20 + 70 len 30]
        revert with memory
          from mem[64]
           len _20 + -mem[64] + 100
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_512)
    staticcall poolInfo[arg1].field_512.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_512)
    staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function add(address arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number <= poolInfo[idx].field_256:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_512)
            staticcall poolInfo[idx].field_512.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_256 = block.number
                idx = idx + 1
                continue 
            _51 = mem[64]
            mem[64] = mem[64] + 64
            mem[_51] = 30
            mem[_51 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_256 <= block.number:
                if block.number - poolInfo[idx].field_256 > 0:
                    poolInfo[idx].field_256 = block.number
                idx = idx + 1
                continue 
            _52 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_52 + idx + 68] = mem[_51 + idx + 32]
                idx = idx + 32
                continue 
            mem[_52 + 68] = mem[_52 + 70 len 30]
            revert with memory
              from mem[64]
               len _52 + -mem[64] + 100
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_256 = block.number
    else:
        poolInfo[poolInfo.length].field_256 = startBlock
    poolInfo[poolInfo.length].field_512 = arg2
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_512)
    staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_512)
    staticcall poolInfo[arg1].field_512.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][address(msg.sender)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require userInfo[arg1][address(msg.sender)].field_0
        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_256:
        require arg1 < poolInfo.length
        if arg2 > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), poolInfo[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                call poolInfo[arg1].field_0 with:
                   funct poolInfo[arg1].field_512
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg2, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), poolInfo[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                call poolInfo[arg1].field_0 with:
                   funct poolInfo[arg1].field_512
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_512)
            call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
        emit Deposit(arg2, msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_256 = block.number
            require arg1 < poolInfo.length
            if arg2 <= 0:
                emit Deposit(arg2, msg.sender, arg1);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), poolInfo[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_512, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                    mem[520 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct poolInfo[arg1].field_512
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), poolInfo[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_512, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                    mem[ceil32(return_data.size) + 549 len 4] = 0
                    call poolInfo[arg1].field_0 with:
                       funct poolInfo[arg1].field_512
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                     arg2,
                                     mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
                                     arg1,
        else:
            if poolInfo[arg1].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_256 <= 0:
                require arg1 < poolInfo.length
                if arg2 > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[480 len 4] = 0
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), poolInfo[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 627 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct poolInfo[arg1].field_512
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg2, mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len 22]
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                emit Deposit(arg2, msg.sender, arg1);
            else:
                poolInfo[arg1].field_256 = block.number
                require arg1 < poolInfo.length
                if arg2 <= 0:
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[480 len 4] = 0
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_512, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        mem[ceil32(return_data.size) + 585 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), poolInfo[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_512, poolInfo[arg1].field_512, Mask(224, 32, ext_call.return_data[0] + arg2) >> 32
                        mem[ceil32(return_data.size) + 613 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                           funct poolInfo[arg1].field_512
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] + arg2) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.deposit(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if userInfo[arg1][address(msg.sender)].field_0 + ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                     arg2,
                                     mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
                                     arg1,
    stor1 = 1
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 2
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_256:
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            revert with 0, 'user.shares is 0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sharesTotal is 0'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if -1 <= 0 / ext_call.return_data[0]:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -1:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(-1, msg.sender, arg1);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][address(msg.sender)].field_0 = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -1:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(-1, msg.sender, arg1);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                if 0 / ext_call.return_data[0] <= 0:
                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if -1 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < -1:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(-1, msg.sender, arg1);
                else:
                    userInfo[arg1][address(msg.sender)].field_0 = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -1:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(-1, msg.sender, arg1);
                    else:
                        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_256 = block.number
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_512)
            staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_512)
            staticcall poolInfo[arg1].field_512.sharesTotal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                revert with 0, 'user.shares is 0'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'sharesTotal is 0'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if -1 <= 0 / ext_call.return_data[0]:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= -1:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(-1, msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= -1:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(-1, msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    if 0 / ext_call.return_data[0] <= 0:
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] < 0 / ext_call.return_data[0]:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                mem[388 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if -1 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] < -1:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(-1, msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= -1:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(-1, msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                        emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                mem[388 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[388 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if poolInfo[arg1].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_256 <= 0:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.sharesTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    revert with 0, 'user.shares is 0'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'sharesTotal is 0'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if -1 <= 0 / ext_call.return_data[0]:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= -1:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                            else:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] < -1:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                    else:
                        if 0 / ext_call.return_data[0] <= 0:
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[452 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if -1 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= -1:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                            else:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] < -1:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                    else:
                        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                poolInfo[arg1].field_256 = block.number
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.sharesTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    revert with 0, 'user.shares is 0'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'sharesTotal is 0'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if -1 <= 0 / ext_call.return_data[0]:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= -1:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                            else:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= -1:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        if 0 / ext_call.return_data[0] <= 0:
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[516 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if -1 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= -1:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                            else:
                                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[484]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] < -1:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(-1, msg.sender, arg1);
                    else:
                        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_256:
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            revert with 0, 'user.shares is 0'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sharesTotal is 0'
        if not userInfo[arg1][address(msg.sender)].field_0:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if arg2 <= 0 / ext_call.return_data[0]:
                if arg2 <= 0:
                    emit Withdraw(arg2, msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= arg2:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= arg2:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                if 0 / ext_call.return_data[0] <= 0:
                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            mem[388 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if arg2 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                if arg2 <= 0:
                    emit Withdraw(arg2, msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= arg2:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= arg2:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require arg1 < poolInfo.length
                    require ext_code.size(poolInfo[arg1].field_512)
                    call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                        require ext_code.size(poolInfo[arg1].field_0)
                        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                            mem[452 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_512)
        staticcall poolInfo[arg1].field_512.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_256 = block.number
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_512)
            staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_512)
            staticcall poolInfo[arg1].field_512.sharesTotal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                revert with 0, 'user.shares is 0'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'sharesTotal is 0'
            if not userInfo[arg1][address(msg.sender)].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if arg2 <= 0 / ext_call.return_data[0]:
                    if arg2 <= 0:
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg2:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(arg2, msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg2:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(arg2, msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    if 0 / ext_call.return_data[0] <= 0:
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[388 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if arg2 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if arg2 <= 0:
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg2:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(arg2, msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= arg2:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(arg2, msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[388 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                        emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        require arg1 < poolInfo.length
                        require ext_code.size(poolInfo[arg1].field_512)
                        call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                            require ext_code.size(poolInfo[arg1].field_0)
                            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                mem[452 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if poolInfo[arg1].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - poolInfo[arg1].field_256 <= 0:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.sharesTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    revert with 0, 'user.shares is 0'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'sharesTotal is 0'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if arg2 <= 0 / ext_call.return_data[0]:
                        if arg2 <= 0:
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        if 0 / ext_call.return_data[0] <= 0:
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] < 0 / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    mem[452 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if arg2 <= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if arg2 <= 0:
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] < userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    mem[516 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[452 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                poolInfo[arg1].field_256 = block.number
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.wantLockedTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_512)
                staticcall poolInfo[arg1].field_512.sharesTotal() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    revert with 0, 'user.shares is 0'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'sharesTotal is 0'
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if arg2 <= 0 / ext_call.return_data[0]:
                        if arg2 <= 0:
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] < arg2:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[452 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        if 0 / ext_call.return_data[0] <= 0:
                            emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] < 0 / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                                    mem[516 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        if arg2 <= 0:
                            emit Withdraw(arg2, msg.sender, arg1);
                        else:
                            require arg1 < poolInfo.length
                            require ext_code.size(poolInfo[arg1].field_512)
                            call poolInfo[arg1].field_512.withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[516 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                            else:
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                require ext_code.size(poolInfo[arg1].field_0)
                                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                if ext_call.return_data[0] >= arg2:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(arg2, msg.sender, arg1);
                                else:
                                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    mem[452 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[420]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 499 len 22]
                                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}



}
