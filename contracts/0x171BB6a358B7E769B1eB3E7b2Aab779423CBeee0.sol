contract main {




// =====================  Runtime code  =====================


const usdcAddress = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const wantAddress = 0x4b122eb5632077abdd2c38e8d9392348d5ca15


address owner;
uint256 stor1;
uint8 paused;
uint32 stor2;
address stor2;
address vaultChefAddress; offset 8
uint256 stor2;
address govAddress;
mapping of struct userInfo;
uint256 sharesTotal;
uint256 wantLockedTotal;
uint256 sub_470aee0b;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function vaultChefAddress() payable {
    return vaultChefAddress
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function sub_470aee0b(?) payable {
    return sub_470aee0b
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function depositReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not sharesTotal:
            return 0
        if not arg1:
            if not sharesTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sharesTotal) + sub_470aee0b < sub_470aee0b:
                revert with 0, 'SafeMath: addition overflow'
            sub_470aee0b += 0 / sharesTotal
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not sharesTotal:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / sharesTotal) + sub_470aee0b < sub_470aee0b:
                revert with 0, 'SafeMath: addition overflow'
            sub_470aee0b += 10^18 * arg1 / sharesTotal
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not sharesTotal:
            return 0
        if not arg1:
            if not sharesTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sharesTotal) + sub_470aee0b < sub_470aee0b:
                revert with 0, 'SafeMath: addition overflow'
            sub_470aee0b += 0 / sharesTotal
        else:
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not sharesTotal:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * arg1 / sharesTotal) + sub_470aee0b < sub_470aee0b:
                revert with 0, 'SafeMath: addition overflow'
            sub_470aee0b += 10^18 * arg1 / sharesTotal
    return 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -userInfo[address(arg1)].field_256:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[544 len 4] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            wantLockedTotal = arg2 + sharesTotal
            if arg2 + userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(arg1)].field_0 += arg2
            if not arg2 + userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_256 = 0
            else:
                if (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / arg2 + userInfo[address(arg1)].field_0 != sub_470aee0b:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                userInfo[address(arg1)].field_256 = (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / 10^18
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, -userInfo[address(arg1)].field_256) >> 32
            mem[452 len 0] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                 gas gas_remaining wei
                args Mask(224, 32, -userInfo[address(arg1)].field_256) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[ceil32(return_data.size) + 709 len 4] = 0
                call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                     gas gas_remaining wei
                    args arg2, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                sharesTotal += arg2
                wantLockedTotal = arg2 + sharesTotal
                if arg2 + userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_0:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                userInfo[address(arg1)].field_0 += arg2
                if not arg2 + userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / arg2 + userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    userInfo[address(arg1)].field_256 = (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / 10^18
            else:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[ceil32(return_data.size) + 709 len 4] = 0
                call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                     gas gas_remaining wei
                    args arg2, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                wantLockedTotal = arg2 + sharesTotal
                if arg2 + userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(arg1)].field_0 += arg2
                if not arg2 + userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / arg2 + userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 687 len 31]
                    userInfo[address(arg1)].field_256 = (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / 10^18
    else:
        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[544 len 4] = 0
            mem[516 len 0] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            wantLockedTotal = arg2 + sharesTotal
            if arg2 + userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(arg1)].field_0 += arg2
            if not arg2 + userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_256 = 0
            else:
                if (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / arg2 + userInfo[address(arg1)].field_0 != sub_470aee0b:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 522 len 31]
                userInfo[address(arg1)].field_256 = (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / 10^18
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256) >> 32
            mem[452 len 0] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                 gas gas_remaining wei
                args Mask(224, 32, (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[ceil32(return_data.size) + 709 len 4] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                 gas gas_remaining wei
                args arg2, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 
                            'SafeMath: addition overflow',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            sharesTotal += arg2
            wantLockedTotal = arg2 + sharesTotal
            if arg2 + userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_0:
                revert with 0, 
                            'SafeMath: addition overflow',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            userInfo[address(arg1)].field_0 += arg2
            if not arg2 + userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_256 = 0
            else:
                if (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / arg2 + userInfo[address(arg1)].field_0 != sub_470aee0b:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                userInfo[address(arg1)].field_256 = (arg2 * sub_470aee0b) + (userInfo[address(arg1)].field_0 * sub_470aee0b) / 10^18
    stor1 = 1
    return arg2
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -userInfo[address(arg1)].field_256:
            require ext_code.size(0x4b122eb5632077abdd2c38e8d9392348d5ca15)
            staticcall 0x4b122eb5632077abdd2c38e8d9392348d5ca15.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if arg2 > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal -= arg2
                wantLockedTotal = sharesTotal - arg2
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if arg2 <= userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_0 -= arg2
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                else:
                    userInfo[address(arg1)].field_0 = 0
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                stor1 = 1
                return arg2
            if ext_call.return_data[0] > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal -= ext_call.return_data[0]
            wantLockedTotal = sharesTotal - ext_call.return_data[0]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
            mem[516 len 0] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            if ext_call.return_data[0] <= userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_0 -= ext_call.return_data[0]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
            else:
                userInfo[address(arg1)].field_0 = 0
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, -userInfo[address(arg1)].field_256) >> 32
            mem[452 len 0] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                 gas gas_remaining wei
                args Mask(224, 32, -userInfo[address(arg1)].field_256) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
            require ext_code.size(0x4b122eb5632077abdd2c38e8d9392348d5ca15)
            staticcall 0x4b122eb5632077abdd2c38e8d9392348d5ca15.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if arg2 > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal -= arg2
                wantLockedTotal = sharesTotal - arg2
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(stor2.field_0), Mask(224, 32, arg2) >> 32
                call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args arg2, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 649]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if arg2 <= userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_0 -= arg2
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                else:
                    userInfo[address(arg1)].field_0 = 0
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 719 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                stor1 = 1
                return arg2
            if ext_call.return_data[0] > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal -= ext_call.return_data[0]
            wantLockedTotal = sharesTotal - ext_call.return_data[0]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 64] = 0, address(stor2.field_0), ext_call.return_data[0 len 28]
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 649]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if ext_call.return_data[0] <= userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_0 -= ext_call.return_data[0]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
            else:
                userInfo[address(arg1)].field_0 = 0
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 719 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
    else:
        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256:
            require ext_code.size(0x4b122eb5632077abdd2c38e8d9392348d5ca15)
            staticcall 0x4b122eb5632077abdd2c38e8d9392348d5ca15.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if arg2 > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal -= arg2
                wantLockedTotal = sharesTotal - arg2
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                mem[516 len 0] = 0
                call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if arg2 <= userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_0 -= arg2
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                else:
                    userInfo[address(arg1)].field_0 = 0
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 554 len 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                stor1 = 1
                return arg2
            if ext_call.return_data[0] > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal -= ext_call.return_data[0]
            wantLockedTotal = sharesTotal - ext_call.return_data[0]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
            mem[516 len 0] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            if ext_call.return_data[0] <= userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_0 -= ext_call.return_data[0]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
            else:
                userInfo[address(arg1)].field_0 = 0
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256) >> 32
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                 gas gas_remaining wei
                args Mask(224, 32, (sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(0x4b122eb5632077abdd2c38e8d9392348d5ca15)
                staticcall 0x4b122eb5632077abdd2c38e8d9392348d5ca15.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if arg2 > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal -= arg2
                    wantLockedTotal = sharesTotal - arg2
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if arg2 <= userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_0 -= arg2
                        if not userInfo[address(arg1)].field_0:
                            userInfo[address(arg1)].field_256 = 0
                        else:
                            if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                        stor1 = 1
                        return arg2, mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    userInfo[address(arg1)].field_0 = 0
                    if not userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_256 = 0
                    else:
                        if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 719 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                    stor1 = 1
                    return arg2, mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
                require ext_code.size(0x4b122eb5632077abdd2c38e8d9392348d5ca15)
                staticcall 0x4b122eb5632077abdd2c38e8d9392348d5ca15.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if arg2 > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal -= arg2
                    wantLockedTotal = sharesTotal - arg2
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 32, arg2) >> 32
                    mem[ceil32(return_data.size) + 681 len 0] = 0
                    call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
                       funct uint32(stor2.field_0)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len 22]
                    if arg2 <= userInfo[address(arg1)].field_0:
                        userInfo[address(arg1)].field_0 -= arg2
                        if not userInfo[address(arg1)].field_0:
                            userInfo[address(arg1)].field_256 = 0
                        else:
                            if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 783 len 31]
                            userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                    else:
                        userInfo[address(arg1)].field_0 = 0
                        if not userInfo[address(arg1)].field_0:
                            userInfo[address(arg1)].field_256 = 0
                        else:
                            if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 719 len 31]
                            userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
                    stor1 = 1
                    return arg2
            ('gt', ('param', 'arg2'), ('ext_call.return_data', 0, 32))
            if ext_call.return_data[0] > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal -= ext_call.return_data[0]
            wantLockedTotal = sharesTotal - ext_call.return_data[0]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4b122eb5632077abdd2c38e8d9392348d5ca15):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 681 len 0] = 0
            call 0x004b122eb5632077abdd2c38e8d9392348d5ca15 with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 681 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 649]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
            if ext_call.return_data[0] <= userInfo[address(arg1)].field_0:
                userInfo[address(arg1)].field_0 -= ext_call.return_data[0]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 783 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
            else:
                userInfo[address(arg1)].field_0 = 0
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if sub_470aee0b * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_470aee0b:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 719 len 31]
                    userInfo[address(arg1)].field_256 = sub_470aee0b * userInfo[address(arg1)].field_0 / 10^18
    stor1 = 1
    return ext_call.return_data[0]
}



}
