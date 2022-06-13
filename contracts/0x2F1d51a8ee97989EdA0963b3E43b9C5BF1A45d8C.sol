contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - add(uint256 arg1, address arg2, uint16 arg3, bool arg4)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_f90b59a9Address;
address devaddr;
uint256 eggPerBlock;
address feeAddress;
address sub_859d268bAddress;
uint256 sub_2d234daa;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of struct user;
array of struct stor12;
uint256 sub_a54319ad;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_2d234daa(?) payable {
    return sub_2d234daa
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function getLpToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0
}

function sub_859d268b(?) payable {
    return sub_859d268bAddress
}

function owner() payable {
    return owner
}

function getUserAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return user[arg1].field_0
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function eggPerBlock() payable {
    return eggPerBlock
}

function sub_a54319ad(?) payable {
    return sub_a54319ad
}

function userPoolAmount(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][address(arg2)].field_0
}

function devaddr() payable {
    return devaddr
}

function sub_d59f62a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return user[arg1].field_256
}

function sub_f90b59a9(?) payable {
    return sub_f90b59a9Address
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function sub_7ff0cf9a(?) payable {
    require calldata.size - 4 >= 32
    if sub_859d268bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6c6f6e6c792066656541646472657373476f6c64506f742063616e20646f20746869,
                    mem[198 len 30]
    userInfo[arg1][stor5].field_0 = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function userTotalAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[0] = arg1
        mem[32] = sha3(idx, 8)
        if s + userInfo[idx][address(arg1)].field_0 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + userInfo[idx][address(arg1)].field_0
        continue 
    return (s * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length)
}

function sub_d5d3d86b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'reward must be bigger than 0'
    sub_859d268bAddress = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if not arg2:
            _101 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = arg2
            _102 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_102 + 32] = mem[_102 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _101 + 164
            mem[_101 + 100] = 32
            mem[_101 + 132] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_101 + 270 len 26]
            if ext_code.size(poolInfo[idx].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            _116 = mem[_102]
            t = _102 + 32
            u = _101 + 164
            s = mem[_102]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_101 + floor32(mem[_102]) + 164] = mem[_102 + -(mem[_102] % 32) + floor32(mem[_102]) + 64 len mem[_102] % 32] or Mask(8 * -(mem[_102] % 32) + 32, -(8 * -(mem[_102] % 32) + 32) + 256, mem[_101 + floor32(mem[_102]) + 164])
            call poolInfo[idx].field_0.mem[_101 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_101 + 168 len _116 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_101 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_101 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_101 + 168] = 32
                mem[_101 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_101 + idx + 232] = mem[_101 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 264
            mem[64] = _101 + ceil32(return_data.size) + 165
            mem[_101 + 164] = return_data.size
            mem[_101 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_101 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_101 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_101 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_101 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_101 + ceil32(return_data.size) + idx + 233] = mem[_101 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_101 + ceil32(return_data.size) + 233]
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x775361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[mem[64] + 122 len 10]
        _109 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = arg2
        _110 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_110 + 32] = mem[_110 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _109 + 164
        mem[_109 + 100] = 32
        mem[_109 + 132] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_109 + 270 len 26]
        if ext_code.size(poolInfo[idx].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        _127 = mem[_110]
        t = _110 + 32
        u = _109 + 164
        s = mem[_110]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_109 + floor32(mem[_110]) + 164] = mem[_110 + -(mem[_110] % 32) + floor32(mem[_110]) + 64 len mem[_110] % 32] or Mask(8 * -(mem[_110] % 32) + 32, -(8 * -(mem[_110] % 32) + 32) + 256, mem[_109 + floor32(mem[_110]) + 164])
        call poolInfo[idx].field_0.mem[_109 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_109 + 168 len _127 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_109 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_109 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_109 + 168] = 32
            mem[_109 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_109 + idx + 232] = mem[_109 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _109 + -mem[64] + 264
        mem[64] = _109 + ceil32(return_data.size) + 165
        mem[_109 + 164] = return_data.size
        mem[_109 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_109 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_109 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_109 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_109 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_109 + ceil32(return_data.size) + idx + 233] = mem[_109 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_109 + ceil32(return_data.size) + 233]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if msg.sender == sub_859d268bAddress:
        revert with 0, 'feeAddress can't claim rewards'
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if sub_a54319ad <= 1:
        require sub_a54319ad < user.length
        user[stor13].field_0 = 0
        user[stor13].field_256 = 0
        sub_a54319ad--
        stor12[address(msg.sender)].field_0 = 0
        idx = 0
        while stor12[address(msg.sender)].field_0 > idx:
            stor12[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[0] = msg.sender
        mem[32] = 12
        mem[96] = stor12[address(msg.sender)].field_0
        if not stor12[address(msg.sender)].field_0:
            mem[(32 * stor12[address(msg.sender)].field_0) + 160] = block.difficulty
            mem[(32 * stor12[address(msg.sender)].field_0) + 192] = block.timestamp
            mem[(32 * stor12[address(msg.sender)].field_0) + 224] = sub_a54319ad
            mem[(32 * stor12[address(msg.sender)].field_0) + 256] = 0
            mem[(32 * stor12[address(msg.sender)].field_0) + 288] = 0
            mem[(32 * stor12[address(msg.sender)].field_0) + 128] = 160
            mem[64] = (32 * stor12[address(msg.sender)].field_0) + 384
            mem[(32 * stor12[address(msg.sender)].field_0) + 320] = 24
            mem[(32 * stor12[address(msg.sender)].field_0) + 352] = 'SafeMath: modulo by zero'
            if not sub_a54319ad:
                revert with 0, 'SafeMath: modulo by zero'
            require sub_a54319ad
            if var28001 < stor12[address(msg.sender)].field_0:
                require var28001 < stor12[address(msg.sender)].field_0
                if var33001 != mem[(32 * var28001) + 128]:
                    var28001 = var28001 + 1
                    var28002 = var28002
                    continue 
                if var28002:
                    var28001 = var28001 + 1
                    var28002 = var28002
                    continue 
                var28001 = var28001 + 1
                var28002 = 1
                continue 
            if bool(var28002) == 1:
                mem[(32 * stor12[address(msg.sender)].field_0) + 416] = block.difficulty
                mem[(32 * stor12[address(msg.sender)].field_0) + 448] = block.timestamp
                mem[(32 * stor12[address(msg.sender)].field_0) + 480] = sub_a54319ad
                mem[(32 * stor12[address(msg.sender)].field_0) + 512] = var33005
                mem[(32 * stor12[address(msg.sender)].field_0) + 544] = var33006
                mem[(32 * stor12[address(msg.sender)].field_0) + 384] = 160
                mem[64] = (32 * stor12[address(msg.sender)].field_0) + 640
                mem[(32 * stor12[address(msg.sender)].field_0) + 576] = 24
                mem[(32 * stor12[address(msg.sender)].field_0) + 608] = 'SafeMath: modulo by zero'
                if not sub_a54319ad:
                    revert with 0, 'SafeMath: modulo by zero'
                require sub_a54319ad
                var28001 = 0
                var28002 = 0
                continue 
            require var33005 < user.length
            idx = 0
            while idx < stor12[address(msg.sender)].field_0:
                mem[32] = 12
                require idx < stor12[address(msg.sender)].field_0
                stor12[stor11[var33005].field_0].field_0++
                stor12[stor11[var33005].field_0][stor12[stor11[var33005].field_0].field_0].field_0 = mem[(32 * idx) + 128]
                require idx < stor12[address(msg.sender)].field_0
                require mem[(32 * idx) + 128] < user.length
                mem[0] = 11
                user[mem[(32 * idx) + 128]].field_0 = user[var33005].field_0
                idx = idx + 1
                continue 
        else:
            mem[0] = sha3(address(msg.sender), 12)
            mem[128] = stor12[address(msg.sender)].field_0
            idx = 128
            s = 0
            while (32 * stor12[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor12[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor12[address(msg.sender)].field_0) + 160] = block.difficulty
            mem[(32 * stor12[address(msg.sender)].field_0) + 192] = block.timestamp
            mem[(32 * stor12[address(msg.sender)].field_0) + 224] = sub_a54319ad
            mem[(32 * stor12[address(msg.sender)].field_0) + 256] = 0
            mem[(32 * stor12[address(msg.sender)].field_0) + 288] = 0
            mem[(32 * stor12[address(msg.sender)].field_0) + 128] = 160
            mem[64] = (32 * stor12[address(msg.sender)].field_0) + 384
            mem[(32 * stor12[address(msg.sender)].field_0) + 320] = 24
            mem[(32 * stor12[address(msg.sender)].field_0) + 352] = 'SafeMath: modulo by zero'
            if not sub_a54319ad:
                revert with 0, 'SafeMath: modulo by zero'
            require sub_a54319ad
            if var32001 < stor12[address(msg.sender)].field_0:
                require var32001 < stor12[address(msg.sender)].field_0
                if var37001 != mem[(32 * var32001) + 128]:
                    var32001 = var32001 + 1
                    var32002 = var32002
                    continue 
                if var32002:
                    var32001 = var32001 + 1
                    var32002 = var32002
                    continue 
                var32001 = var32001 + 1
                var32002 = 1
                continue 
            if bool(var32002) == 1:
                mem[(32 * stor12[address(msg.sender)].field_0) + 416] = block.difficulty
                mem[(32 * stor12[address(msg.sender)].field_0) + 448] = block.timestamp
                mem[(32 * stor12[address(msg.sender)].field_0) + 480] = sub_a54319ad
                mem[(32 * stor12[address(msg.sender)].field_0) + 512] = var37005
                mem[(32 * stor12[address(msg.sender)].field_0) + 544] = var37006
                mem[(32 * stor12[address(msg.sender)].field_0) + 384] = 160
                mem[64] = (32 * stor12[address(msg.sender)].field_0) + 640
                mem[(32 * stor12[address(msg.sender)].field_0) + 576] = 24
                mem[(32 * stor12[address(msg.sender)].field_0) + 608] = 'SafeMath: modulo by zero'
                if sub_a54319ad:
                    require sub_a54319ad
                    var32001 = 0
                    var32002 = 0
                    continue 
                var36001 = 32
                revert with 0, 'SafeMath: modulo by zero'
            require var37005 < user.length
            idx = 0
            while idx < stor12[address(msg.sender)].field_0:
                mem[32] = 12
                require idx < stor12[address(msg.sender)].field_0
                stor12[stor11[var37005].field_0].field_0++
                stor12[stor11[var37005].field_0][stor12[stor11[var37005].field_0].field_0].field_0 = mem[(32 * idx) + 128]
                require idx < stor12[address(msg.sender)].field_0
                require mem[(32 * idx) + 128] < user.length
                mem[0] = 11
                user[mem[(32 * idx) + 128]].field_0 = user[var37005].field_0
                idx = idx + 1
                continue 
        stor12[address(msg.sender)].field_0 = 0
        idx = 0
        while stor12[address(msg.sender)].field_0 > idx:
            stor12[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * stor12[address(msg.sender)].field_0) + 654 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor12[address(msg.sender)].field_0) + 548 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][address(msg.sender)].field_0, mem[(32 * stor12[address(msg.sender)].field_0) + 612 len 4]
        if not return_data.size:
            if not ext_call.success:
                if stor12[address(msg.sender)].field_0 > 0:
                    revert with memory
                      from 128
                       len stor12[address(msg.sender)].field_0
                revert with 0, 'SafeBEP20: low-level call failed'
            if stor12[address(msg.sender)].field_0 > 0:
                require stor12[address(msg.sender)].field_0 >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * stor12[address(msg.sender)].field_0) + 658 len 22]
        else:
            mem[(32 * stor12[address(msg.sender)].field_0) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * stor12[address(msg.sender)].field_0) + 580]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * stor12[address(msg.sender)].field_0) + ceil32(return_data.size) + 659 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_f90b59a9Address)
                    call sub_f90b59a9Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_f90b59a9Address)
                    call sub_f90b59a9Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_f90b59a9Address)
                        call sub_f90b59a9Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_f90b59a9Address)
                        call sub_f90b59a9Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) / block.number - poolInfo[arg1].field_512 != eggPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_f90b59a9Address)
                            call sub_f90b59a9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_f90b59a9Address)
                            call sub_f90b59a9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock)
                            if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_f90b59a9Address)
                            call sub_f90b59a9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_f90b59a9Address)
                            call sub_f90b59a9Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 30
        mem[_165 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_166 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_166 + 68] = mem[_166 + 70 len 30]
            revert with memory
              from mem[64]
               len _166 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_179 + idx + 68] = mem[_177 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            require totalAllocPoint
            _196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_196] = 26
            mem[_196 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_238 + idx + 68] = mem[_233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 26
            mem[_237 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_248 + idx + 68] = mem[_237 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 68] = mem[_248 + 74 len 26]
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_178 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_245 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_245 + 68] = mem[_245 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _245 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _261 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_261 + idx + 68] = mem[_244 + idx + 32]
                idx = idx + 32
                continue 
            mem[_261 + 68] = mem[_261 + 74 len 26]
            revert with memory
              from mem[64]
               len _261 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_192 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            require totalAllocPoint
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 26
            mem[_209 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_243 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_277 + idx + 68] = mem[_257 + idx + 32]
                idx = idx + 32
                continue 
            mem[_277 + 68] = mem[_277 + 74 len 26]
            revert with memory
              from mem[64]
               len _277 + -mem[64] + 100
        require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
        if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 26
        mem[_191 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _200 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_200 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_200 + 68] = mem[_200 + 74 len 26]
            revert with memory
              from mem[64]
               len _200 + -mem[64] + 100
        require totalAllocPoint
        _215 = mem[64]
        mem[64] = mem[64] + 64
        mem[_215] = 26
        mem[_215 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_f90b59a9Address)
        call sub_f90b59a9Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_f90b59a9Address)
        call sub_f90b59a9Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_256 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 68] = mem[_274 + 74 len 26]
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _273 = mem[64]
        mem[64] = mem[64] + 64
        mem[_273] = 26
        mem[_273 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_292 + idx + 68] = mem[_273 + idx + 32]
            idx = idx + 32
            continue 
        mem[_292 + 68] = mem[_292 + 74 len 26]
        revert with memory
          from mem[64]
           len _292 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_167] = 30
        mem[_167 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_168 + idx + 68] = mem[_167 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 26
            mem[_179 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_181 + idx + 68] = mem[_179 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 68] = mem[_181 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            require totalAllocPoint
            _198 = mem[64]
            mem[64] = mem[64] + 64
            mem[_198] = 26
            mem[_198 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_240 + idx + 68] = mem[_235 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 68] = mem[_240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _250 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_250 + idx + 68] = mem[_239 + idx + 32]
                idx = idx + 32
                continue 
            mem[_250 + 68] = mem[_250 + 74 len 26]
            revert with memory
              from mem[64]
               len _250 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_180] = 26
            mem[_180 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_187 + idx + 68] = mem[_180 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_187 + 68] = mem[_187 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _187 + -mem[64] + 100
            require totalAllocPoint
            _206 = mem[64]
            mem[64] = mem[64] + 64
            mem[_206] = 26
            mem[_206 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 26
                mem[_238 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _263 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_263 + idx + 68] = mem[_246 + idx + 32]
                idx = idx + 32
                continue 
            mem[_263 + 68] = mem[_263 + 74 len 26]
            revert with memory
              from mem[64]
               len _263 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
            _186 = mem[64]
            mem[64] = mem[64] + 64
            mem[_186] = 26
            mem[_186 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _194 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_194 + idx + 68] = mem[_186 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_194 + 68] = mem[_194 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _194 + -mem[64] + 100
            require totalAllocPoint
            _211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_211] = 26
            mem[_211 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_245] = 26
                mem[_245 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_260 + idx + 68] = mem[_245 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_260 + 68] = mem[_260 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _260 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _259 = mem[64]
            mem[64] = mem[64] + 64
            mem[_259] = 26
            mem[_259 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _279 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_279 + idx + 68] = mem[_259 + idx + 32]
                idx = idx + 32
                continue 
            mem[_279 + 68] = mem[_279 + 74 len 26]
            revert with memory
              from mem[64]
               len _279 + -mem[64] + 100
        require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
        if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _193 = mem[64]
        mem[64] = mem[64] + 64
        mem[_193] = 26
        mem[_193 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _202 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_202 + idx + 68] = mem[_193 + idx + 32]
                idx = idx + 32
                continue 
            mem[_202 + 68] = mem[_202 + 74 len 26]
            revert with memory
              from mem[64]
               len _202 + -mem[64] + 100
        require totalAllocPoint
        _217 = mem[64]
        mem[64] = mem[64] + 64
        mem[_217] = 26
        mem[_217 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_f90b59a9Address)
        call sub_f90b59a9Address.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_f90b59a9Address)
        call sub_f90b59a9Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 26
            mem[_258 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _276 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_276 + idx + 68] = mem[_258 + idx + 32]
                idx = idx + 32
                continue 
            mem[_276 + 68] = mem[_276 + 74 len 26]
            revert with memory
              from mem[64]
               len _276 + -mem[64] + 100
        require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _275 = mem[64]
        mem[64] = mem[64] + 64
        mem[_275] = 26
        mem[_275 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _294 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_294 + idx + 68] = mem[_275 + idx + 32]
            idx = idx + 32
            continue 
        mem[_294 + 68] = mem[_294 + 74 len 26]
        revert with memory
          from mem[64]
           len _294 + -mem[64] + 100
    eggPerBlock = arg1
}

function pendingEgg(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 != sub_859d268bAddress:
                return -userInfo[arg1][address(arg2)].field_256
        else:
            require userInfo[arg1][address(arg2)].field_0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 != sub_859d268bAddress:
                return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    else:
        if not ext_call.return_data[0]:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 != sub_859d268bAddress:
                    return -userInfo[arg1][address(arg2)].field_256
            else:
                require userInfo[arg1][address(arg2)].field_0
                if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 != sub_859d268bAddress:
                    return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        else:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 != sub_859d268bAddress:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 != sub_859d268bAddress:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 != sub_859d268bAddress:
                            return -userInfo[arg1][address(arg2)].field_256
                    else:
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 != sub_859d268bAddress:
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            else:
                require block.number - poolInfo[arg1].field_512
                if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != sub_859d268bAddress:
                                return -userInfo[arg1][address(arg2)].field_256
                        else:
                            require userInfo[arg1][address(arg2)].field_0
                            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != sub_859d268bAddress:
                                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != sub_859d268bAddress:
                                return -userInfo[arg1][address(arg2)].field_256
                        else:
                            require userInfo[arg1][address(arg2)].field_0
                            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != sub_859d268bAddress:
                                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) / block.number - poolInfo[arg1].field_512 != eggPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1][address(arg2)].field_0:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return -userInfo[arg1][address(arg2)].field_256
                            else:
                                require userInfo[arg1][address(arg2)].field_0
                                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1][address(arg2)].field_0:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return -userInfo[arg1][address(arg2)].field_256
                            else:
                                require userInfo[arg1][address(arg2)].field_0
                                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                    else:
                        require (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock)
                        if (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / (block.number * eggPerBlock) - (poolInfo[arg1].field_512 * eggPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1][address(arg2)].field_0:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return -userInfo[arg1][address(arg2)].field_256
                            else:
                                require userInfo[arg1][address(arg2)].field_0
                                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            require (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1][address(arg2)].field_0:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return -userInfo[arg1][address(arg2)].field_256
                            else:
                                require userInfo[arg1][address(arg2)].field_0
                                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != sub_859d268bAddress:
                                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * eggPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * eggPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    ('eq', ('param', 'arg2'), ('stor', ('name', 'sub_859d268bAddress', 5)))
    return 0
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x657365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_213 + idx + 68] = mem[_210 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 68] = mem[_213 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_224] = 26
                mem[_224 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_226 + idx + 68] = mem[_224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_226 + 68] = mem[_226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _226 + -mem[64] + 100
                require totalAllocPoint
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_280] = 26
                    mem[_280 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_285 + idx + 68] = mem[_280 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_285 + 68] = mem[_285 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _285 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_284] = 26
                mem[_284 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _295 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_295 + idx + 68] = mem[_284 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_295 + 68] = mem[_295 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _295 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_232 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 68] = mem[_232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                require totalAllocPoint
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_283] = 26
                    mem[_283 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_292 + idx + 68] = mem[_283 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_292 + 68] = mem[_292 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _292 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_291] = 26
                mem[_291 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_308 + idx + 68] = mem[_291 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 68] = mem[_308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) / block.number - poolInfo[idx].field_512 != eggPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock):
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_239 + idx + 68] = mem[_231 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_239 + 68] = mem[_239 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _239 + -mem[64] + 100
                require totalAllocPoint
                _256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_256] = 26
                mem[_256 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_f90b59a9Address)
                call sub_f90b59a9Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_324 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_324 + 68] = mem[_324 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _324 + -mem[64] + 100
            require (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock)
            if (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / (block.number * eggPerBlock) - (poolInfo[idx].field_512 * eggPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 26
            mem[_238 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require totalAllocPoint
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_f90b59a9Address)
            call sub_f90b59a9Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_321 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 68] = mem[_321 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            require (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * eggPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * eggPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _339 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_339 + idx + 68] = mem[_320 + idx + 32]
                idx = idx + 32
                continue 
            mem[_339 + 68] = mem[_339 + 74 len 26]
            revert with memory
              from mem[64]
               len _339 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}



}
