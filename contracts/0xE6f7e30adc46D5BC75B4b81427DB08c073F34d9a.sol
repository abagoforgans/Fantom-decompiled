contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b6b86a34Address;
uint32 stor2;
address treasuryAddress;
uint256 stor2;
uint256 lockPeriod;
uint256 stor4; offset 32
uint256 lockedAmount;
big480 stor4;
uint256 lastUnlockTime;
uint256 sub_50186dcb;

function lockPeriod() payable {
    return lockPeriod
}

function sub_50186dcb(?) payable {
    return sub_50186dcb
}

function treasury() payable {
    return address(treasuryAddress)
}

function lockedAmount() payable {
    return lockedAmount
}

function owner() payable {
    return owner
}

function lastUnlockTime() payable {
    return lastUnlockTime
}

function sub_b6b86a34(?) payable {
    return sub_b6b86a34Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xe04d656f7754726561737572793a3a73657454726561737572793a3a20466f7262696464656e,
                    mem[202 len 26]
    address(treasuryAddress) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function availableUnlock() payable {
    if block.timestamp >= sub_50186dcb:
        return lockedAmount
    if lastUnlockTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockTime > sub_50186dcb:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockedAmount:
        if sub_50186dcb - lastUnlockTime <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_50186dcb - lastUnlockTime:
            return (0 / sub_50186dcb - lastUnlockTime)
    else:
        if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / lockedAmount != block.timestamp - lastUnlockTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_50186dcb - lastUnlockTime <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_50186dcb - lastUnlockTime:
            return ((block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime)
    ('iszero', ('add', ('stor', ('name', 'sub_50186dcb', 6)), ('mul', -1, ('stor', ('name', 'lastUnlockTime', 5)))))
    revert
}

function unlock() payable {
    if block.timestamp >= sub_50186dcb:
        lastUnlockTime = block.timestamp
        if lockedAmount:
            require ext_code.size(sub_b6b86a34Address)
            staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if lockedAmount <= ext_call.return_data[0]:
                if lockedAmount > lockedAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockedAmount = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_b6b86a34Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor4.field_32)
                mem[324 len 0] = 0
                call sub_b6b86a34Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, 0, stor4.field_0), mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), lockedAmount
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                require ext_code.size(sub_b6b86a34Address)
                staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > lockedAmount:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockedAmount -= ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_b6b86a34Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call sub_b6b86a34Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
    else:
        if lastUnlockTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastUnlockTime > sub_50186dcb:
            revert with 0, 'SafeMath: subtraction overflow'
        if lockedAmount:
            if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / lockedAmount != block.timestamp - lastUnlockTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_50186dcb - lastUnlockTime <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_50186dcb - lastUnlockTime
            lastUnlockTime = block.timestamp
            if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime:
                require ext_code.size(sub_b6b86a34Address)
                staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                    if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount -= (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime) >> 32
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(224, 32, (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), 
                                        Mask(224, 0, stor2),
                                        uint32(stor2),
                                        (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
        else:
            if sub_50186dcb - lastUnlockTime <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_50186dcb - lastUnlockTime
            lastUnlockTime = block.timestamp
            if 0 / sub_50186dcb - lastUnlockTime:
                require ext_code.size(sub_b6b86a34Address)
                staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                    if 0 / sub_50186dcb - lastUnlockTime > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount -= 0 / sub_50186dcb - lastUnlockTime
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 0 / sub_50186dcb - lastUnlockTime) >> 32
                    mem[324 len 0] = 0
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / sub_50186dcb - lastUnlockTime) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0 / sub_50186dcb - lastUnlockTime
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_b6b86a34Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_b6b86a34Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if block.timestamp >= sub_50186dcb:
            lastUnlockTime = block.timestamp
            if lockedAmount:
                require ext_code.size(sub_b6b86a34Address)
                staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if lockedAmount <= ext_call.return_data[0]:
                    if lockedAmount > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, address(treasuryAddress), Mask(224, 0, stor4.field_32)
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args lockedAmount, mem[392 len 24], 0, mem[520 len 4]
                else:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > lockedAmount:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedAmount -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                    if not ext_code.size(sub_b6b86a34Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                    call sub_b6b86a34Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
        else:
            if lastUnlockTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastUnlockTime > sub_50186dcb:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockedAmount:
                if sub_50186dcb - lastUnlockTime <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_50186dcb - lastUnlockTime
                lastUnlockTime = block.timestamp
                if 0 / sub_50186dcb - lastUnlockTime:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                        if 0 / sub_50186dcb - lastUnlockTime > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= 0 / sub_50186dcb - lastUnlockTime
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, address(treasuryAddress), Mask(224, 32, 0 / sub_50186dcb - lastUnlockTime) >> 32
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args 0 / sub_50186dcb - lastUnlockTime, mem[392 len 24], 0, mem[520 len 4]
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
            else:
                if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / lockedAmount != block.timestamp - lastUnlockTime:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if sub_50186dcb - lastUnlockTime <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_50186dcb - lastUnlockTime
                lastUnlockTime = block.timestamp
                if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                        if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, address(treasuryAddress), Mask(224, 32, (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime) >> 32
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime, mem[392 len 24], 0, mem[520 len 4]
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
        if arg1:
            if arg1 + lockedAmount < lockedAmount:
                revert with 0, 'SafeMath: addition overflow'
            lockedAmount += arg1
            if lockPeriod + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            sub_50186dcb = lockPeriod + block.timestamp
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if block.timestamp >= sub_50186dcb:
                lastUnlockTime = block.timestamp
                if not lockedAmount:
                    if arg1:
                        if arg1 + lockedAmount < lockedAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        lockedAmount += arg1
                        if lockPeriod + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_50186dcb = lockPeriod + block.timestamp
                else:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if lockedAmount <= ext_call.return_data[0]:
                        if lockedAmount > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 0, stor4.field_32)
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args lockedAmount, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        if arg1:
                            if arg1 + lockedAmount < lockedAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            lockedAmount += arg1
                            if lockPeriod + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_50186dcb = lockPeriod + block.timestamp
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg1:
                            if arg1 + lockedAmount < lockedAmount:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            lockedAmount += arg1
                            if lockPeriod + block.timestamp < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            sub_50186dcb = lockPeriod + block.timestamp
            else:
                if lastUnlockTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastUnlockTime > sub_50186dcb:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not lockedAmount:
                    if sub_50186dcb - lastUnlockTime <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_50186dcb - lastUnlockTime
                    lastUnlockTime = block.timestamp
                    if not 0 / sub_50186dcb - lastUnlockTime:
                        if arg1:
                            if arg1 + lockedAmount < lockedAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            lockedAmount += arg1
                            if lockPeriod + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_50186dcb = lockPeriod + block.timestamp
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                            if 0 / sub_50186dcb - lastUnlockTime > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= 0 / sub_50186dcb - lastUnlockTime
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 32, 0 / sub_50186dcb - lastUnlockTime) >> 32
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args 0 / sub_50186dcb - lastUnlockTime, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        else:
                            require ext_code.size(sub_b6b86a34Address)
                            staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            if arg1:
                                if arg1 + lockedAmount < lockedAmount:
                                    revert with 0, 'SafeMath: addition overflow'
                                lockedAmount += arg1
                                if lockPeriod + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_50186dcb = lockPeriod + block.timestamp
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1:
                                if arg1 + lockedAmount < lockedAmount:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                lockedAmount += arg1
                                if lockPeriod + block.timestamp < block.timestamp:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                sub_50186dcb = lockPeriod + block.timestamp
                else:
                    if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / lockedAmount != block.timestamp - lastUnlockTime:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if sub_50186dcb - lastUnlockTime <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_50186dcb - lastUnlockTime
                    lastUnlockTime = block.timestamp
                    if not (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime:
                        if arg1:
                            if arg1 + lockedAmount < lockedAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            lockedAmount += arg1
                            if lockPeriod + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_50186dcb = lockPeriod + block.timestamp
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                            if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 32, (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime) >> 32
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        else:
                            require ext_code.size(sub_b6b86a34Address)
                            staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            if arg1:
                                if arg1 + lockedAmount < lockedAmount:
                                    revert with 0, 'SafeMath: addition overflow'
                                lockedAmount += arg1
                                if lockPeriod + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_50186dcb = lockPeriod + block.timestamp
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1:
                                if arg1 + lockedAmount < lockedAmount:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                lockedAmount += arg1
                                if lockPeriod + block.timestamp < block.timestamp:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                sub_50186dcb = lockPeriod + block.timestamp
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if block.timestamp >= sub_50186dcb:
                lastUnlockTime = block.timestamp
                if lockedAmount:
                    require ext_code.size(sub_b6b86a34Address)
                    staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if lockedAmount <= ext_call.return_data[0]:
                        if lockedAmount > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 0, stor4.field_32)
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args lockedAmount, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > lockedAmount:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lockedAmount -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b6b86a34Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                        call sub_b6b86a34Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                if arg1:
                    if arg1 + lockedAmount < lockedAmount:
                        revert with 0, 'SafeMath: addition overflow'
                    lockedAmount += arg1
                    if lockPeriod + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_50186dcb = lockPeriod + block.timestamp
            else:
                if lastUnlockTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastUnlockTime > sub_50186dcb:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not lockedAmount:
                    if sub_50186dcb - lastUnlockTime <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_50186dcb - lastUnlockTime
                    lastUnlockTime = block.timestamp
                    if not 0 / sub_50186dcb - lastUnlockTime:
                        if arg1:
                            if arg1 + lockedAmount < lockedAmount:
                                revert with 0, 'SafeMath: addition overflow'
                            lockedAmount += arg1
                            if lockPeriod + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_50186dcb = lockPeriod + block.timestamp
                    else:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                            if 0 / sub_50186dcb - lastUnlockTime > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= 0 / sub_50186dcb - lastUnlockTime
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 32, 0 / sub_50186dcb - lastUnlockTime) >> 32
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args 0 / sub_50186dcb - lastUnlockTime, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                                if arg1:
                                    if arg1 + lockedAmount < lockedAmount:
                                        revert with 0, 'SafeMath: addition overflow'
                                    lockedAmount += arg1
                                    if lockPeriod + block.timestamp < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_50186dcb = lockPeriod + block.timestamp
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1:
                                    if arg1 + lockedAmount < lockedAmount:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    lockedAmount += arg1
                                    if lockPeriod + block.timestamp < block.timestamp:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    sub_50186dcb = lockPeriod + block.timestamp
                        else:
                            require ext_code.size(sub_b6b86a34Address)
                            staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            if arg1:
                                if arg1 + lockedAmount < lockedAmount:
                                    revert with 0, 'SafeMath: addition overflow'
                                lockedAmount += arg1
                                if lockPeriod + block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_50186dcb = lockPeriod + block.timestamp
                else:
                    if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / lockedAmount != block.timestamp - lastUnlockTime:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if sub_50186dcb - lastUnlockTime <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_50186dcb - lastUnlockTime
                    lastUnlockTime = block.timestamp
                    if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime:
                        require ext_code.size(sub_b6b86a34Address)
                        staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime <= ext_call.return_data[0]:
                            if (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), Mask(224, 32, (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime) >> 32
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args (block.timestamp * lockedAmount) - (lastUnlockTime * lockedAmount) / sub_50186dcb - lastUnlockTime, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        else:
                            require ext_code.size(sub_b6b86a34Address)
                            staticcall sub_b6b86a34Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > lockedAmount:
                                revert with 0, 'SafeMath: subtraction overflow'
                            lockedAmount -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_b6b86a34Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 64] = 0, address(treasuryAddress), ext_call.return_data[0 len 28]
                            call sub_b6b86a34Address with:
                               funct uint32(stor2)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    if arg1:
                        if arg1 + lockedAmount < lockedAmount:
                            revert with 0, 'SafeMath: addition overflow'
                        lockedAmount += arg1
                        if lockPeriod + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_50186dcb = lockPeriod + block.timestamp
}



}
