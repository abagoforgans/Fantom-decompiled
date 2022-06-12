contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#
const sub_094e23f9(?) = 0xa0828ee559110b041dedbf10ae0cf42274251de1

const sub_1dee25de(?) = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const lpPair = 0xa0828ee559110b041dedbf10ae0cf42274251de1

const balanceOfLpPair = ext_call.return_data[0]

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const PERCENT_DIVISOR = 10000

const USDC = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const MAX_FEE = 500


uint8 stor0; offset 160
address owner;
uint8 rewardTokens; offset 160
address rewardToken1Address;
mapping of uint8 stor2;
mapping of uint32 stor3;
address sub_8ed8ea7eAddress;
address sub_9e548b7fAddress;
uint8 stor6;
uint8 poolId; offset 160
address masterChefAddress;
address treasuryAddress;
uint32 stor8;
address vaultAddress;
uint256 stor8;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
array of address sub_91245cd9;
array of address sub_2a23ed91;
array of address sub_a726b42d;
array of address sub_1feefc2c;

function totalFee() payable {
    return totalFee
}

function sub_1feefc2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1feefc2c.length
    return sub_1feefc2c[arg1]
}

function sub_2a23ed91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2a23ed91.length
    return sub_2a23ed91[arg1]
}

function poolId() payable {
    return poolId
}

function masterChef() payable {
    return masterChefAddress
}

function paused() payable {
    return bool(stor0)
}

function treasury() payable {
    return treasuryAddress
}

function rewardToken1() payable {
    return rewardToken1Address
}

function sub_8954ffeb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function callFee() payable {
    return callFee
}

function sub_91245cd9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_91245cd9.length
    return sub_91245cd9[arg1]
}

function sub_9e548b7f(?) payable {
    return sub_9e548b7fAddress
}

function sub_a726b42d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a726b42d.length
    return sub_a726b42d[arg1]
}

function rewardTokens() payable {
    return rewardTokens
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
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

function sub_fd66533e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1 << 248] = uint8(arg2)
    return 1
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    return 1
}

function sub_d32b9604(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'Fee Too High'
    totalFee = arg1
    emit 0x2e59d502: totalFee
    return 1
}

function sub_f88fb689(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    callFee = arg1
    if callFee > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    treasuryFee = -callFee + 10000
    emit 0x6a730aa6: callFee, treasuryFee
    return 1
}

function balanceOfPool() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
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

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterChefAddress)
        call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + ext_call.return_data[32])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterChefAddress)
    call masterChefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    call 0xa0828ee559110b041dedbf10ae0cf42274251de1.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_23cb2390(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokens != 1:
        return 0
    rewardToken1Address = arg1
    address(stor3[stor1]) = arg2
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor3[stor1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(rewardToken1Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3[stor1]), uint32(stor3[stor1]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[352 len 4] = 0
    mem[324 len 0] = 0
    call rewardToken1Address with:
       funct uint32(stor3[stor1])
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3[stor1]), uint32(stor3[stor1]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor3[stor1]), uint32(stor3[stor1]), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3[stor1]):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        mem[260] = rewardToken1Address
        mem[292] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        sub_2a23ed91.length = 2
        s = 0
        idx = 260
        while 324 > idx:
            sub_2a23ed91[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
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
        mem[ceil32(return_data.size) + 261] = rewardToken1Address
        mem[ceil32(return_data.size) + 293] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        sub_2a23ed91.length = 2
        s = 0
        idx = ceil32(return_data.size) + 261
        while ceil32(return_data.size) + 325 > idx:
            sub_2a23ed91[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
    idx = 2
    while sub_2a23ed91.length > idx:
        sub_2a23ed91[idx] = 0
        idx = idx + 1
        continue 
    stor2[1] = 1
    rewardTokens = 2
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
    staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1) >> 32
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                mem[452 len 0] = 0
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
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
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(masterChefAddress)
        call masterChefAddress.0x441a3e70 with:
             gas gas_remaining wei
            args stor6, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1)
        staticcall 0xa0828ee559110b041dedbf10ae0cf42274251de1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg1:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1) >> 32
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
        else:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xa0828ee559110b041dedbf10ae0cf42274251de1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                mem[516 len 0] = 0
                call 0xa0828ee559110b041dedbf10ae0cf42274251de1 with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
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
}



}
