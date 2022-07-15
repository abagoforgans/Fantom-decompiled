contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#  - deposit()
#
const sub_0537524b(?) = 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce

const sub_1eec4592(?) = 0xcde5a11a4acb4ee4c805352cec57e236bdbc3837000200000000000000000019

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_7bceeda2(?) = 0xcdf68a4d525ba2e90fe959c74330430a5a6b8226000200000000000000000008

const sub_e8812b7b(?) = 0x3c6b3f09d2504606936b1a4decefad204687890000200000000000000000015

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const rewardToken = 0xf24bcf4d1e507740041c9cfd2dddb29585adce1e

const PERCENT_DIVISOR = 10000

const MAX_FEE = 500


uint8 stor0; offset 160
address owner;
uint8 sub_aaf8561a; offset 160
address lpTokenAddress;
mapping of uint8 stor2;
uint8 stor3;
address masterChefAddress; offset 8
uint256 poolId;
uint256 sub_bdd31058;
uint8 sub_f587cde9;
uint8 sub_3e6b35cb; offset 8
uint8 sub_95a0954a; offset 16
uint8 stor6; offset 24
uint8 stor6; offset 32
uint8 stor6; offset 40
uint256 sub_635f91d0;
uint8 stor8;
address sub_9a111c37Address; offset 8
uint256 sub_2ae3af4b;
address treasuryAddress;
address vaultAddress;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
mapping of address sub_949c12c3;

function sub_1646d565(?) payable {
    return bool(uint8(stor6.field_40))
}

function totalFee() payable {
    return totalFee
}

function sub_2ae3af4b(?) payable {
    return sub_2ae3af4b
}

function poolId() payable {
    return poolId
}

function sub_3e6b35cb(?) payable {
    return sub_3e6b35cb
}

function masterChef() payable {
    return masterChefAddress
}

function paused() payable {
    return bool(stor0)
}

function lpToken() payable {
    return lpTokenAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_635f91d0(?) payable {
    return sub_635f91d0
}

function sub_8954ffeb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function sub_949c12c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_949c12c3[arg1]
}

function sub_95a0954a(?) payable {
    return sub_95a0954a
}

function sub_9a111c37(?) payable {
    return sub_9a111c37Address
}

function sub_aaf8561a(?) payable {
    return sub_aaf8561a
}

function sub_bdd31058(?) payable {
    return sub_bdd31058
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_ced0883e(?) payable {
    return bool(uint8(stor6.field_24))
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function sub_ec4942da(?) payable {
    return bool(stor3)
}

function sub_f587cde9(?) payable {
    return sub_f587cde9
}

function vault() payable {
    return vaultAddress
}

function sub_fec94ad1(?) payable {
    return bool(stor8)
}

function sub_ff08b97d(?) payable {
    return bool(uint8(stor6.field_32))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c8212ce2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_635f91d0 = arg1
}

function sub_f9115453(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = uint8(bool(arg1))
    return 1
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    return 1
}

function sub_61591149(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'fee too high'
    sub_d68e1302 = arg1
}

function sub_d32b9604(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    callFee = arg1
    if 10000 < callFee:
        revert with 'NH{q', 17
    treasuryFee = -callFee + 10000
    emit 0x6a730aa6: callFee, treasuryFee
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function balanceOfLpPair() payable {
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sub_edf2d5d2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg2) == 0xf24bcf4d1e507740041c9cfd2dddb29585adce1e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rewardToken is already accounted for'
    stor8 = uint8(bool(arg1))
    sub_9a111c37Address = address(arg2)
    sub_2ae3af4b = arg3
}

function balanceOf() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(masterChefAddress)
    call masterChefAddress.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
