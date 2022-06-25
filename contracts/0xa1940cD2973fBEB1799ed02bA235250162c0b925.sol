contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - sub_8e7d5dba(?)
#
const unirouter = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const boo = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const balanceOfLpPair = ext_call.return_data[0]

const sub_cce4ae1d(?) = 0xa48d959ae2e88f1daa7d5f611e01908106de7598

const shareRewardPool = 0x2352b745561e7e6fcd03c093ce7220e3e126ace0

const dai = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalFee;
uint256 _treasurySup;
uint256 _strategistFee;
address sub_a44e8afaAddress;
address rewardAddress;
address treasuryAddress;
address strategistAddress;
address adminAddress;
uint32 stor9;
address vaultAddress;
uint256 stor9;
uint256 poolId;
uint256 lastHarvestedTime;
array of address sub_b6e1dfe8;
array of address sub_b60afbcf;
array of address sub_6f92c26f;

function totalFee() payable {
    return totalFee
}

function strategist() payable {
    return strategistAddress
}

function reward() payable {
    return rewardAddress
}

function poolId() payable {
    return poolId
}

function _strategistFee() payable {
    return _strategistFee
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function sub_6f92c26f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6f92c26f.length
    return sub_6f92c26f[arg1]
}

function owner() payable {
    return owner
}

function sub_a44e8afa(?) payable {
    return sub_a44e8afaAddress
}

function sub_b60afbcf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b60afbcf.length
    return sub_b60afbcf[arg1]
}

function lastHarvestedTime() payable {
    return lastHarvestedTime
}

function sub_b6e1dfe8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b6e1dfe8.length
    return sub_b6e1dfe8[arg1]
}

function _treasurySup() payable {
    return _treasurySup
}

function admin() payable {
    return adminAddress
}

function vault() payable {
    return address(vaultAddress)
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

function sub_c98ca394(?) payable {
    require calldata.size - 4 >= 32
    if sub_a44e8afaAddress != msg.sender:
        revert with 0, 'Not autorized'
    sub_a44e8afaAddress = arg1
}

function newAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function newFeeAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    strategistAddress = arg2
    treasuryAddress = arg1
}

function calculateTotalPendingRewards() payable {
    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
    staticcall 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setperfomFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not autorized'
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg3 != 100:
        revert with 0, '!100%'
    if arg2 <= 0:
        revert with 0, 'must be > 0'
    if arg3 <= 0:
        revert with 0, 'must be > 0'
    totalFee = arg1
    _strategistFee = arg2
    _treasurySup = arg3
}

function balanceOfPool() payable {
    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
    staticcall 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
    staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x43b0ff51 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
    staticcall 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
    staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x43b0ff51 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
    if ext_call.return_data[0] > 0:
        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.enter(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function recoverStrangeTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_a44e8afaAddress != msg.sender:
        revert with 0, 'Not autorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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

function sub_d686625d(?) payable {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b6e1dfe8.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_b6e1dfe8.length > idx:
            sub_b6e1dfe8[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_b6e1dfe8[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_b6e1dfe8.length > idx:
            sub_b6e1dfe8[idx] = 0
            idx = idx + 1
            continue 
    sub_6f92c26f.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_6f92c26f.length > idx:
            sub_6f92c26f[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            sub_6f92c26f[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_6f92c26f.length > idx:
            sub_6f92c26f[idx] = 0
            idx = idx + 1
            continue 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe with:
           funct uint32(stor9)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), arg1
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor9):
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
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0xbbe9b09e with:
                gas gas_remaining wei
               args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
        staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe with:
           funct uint32(stor9)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
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
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
    mem[324 len 0] = 0
    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0xe126ace0 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
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
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
    mem[324 len 0] = 0
    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0xe126ace0 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
            require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
            call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                    call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                    call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId, mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
            call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
                 gas gas_remaining wei
                args 0, 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
            call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[(2 * ceil32(return_data.size)) + 654 len 0] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0) << 256, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len 22]
        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
    mem[324 len 0] = 0
    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0xe126ace0 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
        if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
            if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
            require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
            call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
            staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
            call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
            staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
            call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(vaultAddress), ext_call.return_data[0]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(rewardAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call rewardAddress.0x7e38c29 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId, mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
            call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if ext_code.size(rewardAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                    mem[(2 * ceil32(return_data.size)) + 654 len 0] = 0
                    call rewardAddress.0x7e38c29 with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0) << 256, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(vaultAddress), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len 22]
                        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(vaultAddress), ext_call.return_data[0]
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    if ext_code.size(rewardAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                    mem[(2 * ceil32(return_data.size)) + 682 len 4] = 0
                    call rewardAddress.0x7e38c29 with:
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(vaultAddress), ext_call.return_data[0]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                        call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args poolId, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                        call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                        call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(vaultAddress), ext_call.return_data[0], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 659 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0xa48d959ae2e88f1daa7d5f611e01908106de7598, 0
            call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x6de7598 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
                require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if ext_code.size(rewardAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = approve(address arg1, uint256 arg2), 0xf491e7b69e4244ad4002bc14, 0, 0
                mem[(2 * ceil32(return_data.size)) + 682 len 4] = 0
                call rewardAddress.0x7e38c29 with:
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x2352b745561e7e6fcd03c093:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                    call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                    staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                    call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(vaultAddress), ext_call.return_data[0]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 701 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x2352b745561e7e6fcd03c093ce7220e3e126ace0)
                    call 0x2352b745561e7e6fcd03c093ce7220e3e126ace0.emergencyWithdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args poolId, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                    staticcall 0xa48d959ae2e88f1daa7d5f611e01908106de7598.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
                    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
                    call 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(vaultAddress), ext_call.return_data[0], mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 659 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
