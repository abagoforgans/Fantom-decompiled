contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e093d95(?)
#  - withdraw(uint256 arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#
const PERCENT_DIVISOR = 10000

const MAX_FEE = 500


uint8 stor0; offset 160
address owner;
address wftmAddress;
address rewardTokenAddress;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
address uniRouterAddress;
uint8 stor7;
uint8 poolId; offset 160
address masterChefAddress;
address treasuryAddress;
address vaultAddress;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
array of address sub_65108ea4;
array of address sub_d0f2e818;
array of address sub_59a9d23a;
array of address sub_841cd4c6;
array of address sub_9fc20e57;
array of address sub_18f637ab;

function sub_18f637ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_18f637ab.length
    return sub_18f637ab[arg1]
}

function totalFee() payable {
    return totalFee
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function masterChef() payable {
    return masterChefAddress
}

function sub_59a9d23a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_59a9d23a.length
    return sub_59a9d23a[arg1]
}

function paused() payable {
    return bool(stor0)
}

function lpToken0() payable {
    return lpToken0Address
}

function treasury() payable {
    return treasuryAddress
}

function sub_65108ea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_65108ea4.length
    return sub_65108ea4[arg1]
}

function sub_841cd4c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_841cd4c6.length
    return sub_841cd4c6[arg1]
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function sub_9fc20e57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9fc20e57.length
    return sub_9fc20e57[arg1]
}

function uniRouter() payable {
    return uniRouterAddress
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d0f2e818(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d0f2e818.length
    return sub_d0f2e818[arg1]
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function wftm() payable {
    return wftmAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function vault() payable {
    return vaultAddress
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

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args stor7, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterChefAddress)
        call masterChefAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args stor7, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args stor7, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterChefAddress)
    call masterChefAddress.0x5312ea8e with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    call lpPairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
