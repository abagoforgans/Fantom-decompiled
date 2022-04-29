contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#  - reinvest()
#
const sub_36b2e772(?) = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_8ed8ea7e(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_a46507b4(?) = 0x2b2929e785374c651a81a63878ab22742656dcdd

const sub_d4384dbe(?) = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalShareBalance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address wantTokenAddress;
uint8 emergencyStop; offset 160
address sub_954d5c76Address;
mapping of uint256 sub_957be30c;
address lpTokenAddress;
address token0Address;
address token1Address;
uint256 sub_6b004b2b;
array of address sub_6a0341b8;
array of address path1;
uint32 stor15;
address feeReceiverAddress;
uint256 stor15;
address devAddr;
uint256 feeRate;
uint256 devRate;
uint256 sub_b433d112;
uint256 sub_b6106f3f;

function name() payable {
    return name[0 len name.length]
}

function token0() payable {
    return token0Address
}

function totalSupply() payable {
    return totalShareBalance
}

function decimals() payable {
    return decimals
}

function path1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < path1.length
    return path1[arg1]
}

function shareBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalShareBalance() payable {
    return totalShareBalance
}

function lpToken() payable {
    return lpTokenAddress
}

function emergencyStop() payable {
    return bool(emergencyStop)
}

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1]
}

function sub_6b004b2b(?) payable {
    return sub_6b004b2b
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_954d5c76(?) payable {
    return sub_954d5c76Address
}

function sub_957be30c(?) payable {
    require calldata.size - 4 >= 32
    return sub_957be30c[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function feeRate() payable {
    return feeRate
}

function feeReceiver() payable {
    return address(feeReceiverAddress)
}

function sub_b433d112(?) payable {
    return sub_b433d112
}

function sub_b6106f3f(?) payable {
    return sub_b6106f3f
}

function devRate() payable {
    return devRate
}

function token1() payable {
    return token1Address
}

function wantToken() payable {
    return wantTokenAddress
}

function devAddr() payable {
    return devAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function start() payable {
    if sub_954d5c76Address != msg.sender:
        revert with 0, 'no operator'
    emergencyStop = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0958654c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_954d5c76Address = arg1
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'dev: wut?'
    devAddr = arg1
}

function setFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    address(feeReceiverAddress) = arg1
}

function sub_0c3ac2e6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 5:
        revert with 0, 'invalid'
    sub_b6106f3f = arg1
}

function setDevRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 10:
        revert with 0, 'invalid'
    devRate = arg1
}

function setFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 50:
        revert with 0, 'invalid rate'
    feeRate = arg1
}

function sub_bafcc649(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 360 * 24 * 3600:
        revert with 0, 'invalid period'
    sub_b433d112 = arg1
}

function stop() payable {
    if sub_954d5c76Address != msg.sender:
        revert with 0, 'no operator'
    emergencyStop = 1
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdrawAll(uint256 arg1) with:
         gas gas_remaining wei
        args sub_6b004b2b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function totalTokenBalance() payable {
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6b004b2b, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1a6cbaa8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_6a0341b8.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_6a0341b8.length > idx:
            sub_6a0341b8[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_6a0341b8[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_6a0341b8.length > idx:
            sub_6a0341b8[idx] = 0
            idx = idx + 1
            continue 
    path1.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while path1.length > idx:
            path1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            path1[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while path1.length > idx:
            path1[idx] = 0
            idx = idx + 1
            continue 
}

function tokenBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalShareBalance:
        return 0
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6b004b2b, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShareBalance:
            return (0 / totalShareBalance)
    else:
        if (ext_call.return_data[0] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / 2 * ext_call.return_data[0] != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalShareBalance:
            return ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalShareBalance)
    ('iszero', ('stor', ('name', 'totalShareBalance', 2)))
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'no user'
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6b004b2b, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShareBalance
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'sERC20: burn amount exceeds balancddres', mem[164 len 28], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalShareBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        totalShareBalance -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(wantTokenAddress)
        staticcall wantTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / totalShareBalance <= ext_call.return_data[0]:
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > 0 / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if 0 / totalShareBalance:
                    if sub_b6106f3f * 0 / totalShareBalance / 0 / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    mem[420 len 0] = 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0) << 256, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = 0, msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0 / totalShareBalance, mem[456 len 28], mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if 0 > 0 / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = 0, msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0 / totalShareBalance, mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                            if 0 > 0 / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = 0, msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0 / totalShareBalance, mem[ceil32(return_data.size) + 457 len 28], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
        else:
            if ext_call.return_data[0] > 0 / totalShareBalance:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
            call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_6b004b2b, (0 / totalShareBalance) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > 0 / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not 0 / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        mem[584 len 0] = 0
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * 0 / totalShareBalance / 0 / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / arg1 != 2 * ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShareBalance
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'sERC20: burn amount exceeds balancddres', mem[164 len 28], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalShareBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        totalShareBalance -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(wantTokenAddress)
        staticcall wantTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance <= ext_call.return_data[0]:
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) >> 32
                        mem[584 len 0] = 0
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
            call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_6b004b2b, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000 > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function withdrawAll() payable {
    if msg.sender != tx.origin:
        revert with 0, 'no user'
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6b004b2b, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not balanceOf[address(msg.sender)]:
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShareBalance
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 'sERC20: burn amount exceeds balancddres', mem[164 len 28], mem[222 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalShareBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        totalShareBalance -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(wantTokenAddress)
        staticcall wantTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / totalShareBalance <= ext_call.return_data[0]:
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > 0 / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not 0 / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * 0 / totalShareBalance / 0 / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        mem[584 len 0] = 0
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if ext_call.return_data[0] > 0 / totalShareBalance:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
            call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_6b004b2b, (0 / totalShareBalance) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > 0 / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not 0 / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * 0 / totalShareBalance / 0 / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * 0 / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
                        else:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                            if sub_b6106f3f * 0 / totalShareBalance / 1000 > 0 / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalShareBalance) - (sub_b6106f3f * 0 / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != 2 * ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalShareBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalShareBalance
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 'sERC20: burn amount exceeds balancddres', mem[164 len 28], mem[222 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalShareBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        totalShareBalance -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(wantTokenAddress)
        staticcall wantTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance <= ext_call.return_data[0]:
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
                        else:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
                        else:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                            if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
            call 0x2b2929e785374c651a81a63878ab22742656dcdd.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_6b004b2b, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_b433d112 + sub_957be30c[msg.sender] < sub_957be30c[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b433d112 + sub_957be30c[msg.sender] <= block.timestamp:
                if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(wantTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                call wantTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
            else:
                if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), 0
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                        mem[584 len 0] = 0
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) << 224, mem[ceil32(return_data.size) + 585 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance != sub_b6106f3f:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lpTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor15), uint32(stor15), Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000) >> 32
                    call lpTokenAddress with:
                       funct uint32(stor15)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
                        if not ext_code.size(wantTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                        call wantTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                            if sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(wantTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) >> 32
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call wantTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance) - (sub_b6106f3f * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalShareBalance / 1000)) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
}



}
